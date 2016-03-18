/*
 * helpers.h
 *
 *  Created on: 11.03.2016
 *      Author: vetal
 */

#ifndef HELPERS_H_
#define HELPERS_H_

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#define degree_to_int 60

int32_t my_atoi(uint8_t *buf, uint8_t l);
void itoa (char *buf, int base, int d);
int16_t degree_sub360(int16_t val1, int16_t val2);
void limit_value(int16_t * val, int16_t lim);
void limit_value32(int32_t * val, int32_t lim);
void limit_value64(int64_t * val, int64_t lim);
uint8_t no_overlim(int16_t val, int16_t lim);
#endif /* HELPERS_H_ */
