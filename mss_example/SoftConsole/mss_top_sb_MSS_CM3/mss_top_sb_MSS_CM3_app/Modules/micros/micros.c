
#include "micros.h"


inline uint64_t micros()
{
	return (1000000*t_h) + ((frq) - MSS_TIM1_get_current_value())/(frq/1000000); //checked
}
void init_timer()
{

	MSS_TIM1_load_background(frq);
	MSS_TIM1_start();
	MSS_TIM1_enable_irq();
}
void stop_timer()
{
	MSS_TIM1_disable_irq();
}

void Timer1_IRQHandler()
{

	t_h += 1;
	MSS_TIM1_clear_irq();

}
int32_t my_atoi (uint8_t *buf, uint8_t l)
{
	int32_t tmp=0;
	uint8_t i =0;
	for(i=0; i<l;i++)
	{
		if(buf[i]>= '0' && buf[i]<= '9')
			tmp = tmp*10+buf[i]-48;
		else
			return 0;
	}
	return tmp;

}

