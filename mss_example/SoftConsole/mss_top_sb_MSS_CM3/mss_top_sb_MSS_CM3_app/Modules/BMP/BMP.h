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

#define BMP180_AC1	0xAA
#define BMP180_AC2	0xAC
#define BMP180_AC3	0xAE
#define BMP180_AC4	0xB0
#define BMP180_AC5	0xB2
#define BMP180_AC6	0xB4
#define BMP180_B1	0xB6
#define BMP180_B2	0xB8
#define BMP180_MB	0xBA
#define BMP180_MC	0xBC
#define BMP180_MD	0xBE

struct Cal_values
{
    // Calibration values
    int16_t ac1;
    int16_t ac2;
    int16_t ac3;
    uint16_t ac4;
    uint16_t ac5;
    uint16_t ac6;
    int16_t b1;
    int16_t b2;
    int16_t mb;
    int16_t mc;
    int16_t md;
} g_bmp_cal_values;

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
