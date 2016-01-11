#include "micros.h"

inline uint64_t micros()
{
    return (t_h + 10) * frq / 50 - MSS_TIM1_get_current_value() / 50;
}

void init_timer()
{
    MSS_TIM1_load_background(frq * 10);
}

void start_timer()
{
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
