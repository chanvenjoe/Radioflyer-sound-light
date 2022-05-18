
#include <io.h>
#include <lptr.h>
#include <string.h>

#include <pwm.h>
#include <md2.h>

#include "global.h"
#include "keypad.h"
#include "led.h"

#ifdef _PWM_64K_
	import int RENDERBUF[1024];
#else
	import int RENDERBUF[512];
#endif

import void PWM_ENTRY(void) interrupt(0);

import void ChangePWMIntToMD2(void);		// support.asm

void MidiPlay(lptr_t md2data)
{
	int step;

	dsi();

	InitSound();
	ChangePWMIntToMD2();
	memset((lptr_t)RENDERBUF, 0, sizeof(RENDERBUF));

	md2Initialize();

	if(!md2FindMidiEntry(md2data))
		return;

	md2InitParameters();
	md2StartBGServe();

	flags = 0;
	mp_tempo = 0x4000;	// 1.0
	timepass = 0;
	mp_vol = mp_vol & (~0x3F);

	step = 0;

	songidx++;
	CheckSongLimit();
	md2PlaySong(songidx);

	while(md2DoRoutine())
	{
		ClrWatchDog();
		
		PollingKey();
		KeyShowLED();

		if(F_STOP)
		{
			if(!step)
			{
				step = 1;
				SET_TICK();
			}
			else
			{
				// ramp down

				if(!RampDown())
				{
					md2StopSong();
					break;
				}
			}
		}
		else
		{
			if(md2ChkSongEnd())
				F_STOP = 1;
			else
				RampUp();
		}
	}
	
	md2StopBGServe();
	dsi();
}






















