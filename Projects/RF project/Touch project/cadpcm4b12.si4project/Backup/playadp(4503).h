


#ifndef _PLAY_ADPCM_FUNC_
#define _PLAY_ADPCM_FUNC_

#include <adpcm.h>


#ifdef _MSPEECHDSP2_

	#define MAX_ADPCM_CHANNEL	5

#else

	#define MAX_ADPCM_CHANNEL	8

#endif

#define MAX_ADPCM_SAMPLE		32


typedef struct _ADPTAB {
	lptr_t adr;
	int FLTP;
	int FLTG;
}ADPTAB;


extern int iADP;

extern const ADPTAB adpdata[];

extern ADPSTRU adpch[MAX_ADPCM_CHANNEL];

import void ADPCM_CHX_Init(void);

extern bool playADPCM(int index);
extern void DoADPCM(void);

#endif



