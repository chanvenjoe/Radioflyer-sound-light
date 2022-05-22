
#include "crt0.h"













__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];



// CODE segment					=>>VarRM[0:4095]={
 _sub_vol980B1B83,_ticksA7263C09[2] 
};


rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();




.code



.data



.code
rjmp void _RampUpFF7996DA()			=>>_RampUpFF7996DA:
{
_AE23BDF6A_61:;					=>>_AE23BDF6A_61:;
	
_AE23BDF6A_62:;					=>>_AE23BDF6A_62:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>AR	= AX;SF = AR - CX;
	if(__je__)	goto L0E8FA404_19;	=>>if ZR	jmp L0E8FA404_19
	goto	L0E8FA404_18;			=>>jmp	L0E8FA404_18
L0E8FA404_19:;					=>>L0E8FA404_19:;
_AE23BDF6A_63:;					=>>_AE23BDF6A_63:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_17;			=>>jmp	L0E8FA404_17
L0E8FA404_18:;					=>>L0E8FA404_18:;
_AE23BDF6A_64:;					=>>_AE23BDF6A_64:;
_AE23BDF6A_65:;					=>>_AE23BDF6A_65:;
_AE23BDF6A_66:;					=>>_AE23BDF6A_66:;
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
	
_AE23BDF6A_67:;					=>>_AE23BDF6A_67:;
_AE23BDF6A_68:;					=>>_AE23BDF6A_68:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	
_AE23BDF6A_69:;					=>>_AE23BDF6A_69:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_20:;					=>>L0E8FA404_20:;
_AE23BDF6A_70:;					=>>_AE23BDF6A_70:;
_AE23BDF6A_71:;					=>>_AE23BDF6A_71:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_17;			=>>jmp	L0E8FA404_17
L0E8FA404_17:;					=>>L0E8FA404_17:;
_AE23BDF6A_72:;					=>>_AE23BDF6A_72:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_AE23BDF6A_73:;					=>>_AE23BDF6A_73:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_AE23BDF6A_74:;					=>>_AE23BDF6A_74:;
	
_AE23BDF6A_75:;					=>>_AE23BDF6A_75:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>AR	= AX;SF = AR - CX;
	if(__je__)	goto L0E8FA404_24;	=>>if ZR	jmp L0E8FA404_24
	goto	L0E8FA404_23;			=>>jmp	L0E8FA404_23
L0E8FA404_24:;					=>>L0E8FA404_24:;
_AE23BDF6A_76:;					=>>_AE23BDF6A_76:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_22;			=>>jmp	L0E8FA404_22
L0E8FA404_23:;					=>>L0E8FA404_23:;
_AE23BDF6A_77:;					=>>_AE23BDF6A_77:;
_AE23BDF6A_78:;					=>>_AE23BDF6A_78:;
_AE23BDF6A_79:;					=>>_AE23BDF6A_79:;
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
	
_AE23BDF6A_80:;					=>>_AE23BDF6A_80:;
_AE23BDF6A_81:;					=>>_AE23BDF6A_81:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	
_AE23BDF6A_82:;					=>>_AE23BDF6A_82:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_25:;					=>>L0E8FA404_25:;
_AE23BDF6A_83:;					=>>_AE23BDF6A_83:;
_AE23BDF6A_84:;					=>>_AE23BDF6A_84:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_22;			=>>jmp	L0E8FA404_22
L0E8FA404_22:;					=>>L0E8FA404_22:;
_AE23BDF6A_85:;					=>>_AE23BDF6A_85:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_AE23BDF6A_86:;					=>>_AE23BDF6A_86:;
}








.code



.code







.data





.code







