#include "bmp.h"

#define BUFFER_SIZE    32u

uint8_t BMP_calibrate()
{
	i2c_status_t status;
	status  = i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac1, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac2, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac3, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac4, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac5, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.ac6, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.b1, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.b2, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.mb, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.mc, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, &g_bmp_cal_values.md, 0);
	return status;
}

i2c_status_t BMP_get_temperature(uint16_t* temperature)
{
	i2c_status_t status;

	uint8_t tx_buf[2];
	uint8_t tx_length;

	tx_buf[0] = 0xF4;
	tx_buf[1] = 0x2E;
	tx_length = 2;

	status = i2c_writeBytes(BMP180_SERIAL_ADDRESS, tx_buf, tx_length, 0);

	// Wait 5ms for temperature measurement. Sys_Freq = 50 MHz
	delay(5, 50);

	tx_buf[0] = 0xF6;
	tx_length = 1;

	status |= i2c_writeBytes(BMP180_SERIAL_ADDRESS, tx_buf, tx_length, 0);
	status |= i2c_readInt(BMP180_SERIAL_ADDRESS, temperature, 0);

	return status;
}
