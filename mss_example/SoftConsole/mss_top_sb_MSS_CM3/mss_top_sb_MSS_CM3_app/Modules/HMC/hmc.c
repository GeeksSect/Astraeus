#include "hmc.h"

void HMC_init()
{
	uint8_t tx_len = 2;
    uint8_t tx_buf[tx_len];

    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x70; // needed value. see example in datasheet

    i2c_writeBytes(HMC_WRITE_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_CFG_B_REG;
    tx_buf[1] = 0xA0;

    i2c_writeBytes(HMC_WRITE_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_MODE_REG;
    tx_buf[1] = 0x00;

    i2c_writeBytes(HMC_WRITE_ADDR, tx_buf, tx_len, 0);

    delay(10, 50); // delay for 10 ms on 50 MHz freq
}

void HMC_getData(uint16_t* mx, uint16_t* my, uint16_t* mz)
{
    uint8_t rx_len = 6;
    uint8_t rx_buf[rx_len];

    uint8_t tx_len = 1;
    uint8_t tx_buf[tx_len];

    tx_buf[0] = HMC_X_MSB_REG;

    i2c_writeBytes(HMC_WRITE_ADDR, tx_buf, tx_len, 0); // transfer reg addr
    i2c_readBytes(HMC_READ_ADDR, rx_buf, rx_len, 0); // read all data regs

    *mx = (rx_buf[0] << 8) | rx_buf[1];
    *my = (rx_buf[4] << 8) | rx_buf[5];
    *mz = (rx_buf[2] << 8) | rx_buf[3];

    // for next measurement
    delay(70, 50); // delay for 70 ms on 50 MHz freq
}
