
#include <io.h>
#include <pwm.h>
#include <string.h>

#include "global.h"
#include "playadp.h"

#pragma __attribute__("rjmp")


export fast int inbuf, outbuf;
export align(MAX_PCM_BUF) int PCMY[MAX_PCM_BUF];


void PWM_Entry(void) naked interrupt(0)
{
	ClrIntFlag0();

	PUSH_AX();//General Purpose Register
	PUSH_I0();//Dat Add Gen:RM addressing only
	PUSH_CBL();//Circular Buffer Length

	R_CBL = 7;

	set_I0(outbuf);
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();
	R_DACL = read_I0P2();

	outbuf = get_I0();

	POP_CBL();
	POP_I0();
	POP_AX();
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
	R_PORTB = 0;
}


void Initial(void)
{
	iADP = -1;
	inbuf = (intptr_t)PCMY;
	outbuf = (intptr_t)PCMY;

	InitSound();
	SetupIO();
}









