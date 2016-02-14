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

void my_angle(int16_t * gx,
        int16_t * gy,
        int16_t * gz,

        int16_t * acell_pitch,
        int16_t * acell_roll,
        int16_t * magn_yaw,

        int16_t * _pitch_curr,
        int16_t * _roll_curr,
        int16_t * _yaw_curr,

        uint32_t d_t)
{

    static int pitch_prev, pitch_curr;
    static int roll_prev, roll_curr;
    static int yaw_prev, yaw_curr;
    pitch_prev = pitch_curr;
    roll_prev = roll_curr;
    yaw_prev = yaw_curr;

    int16_t intgr_p, intgr_r, intgr_y;

    intgr_p = (int16_t)((int64_t)(*gy)*(int64_t)d_t/1000000);
    intgr_r = (int16_t)((int64_t)(*gx)*(-1)*(int64_t)d_t/1000000);
    intgr_y = (int16_t)((int64_t)(*gz)*(int64_t)d_t/1000000);


    pitch_curr = ((49*(intgr_p + pitch_prev))+(*acell_pitch)) / 50;
    roll_curr = ((49*(intgr_r + roll_prev))+(*acell_roll)) / 50;
    if(pitch_curr<5*k && pitch_curr> -5*k && roll_curr<5*k && roll_curr>-5*k)
        yaw_curr = ((49*(intgr_y + yaw_prev))+(*magn_yaw)) / 50;
    else
        yaw_curr = intgr_y + yaw_prev;




    *_yaw_curr = yaw_curr;
    *_pitch_curr = pitch_curr;
    *_roll_curr = roll_curr;
}

inline void my_PID(int16_t * pitch, int16_t * roll, int16_t * yaw, int16_t * pow, int16_t * force, int16_t * gx, int16_t * gy, int16_t * gz, uint16_t d_t)
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


    if(*pitch<20*k && *pitch> -20*k && *roll<20*k && *roll>-20*k) // don't integrate if orientation is fatal
    {
            Integr_pitch = Integr_pitch+((int32_t)(*pitch * d_t) / 1000);
            Integr_roll = Integr_roll+((int32_t)(*roll  * d_t) / 1000);
            if(*yaw<20*k && *yaw>-20*k)
                Integr_yaw = Integr_yaw+((int32_t)(*yaw  * d_t) / 1000);
    }
    Itmp_p = (int16_t)(Ki_u*Integr_pitch/Ki_d);
    Itmp_r = (int16_t)(Ki_u*Integr_roll/Ki_d);
    Itmp_y = (int16_t)(Ki_u*Integr_yaw/Ki_d);

    Dtmp_p = (int16_t) Kd_u * (int32_t)(*gy) / Kd_d;
    Dtmp_r = (int16_t) (-1) * Kd_u * (int32_t)(*gx) / Kd_d;
    Dtmp_y = (int16_t) Kd_u * (int32_t)(*gz) / Kd_d;

    Ptmp_p = (int16_t) Kp_u * (int32_t)(*pitch) / Kp_d;
    Ptmp_r = (int16_t) Kp_u * (int32_t)(*roll) / Kp_d;
    Ptmp_y = (int16_t) Kp_u * (int32_t)(*yaw) / Kp_d;



// differential limit
    if(Dtmp_p > D_lim)
        Dtmp_p = D_lim;
    else
        if(Dtmp_p< - D_lim)
            Dtmp_p = - D_lim;

    if(Dtmp_r > D_lim)
        Dtmp_r = D_lim;
    else
        if(Dtmp_r< - D_lim)
            Dtmp_r = - D_lim;

    if(Dtmp_y > D_lim)
        Dtmp_y = D_lim;
    else
        if(Dtmp_y< -D_lim)
            Dtmp_y = -D_lim;

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
            Ptmp_r = -P_lim;

    if(Ptmp_y > P_lim)
            Ptmp_y = P_lim;
        else
            if(Ptmp_y< -P_lim)
                Ptmp_y = -P_lim;


    // integral limit
    if(Integr_pitch > I_lim*65536)
        Integr_pitch = I_lim*65536;
    else
        if(Integr_pitch< - I_lim*65536)
            Integr_pitch = - I_lim*65536;

    if(Integr_roll > I_lim*65536)
        Integr_roll = I_lim*65536;
        else
            if(Integr_roll< - I_lim*65536)
                Integr_roll = - I_lim*65536;

    if(Integr_yaw > I_lim*65536)
        Integr_yaw = I_lim*65536;
    else
        if(Integr_yaw< - I_lim*65536)
            Integr_yaw = - I_lim*65536;



    int16_t sum_p, sum_r, sum_y;
    sum_p = Dtmp_p + Ptmp_p + Itmp_p;
    sum_r = Dtmp_r + Ptmp_r + Itmp_r;
    sum_y = Itmp_y + Ptmp_y + Dtmp_y;

    pow[0] = *force + sum_p + sum_r + sum_y;
    pow[1] = *force - sum_p + sum_r - sum_y;
    pow[2] = *force - sum_p - sum_r + sum_y;
    pow[3] = *force + sum_p - sum_r - sum_y;

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


void set_P(uint16_t i)
{
    Kp_u = i;
}
void set_I(uint16_t i)
{
    Ki_u = i;
}
void set_D(uint16_t i)
{
    Kd_u = i;
}

void setLim_P(uint16_t i)
{
    P_lim = i;
}
void setLim_I(uint16_t i)
{
    I_lim = i;
}
void setLim_D(uint16_t i)
{
    D_lim = i;
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

int16_t get_Int_p(void)
{
    return Integr_pitch/1000;
}
int16_t get_Int_r(void)
{
    return Integr_roll/1000;
}
int16_t get_Int_y(void)
{
    return Integr_yaw/1000;
}

double my_degree_to_float (int16_t val)
{
    return (double)val/k1/k;

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

    *yaw = (int16_t)(atan2 (y,x) * k * k1);

}
