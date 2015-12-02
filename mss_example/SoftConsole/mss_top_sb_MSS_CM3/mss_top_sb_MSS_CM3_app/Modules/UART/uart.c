#include "uart.h"

void uart_init() {
    UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
}
