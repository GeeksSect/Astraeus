/*
 * converter.h
 * Convert type to other type
 */
#ifndef CONVERTER_H_
#define CONVERTER_H_

#include <stdint.h>

/* Convert int to chat */
void itoa
(
    char *buf,
    int base,
    int d
);

/* Convert uint8_t[2] to uint16_t */
uint16_t twobtoi(uint8_t buf[2]);

int16_t my_atoi(uint8_t *buf,
                uint8_t l);

#endif /* CONVERTER_H_ */
