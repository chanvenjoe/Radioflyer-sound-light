

#ifndef _GLOBAL_FV_
#define _GLOBAL_FV_

extern unsigned long ticks;
extern int sub_vol;

extern int RampUp(void);
extern int RampDown(void);

#define SET_TICK()		{ ticks = GetTickCount(); }
#define CHECK_TICK(ts)	(GetTickCount() - ticks) > ts


#endif




