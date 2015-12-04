#include "hmc.h"

// I2Cdev library collection - HMC5883L I2C device class
// Based on Honeywell HMC5883L datasheet, 10/2010 (Form #900405 Rev B)
// 6/12/2012 by Jeff Rowberg <jeff@rowberg.net>
// Updates should (hopefully) always be available at https://github.com/jrowberg/i2cdevlib
//
// Changelog:
//     2012-06-12 - fixed swapped Y/Z axes
//     2011-08-22 - small Doxygen comment fixes
//     2011-07-31 - initial release

/* ============================================
I2Cdev device library code is placed under the MIT license
Copyright (c) 2012 Jeff Rowberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
===============================================
*/

/** Default constructor, uses default I2C address.
 * @see HMC5883L_DEFAULT_ADDRESS
 */

void HMC_initialize() {
    // write CONFIG_A register
    uint8_t tx_buf = HMC5883L_RA_CONFIG_A;
    uint8_t buff = (HMC5883L_AVERAGING_8 << (HMC5883L_CRA_AVERAGE_BIT - HMC5883L_CRA_AVERAGE_LENGTH + 1)) |
            (HMC5883L_RATE_15     << (HMC5883L_CRA_RATE_BIT - HMC5883L_CRA_RATE_LENGTH + 1)) |
            (HMC5883L_BIAS_NORMAL << (HMC5883L_CRA_BIAS_BIT - HMC5883L_CRA_BIAS_LENGTH + 1));

	i2c_writeBytes(devAddr, tx_buf, 1, 0);

    // write CONFIG_B register
    HMC_setGain(HMC5883L_GAIN_1090);

    // write MODE register
    HMC_setMode(HMC5883L_MODE_SINGLE);
}


// CONFIG_A register

/** Get number of samples averaged per measurement.
 * @return Current samples averaged per measurement (0-3 for 1/2/4/8 respectively)
 * @see HMC5883L_AVERAGING_8
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_AVERAGE_BIT
 * @see HMC5883L_CRA_AVERAGE_LENGTH
 */
uint8_t HMC5883L_getSampleAveraging() {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_CONFIG_A;
    tx_len = 1;

    uint8_t rx_buf[1];

    i2c_writeBytes(devAddr, tx_buf, 1, 0);
    i2c_readBytes(devAddr, rx_buf, 1, 0);

	return rx_buf[0];
}
/** Set number of samples averaged per measurement.
 * @param averaging New samples averaged per measurement setting(0-3 for 1/2/4/8 respectively)
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_AVERAGE_BIT
 * @see HMC5883L_CRA_AVERAGE_LENGTH
 */
void HMC5883L_setSampleAveraging(uint8_t averaging) {
    i2c_writeBits(devAddr,
					HMC5883L_RA_CONFIG_A,
					HMC5883L_CRA_AVERAGE_BIT,
					HMC5883L_CRA_AVERAGE_LENGTH,
					averaging,
                  0);
}
/** Get data output rate value.
 * The Table below shows all selectable output rates in continuous measurement
 * mode. All three channels shall be measured within a given output rate. Other
 * output rates with maximum rate of 160 Hz can be achieved by monitoring DRDY
 * interrupt pin in single measurement mode.
 *
 * Value | Typical Data Output Rate (Hz)
 * ------+------------------------------
 * 0     | 0.75
 * 1     | 1.5
 * 2     | 3
 * 3     | 7.5
 * 4     | 15 (Default)
 * 5     | 30
 * 6     | 75
 * 7     | Not used
 *
 * @return Current rate of data output to registers
 * @see HMC5883L_RATE_15
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_RATE_BIT
 * @see HMC5883L_CRA_RATE_LENGTH
 */
uint8_t HMC5883L_getDataRate() {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_CONFIG_A;
    tx_len = 1;

    uint8_t rx_buf[1];

    i2c_writeBytes(devAddr, tx_buf, 1, 0);
    i2c_readBytes(devAddr, rx_buf, 1, 0);

    //I2Cdev::readBits(devAddr, HMC5883L_RA_CONFIG_A, HMC5883L_CRA_RATE_BIT, HMC5883L_CRA_RATE_LENGTH, buffer);

    return rx_buf[0];
}
/** Set data output rate value.
 * @param rate Rate of data output to registers
 * @see getDataRate()
 * @see HMC5883L_RATE_15
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_RATE_BIT
 * @see HMC5883L_CRA_RATE_LENGTH
 */
void HMC5883L_setDataRate(uint8_t rate) {
    i2c_writeBits(devAddr,
					HMC5883L_RA_CONFIG_A,
					HMC5883L_CRA_RATE_BIT,
					HMC5883L_CRA_RATE_LENGTH,
					rate,
                  0);
}
/** Get measurement bias value.
 * @return Current bias value (0-2 for normal/positive/negative respectively)
 * @see HMC5883L_BIAS_NORMAL
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_BIAS_BIT
 * @see HMC5883L_CRA_BIAS_LENGTH
 */
uint8_t HMC5883L_getMeasurementBias() {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_CONFIG_A;
    tx_len = 1;

    uint8_t rx_buf[1];

    i2c_writeBytes(devAddr, tx_buf, 1, 0);
    i2c_readBytes(devAddr, rx_buf, 1, 0);


//	I2Cdev::readBits(devAddr, HMC5883L_RA_CONFIG_A, HMC5883L_CRA_BIAS_BIT, HMC5883L_CRA_BIAS_LENGTH, buffer);
    return rx_buf[0];
}
/** Set measurement bias value.
 * @param bias New bias value (0-2 for normal/positive/negative respectively)
 * @see HMC5883L_BIAS_NORMAL
 * @see HMC5883L_RA_CONFIG_A
 * @see HMC5883L_CRA_BIAS_BIT
 * @see HMC5883L_CRA_BIAS_LENGTH
 */
void HMC5883L_setMeasurementBias(uint8_t bias) {
    i2c_writeBits(devAddr,
					HMC5883L_RA_CONFIG_A,
					HMC5883L_CRA_BIAS_BIT,
					HMC5883L_CRA_BIAS_LENGTH,
					bias,
                  0);
}

// CONFIG_B register

/** Get magnetic field gain value.
 * The table below shows nominal gain settings. Use the "Gain" column to convert
 * counts to Gauss. Choose a lower gain value (higher GN#) when total field
 * strength causes overflow in one of the data output registers (saturation).
 * The data output range for all settings is 0xF800-0x07FF (-2048 - 2047).
 *
 * Value | Field Range | Gain (LSB/Gauss)
 * ------+-------------+-----------------
 * 0     | +/- 0.88 Ga | 1370
 * 1     | +/- 1.3 Ga  | 1090 (Default)
 * 2     | +/- 1.9 Ga  | 820
 * 3     | +/- 2.5 Ga  | 660
 * 4     | +/- 4.0 Ga  | 440
 * 5     | +/- 4.7 Ga  | 390
 * 6     | +/- 5.6 Ga  | 330
 * 7     | +/- 8.1 Ga  | 230
 *
 * @return Current magnetic field gain value
 * @see HMC5883L_GAIN_1090
 * @see HMC5883L_RA_CONFIG_B
 * @see HMC5883L_CRB_GAIN_BIT
 * @see HMC5883L_CRB_GAIN_LENGTH
 */
uint8_t HMC5883L_getGain() {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_CONFIG_B;
    tx_len = 1;

    uint8_t rx_buf[1];

    i2c_writeBytes(devAddr, tx_buf, 1, 0);
    i2c_readBytes(devAddr, rx_buf, 1, 0);


//	I2Cdev::readBits(devAddr, HMC5883L_RA_CONFIG_B, HMC5883L_CRB_GAIN_BIT, HMC5883L_CRB_GAIN_LENGTH, buffer);
    return rx_buf[0];
}
/** Set magnetic field gain value.
 * @param gain New magnetic field gain value
 * @see getGain()
 * @see HMC5883L_RA_CONFIG_B
 * @see HMC5883L_CRB_GAIN_BIT
 * @see HMC5883L_CRB_GAIN_LENGTH
 */
void HMC_setGain(uint8_t gain) {
    // use this method to guarantee that bits 4-0 are set to zero, which is a
    // requirement specified in the datasheet; it's actually more efficient than
    // using the I2Cdev.writeBits method

    i2c_writeBits(devAddr,
					HMC5883L_RA_CONFIG_B,
					0,
					8,
					gain << (HMC5883L_CRB_GAIN_BIT - HMC5883L_CRB_GAIN_LENGTH + 1),
                  0);

}

// MODE register

/** Get measurement mode.
 * In continuous-measurement mode, the device continuously performs measurements
 * and places the result in the data register. RDY goes high when new data is
 * placed in all three registers. After a power-on or a write to the mode or
 * configuration register, the first measurement set is available from all three
 * data output registers after a period of 2/fDO and subsequent measurements are
 * available at a frequency of fDO, where fDO is the frequency of data output.
 *
 * When single-measurement mode (default) is selected, device performs a single
 * measurement, sets RDY high and returned to idle mode. Mode register returns
 * to idle mode bit values. The measurement remains in the data output register
 * and RDY remains high until the data output register is read or another
 * measurement is performed.
 *
 * @return Current measurement mode
 * @see HMC5883L_MODE_CONTINUOUS
 * @see HMC5883L_MODE_SINGLE
 * @see HMC5883L_MODE_IDLE
 * @see HMC5883L_RA_MODE
 * @see HMC5883L_MODEREG_BIT
 * @see HMC5883L_MODEREG_LENGTH
 */
uint8_t HMC_getMode() {


    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_MODE;
    tx_len = 1;

    uint8_t rx_len = 14;
    uint8_t rx_buf[rx_len];

    i2c_writeBytes(devAddr, tx_buf, 1, 0);
    i2c_readBytes(devAddr, rx_buf, 1, 0);


//    I2Cdev::readBits(devAddr, HMC5883L_RA_MODE, HMC5883L_MODEREG_BIT, HMC5883L_MODEREG_LENGTH, buffer);
    return rx_buf[0];
}
/** Set measurement mode.
 * @param newMode New measurement mode
 * @see getMode()
 * @see HMC5883L_MODE_CONTINUOUS
 * @see HMC5883L_MODE_SINGLE
 * @see HMC5883L_MODE_IDLE
 * @see HMC5883L_RA_MODE
 * @see HMC5883L_MODEREG_BIT
 * @see HMC5883L_MODEREG_LENGTH
 */
void HMC_setMode(uint8_t newMode) {
    // use this method to guarantee that bits 7-2 are set to zero, which is a
    // requirement specified in the datasheet; it's actually more efficient than
    // using the I2Cdev.writeBits method
    i2c_writeBits(devAddr,
					HMC5883L_RA_MODE,
					0,
					8,
					newMode << (HMC5883L_MODEREG_BIT - HMC5883L_MODEREG_LENGTH + 1),
                  0);
    mode = newMode; // track to tell if we have to clear bit 7 after a read
}

// DATA* registers

/** Get 3-axis heading measurements.
 * In the event the ADC reading overflows or underflows for the given channel,
 * or if there is a math overflow during the bias measurement, this data
 * register will contain the value -4096. This register value will clear when
 * after the next valid measurement is made. Note that this method automatically
 * clears the appropriate bit in the MODE register if Single mode is active.
 * @param x 16-bit signed integer container for X-axis heading
 * @param y 16-bit signed integer container for Y-axis heading
 * @param z 16-bit signed integer container for Z-axis heading
 * @see HMC5883L_RA_DATAX_H
 */
void HMC_getHeading(int16_t *x, int16_t *y, int16_t *z) {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_DATAX_H;
    tx_len = 1;

    uint8_t rx_len = 6;
    uint8_t rx_buf[rx_len];

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBytes(devAddr, rx_buf, rx_len, 0);

	if (mode == HMC5883L_MODE_SINGLE)
		i2c_writeBits(devAddr,
						HMC5883L_RA_MODE,
						0,
						8,
						HMC5883L_MODE_SINGLE << (HMC5883L_MODEREG_BIT - HMC5883L_MODEREG_LENGTH + 1),
						0);
	*x = (((int16_t)rx_buf[0]) << 8) | rx_buf[1];
    *y = (((int16_t)rx_buf[4]) << 8) | rx_buf[5];
    *z = (((int16_t)rx_buf[2]) << 8) | rx_buf[3];
}


// STATUS register

/** Get data output register lock status.
 * This bit is set when this some but not all for of the six data output
 * registers have been read. When this bit is set, the six data output registers
 * are locked and any new data will not be placed in these register until one of
 * three conditions are met: one, all six bytes have been read or the mode
 * changed, two, the mode is changed, or three, the measurement configuration is
 * changed.
 * @return Data output register lock status
 * @see HMC5883L_RA_STATUS
 * @see HMC5883L_STATUS_LOCK_BIT
 */
uint8_t HMC_getLockStatus() {

    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_STATUS;
    tx_len = 1;

    uint8_t rx_len = 6;
    uint8_t rx_buf[rx_len];

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBytes(devAddr, rx_buf, rx_len, 0);

//    I2Cdev::readBit(devAddr, HMC5883L_RA_STATUS, HMC5883L_STATUS_LOCK_BIT, buffer);
    return rx_buf[0];
}
/** Get data ready status.
 * This bit is set when data is written to all six data registers, and cleared
 * when the device initiates a write to the data output registers and after one
 * or more of the data output registers are written to. When RDY bit is clear it
 * shall remain cleared for 250 us. DRDY pin can be used as an alternative to
 * the status register for monitoring the device for measurement data.
 * @return Data ready status
 * @see HMC5883L_RA_STATUS
 * @see HMC5883L_STATUS_READY_BIT
 */
uint8_t HMC_getReadyStatus() {


    uint8_t tx_buf[1]; uint8_t tx_len;
    tx_buf[0] = HMC5883L_RA_STATUS;
    tx_len = 1;

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBits(devAddr, HMC5883L_RA_STATUS, HMC5883L_STATUS_READY_BIT, 1, &buffer, 0);

    return buffer[0];
}

// ID_* registers

/** Get identification byte A
 * @return ID_A byte (should be 01001000, ASCII value 'H')
 */
uint8_t HMC_getIDA() {

    uint8_t tx_buf[0] = {HMC5883L_RA_ID_A};
    uint8_t tx_len = 1;

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBytes(devAddr, buffer, 1, 0);

    return buffer[0];
}
/** Get identification byte B
 * @return ID_A byte (should be 00110100, ASCII value '4')
 */
uint8_t HMC_getIDB() {

	uint8_t tx_buf[0] = {HMC5883L_RA_ID_B};
    uint8_t tx_len = 1;

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBytes(devAddr, buffer, 1, 0);

	return buffer[0];
}
/** Get identification byte C
 * @return ID_A byte (should be 00110011, ASCII value '3')
 */
uint8_t HMC_getIDC() {

	uint8_t tx_buf[0] = {HMC5883L_RA_ID_C};
    uint8_t tx_len = 1;

    i2c_writeBytes(devAddr, tx_buf, tx_len, 0);
    i2c_readBytes(devAddr, buffer, 1, 0);

    return buffer[0];
}

