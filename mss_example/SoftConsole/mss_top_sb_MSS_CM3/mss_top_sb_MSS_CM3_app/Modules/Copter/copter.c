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

void copter_init() {
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

void copter_initialize() {
	uint8_t pwm_enabled = (1 << 8) - 1;
	uint8_t pwm_1_mask = 1;
	uint8_t pwm_2_mask = 1 << 1;
	uint8_t pwm_3_mask = 1 << 2;
	uint8_t pwm_4_mask = 1 << 3;

	uint16_t duty_cycle = 0;
	uint16_t duty_step = 100;
	uint16_t duty_max = 1000;

	uint8_t rx_size = 0;
	uint8_t rx_buff[1];

	uint8_t work_flag = 1;

	while(work_flag)
	{
		//TODO: rx_size init
		//rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
		if (rx_size > 0)
		{
			switch (rx_buff[0])
			{
			case '1':
			{
				if (pwm_enabled & pwm_1_mask)
				{
					PWM_disable(&g_pwm, PWM_1);
					pwm_enabled &= ~(pwm_1_mask);
				} else {
					PWM_enable(&g_pwm, PWM_1);
					pwm_enabled |= pwm_1_mask;
				}
				break;
			}
			case '2':
			{
				if (pwm_enabled & pwm_2_mask)
				{
					PWM_disable(&g_pwm, PWM_2);
					pwm_enabled &= ~(pwm_2_mask);
				} else {
					PWM_enable(&g_pwm, PWM_2);
					pwm_enabled |= pwm_2_mask;
				}
				break;
			}
			case '3':
			{
				if (pwm_enabled & pwm_3_mask)
				{
					PWM_disable(&g_pwm, PWM_3);
					pwm_enabled &= ~(pwm_3_mask);
				} else {
					PWM_enable(&g_pwm, PWM_3);
					pwm_enabled |= pwm_3_mask;
				}
				break;
			}
			case '4':
			{
				if (pwm_enabled & pwm_4_mask)
				{
					PWM_disable(&g_pwm, PWM_4);
					pwm_enabled &= ~(pwm_4_mask);
				} else {
					PWM_enable(&g_pwm, PWM_4);
					pwm_enabled |= pwm_4_mask;
				}
				break;
			}
			case 'w':
			{
				duty_cycle = (duty_step + duty_cycle <= duty_max) ?
							 duty_step + duty_cycle :
							 duty_cycle;
				break;
			}
			case 's':
			{
				duty_cycle = (duty_cycle - duty_step >= 0) ?
							  duty_cycle - duty_step:
							  duty_cycle;
				break;
			}
			case 'q':
			{
				work_flag = 0;
				break;
			}
			default:
			{
				break;
			}
			} // end switch

			if (pwm_enabled & pwm_1_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_1, duty_cycle);
			}
			if (pwm_enabled & pwm_2_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_2, duty_cycle);
			}
			if (pwm_enabled & pwm_3_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_3, duty_cycle);
			}
			if (pwm_enabled & pwm_4_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_4, duty_cycle);
			}
		}
	}
}
