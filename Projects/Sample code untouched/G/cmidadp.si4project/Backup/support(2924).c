

#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <lptr.h>


#include "data.h"
#include "support.h"


const ADPTable AdpData[] = {
	{ (lptr_t)&ADPCM_CH0_Data, ADPCM_SampleRate_8K },
	{ (lptr_t)&ADPCM_CH1_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH2_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH3_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH4_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH5_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH6_Data, ADPCM_SampleRate_8K },
	{ (lptr_t)&ADPCM_CH7_Data, ADPCM_SampleRate_16K },
	{ (lptr_t)&ADPCM_CH8_Data, ADPCM_SampleRate_16K },
	{ 0, 0 },
};


ADPSTRU adpch[MAX_ADPCM_CHANNEL];

int iADP;

void playADPCM(int index)
{
	int i;
	ADPSTRU *p;

	p = adpch;

	for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
	{
		if(p->adpadr == 0)
		{
			memset((lptr_t)p, 0, sizeof(ADPSTRU));
			p->adpadr = AdpData[index].adr;
			p->FLTP = AdpData[index].FLTP;
			break;			
		}
		p++;
	}
}















