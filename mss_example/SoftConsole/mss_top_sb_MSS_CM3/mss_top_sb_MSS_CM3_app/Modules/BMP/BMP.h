/*
 * bmp.h
 * Module (DOF10)
 * https://www.adafruit.com/datasheets/BST-BMP180-DS000-09.pdf
*/

#ifndef BMP_H_
#define BMP_H_

#include "cpu_types.h"
#include "../../Helpers/I2C/i2c.h"

#define BMP180_SERIAL_ADDRESS 0x77

#ifdef __cplusplus
extern "C" {
#endif

struct Cal_values
{
    // Calibration values
    int ac1;
    int ac2;
    int ac3;
    unsigned int ac4;
    unsigned int ac5;
    unsigned int ac6;
    int b1;
    int b2;
    int mb;
    int mc;
    int md;
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

#ifdef __cplusplus
}
#endif

#endif /* BMP_H_ */
