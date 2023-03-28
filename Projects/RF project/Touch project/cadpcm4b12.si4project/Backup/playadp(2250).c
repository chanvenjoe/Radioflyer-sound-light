


#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <adpcm.h>

#include "global.h"
#include "playadp.h"

#pragma __attribute__("rjmp")

int iADP;
export fast int inbuf, outbuf;
export align(64) int PCMY[64];

ADPSTRU adpch[MAX_ADPCM_CHANNEL];
int adpFLTG[MAX_ADPCM_CHANNEL];


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


export void ADPCM_CHX_Init(void)	naked
{

}


export void ADPCM_CHXGetBts(void)	naked
{


}



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

void DecodeChannel(int vol)	near
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

		p = (long *)inbuf;

		for(i = 0; i < MAX_ADPCM_SAMPLE; i++)
		{
			if(!FA())
			{
				if(!SDSP_ADPCM_4Bit_SingleCH_decoder())
				{
					ADPCM_Tmpi->adpadr = 0;
					return;
				}
				R_FLTI = ADPCM_Tmpi->PCMData;
			}

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


void DoADPCM(void)
{
	int i;
	int *p;

	// wait sync

	if(!((inbuf ^ outbuf) & BIT(5)))
		return;

	// clear audio buffer

	memset((lptr_t)((int *)inbuf), 0, sizeof(PCMY) / 2);
	p = adpFLTG;
	ADPCM_Tmpi = adpch;

	for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
	{
		DecodeChannel(*(p++));
		ADPCM_Tmpi++;
	}

	set_I0(inbuf);
	R_SATV;

	for(i = 0; i < MAX_ADPCM_SAMPLE; i++)
	{
		R_SATV = read_I0P();
		R_SATV = read_I0M();
		store_I0P2(R_SATV);
	}
}
























