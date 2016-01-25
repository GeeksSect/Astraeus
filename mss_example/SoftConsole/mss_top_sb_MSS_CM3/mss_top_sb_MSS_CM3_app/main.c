#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/UART/uart.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/HMC/hmc.h"
#include "Modules/micros/micros.h"
#include "Modules/PWM/pwm.h"
#include "Helpers/converter/converter.h"
#include "Helpers/debug/logger.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"
#include "drivers_config/sys_config/sys_config.h"
#include "drivers/mss_timer/mss_timer.h"

#include <stdlib.h>
#include <math.h>


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

    press_any_key_to_continue();
    uart_print((const uint8_t *)"Hi, I am copter!\n\r");
    press_any_key_to_continue();

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
	uint8_t m_pass = 0;

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

    start_timer();
    uint64_t t_prev = micros();
    uint32_t d_t;

	int8_t rx_buf;

	while (1 == 1)
	{
		rx_size = UART_get_rx(&g_uart, rx_buff, sizeof(rx_buff));
				if (rx_size > 0)
				{
					switch (rx_buff[0])
					{
					case 'U':
					{
						force = force + 30;
						break;
					}
					case 'D':
					{
						force = force - 30;
						break;
					}
					case 'w':
					{
						pitch0 += 10;
						break;
					}
					case 's':
					{
						pitch0 -= 10;
						break;
					}
					case 'a':
					{
						roll0 += 10;
						break;
					}
					case 'd':
					{
						roll0 -= 10;
						break;
					}
					case 'Q':
					{
						force = 0;
						break;
					}
					case 'q':
					{
						roll0 = 0;
						pitch0 =0;
						break;
					}
					case 'B':
					{
						inc_P();
						break;
					}
					case 'N':
					{
						inc_I();
						break;
					}
					case 'M':
					{
						inc_D();
						break;
					}
					case 'b':
					{
						dec_P();
						break;
					}
					case 'n':
					{
						dec_I();
						break;
					}
					case 'm':
					{
						dec_D();
						break;
					}
					default:
					{
						break;
					}
					}
				}

		if(m_pass>4)
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
		if(d_t>15000)
		{
			d_t = 15000;
		}
		my_yaw(&mx, &my, &mz, &magn_yaw, &pitch, &roll);
		my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &magn_yaw, &pitch, &roll, &yaw, d_t);
		pitch+=pitch0;
		roll+=roll0;
		my_PID(&pitch, &roll, &yaw, &pow, &force, &gx, &gy, &gz, d_t);



//------------------ send telemetry

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
		//------------------ send telemetry finished


		PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)t0 + sqrt(pow[0])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)t0 + sqrt(pow[1])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)t0 + sqrt(pow[2])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)t0 + sqrt(pow[3])*30);







	
	}
    return 0;
}



void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
    do {
        rx_size = uart_get(&rx_char, sizeof(rx_char));
    } while(rx_size == 0);
}
