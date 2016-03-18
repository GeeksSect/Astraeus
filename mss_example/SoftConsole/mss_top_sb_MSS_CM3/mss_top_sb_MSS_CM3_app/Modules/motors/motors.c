
#include "motors.h"

void motors_init()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	PWM_enable(&g_pwm, PWM_1);
	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_enable(&g_pwm, PWM_2);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_enable(&g_pwm, PWM_3);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_enable(&g_pwm, PWM_4);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
}
void motors_set(int16_t * m_power, uint8_t mask)
{

	if(mask & (1<<0))
		PWM_set_duty_cycle(&g_pwm, PWM_1, m_power[0]);
	else
		PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	if(mask & (1<<1))
		PWM_set_duty_cycle(&g_pwm, PWM_2, m_power[1]);
	else
		PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	if(mask & (1<<2))
		PWM_set_duty_cycle(&g_pwm, PWM_4, m_power[2]);
	else
		PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
	if(mask & (1<<3))
		PWM_set_duty_cycle(&g_pwm, PWM_3, m_power[3]);
	else
		PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
}
