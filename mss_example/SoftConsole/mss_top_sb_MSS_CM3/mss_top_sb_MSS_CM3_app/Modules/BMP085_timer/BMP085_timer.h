/*
 * BMP085.h
 *
 *  Created on: 09.02.2016
 *      Author: vetal
 */

#ifndef BMP085_timer_H_
#define BMP085_timer_H_
#include "../../Helpers/sys_helper/sys_helper.h"
#include "../I2C/i2c.h"
#include "system_m2sxxx.h"
#include "drivers/mss_timer/mss_timer.h"

#define BMP085_I2CADDR 0x77

#define BMP085_ULTRALOWPOWER 0
#define BMP085_STANDARD      1
#define BMP085_HIGHRES       2
#define BMP085_ULTRAHIGHRES  3
#define BMP085_CAL_AC1           0xAA  // R   Calibration data (16 bits)
#define BMP085_CAL_AC2           0xAC  // R   Calibration data (16 bits)
#define BMP085_CAL_AC3           0xAE  // R   Calibration data (16 bits)
#define BMP085_CAL_AC4           0xB0  // R   Calibration data (16 bits)
#define BMP085_CAL_AC5           0xB2  // R   Calibration data (16 bits)
#define BMP085_CAL_AC6           0xB4  // R   Calibration data (16 bits)
#define BMP085_CAL_B1            0xB6  // R   Calibration data (16 bits)
#define BMP085_CAL_B2            0xB8  // R   Calibration data (16 bits)
#define BMP085_CAL_MB            0xBA  // R   Calibration data (16 bits)
#define BMP085_CAL_MC            0xBC  // R   Calibration data (16 bits)
#define BMP085_CAL_MD            0xBE  // R   Calibration data (16 bits)

#define BMP085_CONTROL           0xF4
#define BMP085_TEMPDATA          0xF6
#define BMP085_PRESSUREDATA      0xF6
#define BMP085_READTEMPCMD          0x2E
#define BMP085_READPRESSURECMD            0x34
#define frq            50000000



	uint8_t BMP085_begin(uint8_t mode);  // by default go highres
	float BMP085_readTemperature(void);
	int32_t BMP085_readPressure(void);
	int32_t BMP085_readSealevelPressure(float altitude_meters);
	float BMP085_readAltitude(float sealevelPressure); // std atmosphere
	uint16_t BMP085_readRawTemperature(void);
	uint32_t BMP085_readRawPressure(void);


	void BMP085_readRawTemperature_reqest();
	uint16_t BMP085_readRawTemperature_ask();
	void BMP085_readRawPressure_reqest();
	uint32_t BMP085_readRawPressure_ask();
	int32_t BMP085_readPressure2(uint16_t UT, uint16_t UP);
	float BMP085_readAltitude2(float sealevelPressure, float pressure) ;

	int32_t BMP085_computeB5(int32_t UT);
	uint8_t BMP085_read8(uint8_t addr);
	uint16_t BMP085_read16(uint8_t addr);
	void BMP085_write8(uint8_t addr, uint8_t data);

	uint8_t oversampling;

	int16_t ac1, ac2, ac3, b1, b2, mb, mc, md;
	uint16_t ac4, ac5, ac6;

	uint8_t BMP_state;
	uint32_t tmp1, tmp2, pres;

	void run_BMP_by_timer();
	void stop_timer2();
	void Timer2_IRQHandler();

#endif /* BMP085_H_ */
