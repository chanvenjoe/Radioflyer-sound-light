
// ----------------------------------
// Tritan Technology Inc.
// Demo code : How do I play ADPCM4-12 and subband3 simultaneously
// ----------------------------------

// -- System limitation when play simultaneously --
// -- Using PWM 32K
// -- 1 ADPCM sound with 1 subband3 sound 
// -- ADPCM and Subband3 will exclusive if no PRAM enabled
// --
// -- Button --
// --
// -- _MSPEECHDSP_
// --      - Button -
// --        PC8  - Play Previous
// --        PC9  - Play ADPCM
// --        PC10 - Play Next
// --        PB4  - Play subband3
// --
// -- _MSPEECHDSP2_
// --      - Button -
// --        PA0  - Play Previous
// --        PA1  - Play ADPCM
// --        PA2  - Play Next
// --        PA3  - Play subband3
// --
// -- _MFDSP2_
// --      - Button -
// --        PA4  - Play Previous
// --        PA5  - Play ADPCM
// --        PB7  - Play Next
// --        PB6  - Play subband3


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
	Sub3Initial();

	B_IOC_PC0 = 1;

#ifdef ADPCM_USE_PRAM
	CopyToBank = 1;
#else
	CopyToBank = 0;
#endif

	PLAY = 0;

	EnableInt0();
	eni();

	while(1)
	{
		ClrWatchDog();
		PollingKey();

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
	#ifndef Sbb3_UsePRAM
		PLAY = 0;
	#endif

	playADPCM(iADP);

}

void KeyPlayNext(void)
{
	iADP++;

	if(iADP >= MAX_ADPCM_SOUND)
		iADP = 0;

	KeyPlayAdp();
}

void KeyPlayPrev(void)
{
	iADP--;

	if(iADP < 0)
		iADP = MAX_ADPCM_SOUND - 1;

	KeyPlayAdp();
}


void KeyPlaySubb3(void)
{
	#ifndef Sbb3_UsePRAM
		StopAllADPCM();
	#endif

	PLAY++;

	if(PLAY > 2)
		PLAY = 1;
	
	Sub3Play((PLAY == 1) ? (lptr_t)subb0 : (lptr_t)subb1);
}


const KEYTABLE keyfunc[MAX_KEY] = {
	{ KeyPlayPrev, NULL, NULL },
	{ KeyPlayAdp, NULL, NULL },
	{ KeyPlayNext, NULL, NULL },
	{ KeyPlaySubb3, NULL, NULL },
	{ NULL, NULL, NULL },
};













