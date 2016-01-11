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


#define HMC5883L_ADDRESS            0x1E // this device only has one address
#define HMC5883L_DEFAULT_ADDRESS    0x1E

#define HMC5883L_RA_CONFIG_A        0x00
#define HMC5883L_RA_CONFIG_B        0x01
#define HMC5883L_RA_MODE            0x02
#define HMC5883L_RA_DATAX_H         0x03
#define HMC5883L_RA_DATAX_L         0x04
#define HMC5883L_RA_DATAZ_H         0x05
#define HMC5883L_RA_DATAZ_L         0x06
#define HMC5883L_RA_DATAY_H         0x07
#define HMC5883L_RA_DATAY_L         0x08
#define HMC5883L_RA_STATUS          0x09
#define HMC5883L_RA_ID_A            0x0A
#define HMC5883L_RA_ID_B            0x0B
#define HMC5883L_RA_ID_C            0x0C

#define HMC5883L_CRA_AVERAGE_BIT    6
#define HMC5883L_CRA_AVERAGE_LENGTH 2
#define HMC5883L_CRA_RATE_BIT       4
#define HMC5883L_CRA_RATE_LENGTH    3
#define HMC5883L_CRA_BIAS_BIT       1
#define HMC5883L_CRA_BIAS_LENGTH    2

#define HMC5883L_AVERAGING_1        0x00
#define HMC5883L_AVERAGING_2        0x01
#define HMC5883L_AVERAGING_4        0x02
#define HMC5883L_AVERAGING_8        0x03

#define HMC5883L_RATE_0P75          0x00
#define HMC5883L_RATE_1P5           0x01
#define HMC5883L_RATE_3             0x02
#define HMC5883L_RATE_7P5           0x03
#define HMC5883L_RATE_15            0x04
#define HMC5883L_RATE_30            0x05
#define HMC5883L_RATE_75            0x06

#define HMC5883L_BIAS_NORMAL        0x00
#define HMC5883L_BIAS_POSITIVE      0x01
#define HMC5883L_BIAS_NEGATIVE      0x02

#define HMC5883L_CRB_GAIN_BIT       7
#define HMC5883L_CRB_GAIN_LENGTH    3

#define HMC5883L_GAIN_1370          0x00
#define HMC5883L_GAIN_1090          0x01
#define HMC5883L_GAIN_820           0x02
#define HMC5883L_GAIN_660           0x03
#define HMC5883L_GAIN_440           0x04
#define HMC5883L_GAIN_390           0x05
#define HMC5883L_GAIN_330           0x06
#define HMC5883L_GAIN_220           0x07

#define HMC5883L_MODEREG_BIT        1
#define HMC5883L_MODEREG_LENGTH     2

#define HMC5883L_MODE_CONTINUOUS    0x00
#define HMC5883L_MODE_SINGLE        0x01
#define HMC5883L_MODE_IDLE          0x02

#define HMC5883L_STATUS_LOCK_BIT    1
#define HMC5883L_STATUS_READY_BIT   0

    void HMC_init();

    uint8_t HMC_getSampleAveraging();
    void HMC_setSampleAveraging(uint8_t averaging);
    uint8_t HMC_getDataRate();
    void HMC_setDataRate(uint8_t rate);
    uint8_t HMC_getMeasurementBias();
    void HMC_setMeasurementBias(uint8_t bias);

    // CONFIG_B register
    uint8_t HMC_getGain();
    void HMC_setGain(uint8_t gain);

    // MODE register
    uint8_t HMC_getMode();
    void HMC_setMode(uint8_t mode);

    // DATA* registers
    void HMC_getHeading(int16_t *x, int16_t *y, int16_t *z);


    // STATUS register
    uint8_t HMC_getLockStatus();
    uint8_t HMC_getReadyStatus();

    // ID_* registers
    uint8_t HMC_getIDA();
    uint8_t HMC_getIDB();
    uint8_t HMC_getIDC();

    static uint8_t devAddr = HMC5883L_ADDRESS;
    static uint8_t buffer[6];
    static uint8_t mode;

#endif /* HMC_H_ */
