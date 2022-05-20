

#ifndef _SUB3PLAY_SYS_
#define _SUB3PLAY_SYS_


#ifdef _MSPEECHDSP_

	import void SDSP_Sbb3_Ch0InitV03(void);
	#define Subb3_Init		SDSP_Sbb3_Ch0InitV03

#else

	import void Sbb3_Ch0InitV03(void);
	#define Subb3_Init		Sbb3_Ch0InitV03

#endif

import lptr_t bts_ch0_get_ix;
import int *PCMYIN_PTR, *PCMYOU_PTR, *PCMIN, SampleCh0Rate;
import int PCMY[512];
import int SUBFLTI[4], SUBFLTA, SUBFLTP, SUBFLTG;


import int Subb3_Dec(void);

extern int WaitPCM_Empty_size(void);
extern void Sub3ZeroFill(void);
extern void Sub3Play(lptr_t sdata);


#endif



