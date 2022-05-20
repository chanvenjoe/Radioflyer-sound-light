

#include <io.h>

#pragma __attribute__("rjmp")

#include <pwm.h>
#include <md2.h>

#include "global.h"


int flags;

int songidx;
int fastcnt;
int timepass;
int dac;
unsigned long ticks;


void InitSound(void)	near
{
	R_FLTP = 0x3FFF;

	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;

	// clear filter buffer

	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;

	R_FLTG = 0x3F;

	// reset FIFO state machine

	R_FLTO;

	EnableAudioPWM();
	EnableWideBandFilter();
	DACMuteOff();
}


static void SetupIO(void)	near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = (int)0xFFFF;
}


void Initial(void)
{
 	songidx = -1;
	fastcnt = 0;
	timepass = 0;

	InitSound();
	SetupIO();
	
	flags = 0;
}


void CheckSongLimit(void)
{
	if(songidx < 0)
	{
		songidx = mp_songcnt - 1;
	}
	else
	{
		if(songidx >= mp_songcnt)
		{
			songidx = 0;
		}
	}
}


int RampUp(void)
{
	if(0x3F == (mp_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = ++mp_vol;
	}

	return 1;
}


int RampDown(void)
{
	// 10ms

	if(0 == (mp_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = --mp_vol;
	}

	return 1;
}












