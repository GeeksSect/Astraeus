/*
 * sys_helper.h
 *
 * delay
 */

#ifndef SYS_HELPER_H_
#define SYS_HELPER_H_

#include "cpu_types.h"

#ifdef __cplusplus
extern "C" {
#endif


/*
 * time in us
 * frequency in MHz
 */
void delay
(
	uint32_t time,
	uint32_t frequency
);

#ifdef __cplusplus
}
#endif

#endif /* SYS_HELPER_H_ */
