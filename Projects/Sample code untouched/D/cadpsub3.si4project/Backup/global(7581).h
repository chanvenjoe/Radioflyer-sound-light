

#ifndef _GLOBAL_FUNCTIONS_
#define _GLOBAL_FUNCTIONS_

#include <stdint.h>

//#define MAX_PCM_BUF		128

#define PUSH_P1HH()				{ asml("AR = P1.hh"); asml("push AR"); }
#define POP_P1HH()				{ asml("pop AR"); asml("P1.hh = AR"); asml("AR = AX"); }

#define PUSH_P0HH()				{ asml("AR = P0.hh"); asml("push AR"); }
#define POP_P0HH()				{ asml("pop AR"); asml("P0.hh = AR"); asml("AR = AX"); }


//import int inbuf, outbuf;
//import int PCMY[MAX_PCM_BUF];

extern void Initial(void);
extern void DoADPCM(void);


import const int subb0[];

#endif



