

#include <io.h>

#include <pwm.h>
#include <md2.h>

#include "global.h"

#pragma __attribute__("rjmp")


int sub_vol;
unsigned long ticks;



int RampUp(void)
{
	if(0x3F == (sub_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = ++sub_vol;
	}

	return 1;
}


int RampDown(void)
{
	// 10ms

	if(0 == (sub_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = --sub_vol;
	}

	return 1;
}












