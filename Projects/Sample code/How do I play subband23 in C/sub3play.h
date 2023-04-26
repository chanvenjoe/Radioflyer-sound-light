

#ifndef _SUB3PLAY_SYS_
#define _SUB3PLAY_SYS_

/*#include <io.h>
#include <lptr.h>
#include <as.h>

#include "global.h"*/

import lptr_t bts_ch0_get_ix;
import int *PCMYIN_PTR, *PCMYOU_PTR, *PCMIN, SampleCh0Rate;
import int PCMY[512];

import void Subb3_Init(void);
import int Subb3_Dec(void);

extern int WaitPCM_Empty_size(void);
extern void Sub3ZeroFill(void);
extern void Sub3Play(lptr_t sdata);


#endif



