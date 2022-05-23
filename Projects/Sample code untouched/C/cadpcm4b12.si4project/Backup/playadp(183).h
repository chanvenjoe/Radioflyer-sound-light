


#ifndef _PLAY_ADPCM_FUNC_
#define _PLAY_ADPCM_FUNC_

#include <adpcm.h>


#ifdef _MSPEECHDSP2_

	#define MAX_ADPCM_CHANNEL	5

#else

	#define MAX_ADPCM_CHANNEL	8

#endif

#define MAX_ADPCM_SAMPLE		16


typedef struct _ADPTAB {
	lptr_t adr;
	int FLTP;
	int FLTG;
}ADPTAB;


extern int iADP;
import int inbuf, outbuf;
import int PCMY[64];


extern const ADPTAB adpdata[];

extern ADPSTRU adpch[MAX_ADPCM_CHANNEL];


#endif



