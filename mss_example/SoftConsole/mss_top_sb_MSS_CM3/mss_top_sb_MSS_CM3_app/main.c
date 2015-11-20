#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Modules/PID/PID.h"
#include "Helpers/converter/converter.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"
#include "drivers/corei2c/core_i2c.h"
#include "drivers/CorePWM/core_pwm.h"
#include "drivers_config/sys_config/sys_config.h"

#include <stdlib.h>
#include <math.h>
/******************************************************************************
 * Baud value to achieve a 115200 baud rate with a 50 MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_115200    26

/******************************************************************************
 * Maximum receiver buffer size.
 *****************************************************************************/
#define MAX_RX_DATA_SIZE    256
#define SLAVE_SER_ADDR     0x77

/*-----------------------------------------------------------------------------
 * Receive buffer size.
 */
#define BUFFER_SIZE    32u
#define ENTER          13u

/*-----------------------------------------------------------------------------
 * Local functions.
 */
//i2c_slave_handler_ret_t slave_write_handler(i2c_instance_t *, uint8_t *, uint16_t);
//void report_bytes_written(uint8_t * p_rx_data, uint16_t rx_size);
static void display_greeting(void);
static void select_command(void);
//uint8_t get_data(void);
void press_any_key_to_continue(void);
void pwm_control();

/*------------------------------------------------------------------------------
 * I2C buffers. These are the buffers where data written transferred via I2C
 * will be stored. RX
 */
static uint8_t g_slave_rx_buffer[BUFFER_SIZE];
static uint8_t g_slave_tx_buffer[BUFFER_SIZE] = "<<-------Slave Tx data ------->>";
static uint8_t g_master_rx_buf[BUFFER_SIZE];
static uint8_t g_master_tx_buf[BUFFER_SIZE];

#define PWM_PRESCALE 1
#define PWM_PERIOD 1000

// Core instances
UART_instance_t g_uart;
pwm_instance_t  g_pwm;

// ================== ACEL DEFINES
#define k 65.53  // 2 bytes is range [-500;500] degrees
#define k1 57.29 // radians to degrees

// force ranged by 16 bits [0 to 32768] [0 to 100 %]
#define low_trottle 8192  //minimal total force  (8192 is 12.5%)
#define low_trottle2 5898 //minimal power of single motor (5898 is 9%)

#define high_trottle 39321  //max total force  (39321 is 65%)

#define Kp (0.5)   // sens


int16_t g_ax, g_ay, g_az;
int16_t g_gx, g_gy, g_gz;
uint16_t t_prev, t_curr;
int16_t pitch_prev, roll_prev;
int16_t pitch_curr, roll_curr;
int16_t acell_pitch, acell_roll;
int16_t pitch0, roll0;
uint16_t force = 25000;
uint16_t pow1, pow2, pow3, pow4;



void pwm_auto();
// =========================== ACEL DEFINES

void setup()
{
	PWM_init(&g_pwm, COREPWM_0_0, PWM_PRESCALE, PWM_PERIOD);
	UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
	i2c_init(1); // argument no matter
	BMP_calibrate();
	MPU6050_initialize();

	PWM_enable(&g_pwm, PWM_1);
	PWM_enable(&g_pwm, PWM_2);
	PWM_enable(&g_pwm, PWM_3);
	PWM_enable(&g_pwm, PWM_4);

	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);
}

int main(void)
{
    i2c_status_t status;
    uint8_t rx_size = 0;
    uint8_t rx_buff[1];
    uint8_t loop_count;

    setup();

    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);

    display_greeting();
    select_command();
    for(loop_count=0; loop_count < BUFFER_SIZE; loop_count++)
    {
        g_slave_rx_buffer[loop_count] = 0x00;
        g_master_rx_buf[loop_count] = 0x00;
        g_master_tx_buf[loop_count] = 0x00;
    }

    while (1)
    {
        /* Start command line interface if any key is pressed. */
        rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
        if(rx_size > 0)
        {
            switch(rx_buff[0])
            {
                case '2':
                {
                    uint16_t ax = 0x0000;
                    uint16_t ay = 0x0000;
                    uint16_t az = 0x0000;
                    uint16_t gx = 0x0000;
                    uint16_t gy = 0x0000;
                    uint16_t gz = 0x0000;

                    MPU6050_getMotion6(&ax, &ay, &az, &gx, &gy, &gz);
                    // TODO! replace it by normal handler
                    // handle_i2c_status(instance, g_master_rx_buf, g_rx_length);

                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rMPU6050 data is:\n\r");
                    uint8_t print_buf[5];

                    itoa((char *)&print_buf, 'x', ax);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r ax : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    itoa((char *)&print_buf, 'x', ay);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r ay : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    itoa((char *)&print_buf, 'x', az);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r az : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    itoa((char *)&print_buf, 'x', gx);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r gx : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    itoa((char *)&print_buf, 'x', gy);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r gy : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    itoa((char *)&print_buf, 'x', gz);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r gz : ");
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");

                    /* Display commands */
                    press_any_key_to_continue();
                    break;
                }


                case '4':
                {
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r PWM auto mode \n\r\n\r");

                    pwm_auto();
                    press_any_key_to_continue();
                    break;
                }

                case '0':
                    /* To Exit from the application */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rReturn from the Main function \n\r\n\r");
                    return 0;
                break;

                default:
                    /* To Invalid Entry */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rEnter A Valid Key\n\r");
                    select_command();
                break;
            }
        }
    };

    return 0;
}

void pwm_control()
{
	uint8_t pwm_enabled = (1 << 8) - 1;
	uint8_t pwm_1_mask = 1;
	uint8_t pwm_2_mask = 1 << 1;
	uint8_t pwm_3_mask = 1 << 2;
	uint8_t pwm_4_mask = 1 << 3;

	uint16_t duty_cycle = 0;
	uint16_t duty_step = 100;
	uint16_t duty_max = 1000;

    uint8_t rx_size = 0;
    uint8_t rx_buff[1];

	uint8_t work_flag = 1;

	while(work_flag)
	{
		rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
		if (rx_size > 0)
		{
			switch (rx_buff[0])
			{
			case '1':
			{
				if (pwm_enabled & pwm_1_mask)
				{
					PWM_disable(&g_pwm, PWM_1);
					pwm_enabled &= ~(pwm_1_mask);
				} else {
					PWM_enable(&g_pwm, PWM_1);
					pwm_enabled |= pwm_1_mask;
				}
				break;
			}
			case '2':
			{
				if (pwm_enabled & pwm_2_mask)
				{
					PWM_disable(&g_pwm, PWM_2);
					pwm_enabled &= ~(pwm_2_mask);
				} else {
					PWM_enable(&g_pwm, PWM_2);
					pwm_enabled |= pwm_2_mask;
				}
				break;
			}
			case '3':
			{
				if (pwm_enabled & pwm_3_mask)
				{
					PWM_disable(&g_pwm, PWM_3);
					pwm_enabled &= ~(pwm_3_mask);
				} else {
					PWM_enable(&g_pwm, PWM_3);
					pwm_enabled |= pwm_3_mask;
				}
				break;
			}
			case '4':
			{
				if (pwm_enabled & pwm_4_mask)
				{
					PWM_disable(&g_pwm, PWM_4);
					pwm_enabled &= ~(pwm_4_mask);
				} else {
					PWM_enable(&g_pwm, PWM_4);
					pwm_enabled |= pwm_4_mask;
				}
				break;
			}
			case 'w':
			{
				duty_cycle = (duty_step + duty_cycle <= duty_max) ?
							 duty_step + duty_cycle :
							 duty_cycle;
				break;
			}
			case 's':
			{
				duty_cycle = (duty_cycle - duty_step >= 0) ?
							  duty_cycle - duty_step:
							  duty_cycle;
				break;
			}
			case 'q':
			{
				work_flag = 0;
				break;
			}
			default:
			{
				break;
			}
			} // end switch

			if (pwm_enabled & pwm_1_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_1, duty_cycle);
			}
			if (pwm_enabled & pwm_2_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_2, duty_cycle);
			}
			if (pwm_enabled & pwm_3_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_3, duty_cycle);
			}
			if (pwm_enabled & pwm_4_mask)
			{
				PWM_set_duty_cycle(&g_pwm, PWM_4, duty_cycle);
			}
		}
	}
}

void pwm_auto()
{
    uint8_t calibration_step = 10;

    uint8_t rx_size = 0;
    uint8_t rx_buff[1];

	uint8_t work_flag = 1;
	uint16_t force_delta = 5000;
	force = 3000;

	uint16_t duty_1 = 0;
	uint16_t duty_2 = 0;
	uint16_t duty_3 = 0;
	uint16_t duty_4 = 0;

	int16_t c_ax, c_ay, c_az, c_gx, c_gy, c_gz;
	int16_t t_ax, t_ay, t_az, t_gx, t_gy, t_gz;

	MPU6050_getMotion6(&c_az, &c_ay, &c_ax, &c_gx, &c_gy, &c_gz);

	uint8_t i;
	for (i = 0; i < calibration_step; ++i)
	{
		MPU6050_getMotion6(&t_az, &t_ay, &t_ax, &t_gx, &t_gy, &t_gz);
		c_ax = (c_ax + t_ax) / 2;
		c_ay = (c_ay + t_ay) / 2;
		c_az = (c_az + t_az) / 2;
		c_gx = (c_gx + t_gx) / 2;
		c_gy = (c_gy + t_gy) / 2;
		c_gz = (c_gz + t_gz) / 2;
	}

	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);

	PWM_disable(&g_pwm, PWM_1);
	PWM_disable(&g_pwm, PWM_2);
	PWM_disable(&g_pwm, PWM_3);
	PWM_disable(&g_pwm, PWM_4);

	PWM_enable(&g_pwm, PWM_1);
	PWM_enable(&g_pwm, PWM_2);
	PWM_enable(&g_pwm, PWM_3);
	PWM_enable(&g_pwm, PWM_4);

	PWM_set_duty_cycle(&g_pwm, PWM_1, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_2, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_3, 0);
	PWM_set_duty_cycle(&g_pwm, PWM_4, 0);

	while(work_flag)
	{
		rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
		if (rx_size > 0)
		{
			switch (rx_buff[0])
			{
				case 'w':
				{
					force = (force + force_delta <= 65000) ?
							 force + force_delta:
							 force;
					break;
				}
				case 's':
				{
					force = (force - force_delta >= 0) ?
							 force - force_delta:
							 force;
					break;
				}
				case 'q':
				{
					work_flag = 0;
					break;
				}
				default:
				{
					break;
				}
			} // end switch
		}

		MPU6050_getMotion6(&g_az, &g_ay, &g_ax, &g_gx, &g_gy, &g_gz);

		// calibrate values
		g_ax -= c_ax;
		g_ay -= c_ay;
		g_az -= c_az;
		g_gx -= c_gx;
		g_gy -= c_gy;
		g_gz -= c_gz;

		my_ESC();

		duty_1 = (pow1) / 66;
		duty_3 = (pow2) / 66;
		duty_4 = (pow3) / 66;
		duty_2 = (pow4) / 66;

        uint8_t print_buf[5];
		itoa((char *)&print_buf, 'x', pow1);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"ax:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 4);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");

		itoa((char *)&print_buf, 'x', pow1);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"ay:");
		UART_send(&g_uart, (const uint8_t *)print_buf, 4);
		UART_polled_tx_string(&g_uart, (const uint8_t *)"\n");


		PWM_set_duty_cycle(&g_pwm, PWM_1, duty_1);
		PWM_set_duty_cycle(&g_pwm, PWM_2, duty_2);
		PWM_set_duty_cycle(&g_pwm, PWM_3, duty_3);
		PWM_set_duty_cycle(&g_pwm, PWM_4, duty_4);
	}
}

/*------------------------------------------------------------------------------
  Display greeting message when application is started.
 */
static void display_greeting(void)
{
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r******************************************************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"**************************** DOF10 CLI ***************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"******************************************************************************\n\r");
}
/*------------------------------------------------------------------------------
  Select the I2C Mode.
 */
static void select_command(void)
{
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r*********************** Select the command *******************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '1' to measure temperature\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '2' to get data from MPU6050 \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '3' to control PWM \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '4' to autocontrol PWM \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '0' to EXIT from the Application \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
}

/*------------------------------------------------------------------------------
 * Display "Press any key to continue." message and wait for key press.
 */
void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
    uint8_t press_any_key_msg[] = "\n\rPress any key to continue.";

    UART_send(&g_uart, press_any_key_msg, sizeof(press_any_key_msg));
    do {
        rx_size = UART_get_rx(&g_uart, &rx_char, sizeof(rx_char));
    } while(rx_size == 0);
    select_command();
}

/*------------------------------------------------------------------------------
 * Service the I2C timeout functionality.
 */
void SysTick_Handler(void)
{
    I2C_system_tick(&g_core_i2c0, 10);
}


void FabricIrq0_IRQHandler(void)
{
	I2C_isr(&g_core_i2c0);
}


// ============ ACEL FUNCTIONS


