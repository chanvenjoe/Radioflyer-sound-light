#include "touch.h"
#include <io.h>

#include "global.h"
#include "keypad.h"
#include "config.h"
#include "playadp.h"


int * p;
static char i=0;
static char  Touch_cnt=0;

void touch_IRS()
{
	if(B_INTREQ5==1)
	{	
		ClrIntFlag5();
	}

	if(i==1)
	{
		R_PORTB = PortB_PU;//0x08 addr
		i=0;
	}
	else
	{
		i++;
		R_PORTB = PortB_PD;
	}
}

void touch_init()
{
	R_MISC4 = 0x7C;//TOUCH INT EN/ PORTC 
	
	B_PDBSTMG=0;	
	B_STMGWK_EN=0;
	B_THEN	=1;		
	B_SVT = 0;//1/4vcc	
	B_TISB0	= 0;	
	B_TISB1	= 1;//00: NA PA
	B_TINT_EN = 1;	
	B_TOUCH_REALT =1;	
		
	//Pin config
	B_IOC_PC0=0;
	B_IOC_PA3=0;
	
	
	//Turn on cap touch
	R_IOP_IX = IOP_PB_4MA;//Port B touch enable
	R_IOP_DAT = BIT(0);
	
	
	//Touch int En
	EnableInt5();			// enable  interrupt5

}
	
void Touch_entry(void) interrupt(5)
{
	Touch_cnt++;
	if(Touch_cnt>Sensitivity)
	{
		touch_IRS();
		clr_Tcnt
	}

//	KeyPlayAdp();
	//playADPCM(2);
}