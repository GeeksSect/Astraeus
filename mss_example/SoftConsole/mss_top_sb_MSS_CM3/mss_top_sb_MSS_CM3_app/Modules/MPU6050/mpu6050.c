#include "mpu6050.h"

void MPU6050_initialize()
{
	mpu6050_dev_addr = MPU6050_DEFAULT_ADDRESS;
    MPU6050_setClockSource(MPU6050_CLOCK_PLL_XGYRO);
    MPU6050_setFullScaleGyroRange(MPU6050_GYRO_FS_250);
    MPU6050_setFullScaleAccelRange(MPU6050_ACCEL_FS_2);
    MPU6050_setBypassMode();
    MPU6050_setSleepEnabled(0); // thanks to Jack Elston for pointing this one out!

    MPU6050_setDLPFMode(0x06);
}

void MPU6050_setClockSource(uint8_t source)
{
    i2c_writeBits(mpu6050_dev_addr,
                  MPU6050_RA_PWR_MGMT_1,
                  MPU6050_PWR1_CLKSEL_BIT,
                  MPU6050_PWR1_CLKSEL_LENGTH,
                  source,
                  0);
}

void MPU6050_setFullScaleGyroRange(uint8_t range)
{
    i2c_writeBits(mpu6050_dev_addr,
                  MPU6050_RA_GYRO_CONFIG,
                  MPU6050_GCONFIG_FS_SEL_BIT,
                  MPU6050_GCONFIG_FS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setFullScaleAccelRange(uint8_t range)
{
    i2c_writeBits(mpu6050_dev_addr,
                  MPU6050_RA_ACCEL_CONFIG,
                  MPU6050_ACONFIG_AFS_SEL_BIT,
                  MPU6050_ACONFIG_AFS_SEL_LENGTH,
                  range,
                  0);
}

void MPU6050_setSleepEnabled(uint8_t enabled)
{
    i2c_writeBit(mpu6050_dev_addr,
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

    i2c_writeBytes(mpu6050_dev_addr, tx_buf, tx_len, 0);

    tx_buf[0] = 0x6A; // register address
    tx_buf[1] = 0x00; // needed value

    i2c_writeBytes(mpu6050_dev_addr, tx_buf, tx_len, 0);

}

void MPU6050_setDLPFMode(uint8_t mode)
{
    i2c_writeBits(mpu6050_dev_addr,
                  MPU6050_RA_CONFIG,
                  MPU6050_CFG_DLPF_CFG_BIT,
                  MPU6050_CFG_DLPF_CFG_LENGTH,
                  mode,
                  0);
}

void MPU6050_getMotion6(int16_t* ax,
                        int16_t* ay,
                        int16_t* az,
                        int16_t* gx,
                        int16_t* gy,
                        int16_t* gz,
                        int use_calib)
{
    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = MPU6050_RA_ACCEL_XOUT_H;
    tx_len = 1;

    uint8_t rx_len = 14;
    uint8_t rx_buf[rx_len];

    i2c_writeBytes(mpu6050_dev_addr, tx_buf, tx_len, 0);
    i2c_readBytes(mpu6050_dev_addr, rx_buf, rx_len, 0);

    *ax = (((int16_t)rx_buf[0]) << 8) | rx_buf[1];
    *ay = (((int16_t)rx_buf[2]) << 8) | rx_buf[3];
    *az = (((int16_t)rx_buf[4]) << 8) | rx_buf[5];
    *gx = (((int16_t)rx_buf[8]) << 8) | rx_buf[9];
    *gy = (((int16_t)rx_buf[10]) << 8) | rx_buf[11];
    *gz = (((int16_t)rx_buf[12]) << 8) | rx_buf[13];
    if(use_calib == 1)
    {
    	*ax -= ax0;
    	*ay -= ay0;
		*az -= az0;
		*gx -= gx0;
		*gy -= gy0;
		*gz -= gz0;

    }

}
void MPU6050_calibration(){
	int i =0;
	uint16_t tmp[6];
	for(i=0; i<1000; i++)
	{
		MPU6050_getMotion6(&tmp[0], &tmp[1], &tmp[2], &tmp[3], &tmp[4], &tmp[5], 0);
		ax0 += tmp[0];
		ay0 += tmp[1];
		az0 += tmp[2];
		gx0 += tmp[3];
		gy0 += tmp[4];
		gz0 += tmp[5];
	}
	ax0 /= 1000;
	ay0 /= 1000;
	az0 /= 1000;
	gx0 /= 1000;
	gy0 /= 1000;
	gz0 /= 1000;
	ax0 -= 16384;

}

/** Get full-scale gyroscope range.
 * The FS_SEL parameter allows setting the full-scale range of the gyro sensors,
 * as described in the table below.
 *
 * <pre>
 * 0 = +/- 250 degrees/sec
 * 1 = +/- 500 degrees/sec
 * 2 = +/- 1000 degrees/sec
 * 3 = +/- 2000 degrees/sec
 * </pre>
 *

 */

/** Set full-scale gyroscope range.
 * @param range New full-scale gyroscope range value
 * @see getFullScaleRange()
 * @see MPU6050_GYRO_FS_250
 * @see MPU6050_RA_GYRO_CONFIG
 * @see MPU6050_GCONFIG_FS_SEL_BIT
 * @see MPU6050_GCONFIG_FS_SEL_LENGTH
 */





