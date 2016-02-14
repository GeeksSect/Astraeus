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
//P.S. this limit is not a power limit! It's how much integral can accumulate.

// power range is 0 to 1000

#define low_trottle 20
#define low_trottle2 10

#define high_trottle 850
#define high_trottle2 1000


#define Kp_d 256
#define Kd_d 256
#define Ki_d 131072


#include <stdint.h>
#include <stdlib.h>
#include <math.h>

static int16_t Kp_u = 16, Kd_u= 8;
static int32_t Ki_u= 12;//TODO calib
static int16_t D_lim = 40; //TODO calib
static int16_t I_lim = 16; //TODO calib
static int16_t P_lim = 40; //TODO calib
static int32_t Integr_pitch=0, Integr_roll=0, Integr_yaw=0;
static int16_t Itmp_p, Itmp_r, Itmp_y;
static int16_t Dtmp_p, Dtmp_r, Dtmp_y;
static int16_t Ptmp_p, Ptmp_r, Ptmp_y;

void acell_angle( int16_t * ax,
                  int16_t * ay,
                  int16_t * az,
                  int16_t * acell_pitch,
                  int16_t * acell_roll);

void my_angle(  int16_t * gx,
                int16_t * gy,
                int16_t * gz,

                int16_t * acell_pitch,
                int16_t * acell_roll,
                int16_t * magn_yaw,

                int16_t * _pitch_curr,
                int16_t * _roll_curr,
                int16_t * _yaw_curr,

                uint32_t d_t);

void my_PID(int16_t * pitch, int16_t * roll, int16_t * yaw,
            int16_t * pow, int16_t * force,
            int16_t * gx, int16_t * gy, int16_t * gz,
            uint16_t d_t);

void set_P(uint16_t i);
void set_I(uint16_t i);
void set_D(uint16_t i);
void setLim_P(uint16_t i);
void setLim_I(uint16_t i);
void setLim_D(uint16_t i);
int16_t get_I_p(void);
int16_t get_I_r(void);
int16_t get_I_y(void);
int16_t get_P_p(void);
int16_t get_P_r(void);
int16_t get_P_y(void);
int16_t get_D_p(void);
int16_t get_D_r(void);
int16_t get_D_y(void);

int16_t get_Int_p(void);
int16_t get_Int_r(void);
int16_t get_Int_y(void);

double my_degree_to_float (int16_t val);
void my_yaw(int16_t * mx, int16_t * my, int16_t * mz, int16_t *yaw, int16_t * pitch, int16_t *roll);
#endif /* PID_H_ */
