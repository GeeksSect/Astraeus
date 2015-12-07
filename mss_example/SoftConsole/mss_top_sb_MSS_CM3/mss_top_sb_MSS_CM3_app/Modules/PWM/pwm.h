#ifndef PWM_H_
#define PWM_H_

#include "drivers/CorePWM/core_pwm.h"
#include "mss_top_hw_platform.h"

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000

pwm_instance_t  g_pwm;

void pwm_init();

#endif // PWM_H_