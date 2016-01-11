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
#include "../../Helpers/sys_helper/sys_helper.h"

#define HMC_WRITE_ADDR 0x3C
#define HMC_READ_ADDR  0x3D

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

void HMC_init();

void HMC_getData(uint16_t* mx, uint16_t* my, uint16_t* mz);

#endif /* HMC_H_ */
