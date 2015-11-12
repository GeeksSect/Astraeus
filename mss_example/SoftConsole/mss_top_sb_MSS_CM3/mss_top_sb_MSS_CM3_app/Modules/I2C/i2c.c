/*
 * i2c.c
 *
 *  Created on: 13.10.2015
 *      Author: Andrei Pazniak
 */

#include "i2c.h"

void i2c_init(uint8_t chanels_count)
{
    /*-------------------------------------------------------------------------
     * Initialize the CoreI2C driver with its base address, I2C serial address
     * and serial clock divider.
     */

	// TODO! Handle situations with chanels_count != 1

    I2C_init(&g_core_i2c0, COREI2C_0_0, MY_SERIAL_ADDR, I2C_PCLK_DIV_256);
}

i2c_status_t i2c_readInt(uint8_t serial_addr,
                         uint16_t* out_int,
                         uint8_t chanel)
{
    i2c_status_t status;
    uint8_t rx_buf[2];
    I2C_read(&g_core_i2c0, serial_addr, rx_buf, 2, I2C_RELEASE_BUS);
    status = I2C_wait_complete(&g_core_i2c0, 3000u);
    *out_int = (rx_buf[0] << 8) | rx_buf[1];
    return status;
}

i2c_status_t i2c_readBytes(uint8_t serial_addr,
                           uint8_t* rx_buffer,
                           uint8_t read_length,
                           uint8_t chanel)
{
    i2c_status_t status;
    I2C_read(&g_core_i2c0, serial_addr, rx_buffer, read_length, I2C_RELEASE_BUS);
    status = I2C_wait_complete(&g_core_i2c0, 3000u);
    return status;
}

i2c_status_t i2c_writeBytes(uint8_t serial_addr,
                            uint8_t* tx_buffer,
                            uint8_t write_length,
                            uint8_t chanel)
{
    i2c_status_t status;
    I2C_write(&g_core_i2c0, serial_addr, tx_buffer, write_length, I2C_RELEASE_BUS);
    status = I2C_wait_complete(&g_core_i2c0, 3000u);
    return status;
}

i2c_status_t i2c_writeBits(uint8_t dev_addr,
                           uint8_t reg_addr,
                           uint8_t bit_start,
                           uint8_t length,
                           uint8_t data,
                           uint8_t channel)
{
    //      010 value to write
    // 76543210 bit numbers
    //    xxx   args: bitStart=4, length=3
    // 00011100 mask byte
    // 10101111 original value (sample)
    // 10100011 original & ~mask
    // 10101011 masked | value
    uint8_t b;
    i2c_status_t status;
    status  = i2c_writeBytes(dev_addr, &reg_addr, 1, 0);
    status |= i2c_readBytes(dev_addr, &b, 1, 0);
    if (status == I2C_SUCCESS)
    {
        uint8_t mask = ((1 << length) - 1) << (bit_start - length + 1);
        data <<= (bit_start - length + 1); // shift data into correct position
        data &= mask; // zero all non-important bits in data
        b &= ~(mask); // zero all important bits in existing byte
        b |= data; // combine data with existing byte

        uint8_t tx_buf[2];
        uint8_t tx_len = 2;

        tx_buf[0] = reg_addr;
        tx_buf[1] = b;

        status |= i2c_writeBytes(dev_addr, tx_buf, tx_len, 0);
        return status;
    }
    return status;
 }

i2c_status_t i2c_writeBit(uint8_t dev_addr,
                          uint8_t reg_addr,
                          uint8_t bit_num,
                          uint8_t data,
                          uint8_t channel)
{
    uint8_t b;
    i2c_status_t status;
    status  = i2c_writeBytes(dev_addr, &reg_addr, 1, 0);
    status |= i2c_readBytes(dev_addr, &b, 1, 0);
    if (status == I2C_SUCCESS)
    {
        b = (data != 0) ? (b | (1 << bit_num)) : (b & ~(1 << bit_num));

        uint8_t tx_buf[2];
        uint8_t tx_len = 2;

        tx_buf[0] = reg_addr;
        tx_buf[1] = b;

        status |= i2c_writeBytes(dev_addr, tx_buf, tx_len, 0);
        return status;
    }
    return status;
 }

i2c_status_t i2c_read_from_reg(uint8_t serial_addr,
                               uint8_t reg,
                               uint8_t* rx_buffer,
                               uint8_t read_length,
                               uint8_t chanel)
{
	uint8_t tx_buf[1];
	tx_buf[0] = reg;
	return i2c_write_read(serial_addr, tx_buf, sizeof(tx_buf), rx_buffer, read_length, chanel);
}

i2c_status_t i2c_readInt_from_reg(uint8_t serial_addr,
                                  uint8_t reg,
                                  uint16_t* out_int,
                                  uint8_t chanel)
{
	uint8_t tx_buf[1];
	tx_buf[0] = reg;

	i2c_status_t status;
	status = i2c_writeBytes(serial_addr, tx_buf, sizeof(tx_buf), chanel);
	if (I2C_SUCCESS == status) {
		status = i2c_readInt(serial_addr, out_int, chanel);
	}
	return status;
}

i2c_status_t i2c_write_read(uint8_t serial_addr,
							uint8_t* tx_buffer,
							uint8_t write_length,
							uint8_t* rx_buffer,
							uint8_t read_length,
							uint8_t chanel)
{
	i2c_status_t status;
	status = i2c_writeBytes(serial_addr, tx_buffer, write_length, chanel);
	if (I2C_SUCCESS == status) {
		status = i2c_readBytes(serial_addr, rx_buffer, read_length, chanel);
	}
	return status;
}
