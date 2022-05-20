


#include <io.h>
#include <dtx.h>

#include "global.h"
#include "support.h"
#include "led.h"


void KeyShowLED(void)	rjmp
{
	LED0 = (dtxtonech[0].MOD & 0x01);
	LED1 = (dtxtonech[0].MOD & 0x02);
}











