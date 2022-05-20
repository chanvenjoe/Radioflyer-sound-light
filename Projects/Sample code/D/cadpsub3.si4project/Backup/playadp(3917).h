


#ifndef _PLAY_ADPCM_FUNC_
#define _PLAY_ADPCM_FUNC_

#include <adpcm.h>

#ifdef PRAM_BANK
	#define MAX_ADPCM_CHANNEL	2
#else
	#define MAX_ADPCM_CHANNEL	1
#endif


#define MAX_ADPCM_SAMPLE		4


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
extern void DoADPCM(void);

#endif



