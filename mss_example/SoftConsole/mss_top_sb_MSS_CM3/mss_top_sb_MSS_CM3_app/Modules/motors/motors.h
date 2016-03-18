/*
 * motors.h
 *
 *  Created on: 20.02.2016
 *      Author: vetal
 */

#ifndef MOTORS_H_
#define MOTORS_H_
#include "drivers/CorePWM/core_pwm.h"
#include "mss_top_hw_platform.h"
#include <stdint.h>
#include <math.h>
#define PWM_PRESCALE 1
#define PWM_PERIOD 1000
pwm_instance_t  g_pwm;

void motors_init();
void motors_set(int16_t * m_power, uint8_t mask);
#endif /* MOTORS_H_ */
