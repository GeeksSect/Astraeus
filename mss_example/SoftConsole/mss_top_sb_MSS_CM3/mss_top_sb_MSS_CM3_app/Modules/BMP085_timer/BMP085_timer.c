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

uint16_t BMP085_readRawTemperature(void) {
	BMP085_write8(BMP085_CONTROL, BMP085_READTEMPCMD);
	delay(26,50);

  return BMP085_read16(BMP085_TEMPDATA);
}

uint32_t BMP085_readRawPressure(void) {
  uint32_t raw;

  BMP085_write8(BMP085_CONTROL, BMP085_READPRESSURECMD + (oversampling << 6));

  if (oversampling == BMP085_ULTRALOWPOWER)
    delay(5,50);
  else if (oversampling == BMP085_STANDARD)
    delay(8,50);
  else if (oversampling == BMP085_HIGHRES)
    delay(14,50);
  else
    delay(26,50);

  raw = BMP085_read16(BMP085_PRESSUREDATA);

  raw <<= 8;
  raw |= BMP085_read8(BMP085_PRESSUREDATA+2);
  raw >>= (8 - oversampling);

 /* this pull broke stuff, look at it later?
  if (oversampling==0) {
    raw <<= 8;
    raw |= read8(BMP085_PRESSUREDATA+2);
    raw >>= (8 - oversampling);
  }
 */


  return raw;
}


int32_t BMP085_readPressure(void) {
  int32_t UT, UP, B3, B5, B6, X1, X2, X3, p;
  uint32_t B4, B7;

  UT = BMP085_readRawTemperature();
  UP = BMP085_readRawPressure();



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

int32_t BMP085_readSealevelPressure(float altitude_meters) {
  float pressure = BMP085_readPressure();
  return (int32_t)(pressure / pow(1.0-altitude_meters/44330, 5.255));
}

float BMP085_readTemperature(void) {
  int32_t UT, B5;     // following ds convention
  float temp;

  UT = BMP085_readRawTemperature();



  B5 = BMP085_computeB5(UT);
  temp = (B5+8) >> 4;
  temp /= 10;

  return temp;
}

float BMP085_readAltitude(float sealevelPressure) {
  float altitude;

  float pressure = BMP085_readPressure();

  altitude = 44330 * (1.0 - pow(pressure /sealevelPressure,0.1903));

  return altitude;
}


/*********************************************************************/

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
  status = i2c_readBytes(BMP085_I2CADDR, &rx_buf, 2, 0);

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
void run_BMP_by_timer()
{
	BMP_state=0;
	MSS_TIM2_load_background(26*(frq/1000));
	MSS_TIM2_start();
	MSS_TIM2_enable_irq();
}
void stop_timer2()
{
	run_BMP_by_timer();
}

void Timer2_IRQHandler()
{
	switch (BMP_state)
	{
		case 0 :
		{
			BMP085_readRawTemperature_reqest();
			BMP_state = 1;
			break;
		}
		case 1 :
		{
			tmp1 = BMP085_readRawTemperature_ask();
			BMP085_readRawPressure_reqest();
			BMP_state = 2;
			break;
		}
		case 2 :
		{
			tmp2 = BMP085_readRawPressure_ask();
			pres = BMP085_readPressure2(tmp1,tmp2);
			BMP_state = 0;
			break;
		}
	}
	MSS_TIM2_clear_irq();

}
float BMP085_readAltitude2(float sealevelPressure, float pressure)
{
  return 44330 * (1.0 - pow(pressure /sealevelPressure,0.1903));
}
