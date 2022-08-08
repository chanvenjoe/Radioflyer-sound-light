

#ifndef _KEYPAD_
#define _KEYPAD_

#define MAX_KEY		5


typedef void (*keycallback)(void);//long/short press callback funciton pointer


typedef struct _KEYTABLE {
	keycallback push;
	keycallback hold;
	keycallback release;
}KEYTABLE;


extern void InitKey(void);
extern void PollingKey(void);

extern const KEYTABLE keyfunc[MAX_KEY];// key table type array



#endif


