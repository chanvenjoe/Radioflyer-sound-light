//****************************************************************************
//          FDSP Demo Code , TRITAN Technology Inc.
//                how do i play MP3 in C
//****************************************************************************

#include <io.h>


export code  int *_MyDataPnt, *MyEnd, *R_bts_ch0_get_ix;

export int *PCMYIN_PTR, *PCMYOU_PTR, *PCMIN;	//export ==> assembly can get the variable or Function
export align(512)  int PCMY[512];			// align(x)   = baseonx#


// import from MP3 system

import int mp3Data[];
import int File_flag, *PCMIN1_PTR;
import int MP3_Ch0dec(void);
import void MP3_ch0InitV07(void);


// 

int WaitPCM_Empty_size(void);
export void GetMp3data();

void INITIAL();

LinkFile(MyData, "demo.mp3");


////interrupt / naked / align(n)

void PWM(void)	interrupt(0) 			//interrupt(x)     set interrupt x
{
	int i;

	// clear interrupt 0 flag

	ClrIntFlag0();

	// because function frame will not save all cpu registers
	// we need manual save used registers.

	PUSH_I0();
	PUSH_CBL();

	set_CBL(0x09);
	set_I0(PCMYOU_PTR);

	for(i = 0; i < 4; i++)
	{
		if(!FA())
		{
			set_FLTI(read_I0P());
		}

		set_DACL(get_FLTO());
	}

	PCMYOU_PTR = (int *)get_I0();

	// restore registers

	POP_CBL();
	POP_I0();
}


void main(void)
{
	INITIAL();
	
	while(1)
	{
		ClrWatchDog();
		
		if(WaitPCM_Empty_size() < 0)
			continue;

		if(MP3_Ch0dec())
			INITIAL();
	}
}

int WaitPCM_Empty_size(void)
{
	int x;
	x = PCMYOU_PTR - PCMYIN_PTR;
	if(x < 0)
	{
		x = x & 0x01FF;
	}
	x = x - 0x0121;
	return x;
}

void INITIAL()
{
	int i;

	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTI(0);
	set_FLTA(0);

	for(i = 0; i < 512; i++)
		PCMY[i] = 0;

	File_flag = 0;
	
	_MyDataPnt = MyData;
	R_bts_ch0_get_ix = MyData;
	i = sizeof(MyData);
	MyEnd = _MyDataPnt + i;
	
	ResetPASR();

	PCMYIN_PTR = PCMY;
	PCMYOU_PTR = PCMY;

	set_FLTG(0x03F);
	set_FLTP(0x1FFF);
	set_CBL(0x00);

	GetMp3data();
	MP3_ch0InitV07();

	EnableInt0();			// enable PWM interrupt
	eni();
}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
export void GetMp3data(void)
{
	int i, *j;

	j = mp3Data;
	j = j + 5;
	PCMIN1_PTR = j;

	for(i = 0; i < 256; i++)
	{
		*j++ = *_MyDataPnt++;
	}

	if(_MyDataPnt > MyEnd)
	{
		File_flag = File_flag | 8;
	}

}

