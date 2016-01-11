/*
 * micros.h
 *
 *  Created on: 25.11.2015
 *      Author: vetal
 */

#ifndef MICROS_H_
#define MICROS_H_

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#include "system_m2sxxx.h"
#include "drivers_config/sys_config/sys_config_mss_clocks.h"
#include "drivers/mss_timer/mss_timer.h"

#define frq MSS_SYS_M3_CLK_FREQ // timer clock speed

static uint32_t t_h = 0;


uint64_t micros();

void init_timer();
void start_timer();
void stop_timer();

void Timer1_IRQHandler();

#endif /* MICROS_H_ */

