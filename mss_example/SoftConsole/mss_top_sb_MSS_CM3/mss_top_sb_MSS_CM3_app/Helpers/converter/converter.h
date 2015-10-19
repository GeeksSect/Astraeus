/*
 * converter.h
 * Convert type to other type
 */

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

#ifdef __cplusplus
}
#endif

#endif /* CONVERTER_H_ */
