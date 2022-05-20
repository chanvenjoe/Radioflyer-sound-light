


#include <io.h>
#include <lptr.h>
#include <as.h>

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
	ClearRenderBuf();

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;
}


void Sub3Startup(void)
{
	dsi();

	ClearRenderBuf();

	ResetPASR();

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	R_CBL= 0;

	Subb3_Init();

	#ifdef _PWM_64K_
		R_FLTP >>= 1;
	#endif
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
	bts_ch0_get_ix = sdata;

	Sub3Startup();

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


// subband3 callback function

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


// subband3 callback function

__CALLBACK void Sbb_Skipdata(long offset)
{


}


