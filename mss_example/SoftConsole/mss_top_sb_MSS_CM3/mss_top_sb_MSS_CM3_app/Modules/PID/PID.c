/*
 * PID.c
 *
 *  Created on: 20.11.2015
 *      Author: vetal
 */
#include "PID.h"

inline void my_PID(int16_t pitch, int16_t roll, int16_t yaw, int16_t gx, int16_t gy, int16_t gz, int16_t * force, int16_t * pow)
{
	static int32_t Integr_pitch=0, Integr_roll=0, Integr_yaw=0;
    if(*force < force_low_trottle) // if force so low
    {
        pow[0] = pow[1] = pow[2] = pow[3] = 0;
        return;
    }
    else
        if(*force > force_high_trottle) // limit force if it so high for to prevent destabilization
            *force = force_high_trottle;


    if(no_overlim(pitch, 20*degree_to_int) && no_overlim(roll, 20*degree_to_int))// don't integrate if copter nonstable
    {
            Integr_pitch = Integr_pitch+((int32_t)(pitch * loop_time));
            Integr_roll = Integr_roll+((int32_t)(roll  * loop_time));
            if(no_overlim(yaw, 20*degree_to_int))
                Integr_yaw = Integr_yaw+((int32_t)(yaw  * loop_time));
    }


    Dtmp_p = (int16_t) ((-1) *(int32_t)Kd_u * (int32_t)(gy) / Kd_d);
    Dtmp_r = (int16_t) ((int32_t)Kd_u * (int32_t)(gx) / Kd_d);
    Dtmp_y = (int16_t) ((-1) *(int32_t)Kd_u * (int32_t)(gz) / Kd_d);

    Ptmp_p = (int16_t) ((int32_t)Kp_u * (int32_t)(pitch) / Kp_d);
    Ptmp_r = (int16_t) ((int32_t)Kp_u * (int32_t)(roll) / Kp_d);
    Ptmp_y = (int16_t) ((int32_t)Kp_u * (int32_t)(yaw) / Kp_d);



    // differential limit
    limit_value16(&Dtmp_p , D_lim);
    limit_value16(&Dtmp_y , D_lim);
    limit_value16(&Dtmp_r , D_lim);
    limit_value16(&Ptmp_p , P_lim);
    limit_value16(&Ptmp_y , P_lim);
    limit_value16(&Ptmp_r , P_lim);
    // integral limit

    limit_value32(&Integr_pitch , I_lim2);
    limit_value32(&Integr_roll , I_lim2);
    limit_value32(&Integr_yaw , I_lim2);

    Itmp_p = (int16_t)(Ki_u*Integr_pitch/Ki_d);
	Itmp_r = (int16_t)(Ki_u*Integr_roll/Ki_d);
	Itmp_y = (int16_t)(Ki_u*Integr_yaw/Ki_d);


    int16_t sum_p, sum_r, sum_y;
    sum_p = Dtmp_p + Ptmp_p + Itmp_p;
    sum_r = Dtmp_r + Ptmp_r + Itmp_r;
    sum_y = (Itmp_y + Ptmp_y + Dtmp_y)*4;

    pow[2] = *force + sum_p + sum_r + sum_y;
    pow[3] = *force - sum_p + sum_r - sum_y;
    pow[0] = *force - sum_p - sum_r + sum_y;
    pow[1] = *force + sum_p - sum_r - sum_y;
	int8_t i;
	for( i = 0 ; i < 4; i++)
	{
		if(pow[i]< power_low_trottle)
	        pow[i] = power_low_trottle;
		else
	    	if(pow[i] > power_high_trottle)
	    		pow[i] = power_high_trottle;
	}

}




void my_yaw(int16_t * mx, int16_t * my, int16_t * mz, int16_t *yaw, int16_t * pitch, int16_t *roll)
{
    double ptch = my_degree_to_float(*pitch*(-1));
    double rll = my_degree_to_float(*roll);

    double s_ptch = sin(ptch);
    double s_rll = sin(rll);
    double c_ptch = cos(ptch);
    double c_rll = cos(rll);


    double x, y;
    x = *mx * c_ptch + *my * s_rll * s_ptch + *mz * c_rll * s_ptch;
    y = *my * c_rll - *mz * s_rll ;

    *yaw = (int16_t)(atan2 (y,x) * rad_to_int);

}
void my_ESC(int16_t * pow, int16_t * force)
{
	static int16_t last[4] = {0,0,0,0};
	static int16_t delta;
	if(*force > force_low_trottle+2)
	{
		int8_t i;
		for( i = 0 ; i < 4; i++)
		{
			delta =  pow[i] - last[i];
			if(delta>80)
				delta = 80;
			else
				if(delta<-80)
					delta = -80;
			last[i] = last[i] + (7*delta/8);
			pow[i] = pow[i] +(delta*5);
			if(pow[i]< power_low_trottle)
				pow[i] = power_low_trottle;
			else
				if(pow[i] > power_high_trottle)
					pow[i] = power_high_trottle;
		}
	}
}


double my_degree_to_float (int16_t val)
{
    return (double)val/rad_to_int;

}

void set_P(uint16_t val)
{
    Kp_u = val;
}
void set_I(uint16_t val)
{
    Ki_u = val;

}
void set_D(uint16_t val)
{
    Kd_u = val;
}

void setLim_P(uint16_t val)
{
    P_lim = val;
}
void setLim_I(uint16_t val)
{
    I_lim = val;
    I_lim2 = I_lim*Ki_d/Ki_u;
}
void setLim_D(uint16_t val)
{
    D_lim = val;
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
int16_t get_P_y(void)
{
    return Ptmp_y;
}
int16_t get_I_y(void)
{
    return Itmp_y;
}
int16_t get_D_y(void)
{
    return Dtmp_y;
}
