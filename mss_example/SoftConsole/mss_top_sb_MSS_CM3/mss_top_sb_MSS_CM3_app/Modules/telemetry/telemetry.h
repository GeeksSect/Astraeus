/*
 * telemetry.h
 *
 *  Created on: 28.01.2016
 *      Author: vetal
 */

#ifndef TELEMETRY_H_
#define TELEMETRY_H_
#include <stdlib.h>
#include <math.h>
#include "core_uart_apb.h"
void send_telemetry(UART_instance_t * g_uart,
		uint16_t mask,
		int16_t a, int16_t b, int16_t c,
		int16_t d, int16_t e, int16_t f,
		int16_t g, int16_t h, int16_t i,
		int16_t j, int16_t K, int16_t l,
		int16_t m);

#endif /* TELEMETRY_H_ */
