

// ----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play multiple channel ADPCM4-12 (XAM) file
// ----------------------------------

#include "config.h"

#pragma __attribute__("rjmp")

#include <io.h>
#include <stdbool.h>
#include <lptr.h>

#include <adpcm.h>

#include "global.h"
#include "keypad.h"
#include "playadp.h"
#include "sub3play.h"


// C variables

int PLAY;

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void main(void)
{
	Initial();
	InitKey();
	ADPCM_CHX_Init();

	B_IOC_PC0 = 1;
	
	CopyToBank = 1;
	PLAY = 0;

	EnableInt0();
	eni();

	while(1)
	{
		ClrWatchDog();
		PollingKey();

		if(WaitPCM_Empty_size() < 0)
			continue;

		if(PLAY)
		{
			if(Subb3_Dec())
			{
				PLAY = 0;
				Sub3ZeroFill();
			}
		}
		else
		{
			Sub3ZeroFill();
		}
	}
}

// ---------------

void KeyPlayAdp(void)
{
	playADPCM(iADP);

}

void KeyPlayNext(void)
{
	iADP++;

	if(iADP >= 9)
		iADP = 0;

	KeyPlayAdp();
}

void KeyPlayPrev(void)
{
	iADP--;

	if(iADP < 0)
		iADP = 8;

	KeyPlayAdp();
}


void KeyPlaySubb3(void)
{
	PLAY = 1;
	Sub3Play((lptr_t)subb0);
}


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayPrev, NULL, NULL },
	{ KeyPlayAdp, NULL, NULL },
	{ KeyPlayNext, NULL, NULL },
	{ KeyPlaySubb3, NULL, NULL },
	{ NULL, NULL, NULL },
};













