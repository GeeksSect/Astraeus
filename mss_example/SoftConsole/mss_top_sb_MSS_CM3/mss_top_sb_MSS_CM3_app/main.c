/*******************************************************************************
 * (c) Copyright 2008-2010 Actel Corporation.  All rights reserved.
 *
 * CoreUARTapb polled transmit and  receive example.
 *
 * This simple example demonstrates how to use the CoreUARTapb driver to
 * transmit and receive data in polled mode.
 * This sample project is targeted at a Cortex-M1 design running on the Fusion
 * Embedded Development Kit (FEDK) board connected via a serial cable to a host
 * PC running HyperTerminal. HyperTerminal must be configured for 57600 baud,
 * 8 bits, 1 stop bit no parity, and no flow control.
 * This program displays a message on HyperTerminal then echoed back characters
 * typed in HyperTerminal.
 *
 * SVN $Revision: 3101 $
 * SVN $Date: 2010-10-22 18:20:56 +0530 (Fri, 22 Oct 2010) $
 */
#include "Modules/BMP/bmp.h"
#include "Helpers/converter/converter.h"

#include "hal.h"
#include "mss_top_hw_platform.h"
#include "core_uart_apb.h"
#include "CMSIS/m2sxxx.h"
#include "drivers/corei2c/core_i2c.h"
#include "drivers_config/sys_config/sys_config.h"
/******************************************************************************
 * Baud value to achieve a 57600 baud rate with a 24MHz system clock.
 * This value is calculated using the following equation:
 *      BAUD_VALUE = (CLOCK / (16 * BAUD_RATE)) - 1
 *****************************************************************************/
#define BAUD_VALUE_115200    26

/******************************************************************************
 * Maximum receiver buffer size.
 *****************************************************************************/
#define MAX_RX_DATA_SIZE    256

/******************************************************************************
 * CoreUARTapb instance data.
 *****************************************************************************/
UART_instance_t g_uart;

/*------------------------------------------------------------------------------
 * Instance data for our two CoreI2C devices
 */
i2c_instance_t g_core_i2c0;

/*-----------------------------------------------------------------------------
 * I2C slave serial address.
 */
#define SLAVE_SER_ADDR     0x77

/*-----------------------------------------------------------------------------
 * Receive buffer size.
 */
#define BUFFER_SIZE    32u
#define ENTER          13u

/*-----------------------------------------------------------------------------
 * I2C operation timeout value in mS. Define as I2C_NO_TIMEOUT to disable the
 * timeout functionality.
 */
#define DEMO_I2C_TIMEOUT 3000u

/*-----------------------------------------------------------------------------
 * Local functions.
 */
i2c_slave_handler_ret_t slave_write_handler(i2c_instance_t *, uint8_t *, uint16_t);
void report_bytes_written(uint8_t * p_rx_data, uint16_t rx_size);
i2c_status_t do_write_transaction(uint8_t, uint8_t * , uint8_t);
i2c_status_t do_read_transaction(uint8_t, uint8_t * , uint8_t);
i2c_status_t do_write_read_transaction(uint8_t , uint8_t * , uint8_t , uint8_t * , uint8_t);
static void display_greeting(void);
static void select_command(void);
uint8_t get_data(void);
void press_any_key_to_continue(void);
void itoa(char *buf, int base, int d);

/*------------------------------------------------------------------------------
 * I2C buffers. These are the buffers where data written transferred via I2C
 * will be stored. RX
 */
static uint8_t g_slave_rx_buffer[BUFFER_SIZE];
static uint8_t g_slave_tx_buffer[BUFFER_SIZE] = "<<-------Slave Tx data ------->>";
static uint8_t g_master_rx_buf[BUFFER_SIZE];
static uint8_t g_master_tx_buf[BUFFER_SIZE];

/*------------------------------------------------------------------------------
 * Counts of data sent by master and received by slave.
 */
static uint8_t g_tx_length=0x00;
static uint8_t g_rx_length=0x00;

int main(void)
{
    i2c_status_t instance;
    uint8_t rx_size = 0;
    uint8_t rx_buff[1];
    uint8_t loop_count;

    /*------------------------------------------------------------------------
     * Initialize the UART driver with 11500 baud
     */
    UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );

    /*-------------------------------------------------------------------------
     * Initialize the CoreI2C driver with its base address, I2C serial address
     * and serial clock divider.
     */
    I2C_init(&g_core_i2c0, COREI2C_0_0, SLAVE_SER_ADDR, I2C_PCLK_DIV_256);
    I2C_set_slave_tx_buffer(&g_core_i2c0, g_slave_tx_buffer, sizeof(g_slave_tx_buffer));
    I2C_set_slave_mem_offset_length(&g_core_i2c0, 2);
    I2C_set_slave_rx_buffer(&g_core_i2c0, g_slave_rx_buffer, sizeof(g_slave_rx_buffer));
    I2C_register_write_handler(&g_core_i2c0, slave_write_handler);

    /*-------------------------------------------------------------------------
     * Initialize the system tick for 10mS operation or 1 tick every 100th of
     * a second and also make sure it is lower priority than the I2C IRQs.
     */
    NVIC_SetPriority(SysTick_IRQn, 0xFFu); /* Lowest possible priority */
    SysTick_Config(MSS_SYS_M3_CLK_FREQ / 100);

    /*-------------------------------------------------------------------------
     * Display the initial information about the demo followed by the main
     * menu.
    */
    display_greeting();
    select_command();
    for(loop_count=0; loop_count < BUFFER_SIZE; loop_count++)
    {
    	g_slave_rx_buffer[loop_count] = 0x00;
        g_master_rx_buf[loop_count] = 0x00;
        g_master_tx_buf[loop_count] = 0x00;
    }

    /*--------------------------------------------------------------------------
     * Infinite loop processing user commands received over the UART command
     * line interface.
     */
    while (1)
    {
        /* Start command line interface if any key is pressed. */
    	rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
        if(rx_size > 0)
        {
            switch(rx_buff[0])
            {
                case '1':
                    /* Measure temperature (DOF10) */
                	g_rx_length = 2;
                	BMP_init(SLAVE_SER_ADDR);
                	instance = BMP_get_temperature(g_master_rx_buf, g_rx_length);
                	handle_i2c_status(instance, g_master_rx_buf, g_rx_length);
                    /* Display commands */
                    press_any_key_to_continue();
                break;

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

void handle_i2c_status(i2c_status_t instance, uint8_t* buf, uint8_t len)
{
    if(I2C_SUCCESS == instance)
    {
    	if(0 == len)
    	{
            UART_polled_tx_string(&g_uart, (const uint8_t *)"0 Byte Data Transfer Successful\n\r");
    	}
    	else
    	{
            int i = 0;
            uint8_t print_buf[len * 2];
            for (i = 0; i < len; i++)
            {
            	itoa(&print_buf[2 * i], 'x', buf[i]);
            }

            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Transfer Successful and Data is: ");
            UART_send(&g_uart, print_buf, len * 2);
            UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\r");
    	}
        UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
    }
    else
    {
    	/*
    	 * Distinguish between an identified failure, a time out and just to be paranoid
    	 * none of the above.
    	 */
        if(I2C_FAILED == instance)
        {
            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Transfer Failed!\n\r");
        }
        else if(I2C_TIMED_OUT == instance)
        {
            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Transfer Timed Out!\n\r");
        }
        else
        {
            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Transfer Unknown Response!\n\r");
        }

        UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
    }
}

/*------------------------------------------------------------------------------
 * Perform read transaction with parameters gathered from the command line
 * interface. This function is called as a result of the user's input in the
 * command line interface.
 */
i2c_status_t do_read_transaction
(
    uint8_t serial_addr,
    uint8_t * rx_buffer,
    uint8_t read_length
)
{
    i2c_status_t status;

    I2C_read(&g_core_i2c0, serial_addr, rx_buffer, read_length, I2C_RELEASE_BUS);

    status = I2C_wait_complete(&g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}

/*------------------------------------------------------------------------------
 * Perform write transaction with parameters gathered from the command line
 * interface. This function is called as a result of the user's input in the
 * command line interface.
 */
i2c_status_t do_write_transaction
(
    uint8_t serial_addr,
    uint8_t * tx_buffer,
    uint8_t write_length
)
{
    i2c_status_t status;

    I2C_write(&g_core_i2c0, serial_addr, tx_buffer, write_length, I2C_RELEASE_BUS);

    status = I2C_wait_complete(&g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}

/*------------------------------------------------------------------------------
 * Perform write-read transaction with parameters gathered from the command
 * line interface. This function is called as a result of the user's input in
 * the command line interface.
 */
i2c_status_t do_write_read_transaction
(
    uint8_t serial_addr,
    uint8_t * tx_buffer,
    uint8_t write_length,
    uint8_t * rx_buffer,
    uint8_t read_length
)
{
    i2c_status_t status;

    I2C_write_read(&g_core_i2c0,
                       serial_addr,
                       tx_buffer,
                       write_length,
                       rx_buffer,
                       read_length,
                       I2C_RELEASE_BUS);

    status = I2C_wait_complete(&g_core_i2c0, DEMO_I2C_TIMEOUT);

    return status;
}
/*------------------------------------------------------------------------------
 * Slave write handler function called as a result of a the I2C slave being the
 * target of a write transaction. This function simply displays the date content
 * of received write transaction.
 */

i2c_slave_handler_ret_t slave_write_handler
(
    i2c_instance_t * this_i2c,
    uint8_t * p_rx_data,
    uint16_t rx_size
)
{
    uint8_t loop_count;

    g_rx_length = rx_size;
    if(rx_size > BUFFER_SIZE) /* Safety check and limit the data length */
    {
    	rx_size = BUFFER_SIZE;
    }

    /* Copy only the data we have received */
    for(loop_count = 0; loop_count < rx_size; loop_count++)
    {
        g_slave_tx_buffer[loop_count] = g_slave_rx_buffer[loop_count];
    }

    return I2C_REENABLE_SLAVE_RX;
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
    UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
}
/*------------------------------------------------------------------------------
  Select the I2C Mode.
 */
static void select_command(void)
{
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r*********************** Select the command *******************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '1' to measure temperature\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '0' to EXIT from the Application \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
}

/*------------------------------------------------------------------------------
  Function to get the key from user
 */
uint8_t get_data()
{
    uint8_t complete = 0;
    uint8_t rx_buff[1];
    uint8_t count=0;
    uint8_t rx_size=0;

    /*--------------------------------------------------------------------------
    Read the key strokes entered by user and store them for transmission to the
    slave.
    */
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\rEnter up to 32 characters to write to I2C1: ");
    count = 0;
    while(!complete)
    {
        rx_size = UART_get_rx(&g_uart, rx_buff, sizeof(rx_buff));
        if(rx_size > 0)
        {
            UART_send(&g_uart, rx_buff, sizeof(rx_buff));

            /* Is it to terminate from the loop */
            if(ENTER == rx_buff[0])
            {
                complete = 1;
            }
            /* Is a character to add to our transmit string */
            else
            {
                g_master_tx_buf[count] = rx_buff[0];
                count++;
                if(32 == count)
                {
                   complete = 1;
                }
            }
        }
    }

    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r");

    return(count);
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
