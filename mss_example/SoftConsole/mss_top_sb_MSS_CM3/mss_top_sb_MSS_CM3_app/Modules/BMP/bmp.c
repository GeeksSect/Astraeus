#include "bmp.h"
#include "../../Helpers/sys_helper/sys_helper.h"

i2c_status_t do_write_transaction(uint8_t, uint8_t * , uint8_t);
i2c_status_t do_read_transaction(uint8_t, uint8_t * , uint8_t);
i2c_status_t do_write_read_transaction(uint8_t , uint8_t * , uint8_t , uint8_t * , uint8_t);

/*-----------------------------------------------------------------------------
 * I2C operation timeout value in mS. Define as I2C_NO_TIMEOUT to disable the
 * timeout functionality.
 */
#define DEMO_I2C_TIMEOUT 3000u

#define BUFFER_SIZE    32u

static i2c_instance_t* g_core_i2c0;
static uint8_t slave_ser_addr = 0x00;

static uint8_t g_tx_buf[BUFFER_SIZE];

static uint8_t g_tx_length = 0x00;

void BMP_init
(
	i2c_instance_t* i2c_instance,
	uint8_t addr
)
{
	g_core_i2c0 = i2c_instance;
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
	instance = do_read_transaction(slave_ser_addr, res_buf, res_len);

	return instance;
}

/*------------------------------------------------------------------------------
 * Perform read transaction with parameters gathered from the command line
 * interface. This function is called as a result of the user's input in the
 * command line interface.
 */
i2c_status_t do_read_transaction
(
    uint8_t serial_addr,
    uint8_t * rx_buffer,
    uint8_t read_length
)
{
    i2c_status_t status;

    I2C_read(g_core_i2c0, serial_addr, rx_buffer, read_length, I2C_RELEASE_BUS);

    status = I2C_wait_complete(g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}

/*------------------------------------------------------------------------------
 * Perform write transaction with parameters gathered from the command line
 * interface. This function is called as a result of the user's input in the
 * command line interface.
 */
i2c_status_t do_write_transaction
(
    uint8_t serial_addr,
    uint8_t * tx_buffer,
    uint8_t write_length
)
{
    i2c_status_t status;

    I2C_write(g_core_i2c0, serial_addr, tx_buffer, write_length, I2C_RELEASE_BUS);

    status = I2C_wait_complete(g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}

/*------------------------------------------------------------------------------
 * Perform write-read transaction with parameters gathered from the command
 * line interface. This function is called as a result of the user's input in
 * the command line interface.
 */
i2c_status_t do_write_read_transaction
(
    uint8_t serial_addr,
    uint8_t * tx_buffer,
    uint8_t write_length,
    uint8_t * rx_buffer,
    uint8_t read_length
)
{
    i2c_status_t status;

    I2C_write_read(g_core_i2c0,
                       serial_addr,
                       tx_buffer,
                       write_length,
                       rx_buffer,
                       read_length,
                       I2C_RELEASE_BUS);

    status = I2C_wait_complete(g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}
