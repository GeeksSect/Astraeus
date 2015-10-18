/*
 * i2c.h
 *
 *  Created on: 13.10.2015
 *      Author: Andrei Pazniak
 */

#ifndef I2C_H_
#define I2C_H_

#include "drivers/corei2c/core_i2c.h"
#include "mss_top_hw_platform.h"

#define MY_SERIAL_ADDR 0x42

/*******************************************************************************
 * NOTE! I2C now support only MT (master transmit) and MR (master receive) modes
 ******************************************************************************/

// Global variables. I2C instances
i2c_instance_t g_core_i2c0;

// uint32_t i2c_timeout_0 = 3000u;

void i2c_init(uint8_t chanels_count);

i2c_status_t i2c_readInt(uint8_t serial_addr,
                         uint16_t* out_int,
                         uint8_t chanel);

i2c_status_t i2c_readBytes(uint8_t serial_addr,
                           uint8_t* rx_buffer,
                           uint8_t read_length,
                           uint8_t chanel);

i2c_status_t i2c_writeBytes(uint8_t serial_addr,
                            uint8_t* tx_buffer,
                            uint8_t write_length,
                            uint8_t chanel);

i2c_status_t i2c_read_from_reg(uint8_t serial_addr,
                               uint8_t reg,
                               uint8_t* rx_buffer,
                               uint8_t read_length,
                               uint8_t chanel);

i2c_status_t i2c_readInt_from_reg(uint8_t serial_addr,
                                  uint8_t reg,
                                  uint16_t* out_int,
                                  uint8_t chanel);

i2c_status_t i2c_write_read(uint8_t serial_addr,
							uint8_t* tx_buffer,
							uint8_t write_length,
							uint8_t* rx_buffer,
							uint8_t read_length,
							uint8_t chanel);

#endif /* I2C_H_ */
