
#include <io.h>
#include <pwm.h>
#include <md2.h>

#include "global.h"

#include <string.h>
#include <lptr.h>


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

/*static void SetupIO(void) near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = 0;
}*/


void Initial(void)
{
	
	// initial filter

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
	
	//Interrupt init 1/2 for ExtInt
	B_INTEN = 1; //globa int enable
	B_INTENA1 = 1; //Extint0 enable
	

}

/*void Extint0_servfunc(void) interrupt (1)
{
	ClrIntFlag1;


}*/






