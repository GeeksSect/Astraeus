/*
 * gps_PID.c
 *
 *  Created on: 04.03.2016
 *      Author: vetal
 */

#include "gps_PID.h"

void gps_PID(int16_t * pitch1, int16_t * roll1, int16_t * yaw1, int16_t * force,
		int16_t delta_x, int16_t delta_y, int16_t delta_h, int16_t speed, int16_t course)
{
	/*
	 * it has to mode
	 * 1.convergence at close range
	 * 2.convergence at long range
	 * at second mode gps pid tips a copter by one side only and setup yaw by course
	 * at first mode yaw set by north and convergence accomplished by changing pitch and roll.
	 * switching between modes done by measuring a distance to point.
	 */
	static uint32_t Integr_force = 0;
	static uint8_t mode = 1;
	uint16_t distance = abs(delta_x)+abs(delta_y);
	if(distance > 150 && mode == 1) // if distance is greats then 15m
		mode = 2;
	if(distance < 100 && mode == 2)
		mode = 1;
	float tmp_course = atan2(delta_x, delta_y)*rad_to_degree;
	if(mode == 2)
	{
		int16_t tmp_tips = 20*60;
		tmp_tips -= (speed * differ_num)/differ_denum;
		//set tilt side and yaw
		if(abs(degree_sub360(tmp_course,cur_sector))>70) // if course change
		{
			if(abs(degree_sub360(tmp_course,0))<=45) //!TODO сделать правки в соотвествии с реальными данными
				cur_sector = 0;
			else
				if(abs(degree_sub360(tmp_course,90))<=45) //!TODO сделать правки в соотвествии с реальными данными
					cur_sector = 90;
				else
					if(abs(degree_sub360(tmp_course,-90))<=45) //!TODO сделать правки в соотвествии с реальными данными
						cur_sector = -90;
					else
						if(abs(degree_sub360(tmp_course,180))<=45) //!TODO сделать правки в соотвествии с реальными данными
							cur_sector = 180;
		}
		switch (cur_sector)
		{
		case 0:
			*pitch1 = tmp_tips;
			*roll1 = 0;
			break;
		case 90:
			*pitch1 = 0;
			*roll1 = tmp_tips;
			break;
		case 180:
			*pitch1 = -tmp_tips;
			*roll1 = 0;
			break;
		case -90:
			*pitch1 = 0;
			*roll1 = -tmp_tips;
			break;
		}
		*yaw1 = degree_sub360(tmp_course,cur_sector) * degree_to_int;
	}
	else if (mode == 1)
	{
		yaw1 = 0;
		int16_t speed_x, speed_y;
		float sin_tmp, cos_tmp;
		sin_tmp = sin((float)course/rad_to_int);
		cos_tmp = cos((float)course/rad_to_int);
		speed_x = speed * sin_tmp;
		speed_y = speed * cos_tmp;
		limit_value32(&speed_x, 10); //TODO check speed limit
		limit_value32(&speed_y, 10);
		if(abs(delta_x)<30)
			delta_x = 0;
		if(abs(delta_y)<30)
			delta_y = 0;
		*pitch1 = (delta_x * prop_num)/prop_denum + (speed_x * differ_num)/differ_denum;
		*roll1 = (delta_y * prop_num)/prop_denum + (speed_y * differ_num)/differ_denum;



	}
	Integr_force = Integr_force + delta_h* K_int_force;
	*force = delta_h*K_prop_force+Integr_force;
	*force *= 1+tan((*pitch1+*roll1)/rad_to_int);
}
