

#ifndef _GLOBAL_FV_
#define _GLOBAL_FV_


extern int flags;

#define F_STOP		flags.b0
#define F_PAUSE		flags.b1
#define F_SUBEND	flags.b2


extern int songidx;
extern int fastcnt;
extern int timepass;
extern unsigned long ticks;
extern int dac;


extern void InitSound(void);
extern void Initial(void);

extern void CheckSongLimit(void);

extern int RampUp(void);
extern int RampDown(void);

#define SET_TICK()		{ ticks = GetTickCount(); }
#define CHECK_TICK(ts)	(GetTickCount() - ticks) > ts


#endif




