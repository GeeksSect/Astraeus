#include "sys_helper.h"

void delay
(
    uint32_t time_us,
    uint32_t frequency_mhz
)
{
    int i = 0;
    for (i = 0; i < frequency_mhz * time_us; i++);
}
