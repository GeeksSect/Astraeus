/*
 * telemetry.h
 *
 *  Created on: 28.01.2016
 *      Author: vetal
 */

#ifndef TELEMETRY_H_
#define TELEMETRY_H_
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include "core_uart_apb.h"
#include "mss_top_hw_platform.h"
#define BAUD_VALUE_115200    26


UART_instance_t uart_bt;
static uint8_t rx_buff[128];

static uint8_t rx_size = 0;
static uint8_t rd_pos = 0;
static uint8_t wr_pos = 0;

static uint16_t print_mask =0;
static uint8_t motor_mask =0x04;
static uint8_t telemetry_skip = 1, telemetry_skip_counter = 0;
static int16_t pitch0 = 0, roll0 = 0, yaw0 = 0;
static int16_t force = 0;

#define sleep_time 100 //как много обонвлений система будет спать, перед тем как проверить связь
#define wait_time 100 // как много обновлений будет ожидаться ответ
static uint16_t lose_state = 0;


void init_BT(void);
void press_any_key_to_continue(void);
void send_messange(const uint8_t * p_sz_string);
void update_telemetry(int16_t a, int16_t b, int16_t c,
					int16_t d, int16_t e, int16_t f,
					int16_t g, int16_t h, int16_t I,
					int16_t j, int16_t K, int16_t l,
					int16_t m, int16_t n);
void reserve_BT();
void get_RC_angles(int16_t * pitch, int16_t * roll, int16_t * yaw);
void get_force(int16_t * _force);
void get_motor_mask(uint8_t * _mask);
void lose_update(int16_t * force);
#endif /* TELEMETRY_H_ */
