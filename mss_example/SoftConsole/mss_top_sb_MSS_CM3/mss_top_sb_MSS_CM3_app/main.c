#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/UART/uart.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/HMC/hmc.h"
#include "Modules/micros/micros.h"
#include "Modules/PWM/pwm.h"
#include "Helpers/converter/converter.h"
<<<<<<< HEAD
#include "Helpers/debug/logger.h"
=======
#include "Modules/telemetry/telemetry.h"
>>>>>>> compass

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"
#include "drivers_config/sys_config/sys_config.h"
#include "drivers/mss_timer/mss_timer.h"

#include <stdlib.h>
#include <math.h>
<<<<<<< HEAD


void press_any_key_to_continue(void);

/*------------------------------------------------------------------------------
 * I2C buffers. These are the buffers where data written transferred via I2C
 * will be stored. RX
 */
static uint8_t g_slave_rx_buffer[BUFFER_SIZE];
static uint8_t g_slave_tx_buffer[BUFFER_SIZE] = "<<-------Slave Tx data ------->>";
static uint8_t g_master_rx_buf[BUFFER_SIZE];
static uint8_t g_master_tx_buf[BUFFER_SIZE];
=======
>>>>>>> compass

#define BAUD_VALUE_115200    26
#define PWM_PRESCALE 1
#define PWM_PERIOD 1000
#define threshold 20

UART_instance_t g_uart;
pwm_instance_t  g_pwm;

void press_any_key_to_continue(void);
void setup();


<<<<<<< HEAD
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
=======

int main(void)
{

    uint8_t rx_buff[128];
    uint8_t rx_size = 0, rd_pos = 0, wr_pos = 0; // used for receiving BT data
	uint8_t magn_skip = 0, telemetry_skip = 0; // skip doing some operation
	int16_t ax = 0, ay = 0, az = 0;
	int16_t gx = 0, gy = 0, gz = 0;
	int16_t mx = 0, my = 0, mz = 0; //raw values from gy87
	int16_t acell_pitch, acell_roll, magn_yaw; // half raw angle
	int16_t pitch, roll, yaw; // true data
	int16_t pitch0 = 0, roll0 = 0, yaw0; // отклонение от ориентиров задаваемое с пульта
	int16_t force = 0;
	int16_t m_power[4] = {0,0,0,0};
	uint64_t t_prev; uint32_t d_t = 0; // variables for time calculation
>>>>>>> compass


<<<<<<< HEAD
    press_any_key_to_continue();
    uart_print((const uint8_t *)"Hi, I am copter!\n\r");
    press_any_key_to_continue();
=======
    setup();
>>>>>>> compass

	press_any_key_to_continue();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Hello, I am quadrocopter!\n\r");
	press_any_key_to_continue();
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Send anything calibration?\n\r");
	press_any_key_to_continue();
	
	MPU6050_calibration();
	
	UART_polled_tx_string(&g_uart, (const uint8_t *)"Okay, let's burn it!\n\r");
	press_any_key_to_continue();

<<<<<<< HEAD
    start_timer();
    uint64_t t_prev = micros();
    uint32_t d_t;

	int8_t rx_buf;

	while (1 == 1)
	{
		rx_size = UART_get_rx(&g_uart, rx_buff, sizeof(rx_buff));
				if (rx_size > 0)
=======
	t_prev = micros();
	while (1 == 1)
	{

		rx_size = UART_get_rx(&g_uart, rx_buff + wr_pos, sizeof(rx_buff) - wr_pos);
		wr_pos+=rx_size;
		while(wr_pos - rd_pos >2) // if something ready to read
		{
			if(rx_buff[rd_pos+3] == 10)
			{
				switch (rx_buff[rd_pos])
>>>>>>> compass
				{
					case 'p':
					{
						pitch0 = (my_atoi (rx_buff + rd_pos + 1, 2) - 50)*15;
						break;
					}
					case 'r':
					{
						roll0 = (my_atoi (rx_buff + rd_pos + 1, 2) - 50)*15;
						break;
					}
					case 'y':
					{
						yaw0 = (my_atoi (rx_buff + rd_pos + 1, 2) - 50)*15;
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
					case 'x':
					{
						setLim_P(my_atoi (rx_buff + rd_pos + 1, 2));
						break;
					}
					case 'z':
					{
						setLim_D(my_atoi (rx_buff + rd_pos + 1, 2));
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
		if(magn_skip>10)
		{
			HMC_get_true_Data(&mz, &my, &mx);
			magn_skip = 0;
		}
		else
			magn_skip++;
		MPU6050_getMotion6(&az, &ay, &ax, &gz, &gy, &gx, 1); // get raw data
		acell_angle(&ax, &ay, &az, &acell_pitch, &acell_roll);
		d_t = micros() - t_prev;
		t_prev = micros();
		if(d_t>25000) // if shit happened and delta time is so big
		{
			d_t = 0;
		}
		my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &magn_yaw, &pitch, &roll, &yaw, d_t);
		my_yaw(&mx, &my, &mz, &magn_yaw, &pitch, &roll);

		pitch+=pitch0;
		roll+=roll0;
		my_PID(&pitch, &roll, &yaw, m_power, &force, &gx, &gy, &gz, d_t);


//------------------ send telemetry

		if(telemetry_skip==3)
		{
			telemetry_skip = 0;

			send_telemetry(&g_uart,
					0b00000111, 0b00000000,
					pitch, roll, yaw,
					get_P_p(), get_I_p(), get_D_p(),
					get_P_r(), get_I_r(), get_D_r(),
					get_P_y(), get_I_y(), get_D_y(),
					d_t);
		}
		else
			telemetry_skip++;
		//------------------ send telemetry finished


		PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)threshold + sqrt(m_power[0])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)threshold + sqrt(m_power[1])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)threshold + sqrt(m_power[2])*30);
		PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)threshold + sqrt(m_power[3])*30);







	
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
<<<<<<< HEAD
=======

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
>>>>>>> compass
}
void setup()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
	i2c_init(1); // argument no matter
	BMP_calibrate();
	MPU6050_initialize();
	MPU6050_setDLPFMode(3);
	MPU6050_setFullScaleGyroRange(1); // it's must set range of gyro's data 	+-500(deg/sec)
	HMC_init();
	init_timer();// run timer for micros();

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
}


