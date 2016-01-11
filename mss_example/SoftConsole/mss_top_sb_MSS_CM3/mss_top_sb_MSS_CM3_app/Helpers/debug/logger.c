#include "logger.h"

void log_variable(const uint8_t* name, int64_t value)
{
	size_t i;
    for(i = 0; i < LOGGER_BUFFER_SIZE; i++)
        log_buf[i] = 0;
    itoa((char *)&log_buf, 'd', value);
    uart_print(name);
    uart_print((const uint8_t *)":");
    uart_send(log_buf, 12);
    uart_print((const uint8_t *)"\n");
}
