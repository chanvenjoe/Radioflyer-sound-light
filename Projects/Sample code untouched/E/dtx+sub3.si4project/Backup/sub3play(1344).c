


#include <io.h>
#include <lptr.h>
#include <dtx.h>

#include "global.h"
#include "sub3play.h"

#pragma __attribute__("rjmp")


export lptr_t bts_ch0_get_ix;
export int *PCMYIN_PTR, *PCMYOU_PTR, *PCMIN, SampleCh0Rate;
export align(512)  int PCMY[512];


export int SUBFLTI[4], SUBFLTA, SUBFLTP, SUBFLTG;


// ---

void ClearRenderBuf(void)
{
	int i;

	set_I0(PCMY);

	i = 0x0200;

	while(i--)
		store_I0P(0);
}



void Sub3Initial(void)
{
	dsi();

	ClearRenderBuf();

	ResetPASR();

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	R_FLTG = 0;
	R_FLTP = 0x1FFF;
	R_CBL= 0;

	Subb3_Init();

	#ifdef _PWM_64K_
		R_FLTP >>= 1;
	#endif
}


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


void Sub3ZeroFill(void)
{
	int i;

	PUSH_CBL();

	R_CBL = 9;

	set_I0(PCMYIN_PTR);

	i = 288;

	while(i--)
		store_I0P(0);

	PCMYIN_PTR = (int *)get_I0();

	POP_CBL();
}


void Sub3Play(lptr_t sdata)
{
	#ifndef RAMBANK
		dtxStopSong();
	#endif

	bts_ch0_get_ix = sdata;

	Sub3Initial();

	SUBFLTI[0] = 0;
	SUBFLTI[1] = 0;
	SUBFLTI[2] = 0;
	SUBFLTI[3] = 0;
	SUBFLTA = 0;
	SUBFLTP = SampleCh0Rate;
	SUBFLTG = 0x3F;

	EnableInt0();	
	eni();
}



export void Sbb_Ch0GetBts(void) naked
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
	POP_AX();
	POP_P1();
	POP_I1();
}





