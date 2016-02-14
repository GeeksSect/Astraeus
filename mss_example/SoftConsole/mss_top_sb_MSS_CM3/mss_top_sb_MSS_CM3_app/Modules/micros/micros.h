/*
 * micros.h
 *
 *  Created on: 25.11.2015
 *      Author: vetal
 */

#ifndef MICROS_H_
#define MICROS_H_


#define frq 50000000 // timer clock speed

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#include "system_m2sxxx.h"
#include "drivers/mss_timer/mss_timer.h"

static uint32_t t_h = 0;
static uint16_t lose_connection;

uint64_t micros();

void init_timer();
void stop_timer();
//overflow
void Timer1_IRQHandler();
int32_t my_atoi(uint8_t *buf,
			uint8_t l);
uint16_t get_conn();
void inc_conn();
void reset_conn();


#endif /* MICROS_H_ */

