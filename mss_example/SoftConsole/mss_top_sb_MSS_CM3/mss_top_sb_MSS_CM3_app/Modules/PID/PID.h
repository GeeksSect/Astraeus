/*
 * PID.h
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */

#ifndef PID_H_
#define PID_H_
// ================== ACEL DEFINES



#define k 65.53  // 2 bytes is range [-500;500] degrees
#define k1 57.29 // radians to degrees


// power range is 0 to 1000

#define low_trottle 20
#define low_trottle2 10

#define high_trottle 850
#define high_trottle2 1000





#include <stdint.h>
#include <stdlib.h>
#include <math.h>

static int16_t Kp_u = 8, Kp_d = 100,
				Kd_u= 2, Kd_d = 100;
static int64_t Ki_u= 3, Ki_d = 100000000;

static int64_t I_p=0, I_r=0;
static int16_t tmp1, tmp2;

void acell_angle( int16_t * ax,
				  int16_t * ay,
				  int16_t * az,
				  int16_t * acell_pitch,
				  int16_t * acell_roll);
void my_angle(int16_t * gx,
				int16_t * gy,
				int16_t * gz,
				int16_t * acell_pitch,
				int16_t * acell_roll,
				int16_t * _pitch_curr,
				int16_t * _roll_curr,
				uint32_t d_t);
void my_PID(int16_t * pitch,
			int16_t * roll,
			int16_t * pow,
			int16_t * force,
			int16_t * gx,
			int16_t * gy,
			uint32_t d_t);

int8_t change_coef(int8_t _type);

int64_t get_i_p2(void);
int64_t get_i_r2(void);



#endif /* PID_H_ */
