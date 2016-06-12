#include "Modules/bmp085_timer/bmp085_timer.h"
#include "Modules/I2C/i2c.h"
#include "Modules/HMC/HMC.h"

#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Modules/my_types/my_types.h"
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

#define gyro1000_to_radians 1920.0
#define pitch_callibr 214
#define roll_callibr 0



void press_any_key_to_continue(void);
void setup();



int main(void)
{

	int16_t ax = 0, ay = 0, az = 0;
	int16_t gx = 0, gy = 0, gz = 0;
	int16_t mx = 0, my = 0, mz = 0; //raw values from gy87
	int16_t pitch, roll, yaw; // euclid angles



	int16_t m_power[4] = {0,0,0,0};
	uint64_t t_prev; uint32_t d_t = 4000; // variables for time calculation

	uint8_t motor_mask_RC;
	int16_t pitch_RC = 0, roll_RC = 0, yaw_RC = 0; // angles which set by radio control
	int16_t force_RC = 0;



//	float altitude;

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

		while(micros()-t_prev<3995);//active sleep
		d_t = micros()-t_prev;
		t_prev += 4000;

		MPU6050_getMotion6(&ax, &ay, &az, &gx, &gy, &gz, 1);
		MadgwickAHRSupdateIMU((float)gx/gyro1000_to_radians, (float)gy/gyro1000_to_radians, (float)(gz)/(gyro1000_to_radians), -ax, -ay, -az);
		get_euclid(&pitch, &roll, &yaw);

		update_yaw_RC();

		get_RC_angles(&pitch_RC, &roll_RC, &yaw_RC);
		pitch += pitch_RC-pitch_callibr;
		roll += roll_RC-roll_callibr;
		yaw = degree_sub360(yaw, yaw_RC);



		force_RC = get_force();
		my_PID(pitch, roll, yaw, gx, gy, gz, force_RC, m_power);
		lose_update();

		my_ESC(m_power, force_RC);


//		BMP085_update(&altitude);
//		gps_update();

		update_telemetry(
				pitch, roll, yaw,
				get_P_p(), get_I_p(), get_D_p(),

				get_P_r(), get_I_r(), get_D_r(),
				gx*8, gy*8, gz*8,
				d_t, 0);

		motor_mask_RC = get_motor_mask();
		motors_set(m_power, motor_mask_RC);
	
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
//	init_GPS();
	i2c_init(1); // argument no matter
//	BMP085_begin(BMP085_ULTRAHIGHRES);
	MPU6050_initialize();
	MPU6050_setDLPFMode(0x03);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_1000);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
    MPU6050_setSampleRateDiv(3);
	HMC_init();
	setLim_I(30);

	MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);
    init_timer();// run timer for micros();

}


