

// ----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play multiple channel ADPCM4-8 (XAM) file
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

	iADP = 0;
 	B_IOC_PC0 = 1;
	
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

	if(iADP >= 7)
		iADP = 0;

	KeyPlayAdp();
}

void KeyPlayPrev(void)
{
	iADP--;

	if(iADP < 0)
		iADP = 6;

	KeyPlayAdp();
}



const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayPrev, NULL, NULL },
	{ KeyPlayAdp, NULL, NULL },
	{ KeyPlayNext, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};













