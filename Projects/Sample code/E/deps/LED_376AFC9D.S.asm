
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


void _KeyShowLEDA84888EC();




.code
void _KeyShowLEDA84888EC()			=>>_KeyShowLEDA84888EC:
{
_A2C562ABC_248:;				=>>_A2C562ABC_248:;
	
_A2C562ABC_249:;				=>>_A2C562ABC_249:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = dtxtonech+7;			=>>I1 = dtxtonech+7//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__) goto L7573600E_95;		=>>if ZR	jmp L7573600E_95
	asm set io[0x09].b0;			=>>set io[0x09].b0//
	goto	L7573600E_96;			=>>pch =	L7573600E_96;ljmp	L7573600E_96
L7573600E_95:;					=>>L7573600E_95:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
L7573600E_96:;					=>>L7573600E_96:;
_A2C562ABC_250:;				=>>_A2C562ABC_250:;
	sAX	= 0x0002;			=>>AX	= 0x02
	asm I1 = dtxtonech+7;			=>>I1 = dtxtonech+7//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__) goto L7573600E_97;		=>>if ZR	jmp L7573600E_97
	asm set io[0x09].b1;			=>>set io[0x09].b1//
	goto	L7573600E_98;			=>>pch =	L7573600E_98;ljmp	L7573600E_98
L7573600E_97:;					=>>L7573600E_97:;
	asm clr io[0x09].b1;			=>>clr io[0x09].b1//
L7573600E_98:;					=>>L7573600E_98:;
L7573600E_94:;					=>>L7573600E_94:;
_A2C562ABC_251:;				=>>_A2C562ABC_251:;
	return;					=>>rets
_KeyShowLEDA84888EC_end:;			=>>_KeyShowLEDA84888EC_end:;
_A2C562ABC_252:;				=>>_A2C562ABC_252:;
}








.code



.code







.data





.code




