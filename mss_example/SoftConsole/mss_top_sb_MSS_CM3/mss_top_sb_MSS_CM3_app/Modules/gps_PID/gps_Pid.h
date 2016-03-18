/*
 * gps_Pid.h
 *
 *  Created on: 04.03.2016
 *      Author: vetal
 */

#ifndef GPS_PID_H_
#define GPS_PID_H_

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

#define prop_denum 512
#define differ_denum 512

#define rad_to_degree 57.295779513
#define rad_to_int 3437.746770784939
/* convert float radians to integer
 * 1 unit is approximately 1 arc minute */
#define degree_to_int 60

static int16_t prop_num = 16, differ_num = 8;
static int16_t sphere_lim = 40; //TODO calib
static int16_t speed_lim = 40; //TODO calib
static int16_t cur_sector = 0; //
static int16_t K_int_force = 2, K_prop_force = 2; //




#endif /* GPS_PID_H_ */
