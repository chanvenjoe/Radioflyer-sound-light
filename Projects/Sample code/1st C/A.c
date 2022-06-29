//****************************************************************************
//          FDSP Demo Code , TRITAN Technology Inc.
//                     First C code.
//****************************************************************************

#include <io.h>


// C variables

//align(256) int PCMBuf[256];			// align(x)   = baseonx#
//int FrameSample, ZeroFrame_s;
//int readFlag, wADPCM;
//code int *pData;

// C variables that assembly can use it.

//export int *PCMIN_PTR, *PCMOU_PTR;	//export ==> assembly can get the variable or Function


// functions
void Initial(void);



// data
// const int DecodeTab[];
//LinkFile(DecodeTab, "OrchestraHit_8K_8000_4-16.PAM");


////interrupt / naked / align(n)
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void PWM(void)	naked interrupt(0) 			//interrupt(x)     set interrupt x
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
}


// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void WakeupProc(void) wakeup
{

        ClrWatchDog();

        // wakeup process...
        //...
        //..
}

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void main(void)
{
        int i;
        i = 0;
        

	Initial();

	while(1)
	{
		ClrWatchDog();
		
		delay(1);// 100 5 1 500
		
		outp(PortA, i);
		if(i<15) i++;  else  i=0;
	}
}

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
void Initial(void)
{

	// initial filter

	set_FLTG(0x03F);
	set_FLTP(0x1FFF);

	//pData = DecodeTab;

	set_CBL(0x08);			// cir buffer (I0)

	EnableInt0();			// enable PWM interrupt
	eni();
	
	set_IOC_PA(0x0F);
	
	ClearTickCount();
}

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


