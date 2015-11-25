#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Helpers/converter/converter.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"
#include "drivers/CorePWM/core_pwm.h"
#include "drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <math.h>
/******************************************************************************
 * Baud value to achieve a 115200 baud rate with a 50 MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_115200    26

/******************************************************************************
 * Maximum receiver buffer size.
 *****************************************************************************/
#define MAX_RX_DATA_SIZE    256
#define SLAVE_SER_ADDR     0x77

/*-----------------------------------------------------------------------------
 * Receive buffer size.
 */
#define BUFFER_SIZE    32u
#define ENTER          13u

void press_any_key_to_continue(void);

/*------------------------------------------------------------------------------
 * I2C buffers. These are the buffers where data written transferred via I2C
 * will be stored. RX
 */
static uint8_t g_slave_rx_buffer[BUFFER_SIZE];
static uint8_t g_slave_tx_buffer[BUFFER_SIZE] = "<<-------Slave Tx data ------->>";
static uint8_t g_master_rx_buf[BUFFER_SIZE];
static uint8_t g_master_tx_buf[BUFFER_SIZE];

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000




#define t0 30 //   threshold voltage TODO it's not real value. must be define by experiment

// Core instances
UART_instance_t g_uart;
pwm_instance_t  g_pwm;




void pwm_auto();
// =========================== ACEL DEFINES

void setup()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
	i2c_init(1); // argument no matter
	BMP_calibrate();
	MPU6050_initialize();
	MPU6050_setFullScaleGyroRange(1);

	PWM_enable(&g_pwm, PWM_1);
	PWM_enable(&g_pwm, PWM_2);
	PWM_enable(&g_pwm, PWM_3);
	PWM_enable(&g_pwm, PWM_4);

	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);

	MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);



}

int main(void)
{
    i2c_status_t status;
    uint8_t rx_size = 0;
    uint8_t rx_buff[1];
    uint8_t loop_count;

    setup();

    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);


    for(loop_count=0; loop_count < BUFFER_SIZE; loop_count++)
    {
        g_slave_rx_buffer[loop_count] = 0x00;
        g_master_rx_buf[loop_count] = 0x00;
        g_master_tx_buf[loop_count] = 0x00;
    }
	press_any_key_to_continue();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Hi, I am copter!\n\r");
	press_any_key_to_continue();
	
	
	
	
	int16_t ax = 0x0000;
	int16_t ay = 0x0000;
	int16_t az = 0x0000;
	int16_t gx = 0x0000;
	int16_t gy = 0x0000;
	int16_t gz = 0x0000;
	int16_t pow[4] = { 0,0,0,0 };
	int16_t acell_pitch, acell_roll;
	int16_t pitch, roll;
	int16_t force = 250;
	
	PWM_enable(&g_pwm, PWM_1);
	PWM_enable(&g_pwm, PWM_2);
	PWM_enable(&g_pwm, PWM_3);
	PWM_enable(&g_pwm, PWM_4);

	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);

	
	
	
	
	
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Press any key for calibration!\n\r");
	press_any_key_to_continue();
	MPU6050_calibration();

	UART_polled_tx_string(&g_uart, (const uint8_t *)"Okey, now you can variate force!\n\r");
	press_any_key_to_continue();

	init_timer();
	uint64_t t_prev = micros();
	uint32_t d_t;
	uint8_t print_buf[6];

	int i =0;

	while (1 == 1)
	{
		rx_size = UART_get_rx(&g_uart, rx_buff, sizeof(rx_buff));
		if (rx_size > 0)
		{
			switch (rx_buff[0])
			{
			case 'w':
			{
				force = force + 30;
				break;
			}
			case 's':
			{
				force = force - 30;
				break;
			}
			case 'q':
			{
				force = 0;
				break;
			}
			default:
			{
				break;
			}
			}
		}
		MPU6050_getMotion6(&az, &ay, &ax, &gz, &gy, &gx, 1);
		acell_angle(&ax, &ay, &az, &acell_pitch, &acell_roll);
		d_t = micros() - t_prev;
		t_prev = micros();
		my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &pitch, &roll, d_t);
		my_PID(&pitch, &roll, &pow, &force, &gx, &gy, d_t);
		

//------------------ debug code

/*		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', pow[0]*10);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"ay:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

		force = 200;

		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', pow[3]*10);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"az:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");
*/
//------------------ debug code end

//		PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)t0 + sqrt(pow[0])*25);
//		PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)t0 + sqrt(pow[1])*25);
//		PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)t0 + sqrt(pow[2])*25);
//		PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)t0 + sqrt(pow[3])*25);
	

		i++;

		if(i=500)
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', d_t);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"d_t is:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");
			i=0;
		}





	
	}
    

    return 0;
}



void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
//    uint8_t press_any_key_msg[] = "\n\rPress any key to continue.";

//    UART_send(&g_uart, press_any_key_msg, sizeof(press_any_key_msg));
    do {
        rx_size = UART_get_rx(&g_uart, &rx_char, sizeof(rx_char));
    } while(rx_size == 0);

}

/*------------------------------------------------------------------------------
 * Service the I2C timeout functionality.
 */
void SysTick_Handler(void)
{
    I2C_system_tick(&g_core_i2c0, 10);
}


void FabricIrq0_IRQHandler(void)
{
	I2C_isr(&g_core_i2c0);
}
