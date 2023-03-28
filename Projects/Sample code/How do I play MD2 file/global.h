

#ifndef _GLOBAL_FV_
#define _GLOBAL_FV_


extern int flags;
	#define STOP	flags.b0


extern int songidx;
extern int fastcnt;
extern int timepass;


extern void Initial(void);

extern void CheckSongLimit(void);



#endif




