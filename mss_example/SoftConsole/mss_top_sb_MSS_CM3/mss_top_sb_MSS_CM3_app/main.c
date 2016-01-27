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
 * Baud value to achieve a 115200 baud rate with a 70 MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_115200    37

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

    uint8_t rx_buff[128];
    uint8_t rx_size = 0, rd_pos = 0, wr_pos = 0;
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
	uint8_t m_pass = 0, telemetry_pass = 0;

	int16_t ax = 0x0000;
	int16_t ay = 0x0000;
	int16_t az = 0x0000;
	int16_t gx = 0x0000;
	int16_t gy = 0x0000;
	int16_t gz = 0x0000;
	int16_t pow[4] = { 0,0,0,0 };
	int16_t acell_pitch, acell_roll, magn_yaw;
	int16_t pitch, roll, yaw;
	int16_t pitch0 = 0, roll0 = 0;
	int16_t force = 0;


	
	
	
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Are you ready for calibration?\n\r");
	press_any_key_to_continue();
	MPU6050_calibration();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Okey, now you can variate force!\n\r");
	press_any_key_to_continue();

	init_timer();
	uint64_t t_prev = micros();
	uint32_t d_t;
	uint8_t print_buf[8];

	int i =0;

	while (1 == 1)
	{

		rx_size = UART_get_rx(&g_uart, rx_buff + wr_pos, sizeof(rx_buff) - wr_pos);
		wr_pos+=rx_size;
		while(wr_pos - rd_pos >2)
		{
			if(rx_buff[rd_pos+3] == 10)
			{
				switch (rx_buff[rd_pos])
				{
					case 'p':
					{
						pitch0 = (my_atoi (rx_buff + rd_pos + 1, 2) - 50)*40;
						break;
					}
					case 'r':
					{
						roll0 = (my_atoi (rx_buff + rd_pos + 1, 2) - 50)*40;
						break;
					}
					case 'y':
					{
//						yaw0 = rx_buff[rd_pos+1]*5;
						break;
					}
					case 'f':
					{
						force = (my_atoi (rx_buff + rd_pos + 1, 2))*10;
						break;
					}
					case 'P':
					{
						set_P(my_atoi (rx_buff + rd_pos + 1, 2));
						break;
					}
					case 'I':
					{
						set_I(my_atoi (rx_buff + rd_pos + 1, 2));
						break;
					}
					case 'D':
					{
						set_D(my_atoi (rx_buff + rd_pos + 1, 2));
						break;
					}

				}
			}
			rd_pos++;
		}
		if(wr_pos >90)
		{
			rd_pos=wr_pos = 0;

		}
		if(m_pass>10)
		{
			HMC_get_true_Data(&mz, &my, &mx);
			m_pass = 0;
		}
		else
			m_pass++;
		MPU6050_getMotion6(&az, &ay, &ax, &gz, &gy, &gx, 1);
		acell_angle(&ax, &ay, &az, &acell_pitch, &acell_roll);
		d_t = micros() - t_prev;
		t_prev = micros();
		if(d_t>25000)
		{
			d_t = 0;
		}
		my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &magn_yaw, &pitch, &roll, &yaw, d_t);
		my_yaw(&mx, &my, &mz, &magn_yaw, &pitch, &roll);

		pitch+=pitch0;
		roll+=roll0;
		my_PID(&pitch, &roll, &yaw, pow, &force, &gx, &gy, &gz, d_t);


//------------------ send telemetry

		if(telemetry_pass==10)
		{
			telemetry_pass = 0;
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', pitch*3);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"A:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', roll*3);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"B:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', yaw*3);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"C:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");


			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_P_p()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"D:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_I_p()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"E:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_D_p()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"F:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_P_r()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"G:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_I_r()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"H:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_D_r()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"I:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_P_y()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"J:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_I_y()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"K:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', get_D_y()*15);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"L:");
			UART_send(&g_uart, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&g_uart, (const uint8_t *)"\nW:\n");
		}
		else
			telemetry_pass++;
		//------------------ send telemetry finished

/*
		PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)t0 + sqrt(pow[0])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)t0 + sqrt(pow[1])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)t0 + sqrt(pow[2])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)t0 + sqrt(pow[3])*30);
*/






	
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
