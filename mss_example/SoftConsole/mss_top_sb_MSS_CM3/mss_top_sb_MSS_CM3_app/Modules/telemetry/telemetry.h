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
#define sleep_time 150 //как много обонвлений система будет спать, перед тем как проверить связь
#define wait_time 150 // как много обновлений будет ожидаться ответ

UART_instance_t uart_bt;





void init_BT(void);
void press_any_key_to_continue(void);
void send_messange(const uint8_t * p_sz_string);
void update_telemetry(int16_t a, int16_t b, int16_t c,
					int16_t d, int16_t e, int16_t f,
					int16_t g, int16_t h, int16_t I,
					int16_t j, int16_t K, int16_t l,
					int16_t m, int16_t n);
void reserve_BT();
void update_RC_angles_move();

int8_t get_motor_mask();
int16_t get_force();
void get_RC_angles(int16_t * pitch, int16_t * roll, int16_t * yaw);
void send_val(int8_t _type, int32_t val);
void lose_update();
void update_yaw_RC();


#endif /*  TELEMETRY_H_ */
