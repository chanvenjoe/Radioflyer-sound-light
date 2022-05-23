
#include "crt0.h"













__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];



// CODE segment					=>>VarRM[0:4095]={
 _sub_vol980B1B83,_ticksA7263C09[2] 
};

.code


rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();




.code



.data



.code
rjmp void _RampUpFF7996DA()			=>>_RampUpFF7996DA:
{
_A7F5C94F4_61:;					=>>_A7F5C94F4_61:;
	
_A7F5C94F4_62:;					=>>_A7F5C94F4_62:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>AR	= AX;SF = AR - CX;
	if(__je__)	goto L0E8FA404_19;	=>>if ZR	jmp L0E8FA404_19
	goto	L0E8FA404_18;			=>>jmp	L0E8FA404_18
L0E8FA404_19:;					=>>L0E8FA404_19:;
_A7F5C94F4_63:;					=>>_A7F5C94F4_63:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_17;			=>>jmp	L0E8FA404_17
L0E8FA404_18:;					=>>L0E8FA404_18:;
_A7F5C94F4_64:;					=>>_A7F5C94F4_64:;
_A7F5C94F4_65:;					=>>_A7F5C94F4_65:;
_A7F5C94F4_66:;					=>>_A7F5C94F4_66:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_21;	=>>if ZR	jmp L0E8FA404_21
	goto	L0E8FA404_20;			=>>jmp	L0E8FA404_20
L0E8FA404_21:;					=>>L0E8FA404_21:;
	
_A7F5C94F4_67:;					=>>_A7F5C94F4_67:;
_A7F5C94F4_68:;					=>>_A7F5C94F4_68:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	
_A7F5C94F4_69:;					=>>_A7F5C94F4_69:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_20:;					=>>L0E8FA404_20:;
_A7F5C94F4_70:;					=>>_A7F5C94F4_70:;
_A7F5C94F4_71:;					=>>_A7F5C94F4_71:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_17;			=>>jmp	L0E8FA404_17
L0E8FA404_17:;					=>>L0E8FA404_17:;
_A7F5C94F4_72:;					=>>_A7F5C94F4_72:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_A7F5C94F4_73:;					=>>_A7F5C94F4_73:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_A7F5C94F4_74:;					=>>_A7F5C94F4_74:;
	
_A7F5C94F4_75:;					=>>_A7F5C94F4_75:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>AR	= AX;SF = AR - CX;
	if(__je__)	goto L0E8FA404_24;	=>>if ZR	jmp L0E8FA404_24
	goto	L0E8FA404_23;			=>>jmp	L0E8FA404_23
L0E8FA404_24:;					=>>L0E8FA404_24:;
_A7F5C94F4_76:;					=>>_A7F5C94F4_76:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_22;			=>>jmp	L0E8FA404_22
L0E8FA404_23:;					=>>L0E8FA404_23:;
_A7F5C94F4_77:;					=>>_A7F5C94F4_77:;
_A7F5C94F4_78:;					=>>_A7F5C94F4_78:;
_A7F5C94F4_79:;					=>>_A7F5C94F4_79:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_26;	=>>if ZR	jmp L0E8FA404_26
	goto	L0E8FA404_25;			=>>jmp	L0E8FA404_25
L0E8FA404_26:;					=>>L0E8FA404_26:;
	
_A7F5C94F4_80:;					=>>_A7F5C94F4_80:;
_A7F5C94F4_81:;					=>>_A7F5C94F4_81:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	
_A7F5C94F4_82:;					=>>_A7F5C94F4_82:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_25:;					=>>L0E8FA404_25:;
_A7F5C94F4_83:;					=>>_A7F5C94F4_83:;
_A7F5C94F4_84:;					=>>_A7F5C94F4_84:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_22;			=>>jmp	L0E8FA404_22
L0E8FA404_22:;					=>>L0E8FA404_22:;
_A7F5C94F4_85:;					=>>_A7F5C94F4_85:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_A7F5C94F4_86:;					=>>_A7F5C94F4_86:;
}








.code



.code







.data





.code







