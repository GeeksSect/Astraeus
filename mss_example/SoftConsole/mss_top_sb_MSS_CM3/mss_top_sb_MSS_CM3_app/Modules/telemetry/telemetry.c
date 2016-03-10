/*
 * telemetry.c
 *
 *  Created on: 28.01.2016
 *      Author: vetal
 */

#include "telemetry.h"


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
		uint8_t print_buf[8], i;
		if((print_mask & (1 << 0)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', a*5);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"A");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}

		if((print_mask & (1 << 1)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', b*5);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"B");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 2)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', c);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"C");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 3)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', d*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"D");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 4)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', e*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"E");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 5)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', f*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"F");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 6)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', g*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"G");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 7)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', h*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"H");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 8)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd',I*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"I");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 9)))
		{
			for(i=0; i<6; i++)
				print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', j*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"J");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 10)))
		{
			for(i=0; i<6; i++)
			print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', K*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"K");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		if((print_mask & (1 << 11)))
		{
			for(i=0; i<6; i++)
			print_buf[i] = NULL;
			itoa((char *)&print_buf, 'd', l*200);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"L");
			UART_send(&uart_bt, (const uint8_t *)print_buf, 6);
			UART_polled_tx_string(&uart_bt, (const uint8_t *)"\n");
		}
		UART_polled_tx_string(&uart_bt, (const uint8_t *)"W\n");
	}
	else
		telemetry_skip_counter++;
}

void reserve_BT()
{
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
					pitch0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
					break;
				}
				case 'r':
				{
					roll0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
					break;
				}
				case 'y':
				{
					yaw0 = (my_atoi (rx_buff + rd_pos + 1, 5) - 1500);
					break;
				}
				case 'f':
				{
					force = (my_atoi (rx_buff + rd_pos + 1, 5));
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
					motor_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
					break;
				}
				case 'l':
				{
					force = (my_atoi (rx_buff + rd_pos + 1, 5));
					lose_state = 0;
					break;
				}
				case 'm':
				{
					print_mask = (my_atoi (rx_buff + rd_pos + 1, 5));
					telemetry_skip = 0;
					for(i = 0 ; i< 13 ; i++)
						if(print_mask & (1<<i))
							telemetry_skip++;
					break;
				}
			}
		}
		rd_pos++;
	}
	if(wr_pos >90) // if read buffer come full
		rd_pos=wr_pos = 0;

}
void get_RC_angles(int16_t * pitch, int16_t * roll, int16_t * yaw)
{
	*pitch = pitch0;
	*roll = roll0;
	*yaw = yaw0;
}
void get_force(int16_t * _force)
{
	*_force = force;
}
void get_motor_mask(uint8_t * _mask)
{
	*_mask = motor_mask;
}
void lose_update(int16_t * force)
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
		*force = 0;

}


