
#include "micros.h"

inline uint64_t micros()
{
	return (t_h+10)*frq/50 - MSS_TIM1_get_current_value()/50;
}
void init_timer()
{
	MSS_TIM1_load_background(frq*10);
	MSS_TIM1_start();
	MSS_TIM1_enable_irq();
}
void stop_timer()
{
	MSS_TIM1_disable_irq();
}

void Timer1_IRQHandler()
{
	t_h += 10;
	MSS_TIM1_clear_irq();
}
int16_t my_atoi (uint8_t *buf, uint8_t l)
{
	int16_t tmp=0;
	uint8_t i =0;
	for(i=1; i<l;i++)
	{
		if(buf[i]>= '0' && buf[i]<= '9')
		{
			tmp = tmp*10+buf[i]-48;
		}
		else
			return 0;
	}
	if(buf[0] == '-')
	{
		tmp = -tmp;
	}
	return tmp;

}

