//****************************************************************************
//          SpeechDSP Demo Code , TRITAN Technology Inc.
//              How do I play subband2/3 in C?
//****************************************************************************
// Lex

#include "config.h"

#include <io.h>
#include <lptr.h>
#include <pwm.h>

#include "global.h"
#include "sub3play.h"
#include "WS2811.h"

#pragma	__attribute__("rjmp")

#define TRUE  1
#define FALSE 0
// -----------------
static unsigned char flag;
unsigned char Key_press_flag;
unsigned char Play_flag;
static char	ris_edge_rdy = FALSE;

//Color_Typedef TFSF_Color_Buf;

// C function

int WaitPCM_Empty_size(void);
void INITIAL(void);

// subband2 data
// const int MyData[];
LinkFile(MyData, "subband3\\Song_Scan_and_Sort_@11K7bps.T3Z");


import void Pwm_process(void) interrupt(0);
import void F_ChangePWMVectTabletobank2(void);

void RTC(void) interrupt(3) 			//interrupt(x)     set interrupt x
{
	ClrIntFlag3();						// clear interrupt 3 flag
	ris_edge_rdy = B_PORTB2 == 0? TRUE:FALSE;
	
	if(flag==0)
	{
		WS_TRSF_color_set(Enum_Purp, LEDNUM);		
		RES
	}					
	else if(flag==1)
	{
		WS_TRSF_color_set(Enum_Red, LEDNUM);	
		RES
	}
	else if(flag==2)
	{
		WS_TRSF_color_set(Enum_Blue, LEDNUM);	
		RES
	}
	flag++;
	if(flag==2)
		flag=0;
	
/*	while(B_PORTB2 == TRUE && ris_edge_rdy==TRUE)
	{

			Key_press_flag = TRUE;
			ris_edge_rdy = FALSE;
	}*/
//	reg ^= 0x40;
//	B_PORTI0 = reg;
}

void main(void)
{
	F_ChangePWMVectTabletobank2();

	sub_vol = 0;

	INITIAL();
	Initial();//IO
	ClearTickCount();

	Sub3Play((lptr_t)MyData);

	while(1)
	{
		ClrWatchDog();
			
		/*if(ris_edge_rdy == TRUE)
		{
			
			//if(Key_press_flag==TRUE)
			if(B_PORTB2 == TRUE)
			{
				Key_press_flag = FALSE;
				ris_edge_rdy=0;
				Play_flag = 1;
				if(flag==0)
				{
					WS_TRSF_color_set(Enum_Purp, LEDNUM);		
				}					
				else if(flag==1)
				{
					WS_TRSF_color_set(Enum_Red, LEDNUM);	
				}
				else if(flag==2)
				{
					WS_TRSF_color_set(Enum_Blue, LEDNUM);	
				}
				flag = flag == 2? 0: flag+1;
			}	
		}
		if(flag ==1)//This function should be entried every cycles
		{
			RampUp();
			if(WaitPCM_Empty_size() < 0)
			{
				continue;
			}
			if(Subb3_Dec())
				Sub3Play((lptr_t)MyData);
		}
		else
			Sub3ZeroFill();// this function will stop the sound */
			
			
	}
}


void InitSound(void)	near
{
	R_FLTP = 0x3FFF;

	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;
	R_DACL = 0;

	// clear filter buffer

	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;
	R_FLTI = 0;

	R_FLTG = 0x00;

	// reset FIFO state machine

	R_FLTO;

	EnableAudioPWM();
	EnableWideBandFilter();
	DACMuteOff();
}


void INITIAL(void)
{
	int i;

	InitSound();

	set_I0(PCMY);

	i = 512;

	while(i--)
		store_I0P(0);

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	R_FLTG = sub_vol;
	R_FLTP = 0x1FFF;
	R_CBL = 0;
}





