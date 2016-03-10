#include "hmc.h"

void HMC_init()
{
	uint8_t tx_len = 2;
    uint8_t tx_buf[tx_len];

    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x70; // needed value. see example in datasheet

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_CFG_B_REG;
    tx_buf[1] = 0xA0;

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_MODE_REG;
    tx_buf[1] = 0x00;

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

}

void HMC_get_raw_Data(int16_t* mx, int16_t* my, int16_t* mz)
{
    uint8_t rx_len = 6;
    uint8_t rx_buf[rx_len];

    uint8_t tx_len = 1;
    uint8_t tx_buf[tx_len];

    tx_buf[0] = HMC_X_MSB_REG;

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0); // transfer reg addr
    i2c_readBytes(HMC_SERIAL_ADDR, rx_buf, rx_len, 0); // read all data regs

    *mx = (rx_buf[0] << 8) | rx_buf[1];
    *my = (rx_buf[4] << 8) | rx_buf[5];
    *mz = (rx_buf[2] << 8) | rx_buf[3];

}

void HMC_get_true_Data(int16_t* mx, int16_t* my, int16_t* mz)
{
	int16_t t_x, t_y, t_z;
	HMC_get_raw_Data(&t_x, &t_y, &t_z);

	t_x = t_x - bias_x;
	t_y = t_y - bias_y;
	t_z = t_z - bias_z;

	*mx = (int16_t)(((int32_t)t_x* a11_u) / a11_d) + (((int32_t)t_y* a12_u) / a12_d) + (((int32_t)t_z* a13_u) / a13_d);
	*my = (int16_t)(((int32_t)t_x* a21_u) / a21_d) + (((int32_t)t_y* a22_u) / a22_d) + (((int32_t)t_z* a23_u) / a23_d);
	*mz = (int16_t)(((int32_t)t_x* a31_u) / a31_d) + (((int32_t)t_y* a32_u) / a12_d) + (((int32_t)t_z* a33_u) / a33_d);

}

void HMC_get_Data(int16_t* mx, int16_t* my, int16_t* mz)
{
	if(magn_skip > magn_skip_val)
			{
				HMC_get_true_Data(mx, my, mz);
				magn_skip = 0;
			}
			else
				magn_skip++;
}



/*

void HMC_getScaledData(int16_t* mx, int16_t* my, int16_t* mz)
{
    HMC_getData(mx, my, mz);
    *mx *= m_scale;
    *my *= m_scale;
    *mz *= m_scale;
}

int8_t HMC_setMode(uint8_t mode)
{
    int8_t error_code = 0;
    if (mode <= MEASURE_IDLE)
    {
        i2c_writeBytes(HMC_MODE_REG, mode, 1, 0);
    } else
        error_code = -1;
    return error_code;
}

int8_t HMC_setScale(float gauss)
{
    uint8_t reg_value = 0x00;
    int8_t error_code = 0;

    if(gauss == 0.88)
    {
        reg_value = 0x00;
        m_scale = 0.73;
    }
    else if(gauss == 1.3)
    {
        reg_value = 0x01;
        m_scale = 0.92;
    }
    else if(gauss == 1.9)
    {
        reg_value = 0x02;
        m_scale = 1.22;
    }
    else if(gauss == 2.5)
    {
        reg_value = 0x03;
        m_scale = 1.52;
    }
    else if(gauss == 4.0)
    {
        reg_value = 0x04;
        m_scale = 2.27;
    }
    else if(gauss == 4.7)
    {
        reg_value = 0x05;
        m_scale = 2.56;
    }
    else if(gauss == 5.6)
    {
        reg_value = 0x06;
        m_scale = 3.03;
    }
    else if(gauss == 8.1)
    {
        reg_value = 0x07;
        m_scale = 4.35;
    }
    else
        error_code = -1;

    if (!error_code)
    {
        // Setting is in the top 3 bits of the register.
        reg_value = reg_value << 5;
        i2c_writeBytes(HMC_CFG_B_REG, reg_value, 1, 0);
    }
    return error_code;
}
*/
