#include "mpu6050.h"

void MPU6050_initialize()
{
    MPU6050_setClockSource(MPU6050_CLOCK_PLL_XGYRO);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_250);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
    MPU6050_setBypassMode();
    MPU6050_setSleepEnabled(0); // thanks to Jack Elston for pointing this one out!

    MPU6050_setDLPFMode(0x06);

    HMC_init();
}

void MPU6050_setClockSource(uint8_t source)
{
    i2c_writeBits(MPU6050_DEFAULT_ADDRESS,
                  MPU6050_RA_PWR_MGMT_1,
                  MPU6050_PWR1_CLKSEL_BIT,
                  MPU6050_PWR1_CLKSEL_LENGTH,
                  source,
                  0);
}

void MPU6050_setFullScaleGyroRange(uint8_t range)
{
    i2c_writeBits(MPU6050_DEFAULT_ADDRESS,
                  MPU6050_RA_GYRO_CONFIG,
                  MPU6050_GCONFIG_FS_SEL_BIT,
                  MPU6050_GCONFIG_FS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setFullScaleAccelRange(uint8_t range)
{
    i2c_writeBits(MPU6050_DEFAULT_ADDRESS,
                  MPU6050_RA_ACCEL_CONFIG,
                  MPU6050_ACONFIG_AFS_SEL_BIT,
                  MPU6050_ACONFIG_AFS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setSleepEnabled(uint8_t enabled)
{
    i2c_writeBit(MPU6050_DEFAULT_ADDRESS,
                 MPU6050_RA_PWR_MGMT_1,
                 MPU6050_PWR1_SLEEP_BIT,
                 enabled,
                 0);
}

/*
 * Just for accessing HMC from MC
 * data got from http://forum.arduino.cc/index.php?topic=223345.msg2142479#msg2142479
 */
void MPU6050_setBypassMode()
{
    uint8_t tx_len = 2;
    uint8_t tx_buf[tx_len];

    tx_buf[0] = 0x37; // register address
    tx_buf[1] = 0x02; // needed value

    i2c_writeBytes(MPU6050_DEFAULT_ADDRESS, tx_buf, tx_len, 0);

    tx_buf[0] = 0x6A; // register address
    tx_buf[1] = 0x00; // needed value

    i2c_writeBytes(MPU6050_DEFAULT_ADDRESS, tx_buf, tx_len, 0);

    tx_buf[0] = 0x6B; // register address
    tx_buf[1] = 0x00; // needed value

    i2c_writeBytes(mpu6050_dev_addr, tx_buf, tx_len, 0);


}

void MPU6050_setDLPFMode(uint8_t mode)
{
    i2c_writeBits(MPU6050_DEFAULT_ADDRESS,
                  MPU6050_RA_CONFIG,
                  MPU6050_CFG_DLPF_CFG_BIT,
                  MPU6050_CFG_DLPF_CFG_LENGTH,
                  mode,
                  0);
}

void MPU6050_getRawMotion6(int16_t* ax,
                           int16_t* ay,
                           int16_t* az,
                           int16_t* gx,
                           int16_t* gy,
                           int16_t* gz)
{
    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = MPU6050_RA_ACCEL_XOUT_H;
    tx_len = 1;

    uint8_t rx_len = 14;
    uint8_t rx_buf[rx_len];

    i2c_writeBytes(MPU6050_DEFAULT_ADDRESS, tx_buf, tx_len, 0);
    i2c_readBytes(MPU6050_DEFAULT_ADDRESS, rx_buf, rx_len, 0);

    *ax = (((int16_t)rx_buf[0])  << 8) | rx_buf[1];
    *ay = (((int16_t)rx_buf[2])  << 8) | rx_buf[3];
    *az = (((int16_t)rx_buf[4])  << 8) | rx_buf[5];
    *gx = (((int16_t)rx_buf[8])  << 8) | rx_buf[9];
    *gy = (((int16_t)rx_buf[10]) << 8) | rx_buf[11];
    *gz = (((int16_t)rx_buf[12]) << 8) | rx_buf[13];
}

void MPU6050_getMotion6(int16_t* ax,
                        int16_t* ay,
                        int16_t* az,
                        int16_t* gx,
                        int16_t* gy,
                        int16_t* gz)
{
    MPU6050_getRawMotion6(ax, ay, az, gx, gy, gz);
    *ax -= ax_0;
    *ay -= ay_0;
    *az -= az_0;
    *gx -= gx_0;
    *gy -= gy_0;
    *gz -= gz_0;
}

void MPU6050_calibration()
{
  int i = 0;
  int16_t tmp[6];
  for(i = 0; i < CALIBR_ITER; i++)
  {
    MPU6050_getMotion6(&tmp[0], &tmp[1], &tmp[2], &tmp[3], &tmp[4], &tmp[5]);
    ax_0 += tmp[0];
    ay_0 += tmp[1];
    az_0 += tmp[2];
    gx_0 += tmp[3];
    gy_0 += tmp[4];
    gz_0 += tmp[5];
  }
  ax_0 /= CALIBR_ITER;
  ay_0 /= CALIBR_ITER;
  az_0 /= CALIBR_ITER;
  gx_0 /= CALIBR_ITER;
  gy_0 /= CALIBR_ITER;
  gz_0 /= CALIBR_ITER;
  ax_0 -= 16384;
}

void MPU6050_getMotion9(int16_t* ax,
                        int16_t* ay,
                        int16_t* az,
                        int16_t* gx,
                        int16_t* gy,
                        int16_t* gz,
                        int16_t* mx,
                        int16_t* my,
                        int16_t* mz)
{
    MPU6050_getMotion6(ax, ay, az, gx, gy, gz);
    HMC_getData(mx, my, mz);
}