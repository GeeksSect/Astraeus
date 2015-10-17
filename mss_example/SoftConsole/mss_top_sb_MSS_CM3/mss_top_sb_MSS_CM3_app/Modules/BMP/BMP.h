/*
 * bmp.h
 * Module (DOF10)
 * https://www.adafruit.com/datasheets/BST-BMP180-DS000-09.pdf
*/

#ifndef BMP_H_
#define BMP_H_

#include <stdint.h>

#include "../../Helpers/sys_helper/sys_helper.h"
#include "../I2C/i2c.h"

#define BMP180_SERIAL_ADDRESS 0x77

struct Cal_values
{
    // Calibration values
    int8_t ac1[2];
    int8_t ac2[2];
    int8_t ac3[2];
    uint8_t ac4[2];
    uint8_t ac5[2];
    uint8_t ac6[2];
    int8_t b1[2];
    int8_t b2[2];
    int8_t mb[2];
    int8_t mc[2];
    int8_t md[2];
} g_bmp_cal_values;

struct Cal_register
{
	// Calibration registers
	uint8_t ac1[2];
	uint8_t ac2[2];
	uint8_t ac3[2];
	uint8_t ac4[2];
	uint8_t ac5[2];
	uint8_t ac6[2];
	uint8_t b1[2];
	uint8_t b2[2];
	uint8_t mb[2];
	uint8_t mc[2];
	uint8_t md[2];
} g_bmp_cal_register;

/************************************
 * @return: 0 if calibration completed successful.
 *          In other cases return != 0
 ************************************/
uint8_t BMP_calibrate();

/*-------------------------------------------------------------------------
 * Measure temperature (DOF10)
*/
i2c_status_t BMP_get_temperature(uint16_t* temperature);

#endif /* BMP_H_ */
