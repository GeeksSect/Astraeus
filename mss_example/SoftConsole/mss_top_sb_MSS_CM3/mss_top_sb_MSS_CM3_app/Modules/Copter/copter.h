/*
 * copter.h
 *
 *  Created on: Nov 12, 2015
 *      Author: Vladimir
 */

#ifndef COPTER_H_
#define COPTER_H_

#include <stdint.h>

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000

struct Copter_screw
{
    uint16_t sc1;
    uint16_t sc2;
    uint16_t sc3;
    uint16_t sc4;
    uint16_t err;
} g_copter_screw_capacity;

void copter_init();

/* index - index of copter screw (1 to 4)*/
void copter_set_capacity(uint8_t index, uint16_t capacity);
void copter_increase_capacity(uint8_t index);
void copter_decrease_capacity(uint8_t index);

#endif /* COPTER_H_ */
