
// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play MD2 and ADPCM simultaneously
// -----------------------------------

// -- System limitation when play simultaneously --
// -- Using PWM 32K
// -- Only play max 4 (8k) or up to 2 (16K) ADPCM sound at a time
// -- Only play MD2 data at max 8 operators or channels

// -- Button --
// -- S2 - Play next ADPCM
// -- S3 - Next MD2 song


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


// C variables


export int PCMY[32];


// functions

void Initial(void);

// data
// const int DecodeTab[];


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
import void Pwm_process(void) interrupt(0);

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void main(void)
{
	int i;

	//	Initial system

	Initial();
	InitKey();
	md2Initialize();
//	SDSP_ADPCM_4Bit_Init();
	ADPCM_ChX_init();

	// needs ADPCM copy to PRAM	

	CopyToBank = 1;

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

		if(md2ChkSongEnd())
		{
			songidx++;
			CheckSongLimit();
			md2PlaySong(songidx);
		}

		// wait double buffer ready

		if(!SyncNow())
			continue;

		// Do MD2 functions

		md2DoRoutine();

		// Do ADPCM mix

		ADPCM_Tmpi = adpch;

		ClearAudioBuffer();

		for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
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
	if(!AdpData[iADP].adr)
		iADP = 0;
	
	playADPCM(iADP++);
}


void KeyNextSong(void)
{
	md2StopSong();
}


// ---------------------


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayADPCM, NULL, NULL },
	{ KeyNextSong, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};








