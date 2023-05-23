

#include <io.h>

#include <pwm.h>
#include <md2.h>

#include "global.h"

#pragma __attribute__("rjmp")


int sub_vol;
unsigned long ticks;



int RampUp(void)
{
	if(0x3F == (sub_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = ++sub_vol;
	}
	return 1;
}


int RampDown(void)
{
	// 10ms

	if(0 == (sub_vol & 0x3F))
		return 0;

	// 10ms

	if(CHECK_TICK(327680))
	{
		SET_TICK();
		R_FLTG = --sub_vol;
	}

	return 1;
}



void Initial(void)
{
	
/*	// initial filter

	set_FLTG(0x03F);
	set_FLTP(0x1FFF);

	//pData = DecodeTab;

	set_CBL(0x08);			// cir buffer (I0)

	//EnableInt0();			// enable PWM interrupt
//	eni();
	
	/*Clock configuration*/
	R_SPEED = 0x07;
	
	
	/*IO configuration*/
	//PB2 as input pin, low trigger, high default// PI0/1 as output default 0
	R_IOC_PC = BIT(15) | BIT(14) | BIT(2);
	R_IOC_PB = 0;
	
	R_PORTC  = (int)0x0000;		//Port B C set low
	R_PORTB  = (int)0xffff;
	
	//Interrupt init 1/2 for ExtInt

//	B_INTENA1 = 1; //Extint0/ Timer1 interrupt enable
//	EnableInt1();
	

//	R_IOP_IX = IOP_PB_PD50K;
//	R_IOP_DAT = 0XFF;
	//RTC
	set_IOP_IX(0x02);					// IOP_RTC32K
	set_IOP_DAT(0x2aaa);				// freq=32768Hz/(RTC Timer TnC+1),t=1s(7fff)  2AAA=1.4/3S 444=30ms
	eni();
	EnableInt3();						// enable RTC interrupt
	

}








