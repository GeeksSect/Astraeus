/*
 * PID.c
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */
#include "PID.h"
void acell_angle(int16_t * ax, int16_t * ay, int16_t * az, int16_t * acell_pitch, int16_t * acell_roll)
{
  if (*az > 1000) // if down is down
  {
    *acell_pitch = atan(*ax / sqrt(*ay * *ay + *az * *az)) * k * k1;
    *acell_roll = atan(*ay / sqrt(*ax * *ax + *az * *az)) * k * k1;
  }
  else // if orientation is shit
  {
    if (*ax > 1000)
    {
      *acell_pitch = k * 90;
    }
    else
    {
      if (*ax < 1000)
      {
       *acell_pitch = k * (-90);
      }
    }
    if (*ay > 1000)
    {
      *acell_roll = k * 90;
    }
    else
    {
      if (*ay < 1000)
      {
        *acell_roll = k * (-90);
      }
    }
  }
}

void my_angle(int16_t * gx, int16_t * gy, int16_t * gz, int16_t * acell_pitch, int16_t * acell_roll,
		int16_t * _pitch_curr, int16_t * _roll_curr, uint32_t d_t)
{

	static int pitch_prev, pitch_curr;
	static int roll_prev, roll_curr;
	pitch_prev = pitch_curr;
	roll_prev = roll_curr;
	pitch_curr = (49*((*gx * d_t/1000000) + pitch_prev)/50) +  (*acell_pitch / 50);
	roll_curr = (49*((*gy*(-1) * d_t /1000000) + roll_prev)/50) +  (*acell_roll/50);




	*_pitch_curr = pitch_curr;
	*_roll_curr = roll_curr;
}

void my_PID(int16_t * pitch, int16_t * roll, int16_t * pow, int16_t * force, int16_t * gx, int16_t * gy, uint32_t d_t)
{
  if(*force < low_trottle)
  {
    pow[0] = 0;
    pow[1] = 0;
    pow[2] = 0;
    pow[3] = 0;
    return;
  }
  else
  {
    if(*force > high_trottle)
    {
      *force = high_trottle;
    }
  }
  {
	I_p += *pitch * d_t;
	I_r += *roll * d_t;
	pow[0] = *force + (*pitch + *roll) *Kp + (*gx +(-*gy))*Kd + (I_p+I_r)*Ki/1000000;
    pow[1] = *force + (-*pitch + *roll)*Kp + (-*gx +(-*gy))*Kd + (-I_p+I_r)*Ki/1000000;
    pow[2] = *force + (-*pitch - *roll)*Kp + (-*gx -(-*gy))*Kd + (-I_p-I_r)*Ki/1000000;
    pow[3] = *force + (*pitch - *roll)*Kp  + (*gx -(-*gy))*Kd + (I_p-I_r)*Ki/1000000;

    //check low_trottle
    if(pow[0]< low_trottle2)
    {
    	pow[0] = low_trottle2;
    }
    if(pow[1]< low_trottle2)
    {
    	pow[1] = low_trottle2;
    }
    if(pow[2]< low_trottle2)
    {
    	pow[2] = low_trottle2;
    }
    if(pow[3]< low_trottle2)
    {
    	pow[3] = low_trottle2;
    }
    //check high_trottle
    if(pow[0]> high_trottle2)
    {
    	pow[0] = high_trottle2;
    }
    if(pow[1] > high_trottle2)
    {
    	pow[1] = high_trottle2;
    }
    if(pow[2] > high_trottle2)
    {
    	pow[2] = high_trottle2;
    }
    if(pow[3] > high_trottle2)
    {
    	pow[3] = high_trottle2;
    }

  }
}

