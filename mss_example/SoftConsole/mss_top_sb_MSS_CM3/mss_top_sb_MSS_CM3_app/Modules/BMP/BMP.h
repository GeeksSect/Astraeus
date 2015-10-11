/*
 * BMP.h
 *
 *  Created on: Oct 11, 2015
 *      Author: Vladimir Artemenko
 */

#ifndef BMP_H_
#define BMP_H_

#define BUFFER_SIZE    32u

static uint8_t g_rx_buf[BUFFER_SIZE];
static uint8_t g_tx_buf[BUFFER_SIZE];

static uint8_t g_tx_length = 0x00;
static uint8_t g_rx_length = 0x00;

/*-------------------------------------------------------------------------
	* Measure temperature (DOF10)
*/
void bmp_get_temperature(uint8_t SLAVE_SER_ADDR, uint8_t* res_buf, uint8_t res_len)
{
	i2c_status_t instance;
	g_tx_buf[0] = 0xF4;
	g_tx_buf[1] = 0x2E;
	g_tx_length = 2;

	instance = do_write_transaction(SLAVE_SER_ADDR, g_tx_buf, g_tx_length);
	//handle_i2c_status(instance, g_tx_buf, g_tx_length);

	// Wait 5ms for temperature measurement. Sys_Freq = 50 MHz
	for (i = 0; i < 50 * 5; i++);

	g_master_tx_buf[0] = 0xF6;
	g_tx_length = 1;

	instance = do_write_transaction(SLAVE_SER_ADDR, g_tx_buf, g_tx_length);
	//handle_i2c_status(instance, g_tx_buf, g_tx_length);

	//g_rx_length = 2;
	instance = do_read_transaction(SLAVE_SER_ADDR, g_rx_buf, res_len);
	//handle_i2c_status(instance, g_rx_buf, res_len);
}

#endif /* BMP_H_ */
