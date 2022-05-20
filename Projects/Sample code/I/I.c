
// -----------------------------------
// Tritan Technology Inc.
// Demo code : How do I cross play MD2 and subband2
// -----------------------------------

#include "config.h"

#pragma	__attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include <pwm.h>
#include <md2.h>

#include "global.h"
#include "keypad.h"
#include "led.h"

#include "midiplay.h"
#include "sub3play.h"
#include "support.h"


// data.c

import const int melody[];
import const int Subband2[];


void main(void)
{
	Initial();
	InitKey();
	ClearTickCount();

	CONFIG_LED0();
	CONFIG_LED1();
	LED0_OFF();
	LED1_OFF();

	songidx = -1;
	mp_vol = 0x3F;

	while(1)
	{
		ClrWatchDog();
		Sub3Play((lptr_t)Subband2);
		MidiPlay((lptr_t)melody);
	}
}




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


void KeyNext(void)
{
	F_STOP = 1;
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


void KeyPWM(void)
{
	dac = !dac;

	if(dac)
	{
		EnableAudioDAC();
		DACMuteOff();
	
		DisableAudioPWM();
		PWMMuteOn();
	}
	else
	{
		EnableAudioPWM();
		PWMMuteOff();
	
		DisableAudioDAC();
		DACMuteOn();
	}
}


// ---------------------

const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyFLTG, NULL, NULL },
	{ KeyNext, NULL, NULL },
	{ KeyFilter, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};


