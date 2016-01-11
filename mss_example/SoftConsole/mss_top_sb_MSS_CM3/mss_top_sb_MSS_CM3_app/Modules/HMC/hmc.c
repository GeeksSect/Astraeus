#include "hmc.h"

#include "../I2C/i2c.h"
#include "../UART/uart.h"
#include "../micros/micros.h"
#include "../../Helpers/sys_helper/sys_helper.h"

#define min(a, b) (((a) < (b)) ? (a) : (b))
#define max(a, b) (((a) > (b)) ? (a) : (b))

// ********************* Global variables *******************
float hmc_x_offset = 0,
      hmc_y_offset = 0,
      hmc_z_offset = 0,
      m_scale = 1,
      hmc_x_scalled,
      hmc_y_scalled,
      hmc_z_scalled;

float hmc_x_gainError = 1,
      hmc_y_gainError = 1,
      hmc_z_gainError = 1,
      bearing = 0;

// ********************* FUNCTIONS **************************
void HMC_offset_calibration()
{
    uart_print((const uint8_t*)"**** Calibration started ****");

    HMC_setMode(MEASURE_CONTIN);
    HMC_setScale(1.9);

    // *****************************************************************************************
    // Gain offset estimation
    // *****************************************************************************************
    uint8_t tx_len = 2;
    uint8_t tx_buf[tx_len];

    int16_t mx = 0,
            my = 0,
            mz = 0;

    // Configuring the Control register for Positive Bais mode
    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x71;
    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

   /* bit configuration = 0 A A DO2 DO1 DO0 MS1 MS2

   A A                        DO2 DO1 DO0      Sample Rate [Hz]      MS1 MS0    Measurment Mode
   0 0 = No Average            0   0   0   =   0.75                   0   0   = Normal
   0 1 = 2 Sample average      0   0   1   =   1.5                    0   1   = Positive Bias
   1 0 = 4 Sample Average      0   1   0   =   3                      1   0   = Negative Bais
   1 1 = 8 Sample Average      0   1   1   =   7.5                    1   1   = -
                               1   0   0   =   15 (Default)
                               1   0   1   =   30
                               1   1   0   =   75
                               1   1   1   =   -
   */

    HMC_getData(&mx, &my, &mz); // Disregarding the first data

    // Reading the Positive baised Data
    while((mx < 200) | (my < 200) | (mz < 200)) // Making sure the data is with Positive baised
    {
        HMC_getData(&mx, &my, &mz);
    }

    hmc_x_scalled = mx * m_scale;
    hmc_y_scalled = my * m_scale;
    hmc_z_scalled = mz * m_scale;

    // Offset = 1160 - Data_positive
    hmc_x_gainError = (float)HMC_XY_excitation / hmc_x_scalled;
    hmc_y_gainError = (float)HMC_XY_excitation / hmc_y_scalled;
    hmc_z_gainError = (float)HMC_Z_excitation / hmc_z_scalled;

    // Configuring the Control register for Negative Bais mode
    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x72;
    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    HMC_getData(&mx, &my, &mz); // Disregarding the first data
    // Reading the Negative baised Data
    while((mx > -200) | (my > -200) | (mz > -200)){   // Making sure the data is with negative baised
        HMC_getData(&mx, &my, &mz);
    }

    hmc_x_scalled = mx * m_scale;
    hmc_y_scalled = my * m_scale;
    hmc_z_scalled = mz * m_scale;

    // Taking the average of the offsets
    hmc_x_gainError = (float)((HMC_XY_excitation / abs(hmc_x_scalled)) + hmc_x_gainError) / 2;
    hmc_y_gainError = (float)((HMC_XY_excitation / abs(hmc_y_scalled)) + hmc_y_gainError) / 2;
    hmc_z_gainError = (float)((HMC_Z_excitation / abs(hmc_z_scalled)) + hmc_z_gainError) / 2;

     // Configuring the Control register for normal mode
    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x70;
    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    // *****************************************************************************************
    // Offset estimation
    // *****************************************************************************************
    uint8_t i;
    for(i = 0; i < 10; i++)
    {   // Disregarding first few data
        HMC_getData(&mx, &my, &mz);
    }

    float x_max = -4000,
          y_max = -4000,
          z_max = -4000;

    float x_min = 4000,
          y_min = 4000,
          z_min = 4000;

    uart_print((const uint8_t*)"**** Please, rotate copter ****");
    uint64_t t = micros();
    while(micros() - t <= 3000000ul) // 3 seconds
    {
        HMC_getData(&mx, &my, &mz);

        hmc_x_scalled = (float)mx * m_scale * hmc_x_gainError;
        hmc_y_scalled = (float)my * m_scale * hmc_y_gainError;
        hmc_z_scalled = (float)mz * m_scale * hmc_z_gainError;

        x_max = max(x_max, hmc_x_scalled);
        y_max = max(y_max, hmc_y_scalled);
        z_max = max(z_max, hmc_z_scalled);

        x_min = min(x_min, hmc_x_scalled);
        y_min = min(y_min, hmc_y_scalled);
        z_min = min(z_min, hmc_z_scalled);
    }

    hmc_x_offset = ((x_max - x_min) / 2) - x_max;
    hmc_y_offset = ((y_max - y_min) / 2) - y_max;
    hmc_z_offset = ((z_max - z_min) / 2) - z_max;
}

void HMC_init()
{
	uint8_t tx_len = 2;
    uint8_t tx_buf[tx_len];

    HMC_offset_calibration();

    tx_buf[0] = HMC_CFG_A_REG;
    tx_buf[1] = 0x70; // needed value. see example in datasheet

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_CFG_B_REG;
    tx_buf[1] = 0xA0;

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    tx_buf[0] = HMC_MODE_REG;
    tx_buf[1] = 0x00;

    i2c_writeBytes(HMC_SERIAL_ADDR, tx_buf, tx_len, 0);

    delay(10, 50); // delay for 10 ms on 50 MHz freq
}

void HMC_getData(int16_t* mx, int16_t* my, int16_t* mz)
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

    // for next measurement
    delay(70, 50); // delay for 70 ms on 50 MHz freq
}

void HMC_getScaledData(int16_t* mx, int16_t* my, int16_t* mz)
{
    HMC_getData(mx, my, mz);

    *mx = *mx * m_scale * hmc_x_gainError + hmc_x_offset;
    *my = *my * m_scale * hmc_y_gainError + hmc_y_offset;
    *mz = *mz * m_scale * hmc_z_gainError + hmc_z_offset;
}

int8_t HMC_setMode(uint8_t mode)
{
    int8_t error_code = 0;
    if (mode <= MEASURE_IDLE)
    {
        i2c_writeBytes(HMC_MODE_REG, &mode, 1, 0);
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
        i2c_writeBytes(HMC_CFG_B_REG, &reg_value, 1, 0);
    }
    return error_code;
}
