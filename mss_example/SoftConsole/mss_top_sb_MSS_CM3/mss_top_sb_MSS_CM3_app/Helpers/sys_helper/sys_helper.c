#include "sys_helper.h"

void delay
(
	uint8_t time,
	uint8_t frequency
)
{
	int i = 0;
	for (i = 0; i < frequency * time; i++);
}
