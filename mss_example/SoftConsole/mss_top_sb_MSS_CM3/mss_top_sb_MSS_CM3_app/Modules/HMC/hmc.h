/*
 * hmc.h
 *
 *  Created on: 20.10.2015
 *      Author: kruci_000
 */

#ifndef HMC_H_
#define HMC_H_

#include <stdint.h>
#include "../I2C/i2c.h"
#include "../micros/micros.h"
#include "../../Helpers/sys_helper/sys_helper.h"

#define HMC_SERIAL_ADDR 0x1E

#define HMC_CFG_A_REG  0x00
#define HMC_CFG_B_REG  0x01
#define HMC_MODE_REG   0x02
#define HMC_X_MSB_REG  0x03
#define HMC_X_LSB_REG  0x04
#define HMC_Z_MSB_REG  0x05
#define HMC_Z_LSB_REG  0x06
#define HMC_Y_MSB_REG  0x07
#define HMC_Y_LSB_REG  0x08
#define HMC_STATUS_REG 0x09
#define HMC_IDNT_A_REG 0x0A
#define HMC_IDNT_B_REG 0x0B
#define HMC_IDNT_C_REG 0x0C

#define MEASURE_CONTIN 0x00
#define MEASURE_SINGLE 0x01
#define MEASURE_IDLE   0x03

#define HMC_XY_excitation 1160 // The magnetic field excitation in X and Y direction during Self Test (Calibration)
#define HMC_Z_excitation 1080  // The magnetic field excitation in Z direction during Self Test (Calibration)
#define HMC_rad2degree 57.3

extern float m_scale;

extern float bearing;

extern float hmc_x_scalled,
             hmc_y_scalled,
             hmc_z_scalled;

extern float hmc_x_offset,
             hmc_y_offset,
             hmc_z_offset;

extern float hmc_x_gainError,
             hmc_y_gainError,
             hmc_z_gainError;

void HMC_init();
void HMC_offset_calibration();

void HMC_getData(int16_t* mx, int16_t* my, int16_t* mz);
void HMC_getScaledData(int16_t* mx, int16_t* my, int16_t* mz);

int8_t HMC_setMode(uint8_t mode);
int8_t HMC_setScale(float gauss);

#endif /* HMC_H_ */
