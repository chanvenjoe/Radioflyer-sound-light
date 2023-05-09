

#ifndef _GLOBAL_FUNCTIONS_
#define _GLOBAL_FUNCTIONS_

#include <stdint.h>

#define PUSH_P1HH()		{ asml("AR = P1.hh"); asml("push AR"); }
#define POP_P1HH()		{ asml("pop AR"); asml("P1.hh = AR"); asml("AR = AX"); }

#define SET_TICK()		{ ticks = GetTickCount(); }
#define CHECK_TICK(ts)	(GetTickCount() - ticks) > ts

#define MAX_PCM_BUF		128

import int inbuf, outbuf;
import int PCMY[MAX_PCM_BUF];

extern unsigned long ticks;
extern int sub_vol;

extern int RampUp(void);
extern int RampDown(void);

extern void Initial(void);
extern void DoADPCM(void);


#endif



