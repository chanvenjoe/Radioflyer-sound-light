
#ifndef _IO_PWM_H
#define _IO_PWM_H


#define DPPWM2_CTL   	0x16
#define DPPWM2_DAT   	0x17
#define DPPWM3_CTL  	0x34
#define DPPWM3_DAT  	0x36
#define ADPWM_CTL		0x61
#define ADPWM_DAT		0x62

//ADPWM
#define SET_ADPWM_CTL0()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b0"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL1()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b1"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL2()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b2"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL3()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b3"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL4()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b4"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL5()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b5"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL6()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b6"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL7()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b7"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL8()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b8"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL9()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b9"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL10()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b10"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL11()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b11"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL12()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b12"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL13()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b13"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL14()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b14"); \
							asm("io[ADPWM_CTL] = AR")
#define SET_ADPWM_CTL15()	asm("AR = io[ADPWM_CTL]"); \
							asm("set AR.b15"); \
							asm("io[ADPWM_CTL] = AR")

#define CLR_ADPWM_CTL0()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b0"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL1()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b1"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL2()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b2"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL3()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b3"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL4()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b4"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL5()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b5"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL6()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b6"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL7()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b7"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL8()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b8"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL9()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b9"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL10()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b10"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL11()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b11"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL12()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b12"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL13()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b13"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL14()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b14"); \
							asm("io[ADPWM_CTL] = AR")
#define CLR_ADPWM_CTL15()	asm("AR = io[ADPWM_CTL]"); \
							asm("clr AR.b15"); \
							asm("io[ADPWM_CTL] = AR")

#define SET_ADPWM_DAT(X)	X; asm("AR=AX");	\
							asm("io[ADPWM_DAT]=AR")

//DPPWM2
#define SET_DPPWM2_CTL0()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b0"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL1()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b1"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL2()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b2"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL3()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b3"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL4()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b4"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL5()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b5"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL6()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b6"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL7()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b7"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL8()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b8"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL9()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b9"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL10()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b10"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL11()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b11"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL12()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b12"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL13()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b13"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL14()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b14"); \
							asm("io[DPPWM2_CTL] = AR")
#define SET_DPPWM2_CTL15()	asm("AR = io[DPPWM2_CTL]"); \
							asm("set AR.b15"); \
							asm("io[DPPWM2_CTL] = AR")

#define CLR_DPPWM2_CTL0()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b0"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL1()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b1"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL2()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b2"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL3()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b3"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL4()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b4"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL5()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b5"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL6()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b6"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL7()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b7"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL8()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b8"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL9()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b9"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL10()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b10"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL11()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b11"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL12()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b12"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL13()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b13"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL14()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b14"); \
							asm("io[DPPWM2_CTL] = AR")
#define CLR_DPPWM2_CTL15()	asm("AR = io[DPPWM2_CTL]"); \
							asm("clr AR.b15"); \
							asm("io[DPPWM2_CTL] = AR")

#define SET_DPPWM2_DAT(X)	X; asm("AR=AX");	\
							asm("io[DPPWM2_DAT]=AR")

//DPPWM3
#define SET_DPPWM3_CTL0()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b0"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL1()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b1"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL2()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b2"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL3()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b3"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL4()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b4"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL5()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b5"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL6()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b6"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL7()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b7"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL8()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b8"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL9()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b9"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL10()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b10"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL11()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b11"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL12()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b12"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL13()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b13"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL14()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b14"); \
							asm("io[DPPWM3_CTL] = AR")
#define SET_DPPWM3_CTL15()	asm("AR = io[DPPWM3_CTL]"); \
							asm("set AR.b15"); \
							asm("io[DPPWM3_CTL] = AR")

#define CLR_DPPWM3_CTL0()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b0"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL1()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b1"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL2()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b2"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL3()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b3"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL4()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b4"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL5()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b5"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL6()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b6"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL7()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b7"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL8()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b8"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL9()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b9"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL10()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b10"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL11()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b11"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL12()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b12"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL13()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b13"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL14()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b14"); \
							asm("io[DPPWM3_CTL] = AR")
#define CLR_DPPWM3_CTL15()	asm("AR = io[DPPWM3_CTL]"); \
							asm("clr AR.b15"); \
							asm("io[DPPWM3_CTL] = AR")

#define SET_DPPWM3_DAT(X)	X; asm("AR=AX");	\
							asm("io[DPPWM3_DAT]=AR")


#endif

