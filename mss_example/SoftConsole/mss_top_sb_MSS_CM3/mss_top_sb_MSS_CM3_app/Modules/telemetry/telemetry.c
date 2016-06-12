/*
 * telemetry.c
 *
 *  Created on: 28.01.2016
 *      Author: vetal
*/

#include "telemetry.h"

uint16_t print_mask =0; //mask which set data types for sending to PC
uint8_t motor_mask_RC =0x0F; //mask for switch off
uint8_t telemetry_skip = 1, telemetry_skip_counter = 0;
int16_t pitch_RC = 0, roll_RC = 0, yaw_RC = 0; // angles which set by radio control
int16_t gx_RC = 0, gy_RC = 0, gz_RC = 0;
int16_t force_RC = 0;
uint16_t lose_state = 0;

void init_BT(void)
{
	UART_init( &uart_bt, COREUARTAPB_0_0, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );
}

void press_any_key_to_continue(void)
{
    size_t rx_size;
    uint8_t rx_char;
    do {
        rx_size = UART_get_rx(&uart_bt, &rx_char, sizeof(rx_char));
    } while(rx_size == 0);

}

void send_messange(const uint8_t * p_sz_string)
{
	UART_polled_tx_string(&uart_bt, p_sz_string);
}


void update_telemetry(int16_t a, int16_t b, int16_t c, int16_t d, int16_t e, int16_t f, int16_t g, int16_t h, int16_t I, int16_t j, int16_t K, int16_t l, int16_t m, int16_t n)
{
	if(telemetry_skip_counter > telemetry_skip)
	{

		telemetry_skip_counter = 0;
		if((print_mask & (1 << 0)))
			send_val('A', a);
		if((print_mask & (1 << 1)))
			send_val('B', b);
		if((print_mask & (1 << 2)))
			send_val('C', c);
		if((print_mask & (1 << 3)))
			send_val('D', d);
		if((print_mask & (1 << 4)))
			send_val('E', e);
		if((print_mask & (1 << 5)))
			send_val('F', f);
		if((print_mask & (1 << 6)))
			send_val('G', g);
		if((print_mask & (1 << 7)))
			send_val('H', h);
		if((print_mask & (1 << 8)))
			send_val('I', I);
		if((print_mask & (1 << 9)))
			send_val('J', j);
		if((print_mask & (1 << 10)))
			send_val('K', K);
		if((print_mask & (1 << 11)))
			send_val('L', l);
		if((print_mask & (1 << 12)))
			send_val('M', m);
		if((print_mask & (1 << 13)))
			send_val('N', n);
		UART_polled_tx_string(&uart_bt, (const uint8_t *)"W\n");
	}
	else
		telemetry_skip_counter++;
}


void reserve_BT()
{
	static uint8_t rx_buff[128];
	static uint8_t rx_size = 0, rd_pos = 0, wr_pos = 0;


	rx_size = UART_get_rx(&uart_bt, rx_buff + wr_pos, sizeof(rx_buff) - wr_pos);
	wr_pos+=rx_size;
	uint8_t i =0;
	while(wr_pos - rd_pos >6) // if something ready to read
	{
		if(rx_buff[rd_pos+6] == 10)
		{
			switch (rx_buff[rd_pos])
			{
				case 'p':
				{
					pitch_RC = my_atoi (rx_buff + rd_pos + 1, 5);
					break;
				}
				case 'r':
				{
					roll_RC = my_atoi (rx_buff + rd_pos + 1, 5);
					break;
				}
				case 'y':
				{
					gz_RC = my_atoi (rx_buff + rd_pos + 1, 5);
					break;
				}
				case 'f':
				{
					force_RC = (my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'P':
				{
					set_P(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'I':
				{
					set_I(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'D':
				{
					set_D(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'x':
				{
					setLim_P(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'z':
				{
					setLim_D(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'w':
				{
					setLim_I(my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'a':
				{
					motor_mask_RC = (my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'l':
				{
					force_RC = (my_atoi (rx_buff + rd_pos + 1, 5));
					lose_state = 0;
					break;
				}
				case 'c':
				{

					break;
				}
				case 'm':
				{
					print_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
					telemetry_skip = 0;
					for(i = 0 ; i< 13 ; i++)
						if(print_mask & (1<<i))
							telemetry_skip++;
					telemetry_skip = telemetry_skip/3;
					break;
				}
			}
		}
		rd_pos++;
	}
	if(wr_pos >90) // if read buffer come full
		rd_pos=wr_pos = 0;

}


void update_RC_angles_move()
{
	static int16_t pitch_RC_prev = 0, roll_RC_prev = 0;
	gx_RC = (roll_RC_prev - roll_RC)*(250);
	roll_RC_prev = roll_RC;
	gy_RC = (pitch_RC - pitch_RC_prev)*(250);
	pitch_RC_prev = pitch_RC;
}


void lose_update()
{
	lose_state++;
	if(lose_state<sleep_time)
		return;
	if(lose_state == sleep_time)
	{
		UART_polled_tx_string(&uart_bt, (const uint8_t *)"l\n");
		return;
	}
	if(lose_state<sleep_time+wait_time)
		return;
	else
		force_RC = 0;

}


void send_val(int8_t _type, int32_t val)
{
	uint8_t print_buf[8], i;
	for(i=0; i<8; i++)
		print_buf[i] = NULL;
	itoa((char *)&print_buf+1, 'd', val);
	print_buf[0] = _type;
	UART_send(&uart_bt, (const uint8_t *)print_buf, 8);
	UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
}
void update_yaw_RC()
{
	if(gz_RC != 0)
	{
		yaw_RC += gz_RC;
	}
}

int8_t get_motor_mask()
{
	return motor_mask_RC;
}
int16_t get_force()
{
	return force_RC;
}
void get_RC_angles(int16_t * pitch, int16_t * roll, int16_t * yaw)
{
	*pitch = pitch_RC;
	*roll = roll_RC;
	*yaw = yaw_RC;
}
