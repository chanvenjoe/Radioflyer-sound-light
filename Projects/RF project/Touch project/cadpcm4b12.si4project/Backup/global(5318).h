

#ifndef _GLOBAL_FUNCTIONS_
#define _GLOBAL_FUNCTIONS_

#include <stdint.h>

#define MAX_PCM_BUF		128

#define PUSH_P0HH()		asml("AR = P0.hh"); asml("push AR")
#define POP_P0HH()		asml("pop AR"); asml("P0.hh = AR")

import int inbuf, outbuf;
import int PCMY[MAX_PCM_BUF];

extern void Initial(void);
extern void DoADPCM(void);


#endif



