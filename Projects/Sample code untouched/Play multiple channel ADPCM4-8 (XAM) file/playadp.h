


#ifndef _PLAY_ADPCM_FUNC_
#define _PLAY_ADPCM_FUNC_

#include <adpcm.h>


#ifdef _MSPEECHDSP2_

	#ifdef PRAM_BANK
		#define MAX_ADPCM_CHANNEL	4
	#else
		#define MAX_ADPCM_CHANNEL	2
	#endif

#endif


#ifdef _MSPEECHDSP_

	#ifdef PRAM_BANK
		#define MAX_ADPCM_CHANNEL	4
	#else
		#define MAX_ADPCM_CHANNEL	1
	#endif

#endif


#if defined(_MFDSP_) || defined(_MFDSP2_)

	#ifdef PRAM_BANK
		#define MAX_ADPCM_CHANNEL	6
	#else
		#define MAX_ADPCM_CHANNEL	3
	#endif

#endif



#define MAX_ADPCM_SAMPLE		32


typedef struct _ADPTAB {
	lptr_t adr;
	int FLTP;
	int FLTG;
}ADPTAB;


extern int iADP;

extern const ADPTAB adpdata[];

extern ADP4_8 adpch[MAX_ADPCM_CHANNEL];

import void ADPCM_CHX_Init(void);

extern bool playADPCM(int index);
extern void DoADPCM(void);

#endif



