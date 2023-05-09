 

#include <io.h>
#include <pwm.h>
#include <dtx.h>
#include "global.h"
#include "sub3play.h"

#pragma __attribute__("rjmp")


int flags;
int songidx;
int sub_vol;
unsigned long ticks;


static void InitSound(void) near
{
	// clear PWM buffer

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


static void SetupIO(void) near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = (int)0xFFFF;
}


void Initial(void)
{
 	songidx = 0;

	InitSound();
	SetupIO();

	flags = 0;

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;
}


void CheckSongLimit(void)
{
	if(songidx < 0)
	{
		songidx = dtxsongcnt - 1;
	}
	else
	{
		if(songidx >= dtxsongcnt)
		{
			songidx = 0;
		}
	}
}

// --------------

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


void ToneVolCtrl(void)
{
	if(PLAY)
	{
		if(dtxfltg > 0x100F)
			dtxfltg -= 0x10;
	}
	else
	{
		if(dtxfltg != 0x7FFF)
			++dtxfltg;
	}
}


















