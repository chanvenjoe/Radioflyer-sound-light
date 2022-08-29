

#include <io.h>
#include <stdio.h>
#include <string.h>

#include "global.h"
#include "keypad.h"

#pragma __attribute__("rjmp")

#define MAX_KEY_DEBOUNCE	512


#define KEYMODE_NONE	0
#define KEYMODE_FIRST	1
#define KEYMODE_HOLD	2
#define KEYMODE_RELEASE	3


// ---------------------

static int keynowd;
static int keyprev;
static int keycount;

// ----------------


// ----------------


void InitKey(void)
{

#ifdef _MSPEECHDSP_

	// all PortC are input

	B_IOC_PC8 = 0;
	B_IOC_PC9 = 0;
	B_IOC_PC10 = 0;
	B_IOC_PC11 = 0;
	B_IOC_PB4 = 0;		// PB4 input
	B_IOC_PA0 = 0;		// PA0 input

	// turn on PC8/PC9/PC10/PC11 pull-down 50K

	R_IOP_IX = IOP_PCI_PD50K;
	R_IOP_DAT = R_IOP_DAT | (BIT(8) | BIT(9) | BIT(10) | BIT(11));

	// turn on PB4 pull-down 50K

	R_IOP_IX = IOP_PB_PD50K;
	R_IOP_DAT = R_IOP_DAT | BIT(4);

	// turn on PA0 pull-down 50K

	R_IOP_IX = IOP_PA_PD50K;
	R_IOP_DAT = R_IOP_DAT | BIT(0);

#endif


#ifdef _MSPEECHDSP2_

	// all PortC are input

	B_IOC_PA0 = 0;		// PA0 input
	B_IOC_PA1 = 0;		// PA1 input
	B_IOC_PA2 = 0;		// PA2 input
	B_IOC_PA3 = 0;		// PA3 input

	// turn on PC8/PC9/PC10/PC11 pull-down 50K

	R_IOP_IX = IOP_PA_PD50K;
	R_IOP_DAT = R_IOP_DAT | (BIT(0) | BIT(1) | BIT(2) | BIT(3));

#endif

	keynowd = 0;
	keyprev = 0;
	keycount = MAX_KEY_DEBOUNCE;
}


int GetKey(void)
{
	int btn;

	#ifdef _MSPEECHDSP_
		btn = vXCHG(R_PORTCI) & 0x07;
		btn.b3 = B_PORTB4;
		btn.b4 = B_PORTA0;
	#endif

	#ifdef _MSPEECHDSP2_
		btn = R_PORTA & 0x0F;
	#endif

	return btn;
}


void PollingKey(void)
{
	int keynow, i;
	int bits, bitp;
	code KEYTABLE *pkey;

	keynow = GetKey();

	if(keynowd != keynow)
	{
		keynowd = keynow;
		keycount = MAX_KEY_DEBOUNCE;
		return;
	}

	if(keycount)
	{
		keycount = keycount - 1;
		return;
	}

	pkey = keyfunc;
	keycount = MAX_KEY_DEBOUNCE;

	bits = keynowd ^ keyprev;
	bitp = keyprev;
	keyprev = keynowd;

	for(i = 0; i < MAX_KEY; i++)
	{
		if(bits.b0)
		{
			// key changed

			if(bitp.b0)
			{
				// release
				if(pkey->release)
					pkey->release();
			}
			else
			{
				// first
				if(pkey->push)
					pkey->push();
			}
		}
		else
		{
			if(bitp.b0)
			{
				// hold
				if(pkey->hold)
					pkey->hold();
			}
		}

		bits >>= 1;
		bitp >>= 1;
		pkey++;
	}
}

// ------------------------------------------------






