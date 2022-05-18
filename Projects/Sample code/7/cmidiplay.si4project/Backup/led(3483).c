


#include <io.h>

#include "global.h"
#include "md2.h"
#include "support.h"
#include "led.h"



void KeyShowLED(void)
{
	if(mp_vol & 0xC0)
	{
		// filter off
		LED0_OFF();
	}
	else
	{
		LED0_ON();
	}

	if(isWideBandFilterOn())
	{
		LED1_ON();
	}
	else
	{
		LED1_OFF();
	}
}










