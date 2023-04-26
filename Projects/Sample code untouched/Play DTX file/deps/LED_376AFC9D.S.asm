
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rjmp void _KeyShowLEDA84888EC();




.code
rjmp void _KeyShowLEDA84888EC()			=>>_KeyShowLEDA84888EC:
{
_AB97CD6AD_169:;				=>>_AB97CD6AD_169:;
	
_AB97CD6AD_170:;				=>>_AB97CD6AD_170:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = dtxtonech+7;			=>>I1 = dtxtonech+7//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__) goto L7573600E_67;		=>>if ZR	jmp L7573600E_67
	asm set io[0x09].b0;			=>>set io[0x09].b0//
	goto	L7573600E_68;			=>>jmp	L7573600E_68
L7573600E_67:;					=>>L7573600E_67:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
L7573600E_68:;					=>>L7573600E_68:;
_AB97CD6AD_171:;				=>>_AB97CD6AD_171:;
	sAX	= 0x0002;			=>>AX	= 0x02
	asm I1 = dtxtonech+7;			=>>I1 = dtxtonech+7//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__) goto L7573600E_69;		=>>if ZR	jmp L7573600E_69
	asm set io[0x09].b1;			=>>set io[0x09].b1//
	goto	L7573600E_70;			=>>jmp	L7573600E_70
L7573600E_69:;					=>>L7573600E_69:;
	asm clr io[0x09].b1;			=>>clr io[0x09].b1//
L7573600E_70:;					=>>L7573600E_70:;
L7573600E_66:;					=>>L7573600E_66:;
_AB97CD6AD_172:;				=>>_AB97CD6AD_172:;
	return;					=>>rets
_KeyShowLEDA84888EC_end:;			=>>_KeyShowLEDA84888EC_end:;
_AB97CD6AD_173:;				=>>_AB97CD6AD_173:;
}




.code


naked void ginit_code_led_376AFC9D_s(void)	=>>ginit_code_led_376AFC9D_s:
{
	return;					=>>rets
}








.code



.code







.data





.code






































































