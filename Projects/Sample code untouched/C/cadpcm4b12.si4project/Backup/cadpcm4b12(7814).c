

// ----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play ADPCM4-12 (XAM) file
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


// C variables


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void main(void)
{
	Initial();
	InitKey();
	ADPCM_CHX_Init();

	B_IOC_PC0 = 1;
	
	CopyToBank = 1;

	EnableInt0();
	eni();

	while(1)
	{
		ClrWatchDog();
		PollingKey();
		DoADPCM();
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



const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayPrev, NULL, NULL },
	{ KeyPlayAdp, NULL, NULL },
	{ KeyPlayNext, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};













