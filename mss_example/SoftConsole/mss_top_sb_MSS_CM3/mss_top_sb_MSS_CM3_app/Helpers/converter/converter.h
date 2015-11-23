/*
 * converter.h
 * Convert type to other type
 */

#include <stdint.h>

#ifndef CONVERTER_H_
#define CONVERTER_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Convert int to chat */
void itoa
(
	char *buf,
	int base,
	int d
);

/* Convert uint8_t[2] to uint16_t */
uint16_t twobtoi(uint8_t *buf);

#ifdef __cplusplus
}
#endif

#endif /* CONVERTER_H_ */
