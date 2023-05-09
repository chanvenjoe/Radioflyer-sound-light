
#include "crt0.h"













__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];



// CODE segment					=>>VarRM[0:4095]={
 _sub_vol980B1B83,_ticksA7263C09[2] 
};

.code


rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();
rjmp void _InitialDA4A7CC4();




.code



.data



.code
rjmp void _RampUpFF7996DA()			=>>_RampUpFF7996DA:
{
_A89F084ED_92:;					=>>_A89F084ED_92:;
	
_A89F084ED_93:;					=>>_A89F084ED_93:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_49;	=>>if ZR	jmp L0E8FA404_49
	goto	L0E8FA404_48;			=>>jmp	L0E8FA404_48
L0E8FA404_49:;					=>>L0E8FA404_49:;
_A89F084ED_94:;					=>>_A89F084ED_94:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_48:;					=>>L0E8FA404_48:;
_A89F084ED_95:;					=>>_A89F084ED_95:;
_A89F084ED_96:;					=>>_A89F084ED_96:;
_A89F084ED_97:;					=>>_A89F084ED_97:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_51;	=>>if ZR	jmp L0E8FA404_51
	goto	L0E8FA404_50;			=>>jmp	L0E8FA404_50
L0E8FA404_51:;					=>>L0E8FA404_51:;
	
_A89F084ED_98:;					=>>_A89F084ED_98:;
_A89F084ED_99:;					=>>_A89F084ED_99:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A89F084ED_100:;				=>>_A89F084ED_100:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_50:;					=>>L0E8FA404_50:;
_A89F084ED_101:;				=>>_A89F084ED_101:;
_A89F084ED_102:;				=>>_A89F084ED_102:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_47:;					=>>L0E8FA404_47:;
_A89F084ED_103:;				=>>_A89F084ED_103:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_A89F084ED_104:;				=>>_A89F084ED_104:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_A89F084ED_105:;				=>>_A89F084ED_105:;
	
_A89F084ED_106:;				=>>_A89F084ED_106:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_54;	=>>if ZR	jmp L0E8FA404_54
	goto	L0E8FA404_53;			=>>jmp	L0E8FA404_53
L0E8FA404_54:;					=>>L0E8FA404_54:;
_A89F084ED_107:;				=>>_A89F084ED_107:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_52;			=>>jmp	L0E8FA404_52
L0E8FA404_53:;					=>>L0E8FA404_53:;
_A89F084ED_108:;				=>>_A89F084ED_108:;
_A89F084ED_109:;				=>>_A89F084ED_109:;
_A89F084ED_110:;				=>>_A89F084ED_110:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_56;	=>>if ZR	jmp L0E8FA404_56
	goto	L0E8FA404_55;			=>>jmp	L0E8FA404_55
L0E8FA404_56:;					=>>L0E8FA404_56:;
	
_A89F084ED_111:;				=>>_A89F084ED_111:;
_A89F084ED_112:;				=>>_A89F084ED_112:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A89F084ED_113:;				=>>_A89F084ED_113:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_55:;					=>>L0E8FA404_55:;
_A89F084ED_114:;				=>>_A89F084ED_114:;
_A89F084ED_115:;				=>>_A89F084ED_115:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_52;			=>>jmp	L0E8FA404_52
L0E8FA404_52:;					=>>L0E8FA404_52:;
_A89F084ED_116:;				=>>_A89F084ED_116:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_A89F084ED_117:;				=>>_A89F084ED_117:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A89F084ED_118:;				=>>_A89F084ED_118:;
	
_A89F084ED_119:;				=>>_A89F084ED_119:;
	io[0x67]	= 0x0007;		=>>AR	= 0x07;io[0x67]	= AR
_A89F084ED_120:;				=>>_A89F084ED_120:;
	io[0x06]	= 0xC004;		=>>AR	= 0xC004;io[0x06]	= AR
_A89F084ED_121:;				=>>_A89F084ED_121:;
	io[0x05]	= 0x0000;		=>>AR	= 0x00;io[0x05]	= AR
_A89F084ED_122:;				=>>_A89F084ED_122:;
	io[0x09]	= 0x0000;		=>>AR	= 0x00;io[0x09]	= AR
L0E8FA404_57:;					=>>L0E8FA404_57:;
_A89F084ED_123:;				=>>_A89F084ED_123:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A89F084ED_124:;				=>>_A89F084ED_124:;
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




























































































