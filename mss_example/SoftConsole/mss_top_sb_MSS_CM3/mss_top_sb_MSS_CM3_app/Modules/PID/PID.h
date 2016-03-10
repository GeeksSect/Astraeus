/*
 * PID.h
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */

#ifndef PID_H_
#define PID_H_
// ================== ACEL DEFINES

#define rad_to_int 3437.746770784939
/* convert float radians to integer
 * 1 unit is approximately 1 arc minute */
#define degree_to_int 60

#define force_low_trottle 119
#define power_low_trottle 120

#define force_high_trottle 850
#define power_high_trottle 1000
#define loop_time 4 // freq of computing data in millisecond

#define Kp_d 256
#define Kd_d 256
#define Ki_d 1048576


#include <stdint.h>
#include <stdlib.h>
#include <math.h>

static int16_t Kp_u = 16, Kd_u= 8;
static int32_t Ki_u= 4;
static int16_t D_lim = 40;
static int16_t I_lim = 40;
static int16_t P_lim = 40;
static int16_t Itmp_p, Itmp_r, Itmp_y;
static int16_t Dtmp_p, Dtmp_r, Dtmp_y;
static int16_t Ptmp_p, Ptmp_r, Ptmp_y;


void my_PID(int16_t * pitch, int16_t * roll, int16_t * yaw,
            int16_t * pow, int16_t * force,
            int16_t * gx, int16_t * gy, int16_t * gz);
void my_yaw(int16_t * mx, int16_t * my, int16_t * mz, int16_t *yaw, int16_t * pitch, int16_t *roll);
void my_ESC(int16_t * pow, int16_t * force);


//helpers
void limit_value16(int16_t * val, int16_t lim);
void limit_value32(int32_t * val, int32_t lim);
void limit_value64(int64_t * val, int64_t lim);
double my_degree_to_float (int16_t val);
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
uint8_t no_overlim(int16_t val, int16_t lim);
#endif /* PID_H_ */
