

#ifndef _ADPCMDECODER_
#define _ADPCMDECODER_

#include <stdbool.h>
#include <lptr.h>

// -=-= ADPCM 4-12

typedef struct _ADPSTRU {
	short PCMData;
	short temp;
	short S1;
	short S2;
	short flag;
	short hdr;
	short scal;
	short adpdat;
	short tempi;
	short playcnt;
	lptr_t adpadr;
	short FLTI[4];
	short FLTA;
	short FLTP;
}ADPSTRU;


import int CopyToBank;
import ADPSTRU *ADPCM_Tmpi;

extern bool SDSP_ADPCM_4Bit_SingleCH_decoder(void);


// -=-= ADPCM 4-8

typedef struct _ADP4_8 {
	long adpadr;
	short hdr;
	short adpdat;
	short scal;
	short S;
	short PCMData;
	short S2;
	short count;
	short FLTI[4];
	short FLTA;
	short FLTP;
}ADP4_8;

import ADP4_8 *ADP4_8_DPTR;

import int ADP4_8_Init(void);
extern bool ADP4_8_Decoder(void);


#endif



