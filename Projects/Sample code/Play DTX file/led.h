

#ifndef _LED_MACRO_
#define _LED_MACRO_

#ifdef _MFDSP2_

    #define CONFIG_LED0()	R_IOC_PB.b4 = 1
    #define CONFIG_LED1()	R_IOC_PB.b5 = 1

    #define LED0			R_PORTB.b4
    #define LED1			R_PORTB.b5

#else

    #define CONFIG_LED0()	R_IOC_PC.b0 = 1
    #define CONFIG_LED1()	R_IOC_PC.b1 = 1

    #define LED0			R_PORTC.b0
    #define LED1			R_PORTC.b1

#endif

#define LED0_ON()		LED0 = 1
#define LED1_ON()		LED1 = 1

#define LED0_OFF()		LED0 = 0
#define LED1_OFF()		LED1 = 0

extern void KeyShowLED(void);


#endif


