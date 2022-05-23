
// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play MD2 and ADPCM simultaneously
// -----------------------------------

// -- System limitation when play simultaneously --
// -- Using PWM 32K
// --   _MSPEECHDSP_  - Only play max 4 (8k) or up to 2 (16K) ADPCM sound at a time (@8MHz)
// --                   Only play MD2 data at max 8 operators or channels
// --
// --                 - Button -
// --                   PC8 - Play next ADPCM
// --                   PC9 - Next MD2 song
// --
// --
// -- 
// --   _MSPEECHDSP2_ - Only play max 1 (8k) or up to 1 (16K) ADPCM sound at a time (@13MHz)
// --                   Only play MD2 data at max 4 operators or channels
// --
// --                 - Button -
// --                   PA0 - Play next ADPCM
// --                   PA1 - Next MD2 song
// -- 
// --   _MFDSP2_      - 
// --                 - Button -
// --                   PA4 - Play next ADPCM
// --                   PA5 - Next MD2 song



#include "config.h"

#include <io.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <lptr.h>

#include <md2tiny.h>
#include <pwm.h>
#include <adpcm.h>

#include "global.h"
#include "support.h"
#include "data.h"
#include "keypad.h"


#pragma __attribute__("rjmp")

// C variables


export int PCMY[32];


// functions

void Initial(void);

// data
// const int DecodeTab[];


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
import void Pwm_process(void) interrupt(0);

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

int PLAY;

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void main(void)
{
	int i;

	//	Initial system

	Initial();
	InitKey();
	md2Initialize();
	ADPCM_ChX_init();

	// needs ADPCM copy to PRAM	

	CopyToBank = 1;
	PLAY = 1;

	if(!md2FindMidiEntry((lptr_t)MidiData))
	{
		// wait watchdog reset system
		while(1);
	}

	md2InitParameters();
	md2StartBGServe();

	songidx = -1;
	mp_vol = 63;
	mp_tempo = 0x4000;	// 1.0
	mp_lop = 7;

	while(1)
	{
		ClrWatchDog();

		PollingKey();

		if(PLAY)
		{
			if(md2ChkSongEnd())
			{
				songidx++;
				CheckSongLimit();
				md2PlaySong(songidx);
			}
		}

		// wait double buffer ready

		if(!SyncNow())
			continue;

		// Do MD2 functions

		md2DoRoutine();

		// Do ADPCM mix

		ADPCM_Tmpi = adpch;

		ClearAudioBuffer();

		i = MAX_ADPCM_CHANNEL;

		while(i--)
		{
			DecodeChannel();
			ADPCM_Tmpi++;
		}

		// Mix MD2 / ADPCM, and commit to next buffer

		MixAll();
	}
}

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

// ----------------

void KeyPlayADPCM(void)
{
	#ifndef __RAMFUNC_ENABLE__
		md2StopSong();
		PLAY = 0;
	#endif

	if(!adpdata[iADP].adr)
		iADP = 0;
	
	playADPCM(iADP++);
}


void KeyNextSong(void)
{
	#ifndef __RAMFUNC_ENABLE__
		StopAllADPCM();
	#endif

	md2StopSong();
	PLAY = 1;
}


// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayADPCM, NULL, NULL },
	{ KeyNextSong, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};








