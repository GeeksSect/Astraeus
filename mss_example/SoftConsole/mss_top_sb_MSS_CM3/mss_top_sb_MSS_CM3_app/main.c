#include "Modules/bmp085_timer/bmp085_timer.h"
#include "Modules/I2C/i2c.h"
#include "Modules/HMC/HMC.h"

#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Helpers/converter/converter.h"
#include "Modules/telemetry/telemetry.h"
#include "Modules/MadgwickAHRS/MadgwickAHRS.h"
#include "Modules/motors/motors.h"
#include "Modules/gps_parser/gps_parser.h"
#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"

#include "drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <math.h>

#define BAUD_VALUE_115200    26
#define PWM_PRESCALE 1
#define PWM_PERIOD 1000
#define threshold 20




void press_any_key_to_continue(void);
void setup();



int main(void)
{
     // used for receiving BT data
	int16_t ax = 0, ay = 0, az = 0;
	int16_t gx = 0, gy = 0, gz = 0;
	int16_t mx = 0, my = 0, mz = 0; //raw values from gy87
	int16_t pitch, roll, yaw; // true data
	int16_t pitch0 = 0, roll0 = 0, yaw0; // отклонение от ориентиров задаваемое с пульта
	int16_t force = 0;
	int16_t m_power[4] = {0,0,0,0};
	uint64_t t_prev; uint32_t d_t = 4000; // variables for time calculation

	uint8_t motor_mask = 0x0F;


	float altitude;

    setup();

	press_any_key_to_continue();
	send_messange((const uint8_t *)"Hello, I am quadrocopter!\n");
	press_any_key_to_continue();
	send_messange((const uint8_t *)"Send anything for calibration!\n");
	press_any_key_to_continue();
	
	MPU6050_calibration();
	
	send_messange((const uint8_t *)"Okay, let's burn it!\n");
	press_any_key_to_continue();

	t_prev = micros();
	while (1 == 1) // flight stab loop
	{
		reserve_BT();

		HMC_get_Data(&mx, &my, &mz);

		while(micros()-t_prev<4000);//active sleep
		d_t = micros()-t_prev;
		t_prev += 4000;

		MPU6050_getMotion6(&ax, &ay, &az, &gx, &gy, &gz, 1);
		MadgwickAHRSupdateIMU((float)gx/(-1730.0f), (float)gy/(-1730.0f), (float)gz/(-1730.0f), ax, ay, -az);
		get_euclid(&pitch, &roll, &yaw);

		get_RC_angles(&pitch0, &roll0, &yaw0);
		pitch += pitch0;
		roll += roll0;
		get_force(&force);
		my_PID(&pitch, &roll, &yaw, m_power, &force, &gx, &gy, &gz);
		lose_update(&force);
		my_ESC(m_power, &force);

		BMP085_update(&altitude);

//		gps_update();
		update_telemetry(
				pitch, roll, yaw,
				get_P_p(), get_I_p(), get_D_p(),

				get_P_r(), get_I_r(), get_D_r(),
				get_P_y(), get_I_y(), get_D_y(),
				d_t, 0);

		get_motor_mask(&motor_mask);
		motors_set(m_power, motor_mask);
	
	}


    return 0;
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
	motors_init();
	init_BT();
	init_GPS();
	i2c_init(1); // argument no matter
	BMP085_begin(BMP085_ULTRAHIGHRES);
	MPU6050_initialize();
	MPU6050_setDLPFMode(0x03);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_1000);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
    MPU6050_setSampleRateDiv(3);
	HMC_init();


	MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();

}


