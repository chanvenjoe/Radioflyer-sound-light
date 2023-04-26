

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

#include "global.h"
#include "adpcm.h"
#include "support.h"
#include "data.h"
#include "keypad.h"


// C variables



#define PUSH_P1HH() { asml("AR = P1.hh"); asml("push AR"); }
#define POP_P1HH() { asml("AX = AR"); asml("pop AR"); asml("P1.hh = AR"); asml("AR = AX"); }


export int *PCMYIN_PTR, *PCMYOU_PTR; //export ==> assembly can get the variable or Function

export int PCMY[8];


// functions

void Initial(void);
int WaitPCM_Empty_size(void);
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
	int i, j, k;

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
	

	while(1)
	{
		ClrWatchDog();

		if(!SyncNow())
			continue;

		uSyncNext();

		md2DoRoutine();

		PollingKey();

		if(md2ChkSongEnd())
		{
			songidx++;
			CheckSongLimit();
			md2PlaySong(songidx);
		}

		ADPCM_Tmpi = adpch;

		ClearAudioBuffer();

		for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
		{
			DecodeChannel();
			ADPCM_Tmpi++;
		}

		Do_Satv();
	}
}



// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=



// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
int WaitPCM_Empty_size(void)
{
	int x;

	x = PCMYOU_PTR - PCMYIN_PTR;

	if(x < 0)
	{
		x = x & 0x00FF;
	}

	x = x - 0x0040;
	return x;
}

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

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	memset((lptr_t)PCMY, 0, sizeof(PCMY));


//	EnableInt0();									// enable PWM interrupt
//	eni();
}



