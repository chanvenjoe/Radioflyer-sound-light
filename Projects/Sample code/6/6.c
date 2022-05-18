// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play DTX file
// -----------------------------------

// --   _MSPEECHDSP_
// --        - Button --
// --          PA0  - Play / Replay song
// --          PB4  - Stop song
// --          PC8  - Next song
// --          PC9  - Prev song
// --          PC10 - ToneMod
//
// --   _MSPEECHDSP2_
// --        - Button --
// --          PA0  - Next song
// --          PA1  - Prev song
// --          PA2  - ToneMod
// --          PA3  - Stop song


#include "config.h"

#pragma __attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include <dtx.h>

#include "global.h"
#include "keypad.h"
#include "led.h"

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
	}
}


// ----------------

void KeyPlaySong(void)
{
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

	dtxPlaySong(songidx);
}


void KeyPlayPrev(void)
{
	dtxStopSong();

	songidx--;

	CheckSongLimit();

	dtxPlaySong(songidx);
}


void KeyMod(void)
{
	dtxtonech[0].MOD = (dtxtonech[0].MOD + 1) & 0x03;
	dtxtonech[1].MOD = (dtxtonech[1].MOD + 1) & 0x03;
}


// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayNext, NULL, NULL },
	{ KeyPlayPrev, NULL, NULL },
	{ KeyMod, NULL, NULL },
	{ KeyPlayStop, NULL, NULL },
	{ KeyPlaySong, NULL, NULL },
};



