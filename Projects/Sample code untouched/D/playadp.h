


#ifndef _PLAY_ADPCM_FUNC_
#define _PLAY_ADPCM_FUNC_

#include <adpcm.h>

#define MAX_ADPCM_CHANNEL	1

#define MAX_ADPCM_SAMPLE	4

#if _OPT_PROMSize_ >= 0x00020000
	#define MAX_ADPCM_SOUND		9
#else
	#define MAX_ADPCM_SOUND		6
#endif



typedef struct _ADPTAB {
	lptr_t adr;
	int FLTP;
	int FLTG;
}ADPTAB;


extern int iADP;
import long ADPCMY[MAX_ADPCM_SAMPLE];
extern ADPSTRU adpch[MAX_ADPCM_CHANNEL];

extern const ADPTAB adpdata[];

import void ADPCM_CHX_Init(void);

extern bool playADPCM(int index);
import void DoADPCM(void);

extern void StopAllADPCM(void);


#endif



