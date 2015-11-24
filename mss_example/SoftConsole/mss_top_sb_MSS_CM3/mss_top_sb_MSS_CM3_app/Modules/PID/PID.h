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

static float Kp = 0.03, Ki= 0.03, Kd= 0.03;

static int64_t I_p=0, I_r=0;

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
				uint16_t d_t);
void my_ESC(int16_t * pitch,
			int16_t * roll,
			int16_t * pow,
			int16_t * force,
			int16_t * gx,
			int16_t * gy,
			uint16_t d_t);





#endif /* PID_H_ */
