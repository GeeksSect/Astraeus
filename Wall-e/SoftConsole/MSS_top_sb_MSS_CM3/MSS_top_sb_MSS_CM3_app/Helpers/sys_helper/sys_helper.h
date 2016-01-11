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
	uint32_t time_us,
	uint32_t frequency_mhz
);

#ifdef __cplusplus
}
#endif

#endif /* SYS_HELPER_H_ */
