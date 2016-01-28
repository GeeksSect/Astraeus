/*
 * telemetry.c
 *
 *  Created on: 28.01.2016
 *      Author: vetal
 */

#include "telemetry.h"


void send_telemetry(UART_instance_t * g_uart, uint8_t mask1, uint8_t mask2, int16_t a, int16_t b, int16_t c, int16_t d, int16_t e, int16_t f, int16_t g, int16_t h, int16_t i, int16_t j, int16_t K, int16_t l, int16_t m)
{
	uint8_t print_buf[8];
	if((mask1 & (1 << 0)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', a*5);
		UART_polled_tx_string(g_uart, (const uint8_t *)"A");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}

	if((mask1 & (1 << 1)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', b*5);
		UART_polled_tx_string(g_uart, (const uint8_t *)"B");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 2)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', c*3);
		UART_polled_tx_string(g_uart, (const uint8_t *)"C");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 3)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', d*150);
		UART_polled_tx_string(g_uart, (const uint8_t *)"D");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 4)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', e*150);
		UART_polled_tx_string(g_uart, (const uint8_t *)"E");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 5)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', f*150);
		UART_polled_tx_string(g_uart, (const uint8_t *)"F");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 6)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', g*50);
		UART_polled_tx_string(g_uart, (const uint8_t *)"G");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask1 & (1 << 7)) != 0)
	{
	for(i=0; i<6; i++)
		print_buf[i] = NULL;
	itoa((char *)&print_buf, 'd', h*50);
	UART_polled_tx_string(g_uart, (const uint8_t *)"H");
	UART_send(g_uart, (const uint8_t *)print_buf, 6);
	UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask2 & (1 << 0)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', i*50);
		UART_polled_tx_string(g_uart, (const uint8_t *)"I");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask2 & (1 << 1)) != 0)
	{
		for(i=0; i<6; i++)
			print_buf[i] = NULL;
		itoa((char *)&print_buf, 'd', j*150);
		UART_polled_tx_string(g_uart, (const uint8_t *)"J");
		UART_send(g_uart, (const uint8_t *)print_buf, 6);
		UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask2 & (1 << 2)) != 0)
	{
	for(i=0; i<6; i++)
		print_buf[i] = NULL;
	itoa((char *)&print_buf, 'd', K*150);
	UART_polled_tx_string(g_uart, (const uint8_t *)"K");
	UART_send(g_uart, (const uint8_t *)print_buf, 6);
	UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask2 & (1 << 3)) != 0)
	{
	for(i=0; i<6; i++)
		print_buf[i] = NULL;
	itoa((char *)&print_buf, 'd', l*150);
	UART_polled_tx_string(g_uart, (const uint8_t *)"L");
	UART_send(g_uart, (const uint8_t *)print_buf, 6);
	UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}
	if((mask2 & (1 << 4)) != 0)
	{
	for(i=0; i<6; i++)
		print_buf[i] = NULL;
	itoa((char *)&print_buf, 'd', m);
	UART_polled_tx_string(g_uart, (const uint8_t *)"M");
	UART_send(g_uart, (const uint8_t *)print_buf, 6);
	UART_polled_tx_string(g_uart, (const uint8_t *)"\n");
	}

	UART_polled_tx_string(g_uart, (const uint8_t *)"W\n");

}
