

#include <io.h>
#include <stdio.h>
#include <string.h>

#include <md2.h>
#include "global.h"
#include "support.h"
#include "keypad.h"

#pragma __attribute__("rjmp")

#define MAX_KEY_DEBOUNCE	512


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

void KeyFLTG(void)
{
	if(mp_vol & 0x0080)
	{
		// filter is off
		mp_vol &= 0x003F;
	}
	else
	{
		// filter is on
		mp_vol |= 0x00C0;
	}

	R_FLTG = mp_vol;
}


void KeyPlay(void)
{
	int i;

	if(STOP)
	{
		STOP = 0;
		songidx--;

		CheckSongLimit();
	}
	else
	{
		md2StopSong();
		STOP = 1;
	}
}


void KeyRepeat(void)
{
	md2StopSong();
	md2PlaySong(songidx);
	STOP = 0;
}


void KeyNext(void)
{
	md2StopSong();
	songidx++;
	CheckSongLimit();
	md2PlaySong(songidx);
	STOP = 0;
}


void KeyPrevK(void)
{
	md2StopSong();
	songidx--;
	CheckSongLimit();
	md2PlaySong(songidx);
	STOP = 0;
}


// ---------------------


const KEYTABLE Key1Func = {
	KeyPlay,
	NULL,
	NULL
};

const KEYTABLE Key2Func = {
	KeyRepeat,
	NULL,
	NULL
};

const KEYTABLE Key3Func = {
	KeyNext,
	NULL,
	NULL
};

const KEYTABLE Key4Func = {
	KeyPrevK,
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

	keyfunc[0] = &Key1Func;
	keyfunc[1] = &Key2Func;
	keyfunc[2] = &Key3Func;
	keyfunc[3] = &Key4Func;
	keyfunc[4] = &Key5Func;

	keynowd = 0;
	keyprev = 0;
	keycount = MAX_KEY_DEBOUNCE;
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






