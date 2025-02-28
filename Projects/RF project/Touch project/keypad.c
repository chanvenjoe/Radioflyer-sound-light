

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

	// all PortA are input

	B_IOC_PA0 = 0;		// PA0 input
	B_IOC_PA1 = 0;		// PA1 input
	B_IOC_PA2 = 0;		// PA2 input
	
	B_IOC_PA3 = 0;
	B_IOC_PB0 = 0;		// As touch port
	B_IOC_PC0 = 0;
	

	B_IOC_PB2 = 1;


	//Turn on PortA 50K pull down for pa 0 1 2 

	R_IOP_IX = IOP_PA_PD50K;
	R_IOP_DAT = R_IOP_DAT | (BIT(0) | BIT(1) | BIT(2));
	

#endif


#ifdef _MFDSP2_
	WHAT THE
	B_IOC_PA4 = 0;		// PA4 input
	B_IOC_PA5 = 0;		// PA5 input
	B_IOC_PB7 = 0;		// PB7 input
	B_IOC_PB6 = 0;		// PB6 input

	// enable PA4, PA5, PB6, PB7 pull-down

	R_IOP_IX = IOP_PA_PDEN;
	R_IOP_DAT = R_IOP_DAT | (BIT(4) | BIT(5));

	R_IOP_IX = IOP_PB_PDEN;
	R_IOP_DAT = R_IOP_DAT | (BIT(6) | BIT(7));

	// pull-down mos R 100K

	R_IOP_IX = IOP_PA_PDSEL;
	R_IOP_DAT = R_IOP_DAT & (~(BIT(4) | BIT(5)));

	R_IOP_IX = IOP_PB_PDSEL;
	R_IOP_DAT = R_IOP_DAT | (~(BIT(6) | BIT(7)));

#endif


	keynowd = 0;
	keyprev = 0;
	keycount = MAX_KEY_DEBOUNCE;
}


static int GetKey(void) near
{
	int btn;

	#ifdef _MSPEECHDSP_
		btn = vXCHG(R_PORTCI) & 0x07;
		btn.b3 = B_PORTB4;
		btn.b4 = B_PORTA0;
	#endif

	#ifdef _MSPEECHDSP2_
		btn = R_PORTA & 0x0F;//Cur status of PA[3:0]
	#endif

	#ifdef _MFDSP2_

		// 0    1    2    3
		// PA4, PA5, PB7, PB6

		btn = B_PORTA4;
		btn.b1 = B_PORTA5;
		btn.b2 = B_PORTB7;
		btn.b3 = B_PORTB6;

	#endif

	return btn;
}


void PollingKey(void)
{
	int keynow, i;
	int bits, bitp;
	code KEYTABLE  *pkey;// store at ROM

	keynow = GetKey();

	if(keynowd != keynow)
	{
		keynowd = keynow;
		keycount = MAX_KEY_DEBOUNCE;//512
		return;
	}

	if(keycount)
	{
		keycount = keycount - 1;
		return;
	}

	pkey = keyfunc;//pkey is a keytable pointer->keytable keyfun[]
	keycount = MAX_KEY_DEBOUNCE;

	bits = keynowd ^ keyprev;// dif 1
	bitp = keyprev;
	keyprev = keynowd;

	i = MAX_KEY;//5

	while(i--)
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






