// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play MD2 file
// -----------------------------------
// --
// -- _MSPEECHDSP_
// --      - Button -
// --        PB4  - Play song
// --        PC8  - Repeat song
// --        PC9  - Next song
// --        PC10 - Prev song
// --
// -- _MSPEECHDSP2_
// --      - Button -
// --        PA3  - Play song
// --        PA0  - Repeat song
// --        PA1  - Next song
// --        PA2  - Prev song
// --
// -- _MFDSP2_
// --      - Button -
// --        PA4  - Play song
// --        PA5  - Repeat song
// --        PB7  - Next song
// --        PB6  - Prev song

#include "config.h"

#pragma __attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include "md2.h"
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

	md2Initialize();

	if(!md2FindMidiEntry((lptr_t)melody))
	{
		// wait watchdog reset system
		while(1);
	}

	md2InitParameters();
	md2StartBGServe();

	songidx = -1;
	mp_vol = 63;
	mp_tempo = 0x4000;	// 1.0
	timepass = 0;

	while(md2DoRoutine())
	{
		ClrWatchDog();

		PollingKey();

		if(md2ChkSongEnd())
		{
			if(!STOP)
			{
				songidx++;
				CheckSongLimit();
				md2PlaySong(songidx);
			}
		}
	}
}


// ----------------

void KeyFLTG(void)
{
	if(mp_vol & 0x0080)
	{
		// filter is off
		mp_vol &= 0x003F;
	}
	else
	{
		// filter is on
		mp_vol |= 0x00C0;
	}

	R_FLTG = mp_vol;
}


void KeyPlay(void)
{
	int i;

	if(STOP)
	{
		STOP = 0;
		songidx--;

		CheckSongLimit();
	}
	else
	{
		md2StopSong();
		STOP = 1;
	}
}


void KeyRepeat(void)
{
	md2StopSong();
	md2PlaySong(songidx);
	STOP = 0;
}


void KeyNext(void)
{
	md2StopSong();
	songidx++;
	CheckSongLimit();
	md2PlaySong(songidx);
	STOP = 0;
}


void KeyPrevK(void)
{
	md2StopSong();
	songidx--;
	CheckSongLimit();
	md2PlaySong(songidx);
	STOP = 0;
}


// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlay, NULL, NULL },
	{ KeyRepeat, NULL, NULL },
	{ KeyNext, NULL, NULL },
	{ KeyPrevK, NULL, NULL },
	{ NULL, NULL, NULL },
};



