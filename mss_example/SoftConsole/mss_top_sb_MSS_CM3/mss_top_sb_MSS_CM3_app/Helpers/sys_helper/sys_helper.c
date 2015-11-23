#include "sys_helper.h"

void delay
(
	uint32_t time,
	uint32_t frequency
)
{
	int i = 0;
	for (i = 0; i < frequency * time; i++);
}
