

#ifndef _RECORD_SUBBAND_LITE_
#define _RECORD_SUBBAND_LITE_

#include <stdbool.h>
#include <pwm.h>
#include <lptr.h>


// Decode noice 0 no noice

#if !defined(NOISE_LEVEL)
	#pragma comment(CONST, "NOISE_LEVEL = 0")
#endif


// 1(Variable bit rate to improve sound quality) , 0(Fixed bit rate for commication sync.)

#ifndef VBR_En
	#pragma comment(CONST, "VBR_En = 1")
#endif


import int RsbbSampleRate;


import lptr_t bts_ch0_get_ix;


// -=-=-=-=-=-=-=-=-=-=-=-

extern int F_Subband_Init(void);
extern bool F_Subband_Dec(void);


#endif







































