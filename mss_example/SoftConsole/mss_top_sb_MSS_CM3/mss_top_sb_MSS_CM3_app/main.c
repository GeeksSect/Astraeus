#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/HMC/HMC.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Helpers/converter/converter.h"
#include "Modules/telemetry/telemetry.h"
#include "Modules/MadgwickAHRS/MadgwickAHRS.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"
#include "drivers/CorePWM/core_pwm.h"
#include "drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <math.h>

#define BAUD_VALUE_115200    26
#define PWM_PRESCALE 1
#define PWM_PERIOD 1000
#define threshold 20
#define magn_skip_val 20
UART_instance_t g_uart;
pwm_instance_t  g_pwm;

void press_any_key_to_continue(void);
void setup();



int main(void)
{

    uint8_t rx_buff[128];
    uint8_t rx_size = 0, rd_pos = 0, wr_pos = 0; // used for receiving BT data
	uint8_t magn_skip = 0, telemetry_skip = 1, telemetry_skip_counter = 0; // skip doing some operation
	int16_t ax = 0, ay = 0, az = 0;
	int16_t gx = 0, gy = 0, gz = 0;
	int16_t mx = 0, my = 0, mz = 0; //raw values from gy87
	int16_t acell_pitch, acell_roll, magn_yaw; // half raw angle
	int16_t pitch, roll, yaw; // true data
	int16_t pitch0 = 0, roll0 = 0, yaw0; // отклонение от ориентиров задаваемое с пульта
	int16_t force = 0;
	int16_t m_power[4] = {0,0,0,0};
	uint64_t t_prev; uint32_t d_t = 0; // variables for time calculation
	uint16_t print_mask = 0;
	uint8_t motor_mask = 0x0F;
	uint8_t i = 0;

    setup();

	press_any_key_to_continue();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Hello, I am quadrocopter!\n");
	press_any_key_to_continue();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Send anything for calibration!\n");
	press_any_key_to_continue();
	
	MPU6050_calibration();
	
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Okay, let's burn it!\n");
	press_any_key_to_continue();

	t_prev = micros();
	while (1 == 1)
	{

		rx_size = UART_get_rx(&g_uart, rx_buff + wr_pos, sizeof(rx_buff) - wr_pos);
		wr_pos+=rx_size;
		while(wr_pos - rd_pos >6) // if something ready to read
		{
			if(rx_buff[rd_pos+6] == 10)
			{
				switch (rx_buff[rd_pos])
				{
					case 'p':
					{
						pitch0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
						break;
					}
					case 'r':
					{
						roll0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
						break;
					}
					case 'y':
					{
						yaw0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
						break;
					}
					case 'f':
					{
						force = (my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'P':
					{
						set_P(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'I':
					{
						set_I(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'D':
					{
						set_D(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'x':
					{
						setLim_P(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'z':
					{
						setLim_D(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'w':
					{
						setLim_I(my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'a':
					{
						motor_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
						break;
					}
					case 'm':
					{
						print_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
						telemetry_skip = 0;
						for(i = 0 ; i< 13 ; i++)
							if(print_mask & (1<<i))
								telemetry_skip++;
						break;
					}

				}
			}
			rd_pos++;
		}
		if(wr_pos >90) // if read buffer come full
		{
			rd_pos=wr_pos = 0;

		}



		if(magn_skip > magn_skip_val)
		{
			HMC_get_true_Data(&mz, &my, &mx);
			my_yaw(&mx, &my, &mz, &magn_yaw, &pitch, &roll);
			magn_skip = 0;
		}
		else
			magn_skip++;
		MPU6050_getMotion6(&az, &ay, &ax, &gz, &gy, &gx, 1);
		MadgwickAHRSupdate((float)gx/(-1876.5298381655986911453492623174f), (float)gy/(-1876.5298381655986911453492623174f), (float)gz/(-1876.5298381655986911453492623174f), ax, ay, az, mx, my, mz);
		d_t = micros() - t_prev;
		t_prev = micros();
		delta = (double)d_t/1000000.;
		roll = atan2 (2*(q0*q1+q2*q3),1-2*(q1*q1+q2*q2))* k * k1;
		pitch = -asin (2*(q0*q2-q3*q1))* k * k1;
		yaw = -atan2 (2*(q0*q3+q1*q2),1-2*(q2*q2+q3*q3))* k * k1;
		pitch+=pitch0;
		roll+=roll0;
		my_PID(&pitch, &roll, &yaw, m_power, &force, &gx, &gy, &gz, d_t);
//------------------ send telemetry

		if(telemetry_skip_counter > telemetry_skip)
		{
			telemetry_skip_counter = 0;

			send_telemetry(&g_uart,
					print_mask,
					pitch, roll, yaw,
					get_P_p(), get_I_p(), get_D_p(),

					get_P_r(), get_I_r(), get_D_r(),
					get_P_y(), get_I_y(), get_D_y(),
					d_t);
		}
		else
			telemetry_skip_counter++;
		//------------------ send telemetry finished

/*
		if(motor_mask & (1<<0))
			PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)threshold + sqrt(m_power[0])*30);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
		if(motor_mask & (1<<1))
			PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)threshold + sqrt(m_power[1])*30);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
		if(motor_mask & (1<<2))
			PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)threshold + sqrt(m_power[2])*30);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
		if(motor_mask & (1<<3))
			PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)threshold + sqrt(m_power[3])*30);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
*/

		if(motor_mask & (1<<0))
			PWM_set_duty_cycle(&g_pwm, PWM_1, m_power[0]);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
		if(motor_mask & (1<<1))
			PWM_set_duty_cycle(&g_pwm, PWM_2, m_power[1]);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
		if(motor_mask & (1<<2))
			PWM_set_duty_cycle(&g_pwm, PWM_4, m_power[2]);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
		if(motor_mask & (1<<3))
			PWM_set_duty_cycle(&g_pwm, PWM_3, m_power[3]);
		else
			PWM_set_duty_cycle(&g_pwm, PWM_3, 0);





	
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
void setup()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
	i2c_init(1); // argument no matter
	BMP_calibrate();
	MPU6050_initialize();
	MPU6050_setDLPFMode(0x03);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_1000);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
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
    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();

}


