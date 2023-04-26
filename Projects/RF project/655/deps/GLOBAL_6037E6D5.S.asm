
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rjmp void _InitialDA4A7CC4();




.code
rjmp void L0E8FA404_84()			=>>L0E8FA404_84:
{
_A30BB6F62_2626:;				=>>_A30BB6F62_2626:;
	
_A30BB6F62_2627:;				=>>_A30BB6F62_2627:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_A30BB6F62_2628:;				=>>_A30BB6F62_2628:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_A30BB6F62_2629:;				=>>_A30BB6F62_2629:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_A30BB6F62_2630:;				=>>_A30BB6F62_2630:;
	io[0x08]	= 0x0000;		=>>AR	= 0x00;io[0x08]	= AR
L0E8FA404_86:;					=>>L0E8FA404_86:;
_A30BB6F62_2631:;				=>>_A30BB6F62_2631:;
	return;					=>>rets
L0E8FA404_84_end:;				=>>L0E8FA404_84_end:;
_A30BB6F62_2632:;				=>>_A30BB6F62_2632:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A30BB6F62_2633:;				=>>_A30BB6F62_2633:;
	
_A30BB6F62_2634:;				=>>_A30BB6F62_2634:;
	sAX	= 0x003F;			=>>AX	= 0x3F
_A30BB6F62_2635:;				=>>_A30BB6F62_2635:;
	asm	AR = AX				=>>AR = AX
_A30BB6F62_2636:;				=>>_A30BB6F62_2636:;
	asm	FLTG = AR			=>>FLTG = AR
	
_A30BB6F62_2637:;				=>>_A30BB6F62_2637:;
	sAX	= 0x1FFF;			=>>AX	= 0x1FFF
_A30BB6F62_2638:;				=>>_A30BB6F62_2638:;
	asm	AR = AX				=>>AR = AX
_A30BB6F62_2639:;				=>>_A30BB6F62_2639:;
	asm	FLTP = AR			=>>FLTP = AR
	
_A30BB6F62_2640:;				=>>_A30BB6F62_2640:;
	sAX	= 0x0008;			=>>AX	= 0x08
_A30BB6F62_2641:;				=>>_A30BB6F62_2641:;
	asm	AR = AX				=>>AR = AX
_A30BB6F62_2642:;				=>>_A30BB6F62_2642:;
	asm	CBL = AR			=>>CBL = AR
_A30BB6F62_2643:;				=>>_A30BB6F62_2643:;
	io[0x67]	= 0x0007;		=>>AR	= 0x07;io[0x67]	= AR
_A30BB6F62_2644:;				=>>_A30BB6F62_2644:;
	io[0x06]	= 0xC004;		=>>AR	= 0xC004;io[0x06]	= AR
_A30BB6F62_2645:;				=>>_A30BB6F62_2645:;
	io[0x05]	= 0x0000;		=>>AR	= 0x00;io[0x05]	= AR
_A30BB6F62_2646:;				=>>_A30BB6F62_2646:;
	io[0x09]	= 0x0000;		=>>AR	= 0x00;io[0x09]	= AR
L0E8FA404_87:;					=>>L0E8FA404_87:;
_A30BB6F62_2647:;				=>>_A30BB6F62_2647:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A30BB6F62_2648:;				=>>_A30BB6F62_2648:;
}




.code


naked void ginit_code_global_6037E6D5_s(void)	=>>ginit_code_global_6037E6D5_s:
{
	return;					=>>rets
}








.code



.code







.data





.code







































































































































