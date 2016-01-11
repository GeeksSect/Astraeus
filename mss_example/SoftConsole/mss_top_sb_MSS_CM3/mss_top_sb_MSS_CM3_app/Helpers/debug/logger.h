#ifndef LOGGER_H_
#define LOGGER_H_

#include "../../Modules/UART/uart.h"
#include "../converter/converter.h"

#define LOGGER_BUFFER_SIZE 80

uint8_t log_buf[LOGGER_BUFFER_SIZE];

void log_variable(const uint8_t* name, int64_t value);

#endif // LOGGER_H_