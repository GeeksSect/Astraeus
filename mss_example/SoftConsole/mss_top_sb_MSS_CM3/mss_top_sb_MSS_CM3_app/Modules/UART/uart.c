#include "uart.h"

void uart_init()
{
    UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
}

void uart_print(const uint8_t* message)
{
	UART_polled_tx_string(&g_uart, message);
}

void uart_send(const uint8_t* data, size_t size)
{
	UART_send(&g_uart, data, size);
}

size_t uart_get(uint8_t* buffer, size_t size)
{
	return UART_get_rx(&g_uart, buffer, size);
}
