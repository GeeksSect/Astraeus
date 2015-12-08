#ifndef PWM_H_
#define PWM_H_

#include "drivers/CorePWM/core_pwm.h"
#include "mss_top_hw_platform.h"

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000

pwm_instance_t  g_pwm;

void pwm_init();

void pwm_setDutyCycle(pwm_id_t pwm_id, uint32_t duty_cycle);

#endif // PWM_H_