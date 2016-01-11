#include "bmp.h"
#include "math.h"

#define BUFFER_SIZE    32u

int64_t BMP180_get_true_temperature(int16_t UT);

uint8_t BMP_calibrate()
{
	i2c_status_t status;

	status 	= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC1, &(g_bmp_cal_values.ac1), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC2, &(g_bmp_cal_values.ac2), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC3, &(g_bmp_cal_values.ac3), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC4, &(g_bmp_cal_values.ac4), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC5, &(g_bmp_cal_values.ac5), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_AC6, &(g_bmp_cal_values.ac6), 0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_B1,  &(g_bmp_cal_values.b1),  0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_B1,  &(g_bmp_cal_values.b2),  0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_MB,  &(g_bmp_cal_values.mb),  0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_MC,  &(g_bmp_cal_values.mc),  0);
	status |= i2c_readInt_from_reg(BMP180_SERIAL_ADDRESS, BMP180_MD,  &(g_bmp_cal_values.md),  0);
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
	*temperature = (uint16_t)BMP180_get_true_temperature(*temperature);

	return status;
}

// Region private function
int64_t BMP180_get_true_temperature(int16_t UT)
{
	int64_t X1 = (UT - g_bmp_cal_values.ac6) * g_bmp_cal_values.ac5 / pow(2, 15);
	int64_t X2 = g_bmp_cal_values.mc * pow(2, 11) / (X1 + g_bmp_cal_values.md);
	int64_t B5 = X1 + X2;
	return (B5 + 8) / pow(2, 4);
}

