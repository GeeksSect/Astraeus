/*
 * copter.c
 *
 *  Created on: Nov 12, 2015
 *      Author: Vladimir
 */

#include "copter.h"
#include "drivers/CorePWM/core_pwm.h"
#include "mss_top_hw_platform.h"

pwm_instance_t  g_pwm;

uint16_t duty_min = 0;
uint16_t duty_max = 1000;
uint16_t duty_step = 100;

uint16_t* get_copter_screw_from_index(uint8_t index);
uint16_t get_copter_screw_value_from_index(uint8_t index);

void copter_init() {
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);

	g_copter_screw_capacity.sc1 = 0;
	g_copter_screw_capacity.sc2 = 0;
	g_copter_screw_capacity.sc3 = 0;
	g_copter_screw_capacity.sc4 = 0;
	g_copter_screw_capacity.err = 0;

	PWM_enable(&g_pwm, PWM_1);
	PWM_enable(&g_pwm, PWM_2);
	PWM_enable(&g_pwm, PWM_3);
	PWM_enable(&g_pwm, PWM_4);

	PWM_set_duty_cycle(&g_pwm, PWM_1, g_copter_screw_capacity.sc1);
	PWM_set_duty_cycle(&g_pwm, PWM_2, g_copter_screw_capacity.sc2);
	PWM_set_duty_cycle(&g_pwm, PWM_3, g_copter_screw_capacity.sc3);
	PWM_set_duty_cycle(&g_pwm, PWM_4, g_copter_screw_capacity.sc4);
}

void copter_set_capacity(uint8_t index, uint16_t capacity) {
	uint16_t duty_cycle = get_copter_screw_value_from_index(index);

	if (duty_cycle > duty_max){
		duty_cycle = duty_max;
	}

	*(get_copter_screw_from_index(index)) = duty_cycle;
	PWM_set_duty_cycle(&g_pwm, index, duty_cycle);
}

void copter_increase_capacity(uint8_t index) {
	copter_set_capacity(index, get_copter_screw_value_from_index(index) + duty_step);
}

void copter_decrease_capacity(uint8_t index) {
	uint16_t duty_cycle = get_copter_screw_value_from_index(index);

	duty_cycle = (duty_cycle - duty_step >= duty_min) ?
				  duty_cycle - duty_step :
				  duty_min;

	copter_set_capacity(index, duty_cycle);
}

uint16_t* get_copter_screw_from_index(uint8_t index) {
	switch (index) {
	case 1: return &(g_copter_screw_capacity.sc1);
	case 2: return &(g_copter_screw_capacity.sc2);
	case 3: return &(g_copter_screw_capacity.sc3);
	case 4: return &(g_copter_screw_capacity.sc4);
	default: return &(g_copter_screw_capacity.err);
	}
}

uint16_t get_copter_screw_value_from_index(uint8_t index) {
	return *(get_copter_screw_from_index(index));
}
