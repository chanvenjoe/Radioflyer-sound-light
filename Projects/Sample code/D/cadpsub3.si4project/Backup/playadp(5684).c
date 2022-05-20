


#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <adpcm.h>

#include "global.h"
#include "playadp.h"

#pragma __attribute__("rjmp")


int iADP;

ADPSTRU adpch[MAX_ADPCM_CHANNEL];
int adpFLTG[MAX_ADPCM_CHANNEL];

export long ADPCMY[MAX_ADPCM_SAMPLE];


bool playADPCM(int index)
{
	int i;
	ADPSTRU *p;
	code ADPTAB *q;

	p = adpch;

	for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
	{
		if(!p->adpadr)
		{
			memset((lptr_t)p, 0, sizeof(ADPSTRU));
			q = &adpdata[index];
			p->adpadr = q->adr;
			p->FLTP = q->FLTP;
			adpFLTG[i] = q->FLTG;
			return true;
		}
		p++;
	}

	return false;
}


export void ADPCM_CHX_Init(void)
{
	iADP = 0;
	memset((lptr_t)adpch, 0, sizeof(adpch));
}


export void ADPCM_CHXGetBts(void)
{
	PUSH_AX();
	PUSH_BX();
	PUSH_CX();
	PUSH_DX();
	PUSH_I1();
	PUSH_P0();
	PUSH_P0HH();
	PUSH_CBL();

	R_CBL = 0;
	set_P0L(ADPCM_Tmpi->adpadr++);
	read_P0();	// read PM to AX

	POP_CBL();
	POP_P0HH();
	POP_P0();
	POP_I1();
	POP_DX();
	POP_CX();
	POP_BX();
	POP_AX();
}



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

static void ClearAudioBuffer(void)	// fast
{
	int i;

	set_I0(ADPCMY);
	i = sizeof(ADPCMY);

	while(i)
	{
		store_I0P(0);
		i--;
	}
}


void DecodeChannel(int vol)		fast
{
	long *p;
	int i;

	if(ADPCM_Tmpi->adpadr)
	{
		// restore filter FIFO

		set_I0(ADPCM_Tmpi->FLTI);
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTA = read_I0P();
		R_FLTP = read_I0P();
		R_FLTG = vol;
		R_FLTO;				// reset fifo

		p = ADPCMY;

		i = MAX_ADPCM_SAMPLE;

		while(i--)
		{
			if(!B_FA)
			{
				if(!SDSP_ADPCM_4Bit_SingleCH_decoder())
				{
					ADPCM_Tmpi->adpadr = 0;
					return;
				}
				R_FLTI = ADPCM_Tmpi->PCMData;
			}

			// mix sample

			*(p++) += (long)R_FLTO;
		}

		// preserve filter FIFO

		set_I0(ADPCM_Tmpi->FLTI);

		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTA);
	}
}


static void Satv(void)	//fast
{
	int i;

	set_I0(ADPCMY);
	R_SATV;

	i = MAX_ADPCM_SAMPLE;

	while(i--)
	{
		R_SATV = read_I0P();
		R_SATV = read_I0M();
		store_I0P2(R_SATV);
	}

//	inbuf.b6 = ~inbuf.b6;
}


// -=-=

void DoADPCM(void)
{
	int i;
	int *p;

	// wait sync

//	if(!((inbuf ^ outbuf) & BIT(6)))
//		return;

	// clear audio buffer

	B_PORTC0 = 1;

	ClearAudioBuffer();

	p = adpFLTG;
	ADPCM_Tmpi = adpch;

	i = MAX_ADPCM_CHANNEL;

	while(i--)
	{
		DecodeChannel(*(p++));
		ADPCM_Tmpi++;
	}

	Satv();
	B_PORTC0 = 0;
}
























