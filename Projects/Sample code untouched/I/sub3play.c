

#pragma	__attribute__("rjmp")

#include <io.h>
#include <lptr.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <as.h>

#include <pwm.h>
#include <md2.h>

#include "led.h"
#include "keypad.h"
#include "global.h"

#include "sub3play.h"




lptr_t bts_ch0_get_ix;

import int *PCMYIN_PTR, *PCMYOU_PTR;
import int PCMY[512];

export int SampleCh0Rate;	//export ==> assembly can get the variable or Function

// shell function that support subband obj (sub2supp.asm)

import void F_ChangePWMVectTabletobank2(void);
import const int MyData[];


int WaitPCM_Empty_size(void)
{
	int x;
	x = PCMYOU_PTR - PCMYIN_PTR;
	if(x < 0)
	{
		x = x & 0x01FF;
	}
	x = x - 0x0121;
	return x;
}


void Sub3Initial(void)
{
	dsi();

	InitSound();

	memset((lptr_t)PCMY, 0, sizeof(PCMY));

	ResetPASR();

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	set_FLTG(0x00);
	set_FLTP(0x1FFF);
	set_CBL(0x00);

	Subb3_Init();

#ifdef _PWM_64K_
	set_FLTP(get_FLTP() >> 1);
#endif

#ifdef _PWM_128K_
	set_FLTP(get_FLTP() >> 2);
#endif

	F_ChangePWMVectTabletobank2();

	EnableInt0();			// enable PWM interrupt
	eni();
}



//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

export __CALLBACK void Sbb_Ch0GetBts(void) naked
{
	// Sbb_Ch0GetBts require to preserve all used registers
	// the following C code may use I1/P1/AX/BX/CX/DX/P1.hh

	PUSH_I1();
	PUSH_P1();
	PUSH_AX();
	PUSH_BX();
	PUSH_CX();
	PUSH_DX();
	PUSH_P1HH();

	// read data and make it high low exchange

	vXCHG(_lptr_read(bts_ch0_get_ix++));

	POP_P1HH();
	POP_DX();
	POP_CX();
	POP_BX();
	LoadAR(asintax());
	POP_AX();
	POP_P1();
	POP_I1();
}

void Sub3ZeroFill(void)
{
	int i;

	PUSH_CBL();
	set_CBL(9);

	set_I0(PCMYIN_PTR);

	i = 288;

	while(i--)
		store_I0P(0);

	PCMYIN_PTR = (int *)get_I0();
	POP_CBL();
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

void Sub3Play(lptr_t sdata)
{
	int step;

	flags = 0;
	bts_ch0_get_ix = sdata;

	Sub3Initial();
	mp_vol = mp_vol & (~0x3F);
	step = 0;

	while(1)
	{
		ClrWatchDog();

		PollingKey();

		KeyShowLED();

		if(F_STOP)
		{
			if(!step)
			{
				SET_TICK();
				step = 1;
			}
			else
			{
				// ramp down

				if(!RampDown())
					break;
			}
		}
		else
		{
			RampUp();
		}

		if(!F_SUBEND)
		{
			if(Subb3_Dec())
			{
				F_SUBEND = 1;
				F_STOP = 1;
			}
		}
		else
		{
			Sub3ZeroFill();
		}
	}

	dsi();
}


// subband3 callback function

__CALLBACK void Sbb_Skipdata(long offset)
{


}



