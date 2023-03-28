

#ifndef _SUPPORT_FUNCTIONS_
#define _SUPPORT_FUNCTIONS_

#include <adpcm.h>

#define MAX_ADPCM_CHANNEL		3

typedef struct _ADPTable {
	lptr_t adr;
	int FLTP;
}ADPTable;


extern int iADP;

extern ADPSTRU adpch[MAX_ADPCM_CHANNEL];

extern const ADPTable AdpData[];

// in support.asm

import int GetKey(void);

import void MixAll(void);
import void ClearAudioBuffer(void);
import void DecodeChannel(void);

import int SyncNow(void);

extern void playADPCM(int index);


#endif



