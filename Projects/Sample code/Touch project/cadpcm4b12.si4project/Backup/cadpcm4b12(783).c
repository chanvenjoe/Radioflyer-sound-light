

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

	ADPCM_Tmpi = adpch;

	while(1)
	{
		ClrWatchDog();
		PollingKey();



		
		
	}
}



const KEYTABLE keyfunc[MAX_KEY] = {
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
	{ NULL, NULL, NULL },
};













