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

#define t0 25

// Core instances
UART_instance_t g_uart;
pwm_instance_t  g_pwm;



void setup()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
	i2c_init(1); // argument no matter
	BMP_calibrate();
	MPU6050_initialize();
	MPU6050_setDLPFMode(5);
	MPU6050_setFullScaleGyroRange(1);
	HMC_init();

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

    uint8_t rx_size = 0;
    uint8_t rx_buff[9];
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
	
	
	
	
	int16_t mx = 0x0000;
	int16_t my = 0x0000;
	int16_t mz = 0x0000;


	
	
	
	

	UART_polled_tx_string(&g_uart, (const uint8_t *)"Okey, now you can variate force!\n\r");
	press_any_key_to_continue();

	init_timer();
	uint64_t t_prev = micros();
	uint32_t d_t;
	uint8_t print_buf[12];

	int i =0;

	while (1 == 1)
	{
		/*
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
		 */
		HMC_get_true_Data(&mx, &my, &mz);
		d_t = micros() - t_prev;
		t_prev = micros();

		if(d_t>10000)
		{
			d_t=5000;
		}
		

//------------------ debug code
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', mx);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"ax:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

		for(i=0; i<12; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', my);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"ay:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

		for(i=0; i<12; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', mz);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"az:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");


		//------------------ debug code end

	







	
	}
    

    return 0;
}



void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
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
