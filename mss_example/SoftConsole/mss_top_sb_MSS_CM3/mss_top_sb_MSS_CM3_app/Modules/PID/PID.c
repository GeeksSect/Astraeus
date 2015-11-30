/*
 * PID.c
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */
#include "PID.h"
inline void acell_angle(int16_t * ax, int16_t * ay, int16_t * az, int16_t * acell_pitch, int16_t * acell_roll)
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

inline void my_angle(int16_t * gx, int16_t * gy, int16_t * gz, int16_t * acell_pitch, int16_t * acell_roll,
		int16_t * _pitch_curr, int16_t * _roll_curr, uint16_t d_t)
{

	static int pitch_prev, pitch_curr;
	 	static int roll_prev, roll_curr;
	 	pitch_prev = pitch_curr;
	 	roll_prev = roll_curr;
	 	pitch_curr = ((49*(((int64_t)(*gx)*(int64_t)d_t/1000000)+ pitch_prev))+(*acell_pitch)) / 50;
	 	roll_curr = ((49*(((int64_t)(*gy)*(-1)*(int64_t)d_t/1000000)+ roll_prev))+(*acell_roll)) / 50;





	 	*_pitch_curr = pitch_curr;
	 	*_roll_curr = roll_curr;
}

inline void my_PID(int16_t * pitch, int16_t * roll, int16_t * pow, int16_t * force, int16_t * gx, int16_t * gy, uint16_t d_t)
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
		if(*force > high_trottle)
			*force = high_trottle;


	if(*pitch<10*k && *pitch> -10*k && *roll<10*k && *roll>-10*k) // don't integrate if orientation is fatal
	{
		Integr_pitch = Integr_pitch+((int32_t)(*pitch * d_t) / 1000);
		Integr_roll = Integr_roll+((int32_t)(*roll  * d_t) / 1000);
	}
	Itmp_p = (int16_t)(Ki_u*Integr_pitch/Ki_d);
	Itmp_r = (int16_t)(Ki_u*Integr_roll/Ki_d);
	Dtmp_p = Kd_u * (*gx) / Kd_d;
	Dtmp_r = Kd_u *(-1) * (*gy) / Kd_d;
	Ptmp_p = Kp_u * (*pitch) / Kp_d;
	Ptmp_r = Kp_u * (*roll) / Kp_d;
// integral limit
	if(Itmp_p > I_lim)
		Itmp_p = I_lim;
	else
		if(Itmp_p< - I_lim)
			Itmp_p = - I_lim;

	if(Itmp_r > I_lim)
		Itmp_r = I_lim;
	else
		if(Itmp_r< -I_lim)
			Itmp_r = I_lim;
// proportional limit
	if(Ptmp_p > P_lim)
		Ptmp_p = P_lim;
	else
		if(Ptmp_p< - P_lim)
			Ptmp_p = - P_lim;

	if(Ptmp_r > P_lim)
		Ptmp_r = P_lim;
	else
		if(Ptmp_r< -P_lim)
			Ptmp_r = P_lim;

// differential limit
	if(Dtmp_p > D_lim)
		Dtmp_p = D_lim;
	else
		if(Dtmp_p< - D_lim)
			Dtmp_p = - D_lim;

	if(Dtmp_r > D_lim)
		Dtmp_r = D_lim;
	else
		if(Dtmp_r< -D_lim)
			Dtmp_r = D_lim;

	pow[0] = *force + Dtmp_p + Dtmp_r + Ptmp_p + Ptmp_r + Itmp_p + Itmp_r;
    pow[1] = *force - Dtmp_p + Dtmp_r - Ptmp_p + Ptmp_r - Itmp_p + Itmp_r;
    pow[2] = *force - Dtmp_p - Dtmp_r - Ptmp_p - Ptmp_r - Itmp_p - Itmp_r;
    pow[3] = *force + Dtmp_p - Dtmp_r + Ptmp_p - Ptmp_r + Itmp_p - Itmp_r;

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
int8_t change_coef(int8_t _type)
{
	switch (_type)
		{
		case 'P':
		{
			Kp_u++;
			return Kp_u;
		}
		case 'p':
		{
			Kp_u--;
			return Kp_u;
		}
		case 'I':
		{
			Ki_u++;
			return Ki_u;
		}
		case 'i':
		{
			Ki_u--;
			return Ki_u;
		}
		case 'D':
		{
			Kd_u++;
			return Kd_u;
		}
		case 'd':
		{
			Kd_u--;
			return Kd_u;
		}
		default:
		{
			return -1;
		}
		}
}


void set_I(uint8_t val)
{
	Ki_u= val;
}
void set_P(uint8_t val)
{
	Kp_u= val;
}
void set_D(uint8_t val)
{
	Kd_u= val;
}
int16_t get_I_p(void)
{
	return Itmp_p;
}
int16_t get_I_r(void)
{
	return Itmp_r;
}
int16_t get_P_p(void)
{
	return Ptmp_p;
}
int16_t get_P_r(void)
{
	return Ptmp_r;
}
int16_t get_D_p(void)
{
	return Dtmp_p;
}
int16_t get_D_r(void)
{
	return Dtmp_r;
}
