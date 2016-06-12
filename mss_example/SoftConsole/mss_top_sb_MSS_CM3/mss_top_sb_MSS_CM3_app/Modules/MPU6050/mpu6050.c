#include "mpu6050.h"

void MPU6050_initialize()
{
	mpu6050_dev_addr = MPU6050_DEFAULT_ADDRESS;
    MPU6050_setClockSource(MPU6050_CLOCK_PLL_XGYRO);

    MPU6050_setBypassMode();
    MPU6050_setSleepEnabled(0); // thanks to Jack Elston for pointing this one out!

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

/*          |   ACCELEROMETER    |           GYROSCOPE
* DLPF_CFG | Bandwidth | Delay  | Bandwidth | Delay  | Sample Rate
* ---------+-----------+--------+-----------+--------+-------------
* 0        | 260Hz     | 0ms    | 256Hz     | 0.98ms | 8kHz
* 1        | 184Hz     | 2.0ms  | 188Hz     | 1.9ms  | 1kHz
* 2        | 94Hz      | 3.0ms  | 98Hz      | 2.8ms  | 1kHz
* 3        | 44Hz      | 4.9ms  | 42Hz      | 4.8ms  | 1kHz
* 4        | 21Hz      | 8.5ms  | 20Hz      | 8.3ms  | 1kHz
* 5        | 10Hz      | 13.8ms | 10Hz      | 13.4ms | 1kHz
* 6        | 5Hz       | 19.0ms | 5Hz       | 18.6ms | 1kHz
* 7        |   -- Reserved --   |   -- Reserved --   | Reserved
* </pre>
*/
void MPU6050_setDLPFMode(uint8_t mode)
{
    i2c_writeBits(mpu6050_dev_addr,
                  MPU6050_RA_CONFIG,
                  MPU6050_CFG_DLPF_CFG_BIT,
                  MPU6050_CFG_DLPF_CFG_LENGTH,
                  mode,
                  0);
}

inline void MPU6050_getMotion6(int16_t* ax,
                        int16_t* ay,
                        int16_t* az,
                        int16_t* gx,
                        int16_t* gy,
                        int16_t* gz,
                        uint8_t use_calib)
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
		*gx -= gx0;
		*gy -= gy0;
		*gz -= gz0;
    }

}
void MPU6050_calibration(){
	int i =0;
	int16_t tmp[6];
	for(i=0; i<1000; i++)
	{
		MPU6050_getMotion6(&tmp[0], &tmp[1], &tmp[2], &tmp[3], &tmp[4], &tmp[5], 0);
		gx0 += tmp[3];
		gy0 += tmp[4];
		gz0 += tmp[5];
	}

	gx0 /= 1000;
	gy0 /= 1000;
	gz0 /= 1000;


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


void MPU6050_setAccelFIFOEnabled(uint8_t flag){

	i2c_writeBit(mpu6050_dev_addr, MPU6050_RA_FIFO_EN, MPU6050_ACCEL_FIFO_EN_BIT, flag, 0);

}

void MPU6050_setFIFOEnabled(uint8_t enabled) {
	i2c_writeBit(mpu6050_dev_addr, MPU6050_RA_USER_CTRL, MPU6050_USERCTRL_FIFO_EN_BIT, enabled, 0);
}
uint16_t MPU6050_getFIFOCount() {
    uint8_t tx_buf[1];
    tx_buf[0] = MPU6050_RA_FIFO_COUNTH;
    uint8_t rx_buf[2];
    I2C_write_read(&g_core_i2c0, mpu6050_dev_addr, MPU6050_RA_FIFO_COUNTH, 1, rx_buf, 2, I2C_RELEASE_BUS);

    return (((uint16_t)rx_buf[0]) << 8) | rx_buf[1];
}
void MPU6050_getFIFOBytes(uint8_t *data, uint8_t length) {
    uint8_t tx_buf;
    tx_buf = MPU6050_RA_FIFO_R_W;


    i2c_writeBytes(mpu6050_dev_addr, &tx_buf, 1, 0);
    i2c_readBytes(mpu6050_dev_addr, data, length, 0);
}
void MPU6050_setGyrosFIFOEnabled(uint8_t enabled) {
	i2c_writeBit(mpu6050_dev_addr, MPU6050_RA_FIFO_EN, MPU6050_XG_FIFO_EN_BIT, enabled, 0);
	i2c_writeBit(mpu6050_dev_addr, MPU6050_RA_FIFO_EN, MPU6050_YG_FIFO_EN_BIT, enabled, 0);
	i2c_writeBit(mpu6050_dev_addr, MPU6050_RA_FIFO_EN, MPU6050_ZG_FIFO_EN_BIT, enabled, 0);

}

void MPU6050_setSampleRateDiv(uint8_t data) {

    uint8_t tx_buf[2] = {MPU6050_RA_SMPLRT_DIV, data};
    i2c_writeBytes(mpu6050_dev_addr, tx_buf, 2, 0);
}
