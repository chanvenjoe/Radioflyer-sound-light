

#ifndef _SUPPORT_FUNCTIONS_
#define _SUPPORT_FUNCTIONS_

#include "adpcm.h"

#define MAX_ADPCM_CHANNEL		2

typedef struct _ADPTable {
	lptr_t adr;
	int FLTP;
}ADPTable;


extern int iADP;

extern ADPSTRU adpch[MAX_ADPCM_CHANNEL];

extern const ADPTable AdpData[];

// in support.asm

import int GetKey(void);

import void Do_Satv(void);
import void ClearAudioBuffer(void);
import void DecodeChannel(void);

import int SyncNow(void);
import void uSyncNext(void);

extern void playADPCM(int index);


#endif



