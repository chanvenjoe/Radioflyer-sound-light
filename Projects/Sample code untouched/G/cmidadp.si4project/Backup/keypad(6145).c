

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


void InitKey(void)
{
	// all PortC are input

	set_IOC_PC(0);

	// turn on PC8/PC9/PC10/PC11 pull-down 50K 

	set_IOP_IX(IOP_PCI_PD50K);
	set_IOP_DAT(inp(IOP_DAT) | (BIT(8) | BIT(9) | BIT(10) | BIT(11)));

	keyfunc[0] = &Key1Func;
	keyfunc[1] = &Key2Func;
	keyfunc[2] = &Key3Func;
	keyfunc[3] = &Key4Func;

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
		if(bits & 0x01)
		{
			// key changed

			if(bitp & 0x01)
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
			if(bitp & 0x01)
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






