

#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <lptr.h>


#include "data.h"
#include "support.h"


const ADPTable AdpData[] = {
	{ (lptr_t)&ADPCM_CH0_Data, CH0_SampleRate_Value },
	{ (lptr_t)&ADPCM_CH1_Data, CH1_SampleRate_Value },
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
		if(p->adpptr == 0)
		{
			memset((lptr_t)p, 0, sizeof(ADPSTRU));
			p->adpptr = AdpData[index].adr;
			p->FLTP = AdpData[index].FLTP;
			break;			
		}
		p++;
	}
}















