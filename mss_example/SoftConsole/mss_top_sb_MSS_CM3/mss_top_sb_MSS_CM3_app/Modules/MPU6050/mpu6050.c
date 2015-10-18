#include "mpu6050.h"

void MPU6050_initialize(uint8_t addr)
{
    dev_addr = addr;
    MPU6050_setClockSource(MPU6050_CLOCK_PLL_XGYRO);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_250);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
    MPU6050_setSleepEnabled(0); // thanks to Jack Elston for pointing this one out!
}

void MPU6050_setClockSource(uint8_t source)
{
    i2c_writeBits(dev_addr,
                  MPU6050_RA_PWR_MGMT_1,
                  MPU6050_PWR1_CLKSEL_BIT,
                  MPU6050_PWR1_CLKSEL_LENGTH,
                  source,
                  0);
}

void MPU6050_setFullScaleGyroRange(uint8_t range)
{
    i2c_writeBits(dev_addr,
                  MPU6050_RA_GYRO_CONFIG,
                  MPU6050_GCONFIG_FS_SEL_BIT,
                  MPU6050_GCONFIG_FS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setFullScaleAccelRange(uint8_t range)
{
    i2c_writeBits(dev_addr,
                  MPU6050_RA_ACCEL_CONFIG,
                  MPU6050_ACONFIG_AFS_SEL_BIT,
                  MPU6050_ACONFIG_AFS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setSleepEnabled(uint8_t enabled)
{
    i2c_writeBit(dev_addr,
                 MPU6050_RA_PWR_MGMT_1,
                 MPU6050_PWR1_SLEEP_BIT,
                 enabled,
                 0);
}
