

#ifndef _LED_MACRO_
#define _LED_MACRO_


#define CONFIG_LED0()	R_IOC_PCI.b0 = 1
#define CONFIG_LED1()	R_IOC_PCI.b1 = 1

#define LED0_ON()		R_PORTCI.b0 = 1
#define LED1_ON()		R_PORTCI.b1 = 1

#define LED0_OFF()		R_PORTCI.b0 = 0
#define LED1_OFF()		R_PORTCI.b1 = 0

extern void KeyShowLED(void);


#endif


