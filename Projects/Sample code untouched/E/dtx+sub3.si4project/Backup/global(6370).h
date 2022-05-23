

#ifndef _GLOBAL_FV_
#define _GLOBAL_FV_

#define PUSH_P1HH()		{ asml("AR = P1.hh"); asml("push AR"); }
#define POP_P1HH()		{ asml("pop AR"); asml("P1.hh = AR"); asml("AR = AX"); }

#define SET_TICK()		{ ticks = GetTickCount(); }
#define CHECK_TICK(ts)	(GetTickCount() - ticks) > ts


extern int flags;
	#define PLAY	flags.b0

extern int songidx;
extern unsigned long ticks;
extern int sub_vol;

import const int subdat0[];
import const int subdat1[];

extern void Initial(void);

extern void CheckSongLimit(void);

extern int RampUp(void);
extern int RampDown(void);

extern void ToneVolCtrl(void);

import void ChangePWMIntToDynCache(void);



#endif




