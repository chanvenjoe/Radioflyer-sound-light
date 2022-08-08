#include "touch.h"
#include <io.h>
#include "config.h"


int * p;
static char i=0;
void touch_init()
{
	R_MISC4 = 0x7C;//TOUCH INT EN/ PORTC 
	
	B_PDBSTMG=0;	
	B_STMGWK_EN=0;
	B_THEN	=1;		
	B_SVT = 0;//1/4vcc	
	B_TISB0	= 1;	
	B_TISB1	= 0;//00: NA PA
	B_TINT_EN = 1;	
	B_TOUCH_REALT =1;	
		

	//Turn on cap touch
	R_IOP_IX = IOP_PA_4MA;//Port A touch enable
	R_IOP_DAT = BIT(0)|(BIT(1)|BIT(2)|BIT(3));
	
	
	//Touch int En
	EnableInt5();			// enable  interrupt5



	

}
	
void Touch_entry(void) interrupt(5)
{
	if(B_INTREQ5==1)
	{	
		ClrIntFlag5();
	}

	if(i==1){
	R_PORTB = 0x0f;
	i=0;
	}//0x08 addr
	else
	{
		i++;
		R_PORTB = 0X00;
	}

}