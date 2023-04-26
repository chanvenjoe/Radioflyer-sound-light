//****************************************************************************
//          FDSP Demo Code , TRITAN Technology Inc.
//                     First C code.
//****************************************************************************

#include <io.h>
#include "WS2811.h"
#include "global.h"



// C variables
unsigned char flag=0;

Color_Typedef TFSF_Color_Buf;

//align(256) int PCMBuf[256];			// align(x)   = baseonx#
//int FrameSample, ZeroFrame_s;
//int readFlag, wADPCM;
//code int *pData;

// C variables that assembly can use it.

//export int *PCMIN_PTR, *PCMOU_PTR;	//export ==> assembly can get the variable or Function


// functions



// data
// const int DecodeTab[];
//LinkFile(DecodeTab, "OrchestraHit_8K_8000_4-16.PAM");


////interrupt / naked / align(n)
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/*void PWM(void)	naked interrupt(0) 			//interrupt(x)     set interrupt x
{
	// clear interrupt 0 flag

	ClrIntFlag0();

	// because 'naked' remove the function frame,
	// we need manual save used registers.

	// for the reason it may reduce some cpu cycles without
	// the function frame.

	PUSH_AX();
	PUSH_I0();
	PUSH_I1();

	// wakeup process...
	//...
	//..

	// restore registers

	POP_I1();
	POP_I0();
	POP_AX();
}*/


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
/*void WakeupProc(void) wakeup
{

        ClrWatchDog();

        // wakeup process...
        //...
        //..
}*/
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void main(void)
{

	Initial();

	while(1)
	{
		ClrWatchDog();
		if(B_PORTB2==1)
		{
			NOP_9 NOP_9 NOP_9
			if(B_PORTB2==1)
			{
				if(flag)
				{
	
					WS_TRSF_color_set(Enum_Purp, LEDNUM);		
					RES
					flag = ~flag;
				}					
				else
				{
					WS_TRSF_color_set(Enum_Red, LEDNUM);	
					RES
					flag = ~flag;
				}
			}
		}
	}		

}

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


