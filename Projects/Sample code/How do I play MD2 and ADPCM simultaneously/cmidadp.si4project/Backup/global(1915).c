

#include <io.h>

#include <pwm.h>
#include <md2tiny.h>

#include "global.h"
#include "support.h"

int songidx;
export int iSync, uSync;


void ClearSound(void)
{
	set_FLTP(0x3FFF);

	set_DACL(0);
	set_DACL(0);
	set_DACL(0);
	set_DACL(0);

	// clear filter buffer

	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);

	// reset FIFO state machine

	get_FLTO();
}


void InitSound(void)
{
	ClearSound();

	set_FLTG(0x3F);

#ifdef USE_PWM
	EnableAudioPWM();
	PWMMuteOff();

	DisableAudioDAC();
	DACMuteOn();
#else
	EnableAudioDAC();
	DACMuteOff();

	DisableAudioPWM();
	PWMMuteOn();
#endif

	outp(0x19, 0x4100);

	EnableWideBandFilter();
}


void SetupIO(void)
{
	// PortA 0, 1, 2, 3 as output

	set_IOC_PA(BIT(3) | BIT(2) | BIT(1) | BIT(0));
	set_IOC_PB(0xFFFF);

	set_PortA(0);
	set_PortB(0xFFFF);
}


void Initial(void)
{
 	songidx = -1;
	iADP = 0;
	iSync = 0x5555;
	uSync = 0xAAAA;

	InitSound();
	SetupIO();
}


void CheckSongLimit(void)
{
	if(songidx < 0)
	{
		songidx = mp_songcnt - 1;
	}
	else
	{
		if(songidx >= mp_songcnt)
		{
			songidx = 0;
		}
	}
}





