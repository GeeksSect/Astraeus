/*
 * BMP085.c
 *
 *  Created on: 09.02.2016
 *      Author: vetal
 */
#include "bmp085_timer.h"

uint8_t BMP085_begin(uint8_t mode) {
  if (mode > BMP085_ULTRAHIGHRES)
    mode = BMP085_ULTRAHIGHRES;
  oversampling = mode;



  if (BMP085_read8(0xD0) != 0x55) return 0;

  /* read calibration data */
  ac1 = BMP085_read16(BMP085_CAL_AC1);
  ac2 = BMP085_read16(BMP085_CAL_AC2);
  ac3 = BMP085_read16(BMP085_CAL_AC3);
  ac4 = BMP085_read16(BMP085_CAL_AC4);
  ac5 = BMP085_read16(BMP085_CAL_AC5);
  ac6 = BMP085_read16(BMP085_CAL_AC6);

  b1 = BMP085_read16(BMP085_CAL_B1);
  b2 = BMP085_read16(BMP085_CAL_B2);

  mb = BMP085_read16(BMP085_CAL_MB);
  mc = BMP085_read16(BMP085_CAL_MC);
  md = BMP085_read16(BMP085_CAL_MD);


  return 255;
}

int32_t BMP085_computeB5(int32_t UT) {
  int32_t X1 = (UT - (int32_t)ac6) * ((int32_t)ac5) >> 15;
  int32_t X2 = ((int32_t)mc << 11) / (X1+(int32_t)md);
  return X1 + X2;
}

uint8_t BMP085_read8(uint8_t a) {
	i2c_status_t status;
	uint8_t ret;
	status = i2c_writeBytes(BMP085_I2CADDR, &a, 1, 0);
	status = i2c_readBytes(BMP085_I2CADDR, &ret, 1, 0);

  return ret;
}

uint16_t BMP085_read16(uint8_t a) {
	i2c_status_t status;
  uint8_t rx_buf[2];
  status = i2c_writeBytes(BMP085_I2CADDR, &a, 1, 0);
  status = i2c_readBytes(BMP085_I2CADDR, rx_buf, 2, 0);

  return (((int16_t)rx_buf[0]) << 8) | rx_buf[1];
}

void BMP085_write8(uint8_t a, uint8_t d) {
	i2c_status_t status;
	uint8_t rx_buf[2] = {a , d};
	status = i2c_writeBytes(BMP085_I2CADDR, rx_buf, 2, 0);
}
void BMP085_readRawTemperature_reqest()
{
	BMP085_write8(BMP085_CONTROL, BMP085_READTEMPCMD);
}
uint16_t BMP085_readRawTemperature_ask()
{
	return BMP085_read16(BMP085_TEMPDATA);
}
void BMP085_readRawPressure_reqest()
{
	BMP085_write8(BMP085_CONTROL, BMP085_READPRESSURECMD + (oversampling << 6));
}
uint32_t BMP085_readRawPressure_ask()
{
	uint32_t raw;

	  raw = BMP085_read16(BMP085_PRESSUREDATA);

	  raw <<= 8;
	  raw |= BMP085_read8(BMP085_PRESSUREDATA+2);
	  raw >>= (8 - oversampling);


	  return raw;
}
int32_t BMP085_readPressure2(uint16_t UT, uint16_t UP)
{
	int32_t B3, B5, B6, X1, X2, X3, p;
	uint32_t B4, B7;

	  B5 = BMP085_computeB5(UT);



	  // do pressure calcs
	  B6 = B5 - 4000;
	  X1 = ((int32_t)b2 * ( (B6 * B6)>>12 )) >> 11;
	  X2 = ((int32_t)ac2 * B6) >> 11;
	  X3 = X1 + X2;
	  B3 = ((((int32_t)ac1*4 + X3) << oversampling) + 2) / 4;



	  X1 = ((int32_t)ac3 * B6) >> 13;
	  X2 = ((int32_t)b1 * ((B6 * B6) >> 12)) >> 16;
	  X3 = ((X1 + X2) + 2) >> 2;
	  B4 = ((uint32_t)ac4 * (uint32_t)(X3 + 32768)) >> 15;
	  B7 = ((uint32_t)UP - B3) * (uint32_t)( 50000UL >> oversampling );



	  if (B7 < 0x80000000) {
	    p = (B7 * 2) / B4;
	  } else {
	    p = (B7 / B4) * 2;
	  }
	  X1 = (p >> 8) * (p >> 8);
	  X1 = (X1 * 3038) >> 16;
	  X2 = (-7357 * p) >> 16;



	  p = p + ((X1 + X2 + (int32_t)3791)>>4);

	  return p;
}

float BMP085_readAltitude2(float sealevelPressure, float pressure)
{
  return 44330 * (1.0 - pow(pressure /sealevelPressure,0.1903));
}

void BMP085_update(float * Altitude)
{
	switch (BMP_state)
			{
			case 0 :
			{
				BMP085_readRawTemperature_reqest();
				BMP_state++;
				break;
			}
			case 2 :
			{
				BMP_tmp1 = BMP085_readRawTemperature_ask();
				BMP085_readRawPressure_reqest();
				BMP_state++;
				break;
			}
			case 15 :
			{
				BMP_tmp2 = BMP085_readRawPressure_ask();
				*Altitude = BMP085_readAltitude2(960000,BMP085_readPressure2(BMP_tmp1,BMP_tmp2));
				BMP_state = 0;
				break;
			}
			default :
			{
				if (BMP_state <25)
					BMP_state++;
				else
					BMP_state = 0;
				break;
			}
			}
}
