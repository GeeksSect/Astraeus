/*
 * bmp.h
 * Module (DOF10)
 * https://www.adafruit.com/datasheets/BST-BMP180-DS000-09.pdf
*/

#ifndef BMP_H_
#define BMP_H_

#include "cpu_types.h"
#include "core_i2c.h"

#ifdef __cplusplus
extern "C" {
#endif


/*-------------------------------------------------------------------------
 * Initialization of module (DOF10)
*/
void BMP_init
(
	i2c_instance_t* i2c_instance,
	uint8_t addr
);

/*-------------------------------------------------------------------------
 * Measure temperature (DOF10)
*/
i2c_status_t BMP_get_temperature
(
	uint8_t* res_buf,
	uint8_t res_len
);

#ifdef __cplusplus
}
#endif

#endif /* BMP_H_ */
