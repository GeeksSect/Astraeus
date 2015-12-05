#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/UART/uart.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Modules/micros/micros.h"
#include "Modules/HMC/hmc.h"
#include "Helpers/converter/converter.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"

#include "drivers/corei2c/core_i2c.h"
#include "drivers_config/sys_config/sys_config.h"
#include "drivers/mss_timer/mss_timer.h"
#include "drivers/CorePWM/core_pwm.h"

#include <stdlib.h>
#include <math.h>


void press_any_key_to_continue(void);

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000

#define t0 25 //   threshold voltage TODO it's not real value. must be define by experiment

// Core instances
pwm_instance_t  g_pwm;

void pwm_auto();
// =========================== ACEL DEFINES

void setup()
{
    PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
    uart_init();
    i2c_init(1); // argument no matter
    BMP_calibrate();
    MPU6050_initialize();
    MPU6050_setDLPFMode(2);
    MPU6050_setFullScaleGyroRange(1);

    MSS_TIM1_init(MSS_TIMER_PERIODIC_MODE);

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

    setup();

    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);

    press_any_key_to_continue();
    UART_polled_tx_string(&g_uart, (const uint8_t *)"Hi, I am copter!\n\r");
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
    uint8_t print_buf[12];

    int i = 0;

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
        MPU6050_getMotion9(&az, &ay, &ax, &gz, &gy, &gx, &mz, &my, &mx);
        acell_angle(&ax, &ay, &az, &acell_pitch, &acell_roll);
        d_t = micros() - t_prev;
        t_prev = micros();
        if (d_t > 10000)
        {
            d_t = 5000;
        }
        my_angle(&gx, &gy, &gz, &acell_pitch, &acell_roll, &pitch, &roll, d_t);

        // driving by joystic
        // pitch += pitch0;
        // roll += roll0;

        my_PID(&pitch, &roll, &pow, &force, &gx, &gy, d_t);


//------------------ debug code

        float declination_angle = 0.133; // Magnetic error from http://www.magnetic-declination.com/Belarus/Minsk/323684.html
        float heading = atan2(my, mx);
        heading += declination_angle;

        // Correct for when signs are reversed.
        if(heading < 0)
           heading += 2 * M_PI;
          
        // Check for wrap due to addition of declination.
        if(heading > 2 * M_PI)
           heading -= 2 * M_PI;
         
        // Convert radians to degrees for readability.
        float heading_degrees = heading * 180 / M_PI; 

        for(i = 0; i < 12; i++)
            print_buf[i] = NULL;
        itoa((char *)&print_buf, 'd', (int16_t)(heading * 1000));
        UART_polled_tx_string(&g_uart, (const uint8_t *)"heading (RAD):");
        UART_send(&g_uart, (const uint8_t *)print_buf, 6);
        UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

        for(i = 0; i < 12; i++)
            print_buf[i] = NULL;
        itoa((char *)&print_buf, 'd', (int16_t)heading_degrees);
        UART_polled_tx_string(&g_uart, (const uint8_t *)"heading (DEG):");
        UART_send(&g_uart, (const uint8_t *)print_buf, 6);
        UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

        for(i = 0; i < 12; i++)
            print_buf[i] = NULL;
        itoa((char *)&print_buf, 'd', mz);
        UART_polled_tx_string(&g_uart, (const uint8_t *)"az:");
        UART_send(&g_uart, (const uint8_t *)print_buf, 6);
        UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");


        //------------------ debug code end

        PWM_set_duty_cycle(&g_pwm, PWM_1, (int16_t)t0 + sqrt(pow[0])*20);
        PWM_set_duty_cycle(&g_pwm, PWM_2, (int16_t)t0 + sqrt(pow[1])*20);
        PWM_set_duty_cycle(&g_pwm, PWM_4, (int16_t)t0 + sqrt(pow[2])*20);
        PWM_set_duty_cycle(&g_pwm, PWM_3, (int16_t)t0 + sqrt(pow[3])*20);
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
