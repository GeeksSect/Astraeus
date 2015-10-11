#include "bmp.h"
#include "../../Helpers/sys_helper/sys_helper.h"

#define BUFFER_SIZE    32u

static uint8_t slave_ser_addr = 0x00;

static uint8_t g_rx_buf[BUFFER_SIZE];
static uint8_t g_tx_buf[BUFFER_SIZE];

static uint8_t g_tx_length = 0x00;

void BMP_init
(
	uint8_t addr
)
{
	slave_ser_addr = addr;
}

i2c_status_t BMP_get_temperature
(
	uint8_t* res_buf,
	uint8_t res_len
)
{
	i2c_status_t instance;
	g_tx_buf[0] = 0xF4;
	g_tx_buf[1] = 0x2E;
	g_tx_length = 2;

	instance = do_write_transaction(slave_ser_addr, g_tx_buf, g_tx_length);

	// Wait 5ms for temperature measurement. Sys_Freq = 50 MHz
	delay(5, 50);

	g_tx_buf[0] = 0xF6;
	g_tx_length = 1;

	instance = do_write_transaction(slave_ser_addr, g_tx_buf, g_tx_length);
	instance = do_read_transaction(slave_ser_addr, g_rx_buf, res_len);

	return instance;
}
