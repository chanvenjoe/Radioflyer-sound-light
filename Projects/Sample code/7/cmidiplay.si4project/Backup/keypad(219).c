

#include <io.h>
#include <stdio.h>
#include <string.h>

#include <md2.h>
#include "global.h"
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

	if(flags.STOP)
	{
		flags.STOP = 0;
		songidx--;
		
		CheckSongLimit();

		timepass = 0;

		// let main loop do md2PlaySong()
	}
	else
	{
		if(timepass == 0)
		{
			// for STOP countdown
			timepass = 0x1C00;
		}
		else
		{
			// next song
			md2StopSong();
			timepass = 0;
		}
	}
}


void KeyFast(void)
{
	if(!md2ChkSongEnd())
	{
		if(fastcnt >= 256)
		{
			timepass = 0;
			mp_tempo = 0x2000;	// speed = 1 / 0.5;
		}
		else
		{
			fastcnt++;
		}
	}
}


void KeyFastEnd(void)
{
	if(mp_tempo != 0x4000)
		mp_tempo = 0x4000;

	fastcnt = 0;
}


void KeyFilter(void)
{
	if(isWideBandFilterOn())
	{
		DisableWideBandFilter();
	}
	else
	{
		EnableWideBandFilter();
	}
}



// ---------------------


const KEYTABLE Key1Func = {
	KeyFLTG,
	NULL,
	NULL
};

const KEYTABLE Key2Func = {
	KeyPlay,
	KeyFast,
	KeyFastEnd
};

const KEYTABLE Key3Func = {
	KeyFilter,
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
	R_IOP_DAT.b4 = 1;

	// turn on PA0 pull-down 50K

	R_IOP_IX = IOP_PA_PD50K;
	R_IOP_DAT.b0 = 1;

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






