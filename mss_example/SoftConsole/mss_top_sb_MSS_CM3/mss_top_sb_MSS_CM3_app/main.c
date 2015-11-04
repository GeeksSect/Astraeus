#include "Modules/BMP/bmp.h"
#include "Modules/I2C/i2c.h"
#include "Modules/MPU6050/mpu6050.h"
#include "Helpers/converter/converter.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"
#include "drivers/corei2c/core_i2c.h"
#include "drivers/CorePWM/core_pwm.h"
#include "drivers_config/sys_config/sys_config.h"
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
                case '1':
                {
                    /* Measure temperature (DOF10) */
                    uint16_t temperature = 0xFFFF;
                    status = BMP_get_temperature(&temperature);
                    // TODO! replace it by normal handler
                    // handle_i2c_status(instance, g_master_rx_buf, g_rx_length);

                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rTemperature is: ");
                    uint8_t print_buf[4];
                    itoa((char *)&print_buf, 'd', temperature);
                    UART_send(&g_uart, (const uint8_t *)print_buf, 4);
                    UART_polled_tx_string(&g_uart, (const uint8_t *)" C\n\r");

                    /* Display commands */
                    press_any_key_to_continue();
                    break;
                }

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
                    uint8_t print_buf[4];

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

                case '3':
                {
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r PWM test mode \n\r\n\r");

                    PWM_set_duty_cycle(&g_pwm, PWM_1, 250);
                    PWM_set_duty_cycle(&g_pwm, PWM_2, 250);
                    PWM_set_duty_cycle(&g_pwm, PWM_3, 250);
                    PWM_set_duty_cycle(&g_pwm, PWM_4, 250);

                    delay(20 * 1000, 50);
                    PWM_set_duty_cycle(&g_pwm, PWM_1, 500);
                    PWM_set_duty_cycle(&g_pwm, PWM_2, 500);
                    PWM_set_duty_cycle(&g_pwm, PWM_3, 500);
                    PWM_set_duty_cycle(&g_pwm, PWM_4, 500);

                    delay(20 * 1000, 50);
                    PWM_set_duty_cycle(&g_pwm, PWM_1, 1000);
                    PWM_set_duty_cycle(&g_pwm, PWM_2, 1000);
                    PWM_set_duty_cycle(&g_pwm, PWM_3, 1000);
                    PWM_set_duty_cycle(&g_pwm, PWM_4, 1000);

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

/*------------------------------------------------------------------------------
  Display greeting message when application is started.
 */
static void display_greeting(void)
{
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r******************************************************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"**************************** DOF10 CLI ***************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"******************************************************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"************* Functions supported by this CLI project are ********************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"1. Read Temperature\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"2. Read MPU6050\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"3. PWM control\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"0. Read Temperature\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
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
