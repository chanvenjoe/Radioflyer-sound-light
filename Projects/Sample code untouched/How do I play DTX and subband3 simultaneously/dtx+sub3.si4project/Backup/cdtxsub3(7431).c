// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play DTX file
// -----------------------------------

#include "config.h"

#pragma __attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include <dtx.h>

#include "global.h"
#include "keypad.h"
#include "led.h"
#include "sub3play.h"

// interrupt.asm

import void PWM_ENTRY(void) interrupt(0);

// data.c
import const int melody[];


void main(void)
{
	Initial();
	InitKey();

	CONFIG_LED0();
	CONFIG_LED1();
	LED0_OFF();
	LED1_OFF();

	ChangePWMIntToDynCache();

	dtxInitialize();

	while(!dtxFindToneEntry((lptr_t)melody))
	{
		// wait watchdog reset system
		while(1);
	}

	dtxInitParameters();

	// read tone settings

	dtxReadTune();

	songidx = 0;
	dtxfltg = 32767;

	while(1)
	{
		ClrWatchDog();
		PollingKey();
		KeyShowLED();
		ToneVolCtrl();

		if(WaitPCM_Empty_size() < 0)
			continue;

		if(PLAY)
		{
			if(Subb3_Dec())
			{
				PLAY = 0;
				Sub3ZeroFill();
			}
		}
		else
		{
			Sub3ZeroFill();
		}
	}
}


// ----------------

void KeyPlaySong(void)
{
	#ifndef RAMBANK
		PLAY = 0;
	#endif

	if(dtxCheckSongEnd())
	{
		dtxPlaySong(songidx);
	}
	else
	{
		dtxStopSong();
	}
}


void KeyPlayStop(void)
{
	dtxStopSong();
}


void KeyPlayNext(void)
{
	dtxStopSong();

	songidx++;

	CheckSongLimit();

	KeyPlaySong();
}


void KeyPlayPrev(void)
{
	dtxStopSong();

	songidx--;

	CheckSongLimit();

	KeyPlaySong();
}


void KeyMod(void)
{
	dtxtonech[0].MOD = (dtxtonech[0].MOD + 1) & 0x03;
	dtxtonech[1].MOD = (dtxtonech[1].MOD + 1) & 0x03;
}


void KeySubb3A(void)
{
	Sub3Play((lptr_t)subdat0);
	PLAY = 1;
}


void KeySubb3B(void)
{
	Sub3Play((lptr_t)subdat1);
	PLAY = 1;
}


// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayNext, NULL, NULL },
	{ KeyPlayPrev, NULL, NULL },
	{ KeyMod, NULL, NULL },
	{ KeySubb3A, NULL, NULL },
	{ KeySubb3B, NULL, NULL },
};



