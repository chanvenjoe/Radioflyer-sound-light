


#ifndef _SUBCC_LIBDTX_
#define _SUBCC_LIBDTX_

#include <lptr.h>
#include <stdbool.h>


typedef struct _dtxtone {
	long ENVADR;
	long ENVSTA;
	int TONE;
	int TONECNT;
	int FLTG;
	int MOD;
}DTXTONE;


// variable

import int dtxfltg;
import int dtxsongcnt;

import DTXTONE dtxtonech[];
import long dtxRender[];

// functions from assembly

import void dtxInitialize(void);
import void dtxInitParameters(void);
import void dtxReadTune(void);
import void dtxStopSong(void);
import void dtxStartBGServe(void);
import void dtxStopBGServe(void);


// functions from c-shell

extern bool dtxDoEvent(void);
extern bool dtxFindToneEntry(lptr_t flashadr)		rpdax;
extern bool dtxPlaySong(short index)				rpdax;
extern bool dtxCheckSongEnd(void);


#endif



