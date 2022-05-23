


#include <io.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <adpcm.h>
#include <as.h>

#include "global.h"
#include "playadp.h"

#pragma __attribute__("rjmp")

int iADP;

ADP4_8 adpch[MAX_ADPCM_CHANNEL];
int adpFLTG[MAX_ADPCM_CHANNEL];


bool playADPCM(int index)
{
	int i;
	ADP4_8 *p;
	code ADPTAB *q;

	p = adpch;

	for(i = 0; i < MAX_ADPCM_CHANNEL; i++)
	{
		if(!p->adpadr)
		{
			memset((lptr_t)p, 0, sizeof(ADP4_8));
			q = &adpdata[index];
			p->adpadr = q->adr << 1;		// byte address
			p->FLTP = q->FLTP;
			adpFLTG[i] = q->FLTG;
			return true;
		}
		p++;
	}

	return false;
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

	set_P0L(ADP4_8_DPTR->adpadr >> 1);

	if((short)(ADP4_8_DPTR->adpadr++) & 0x01)
	{
		vXCHG(read_P0());
	}
	else
	{
		read_P0();
	}

	POP_P0HH();
	LoadAR(asintax() & 0x00FF);
	POP_P0();
	POP_I1();
	POP_DX();
	POP_CX();
	POP_BX();
	POP_AX();
}



// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

static void ClearAudioBuffer(void)	fast
{
	int i;

	set_I0(inbuf);
	i = sizeof(PCMY) / 2;

	while(i)
	{
		store_I0P(0);
		i--;
	}
}


static void DecodeChannel(int vol)	fast
{
	long *p;
	int i;

	if(ADP4_8_DPTR->adpadr)
	{
		// restore filter FIFO

		set_I0(ADP4_8_DPTR->FLTI);
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTI = read_I0P();
		R_FLTA = read_I0P();
		R_FLTP = read_I0P();
		R_FLTG = vol;
		R_FLTO;				// reset fifo

		p = (long *)inbuf;

		i = MAX_ADPCM_SAMPLE;

		while(i--)
		{
			if(!B_FA)
			{
				if(!ADP4_8_Decoder())
				{
					ADP4_8_DPTR->adpadr = 0;
					return;
				}
				R_FLTI = vXCHG(ADP4_8_DPTR->PCMData);
			}

			// mix sample

			*(p++) += (long)R_FLTO;
		}

		// preserve filter FIFO

		set_I0(ADP4_8_DPTR->FLTI);

		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTI);
		store_I0P(R_FLTA);
	}
}


static void Satv(void)	fast
{
	int i;

	set_I0(inbuf);
	R_SATV;

	i = MAX_ADPCM_SAMPLE;

	while(i--)
	{
		R_SATV = read_I0P();
		R_SATV = read_I0M();
		store_I0P2(R_SATV);
	}

	inbuf.b6 = ~inbuf.b6;
}


// -=-=

void DoADPCM(void)
{
	int i;
	int *p;

	// wait sync

	if(!((inbuf ^ outbuf) & BIT(6)))
		return;

	// clear audio buffer

	B_PORTC0 = 1;

	ClearAudioBuffer();

	p = adpFLTG;
	ADP4_8_DPTR = adpch;

	i = MAX_ADPCM_CHANNEL;

	while(i--)
	{
		DecodeChannel(*(p++));
		ADP4_8_DPTR++;
	}

	Satv();
	B_PORTC0 = 0;
}
























