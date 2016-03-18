/*
 * helpers.c
 *
 *  Created on: 11.03.2016
 *      Author: vetal
 */
#include "helpers.h"

int32_t my_atoi (uint8_t *buf, uint8_t l)
{
	int32_t tmp=0;
	uint8_t i =0, k;
	for(i = 0; buf[i] == ' ' && i<l; i++); //skip spaces
	if(buf[i] == '-')
	{
		k = i;
		i++;
	}
	for(; i<l;i++)
	{
		if(buf[i]>= '0' && buf[i]<= '9')
			tmp = tmp*10+buf[i]-'0';
		else
			return 0;
	}
	if(buf[k] == '-')
		tmp*=(-1);
	return tmp;

}

void itoa
(
	char *buf,
	int base,
	int d
)
{
	char *p = buf;
	char *p1, *p2;
	unsigned long ud = d;
	int divisor = 10;

	/* If %d is specified and D is minus, put `-' in the head.  */
	if (base == 'd' && d < 0) {
			*p++ = '-';
			buf++;
			ud = -d;
	} else if (base == 'x') {
			divisor = 16;
	}

	/* Divide UD by DIVISOR until UD == 0.  */
	do {
			int remainder = ud % divisor;

			*p++ = (remainder < 10) ? remainder + '0' : remainder + 'a' - 10;
			ud /= divisor;
	} while (ud);




	/* Reverse BUF.  */
	p1 = buf;
	p2 = p - 1;
	while (p1 < p2) {
			char tmp = *p1;
			*p1 = *p2;
			*p2 = tmp;
			p1++;
			p2--;
	}
}
int16_t degree_sub360(int16_t val1, int16_t val2)
{

	int16_t tmp = val1 - val2;
	if(tmp >= 0 )
	{
		if(tmp>180*degree_to_int)
			tmp-=(360*degree_to_int);
		return tmp;
	}
	else
	{
		if(tmp<-180*degree_to_int)
			tmp+=(360*degree_to_int);
		return tmp;
	}
}
void limit_value16(int16_t * val, int16_t lim)
{
	if(*val > lim)
		*val = lim;
	else
		if(*val < -lim)
			*val = -lim;
}

void limit_value32(int32_t * val, int32_t lim)
{
	if(*val > lim)
		*val = lim;
	else
		if(*val < -lim)
			*val = -lim;
}
void limit_value64(int64_t * val, int64_t lim)
{
	if(*val > lim)
		*val = lim;
	else
		if(*val < -lim)
			*val = -lim;
}
uint8_t no_overlim(int16_t val, int16_t lim)
{
	if(abs(val)<lim)
		return 1;
	else
		return 0;
}
