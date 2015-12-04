/*
 * uart.h
 *
 *  Created on: 03.12.2015
 *      Author: kruci_000
 */

#ifndef UART_H_
#define UART_H_

#include "core_uart_apb.h"
#include "mss_top_hw_platform.h"

/*****************
 * Core instance *
 *****************/
UART_instance_t g_uart;

/******************************************************************************
 * Baud value to achieve a 115200 baud rate with a 50 MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_115200    26

void uart_init();

#endif /* UART_H_ */
