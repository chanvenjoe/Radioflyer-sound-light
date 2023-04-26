

#include <io.h>
#include <stdio.h>
#include <string.h>

#include <pwm.h>
#include <md2tiny.h>
#include "support.h"
#include "keypad.h"


#define KEYMODE_NONE	0
#define KEYMODE_FIRST	1
#define KEYMODE_HOLD	2
#define KEYMODE_RELEASE	3


// ---------------------

code KEYTABLE *keyfunc[MAX_KEY];

int keynowd;
int keyprev;
int keycount;

// ----------------


// ----------------

void KeyPlayADPCM(void)
{
	if(!AdpData[iADP].adr)
		iADP = 0;
	
	playADPCM(iADP++);
}


void KeyNextSong(void)
{
	md2StopSong();
}


// ---------------------


const KEYTABLE Key1Func = {
	KeyPlayADPCM,
	NULL,
	NULL
};

const KEYTABLE Key2Func = {
	KeyNextSong,
	NULL,
	NULL
};

const KEYTABLE Key3Func = {
	NULL,
	NULL,
	NULL
};

const KEYTABLE Key4Func = {
	NULL,
	NULL,
	NULL
};

const KEYTABLE Key5Func = {
	NULL,
	NULL,
	NULL
};


void InitKey(void)
{
	// all PortC are input

	R_IOC_PC = 0;
	B_IOC_PB4 = 0;		// PB4 input
	B_IOC_PA0 = 0;		// PA0 input

	// turn on PC8/PC9/PC10/PC11 pull-down 50K 

	R_IOP_IX = IOP_PCI_PD50K;
	R_IOP_DAT = R_IOP_DAT | (BIT(8) | BIT(9) | BIT(10) | BIT(11));

	// turn on PB4 pull-down 50K

	R_IOP_IX = IOP_PB_PD50K;
	R_IOP_DAT.b4 = 1;

	// turn on PA0 pull-down 50K

	R_IOP_IX = IOP_PA_PD50K;
	R_IOP_DAT.b0 = 1;

	keyfunc[0] = &Key1Func;
	keyfunc[1] = &Key2Func;
	keyfunc[2] = &Key3Func;
	keyfunc[3] = &Key4Func;
	keyfunc[4] = &Key5Func;

	keynowd = 0;
	keyprev = 0;
	keycount = 32;
}


void PollingKey(void)
{
	int keynow, i;
	int bits, bitp;

	keynow = GetKey();

	if(keynowd != keynow)
	{
		keynowd = keynow;
		keycount = 32;
		return;
	}

	if(keycount)
	{
		keycount = keycount - 1;
		return;
	}

	keycount = 32;

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
				if(keyfunc[i]->release)
					keyfunc[i]->release();
			}
			else
			{
				// first
				if(keyfunc[i]->push)
					keyfunc[i]->push();
			}
		}
		else
		{
			if(bitp.b0)
			{
				// hold
				if(keyfunc[i]->hold)
					keyfunc[i]->hold();
			}
		}

		bits >>= 1;
		bitp >>= 1;
	}
}

// ------------------------------------------------






