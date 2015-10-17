#include "bmp.h"

#define BUFFER_SIZE    32u

uint8_t BMP_calibrate()
{
	populateBMPCalRegister();
	i2c_status_t status;
	uint8_t tx_rx_length = 1;

	status 	= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac1, tx_rx_length, g_bmp_cal_values.ac1, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac2, tx_rx_length, g_bmp_cal_values.ac2, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac3, tx_rx_length, g_bmp_cal_values.ac3, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac4, tx_rx_length, g_bmp_cal_values.ac4, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac5, tx_rx_length, g_bmp_cal_values.ac5, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.ac6, tx_rx_length, g_bmp_cal_values.ac6, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.b1, tx_rx_length, g_bmp_cal_values.b1, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.b2, tx_rx_length, g_bmp_cal_values.b2, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.mb, tx_rx_length, g_bmp_cal_values.mb, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.mc, tx_rx_length, g_bmp_cal_values.mc, tx_rx_length, 0);
	status |= i2c_write_read(BMP180_SERIAL_ADDRESS, g_bmp_cal_register.md, tx_rx_length, g_bmp_cal_values.md, tx_rx_length, 0);
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

// Region private methods
void populateBMPCalRegister()
{
	g_bmp_cal_register.ac1[0] = 0xAA;
	g_bmp_cal_register.ac2[0] = 0xAC;
	g_bmp_cal_register.ac3[0] = 0xAE;
	g_bmp_cal_register.ac4[0] = 0xB0;
	g_bmp_cal_register.ac5[0] = 0xB2;
	g_bmp_cal_register.ac6[0] = 0xB4;
	g_bmp_cal_register.b1[0]  = 0xB6;
	g_bmp_cal_register.b2[0]  = 0xB8;
	g_bmp_cal_register.mb[0]  = 0xBA;
	g_bmp_cal_register.mc[0]  = 0xBC;
	g_bmp_cal_register.md[0]  = 0xBE;
}
