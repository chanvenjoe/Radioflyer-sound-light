

#ifndef _GLOBAL_FV_
#define _GLOBAL_FV_


#define PUSH_P1HH()				{ asml("AR = P1.hh"); asml("push AR"); }
#define POP_P1HH()				{ asml("pop AR"); asml("P1.hh = AR"); asml("AR = AX"); }


extern unsigned long ticks;
extern int sub_vol;

extern int RampUp(void);
extern int RampDown(void);
extern void Initial(void);

#define SET_TICK()		{ ticks = GetTickCount(); }
#define CHECK_TICK(ts)	(GetTickCount() - ticks) > ts


#endif




