

#ifndef _SUBBAND3_PLAYER_
#define _SUBBAND3_PLAYER_



#ifdef _MSPEECHDSP_

	import void SDSP_Sbb3_Ch0InitV03(void);
	#define Subb3_Init		SDSP_Sbb3_Ch0InitV03

#else

	import void Sbb3_Ch0InitV03(void);
	#define Subb3_Init		Sbb3_Ch0InitV03

#endif


import int Subb3_Dec(void);


extern void Sub3Play(lptr_t sdata);


#endif


