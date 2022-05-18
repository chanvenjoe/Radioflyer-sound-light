

#ifndef _LED_MACRO_
#define _LED_MACRO_


#define CONFIG_LED0()	asml("set io[IOC_PC].b0")
#define CONFIG_LED1()	asml("set io[IOC_PC].b1")

#define LED0_ON()		asml("set io[PortC].b0")
#define LED1_ON()		asml("set io[PortC].b1")

#define LED0_OFF()		asml("clr io[PortC].b0")
#define LED1_OFF()		asml("clr io[PortC].b1")

extern void KeyShowLED(void);


#endif


