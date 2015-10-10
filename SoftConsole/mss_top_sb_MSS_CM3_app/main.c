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

/******************************************************************************
 * Instruction message. This message will be transmitted over the UART to
 * HyperTerminal when the program starts.
 *****************************************************************************/
uint8_t g_message[] =
"\n\r\n\r\n\rCoreUARTapb polled transmitter and receiver example. \n\rAll characters typed \
will be echoed back.\n\r";

/******************************************************************************
 * main function.
 *****************************************************************************/

//int main( void )
//{
//    uint8_t rx_data[MAX_RX_DATA_SIZE];
//    size_t rx_size;
//
//    /**************************************************************************
//     * Initialize CoreUARTapb with its base address, baud value, and line
//     * configuration.
//     *************************************************************************/
//    UART_init( &g_uart, COREUARTAPB_0_0, BAUD_VALUE_57600, (DATA_8_BITS | NO_PARITY) );
//
//    /**************************************************************************
//     * Send the instructions message.
//     *************************************************************************/
//    UART_send( &g_uart, g_message, sizeof(g_message) );
//
//    /**************************************************************************
//     * Infinite Loop.
//     *************************************************************************/
//    while(1)
//    {
//        /*************************************************************************
//         * Check for any errors in communication while receiving data
//         ************************************************************************/
//        if(UART_APB_NO_ERROR == UART_get_rx_status(&g_uart))
//        {
//            /**********************************************************************
//             * Read data received by the UART.
//             *********************************************************************/
//            rx_size = UART_get_rx( &g_uart, rx_data, sizeof(rx_data) );
//
//            /**********************************************************************
//             * Echo back data received, if any.
//             *********************************************************************/
//            if ( rx_size > 0 )
//            {
//                UART_send( &g_uart, rx_data, rx_size );
//            }
//        }
//    }
//}


/*------------------------------------------------------------------------------
 * Instance data for our two CoreI2C devices
 */
i2c_instance_t g_core_i2c0;

/*------------------------------------------------------------------------------
 * I2C master serial address.
 */
#define MASTER_SER_ADDR     0x21

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
static void select_mode_i2c(void);
uint8_t get_data(void);
void press_any_key_to_continue(void);

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
    select_mode_i2c();
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
    do
    {
        /* Start command line interface if any key is pressed. */
    	rx_size = UART_get_rx( &g_uart, rx_buff, sizeof(rx_buff) );
        if(rx_size > 0)
        {
            switch(rx_buff[0])
            {
                case '1':
                    /*-------------------------------------------------------------------------
                     * Send The data from Master (COREI2C0)
                     */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rMT-SR Mode is Selected\n\r");
                    g_tx_length = get_data();
                    /*Perform Master Transmit - Slave Receive */
                    instance = do_write_transaction(SLAVE_SER_ADDR, g_master_tx_buf, g_tx_length);

                    if(I2C_SUCCESS == instance)
                    {
                    	if(0 == g_tx_length)
                    	{
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"0 Byte Data Write Successful\n\r");
                    	}
                    	else
                    	{
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write Successful and Data is: ");
                            UART_send(&g_uart, g_slave_rx_buffer, g_tx_length);
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
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write Failed!\n\r");
                        }
                        else if(I2C_TIMED_OUT == instance)
                        {
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write Timed Out!\n\r");
                        }
                        else
                        {
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write Unknown Response!\n\r");
                        }

                        UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
                    }
                    /* Display I2C Modes */
                    press_any_key_to_continue();
                break;

                case '2':
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rMR-ST Mode is Selected\n\r");
                    /*Perform Master Receive - Slave Transmit */
                    instance = do_read_transaction(SLAVE_SER_ADDR, g_master_rx_buf, sizeof(g_master_rx_buf));

                    if(I2C_SUCCESS == instance)
                    {
                        UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Read Successful and Data is: ");
                        UART_send(&g_uart, g_master_rx_buf, sizeof(g_master_rx_buf));
                        UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
                    }
                    else
                    {
                    	/*
                    	 * Distinguish between an identified failure, a time out and just to be paranoid
                    	 * none of the above.
                    	 */
                        if(I2C_FAILED == instance)
                        {
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Read Failed!\n\r");
                        }
                        else if(I2C_TIMED_OUT == instance)
                        {
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Read Timed Out!\n\r");
                        }
                        else
                        {
                            UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Read Unknown Response!\n\r");
                        }

                        UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
                    }
                    /* Display I2C Modes */
                    press_any_key_to_continue();

                break;

                case '3':
                    /*-------------------------------------------------------------------------
                     * Write the Data to Slave and Read The data from Slave (MSS-I2C1)
                    */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rMT-MR Mode is Selected\n\r");
                    /*Perform Master Transmit - Master Receive */
                    g_tx_length = get_data();
                   	if(0 == g_tx_length)
                	{
                        UART_polled_tx_string(&g_uart, (const uint8_t *)"Error: 0 byte transfers not allowed for Write-Read!\n\r");
                	}
                   	else
                   	{
                   		/* Perform write-Read operation */
                   		instance = do_write_read_transaction(SLAVE_SER_ADDR, g_master_tx_buf, g_tx_length, g_master_rx_buf, g_tx_length);

						if(I2C_SUCCESS == instance)
						{
							UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write-Read Successful\n\r");
							UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Received in Slave Receive Buffer is: ");
							UART_send(&g_uart, g_slave_rx_buffer, g_tx_length);
							UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rData Received to Master Receive Buffer is: ");
							UART_send(&g_uart, g_master_rx_buf, g_tx_length);
							UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
						}
						else
						{
							/*
							 * Distinguish between an identified failure, a time out and just to be paranoid
							 * none of the above.
							 */
							if(I2C_FAILED == instance)
							{
								UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write-Read Failed!\n\r");
							}
							else if(I2C_TIMED_OUT == instance)
							{
								UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write-Read Timed Out!\n\r");
							}
							else
							{
								UART_polled_tx_string(&g_uart, (const uint8_t *)"Data Write-Read Unknown Response!\n\r");
							}

							UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
						}
                   	}
                    /* Display I2C Modes */
                    press_any_key_to_continue();

                break;

                case '4':
                    /* To Exit from the application */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rReturn from the Main function \n\r\n\r");
                break;

                default:
                    /* To Invalid Entry */
                    UART_polled_tx_string(&g_uart, (const uint8_t *)"\n\rEnter A Valid Key: 1, 2, 3 or 4\n\r");
                    select_mode_i2c();
                break;
            }
        }
    } while(rx_buff[0] !='4');

    return 0;
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
    UART_polled_tx_string(&g_uart, (const uint8_t*)"**************************** Core I2C Example ********************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"******************************************************************************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"This example project Demonstrates the use of I2C in Different Modes\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"CoreI2C0 is configured in Master Mode and CoreI2C1 is configured in Slave Mode\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r------------------------------------------------------------------------------\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"************* I2C Modes supported by this example project are ****************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"1. MT-SR :- Master Transmit - Slave Receiver Mode (Write To Slave)\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"2. MR-ST :- Master Receive  - Slave transmit Mode (Read 32 bytes From Slave)\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"3. MT-MR :- Master Transmit - Master Receive Mode (Write To + Read From Slave) \n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"------------------------------------------------------------------------------\n\r");
}
/*------------------------------------------------------------------------------
  Select the I2C Mode.
 */
static void select_mode_i2c(void)
{
    UART_polled_tx_string(&g_uart, (const uint8_t*)"\n\r*********************** Select the I2C Mode to perform ***********************\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '1' to perform MT-SR (Master Transmit - Slave Receive)\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '2' to perform MR-ST (Master Receive  - Slave transmit)\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '3' to perform MT-MR (Master Transmit - Master Receive)\n\r");
    UART_polled_tx_string(&g_uart, (const uint8_t*)"Press Key '4' to EXIT from the Application \n\r");
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
    select_mode_i2c();
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
