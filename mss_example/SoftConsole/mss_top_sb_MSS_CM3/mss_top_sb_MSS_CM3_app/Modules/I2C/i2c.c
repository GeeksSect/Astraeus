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
