//****************************************************************************
//          SpeechDSP Demo Code , TRITAN Technology Inc.
//              How do I play subband2/3 in C?
//****************************************************************************
// Lex

#include "config.h"

#include <io.h>
#include <lptr.h>
#include <pwm.h>// for system head file?

#include "global.h"
#include "sub3play.h"

#pragma	__attribute__("rjmp")

// -----------------

// C function

int WaitPCM_Empty_size(void);
void INITIAL(void);

// subband2 data
// const int MyData[];
LinkFile(MyData, "subband3\\baby_Silen@31K9bps.TZB");


import void Pwm_process(void) interrupt(0);
import void F_ChangePWMVectTabletobank2(void);


void main(void)
{
	F_ChangePWMVectTabletobank2();//Where does it come from

	sub_vol = 0;

	INITIAL();
	ClearTickCount();

	Sub3Play((lptr_t)MyData);

	while(1)
	{
		ClrWatchDog();

		RampUp();

		if(Subb3_Dec())
			Sub3Play((lptr_t)MyData);
	}
}


void InitSound(void)	near
{
	R_FLTP = 0x3FFF;

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

	R_FLTG = 0x00;

	// reset FIFO state machine

	R_FLTO;

	EnableAudioPWM();
	EnableWideBandFilter();
	DACMuteOff();
}


void INITIAL(void)
{
	int i;

	InitSound();

	set_I0(PCMY);

	i = 512;

	while(i--)
		store_I0P(0);

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	R_FLTG = sub_vol;
	R_FLTP = 0x1FFF;
	R_CBL = 0;
}



