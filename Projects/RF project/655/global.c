
#include <io.h>
#include <pwm.h>
#include <string.h>
#include <lptr.h>




#pragma __attribute__("rjmp")



static void SetupIO(void) near
{
	// PortA 0, 1, 2, 3 as output

	R_IOC_PA = BIT(3) | BIT(2) | BIT(1) | BIT(0);
	R_IOC_PB = (int)0xFFFF;
	R_PORTA = 0;
	R_PORTB = 0;
}


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


}









