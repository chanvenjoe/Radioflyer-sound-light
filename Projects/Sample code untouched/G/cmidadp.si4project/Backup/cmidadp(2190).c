

//****************************************************************************
//			FDSP Demo Code , TRITAN Technology Inc.
//					   First C code.
//****************************************************************************


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
void INITIAL(void);

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
	SDSP_ADPCM_4Bit_Init();

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


// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
void INITIAL(void)
{
	//outp(0x19, 0x4100);
	ResetPASR();

	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTA(0);

	set_FLTG(0x03F);
	set_FLTP(0x3FFF);
	set_CBL(0x00);

	set_DACL(0);
	set_DACL(0);
	set_DACL(0);
	set_DACL(0);

#ifdef DAC_Output
	EnableAudioDAC();								//Setup DAC
#else
	EnableAudioPWM();								// setup PWM
#endif

	set_IOC_PA(0x0ff);
	set_IOC_PB(0x0ff);
	set_PortA(0x00);
	set_PortB(0x00);

	memset((lptr_t)PCMY, 0, sizeof(PCMY));
}



