
#include <io.h>
#include <pwm.h>
#include <string.h>

#include "global.h"
#include "playadp.h"
#include "sub3play.h"

#pragma __attribute__("rjmp")


void PWM_Entry(void) interrupt(0)
{
	long *p, sample;
	int i;

	ClrIntFlag0();
	PUSH_CBL();
	PUSH_I0();
	PUSH_P0();
	PUSH_P0HH();

	R_CBL = 0;
	set_I0(ADPCMY);
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();

	DoADPCM();

	set_I0(SUBFLTI);
	R_FLTI = read_I0P();
	R_FLTI = read_I0P();
	R_FLTI = read_I0P();
	R_FLTI = read_I0P();
	R_FLTA = read_I0P();
	R_FLTP = read_I0P();
	R_FLTG = read_I0P();
	R_FLTO;

	R_CBL = 9;

	p = ADPCMY;
	i = MAX_ADPCM_SAMPLE;
	set_I0(PCMYOU_PTR);

	while(--i)
	{
		if(!B_FA)
			R_FLTI = read_I0P();
		*(p) += (long)R_FLTO;

		if(*p > 32767)
			*p = 32767;
		else
			if(*p < -32767)
				*p = -32767;
		p++;
	}

	PCMYOU_PTR = (int *)get_I0();

	R_CBL = 0;
	
	set_I0(SUBFLTI);

	store_I0P(R_FLTI);
	store_I0P(R_FLTI);
	store_I0P(R_FLTI);
	store_I0P(R_FLTI);
	store_I0P(R_FLTA);

	POP_P0HH();
	POP_P0();
	POP_I0();
	POP_CBL();
}


// ----------------------

static void InitSound(void) near
{
	// clear PWM buffer

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

	R_FLTG = 0x3F;

	// reset FIFO state machine

	R_FLTO;

	EnableAudioPWM();
	EnableWideBandFilter();
	DACMuteOff();
}


static void SetupIO(void) near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = (int)0xFFFF;
}


void Initial(void)
{
	iADP = -1;
//	inbuf = (intptr_t)ADPCMY;
//	outbuf = (intptr_t)ADPCMY;

	InitSound();
	SetupIO();
}









