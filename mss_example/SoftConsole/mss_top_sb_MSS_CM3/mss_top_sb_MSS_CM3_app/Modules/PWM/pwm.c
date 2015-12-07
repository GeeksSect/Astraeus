#include "pwm.h"

void pwm_init()
{
    PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);

    PWM_enable(&g_pwm, PWM_1);
    PWM_enable(&g_pwm, PWM_2);
    PWM_enable(&g_pwm, PWM_3);
    PWM_enable(&g_pwm, PWM_4);

    PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
    PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
    PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
    PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
}