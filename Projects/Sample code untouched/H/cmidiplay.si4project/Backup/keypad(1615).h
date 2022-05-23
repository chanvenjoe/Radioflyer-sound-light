

#ifndef _KEYPAD_
#define _KEYPAD_

#define MAX_KEY		5




typedef void (*keycallback)(void);


typedef struct _KEYTABLE {
	keycallback push;
	keycallback hold;
	keycallback release;
}KEYTABLE;


extern void InitKey(void);
extern void PollingKey(void);




#endif


