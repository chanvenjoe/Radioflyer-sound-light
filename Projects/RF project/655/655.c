
#include <io.h>
#include <lptr.h>
#include <pwm.h>

#include "global.h"
#include "sub3play.h"
#include "WS2811.h"
#include "config.h"

#pragma	__attribute__("rjmp")



#define TRUE  1
#define FALSE 0

// C variables
unsigned char flag=0;
unsigned char Key_press_flag = 1;

// C function

int WaitPCM_Empty_size(void);
void INITIAL(void);

Color_Typedef TFSF_Color_Buf;

//LinkFile(MyData, "subband3\\baby_Silen@7K8bps.TZB");


//import void Pwm_process(void) interrupt(0);
//import void F_ChangePWMVectTabletobank2(void);



void main(void)
{
//	F_ChangePWMVectTabletobank2();
	
	sub_vol = 0;
	
	INITIAL();
//	ClearTickCount();
	
	Initial();
	
//	Sub3Play((lptr_t)MyData);
	
	while(1)
	{
		ClrWatchDog();
		Key_press_flag = B_PORTB2 == 1? TRUE:FALSE;
		if(B_PORTB2==1&&Key_press_flag==TRUE)
		{
			Key_press_flag = FALSE;
			if(B_PORTB2==1)
			{
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
				if(flag==2)
				{
					WS_TRSF_color_set(Enum_Blue, LEDNUM);	
					RES
				}
				flag = flag == 2? 0: flag+1;
			}
		}
	}		

}

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
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

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


