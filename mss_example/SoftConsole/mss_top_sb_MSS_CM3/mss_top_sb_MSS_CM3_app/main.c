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

#define t0 25 //   threshold voltage TODO it's not real value. must be define by experiment

void setup()
{
    init_timer();
    pwm_init();
    uart_init();
    i2c_init(1); // argument no matter
    BMP_calibrate();
    MPU6050_initialize();
    MPU6050_setDLPFMode(2);
    MPU6050_setFullScaleGyroRange(1);

    MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);
}

int main(void)
{
    uint8_t rx_size = 0;
    uint8_t rx_buff[8];

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

    int16_t ax = 0x0000;
    int16_t ay = 0x0000;
    int16_t az = 0x0000;
    int16_t gx = 0x0000;
    int16_t gy = 0x0000;
    int16_t gz = 0x0000;
    int16_t mx = 0x0000;
    int16_t my = 0x0000;
    int16_t mz = 0x0000;

    int16_t pow[4] = { 0,0,0,0 };
    int16_t acell_pitch, acell_roll;
    int16_t pitch, roll;
    int16_t pitch0 = 0, roll0 = 0;
    int16_t force = 0;

    uart_print((const uint8_t *)"Press any key for calibration!\n\r");
    press_any_key_to_continue();
    MPU6050_calibration();

    uart_print((const uint8_t *)"Okey, now you can variate force!\n\r");
    press_any_key_to_continue();

    start_timer();
    uint64_t t_prev = micros();
    uint32_t d_t;

	int8_t rx_buf;

	while (1 == 1)
	{
		delay(20000, 50);
		HMC_getHeading(&ax, &ay, &az);

        log_variable("I_p x10", get_I_p() * 10);
        log_variable("P_p x10", get_P_p() * 10);
        log_variable("D_p x10", get_I_p() * 10);
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
