


#ifndef _2G_MELODY_
#define _2G_MELODY_

#include <stdbool.h>
#include <pwm.h>

// self-check setting for old project compatible

#if (!defined(MD2_USE_PROM) && !defined(MD2_USE_SPI))
	#pragma comment(CONST, "MD2_USE_PROM")
#endif


#if defined(MD2_USE_PROM) && !defined(MD2_WORD_ADR)
	#pragma comment(CONST, "MD2_WORD_ADR")
#endif


#ifndef RAMBANK

	#ifdef _MSPEECHDSP_
		#pragma comment(CONST, "RAMBANK = 7")
	#endif
		
	#ifdef _MFDSP_
		#pragma comment(CONST, "RAMBANK = 2")
	#endif

	#ifdef _MSPEECHDSP2_
		#pragma comment(CONST, "RAMBANK = 15")
	#endif

#endif


#ifndef MD2_PRAM_START_BASE
	#pragma comment(CONST, "MD2_PRAM_START_BASE = 0x0000")
#endif


typedef struct _md2Channel {
	long insloop;
	long insadr;
	short FLTA;
	short FLTP;
	short FLTG;
	short ReleaseRate;
	short FLTI[4];

	struct {
		short VOL;
		short lpAttack;
		short sAttack;
		short lpDecay;
		short sDecay;
		short lpSustain;
		short sSustain;
	}ADSR;

	struct {
		short HD;
		short S0;
		short S1;
		short CNT;
		short BUF;
	}TASPAD;

	short skip;
	short skipre;
	short lvol;
	short rvol;
	short midich;
} md2Channel;



typedef struct _md2play {
	md2Channel ch[20];
}md2play;


// import system variable

import md2play mp;
import unsigned short mp_baseadr_l, mp_baseadr_h;
import short mp_songcnt;
import short mp_tinsbank;
import short mp_occupyopr;
import short mp_inbuf;
import short mp_outbuf;
import short mp_vol;
import short mp_tempo;

import long mp_kmapbase;
import short mp_flags;

import long mp_note;
import long mp_PlayChannel;
import long mp_ReleaseCh;
import long mp_mchmask;
import short mp_okmask;
import short mp_lop;
import short mp_ctlev;
import short mp_pitch;

// initialize melody system
import void md2Initialize(void);
import void md2Initilize(void);			// for backward compatible only

// return true if song is stop playing
extern bool md2ChkSongEnd(void);

// do melody system routine, call this in main loop
extern bool md2DoRoutine(void);

// play selected song (iSong)
extern bool md2PlaySong(int iSong)			rpdax;

// play selected song (with rhythm loop setting)
extern bool md2PlayRhythmLoop(int iSong)	rpdax;

// stop playing song
import void md2StopSong(void);

// reset melody system parameter
import void md2InitParameters(void);

// start melody background serve (PWM interrupt enable)
import void md2StartBGServe(void);

// stop melody background serve (PWM interrupt disable)
import void md2StopBGServe(void);

// mount md2 data in melody system
extern bool md2FindMidiEntry(long lpadr)	rpdax;



extern bool md2PlayNote(int note, int vel);

extern bool md2PlayPercNote(int note, int vel);

extern void md2ReleaseNote(int note, int rr);

extern void md2ReleasePercNote(int note, int rr);

extern bool md2FindNextOkon(void);

import void md2StartOkon(void);
import void md2LeaveOkon(void);

extern void md2PlayOkon(int vel)			rpdax;
extern void md2PlayOkonAccomp(int vel)		rpdax;
extern void md2ReleaseOkon(int rr)			rpdax;
extern void md2LoopToSong(int iSong)		rpdax;



#endif

