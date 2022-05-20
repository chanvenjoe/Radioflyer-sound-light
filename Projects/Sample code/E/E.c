// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play DTX and subband3 simultaneously
// -----------------------------------

// -- System limitation when play simultaneously --
// -- Using PWM 32K
// -- Only play Subband3 data at 8K ~ 12K sample rate with middle bitrate
// -- DTX and Subband3 will exclusive if no PRAM enabled
// --
// -- Button --
// --
// -- _MSPEECHDSP_
// --      - Button -
// --        PC8  - Play Next
// --        PC9  - Play Previous
// --        PC10 - Change dualtone sound
// --        PB4  - Play subband3 data1
// --        PA0  - Play subband3 data2
// --
// -- _MSPEECHDSP2_
// --      - Button -
// --        PA0  - Play Next
// --        PA1  - Play Previous
// --        PA2  - Change dualtone sound
// --        PA3  - Play subband3 data1
// --
// -- _MFDSP2_
// --      - Button -
// --        PA4  - Play Next
// --        PA5  - Play Previous
// --        PA7  - Change dualtone sound
// --        PA6  - Play subband3 data1


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
	#ifndef RAMBANK
		dtxStopSong();
	#endif

	Sub3Play((lptr_t)subdat0);
	PLAY = 1;
}

#if _OPT_PROMSize_ >= 0x00020000

void KeySubb3B(void)
{
	#ifndef RAMBANK
		dtxStopSong();
	#endif

	Sub3Play((lptr_t)subdat1);
	PLAY = 1;
}

#endif

// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayNext, NULL, NULL },
	{ KeyPlayPrev, NULL, NULL },
	{ KeyMod, NULL, NULL },
	{ KeySubb3A, NULL, NULL },

#if _OPT_PROMSize_ >= 0x00020000
	{ KeySubb3B, NULL, NULL },
#endif
};



