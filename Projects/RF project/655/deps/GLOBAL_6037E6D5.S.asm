
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
_A523506CC_97:;					=>>_A523506CC_97:;
	
_A523506CC_98:;					=>>_A523506CC_98:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_44;	=>>if ZR	jmp L0E8FA404_44
	goto	L0E8FA404_43;			=>>jmp	L0E8FA404_43
L0E8FA404_44:;					=>>L0E8FA404_44:;
_A523506CC_99:;					=>>_A523506CC_99:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_43:;					=>>L0E8FA404_43:;
_A523506CC_100:;				=>>_A523506CC_100:;
_A523506CC_101:;				=>>_A523506CC_101:;
_A523506CC_102:;				=>>_A523506CC_102:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_46;	=>>if ZR	jmp L0E8FA404_46
	goto	L0E8FA404_45;			=>>jmp	L0E8FA404_45
L0E8FA404_46:;					=>>L0E8FA404_46:;
	
_A523506CC_103:;				=>>_A523506CC_103:;
_A523506CC_104:;				=>>_A523506CC_104:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A523506CC_105:;				=>>_A523506CC_105:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_45:;					=>>L0E8FA404_45:;
_A523506CC_106:;				=>>_A523506CC_106:;
_A523506CC_107:;				=>>_A523506CC_107:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_42:;					=>>L0E8FA404_42:;
_A523506CC_108:;				=>>_A523506CC_108:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_A523506CC_109:;				=>>_A523506CC_109:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_A523506CC_110:;				=>>_A523506CC_110:;
	
_A523506CC_111:;				=>>_A523506CC_111:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_49;	=>>if ZR	jmp L0E8FA404_49
	goto	L0E8FA404_48;			=>>jmp	L0E8FA404_48
L0E8FA404_49:;					=>>L0E8FA404_49:;
_A523506CC_112:;				=>>_A523506CC_112:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_48:;					=>>L0E8FA404_48:;
_A523506CC_113:;				=>>_A523506CC_113:;
_A523506CC_114:;				=>>_A523506CC_114:;
_A523506CC_115:;				=>>_A523506CC_115:;
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
	
_A523506CC_116:;				=>>_A523506CC_116:;
_A523506CC_117:;				=>>_A523506CC_117:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A523506CC_118:;				=>>_A523506CC_118:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_50:;					=>>L0E8FA404_50:;
_A523506CC_119:;				=>>_A523506CC_119:;
_A523506CC_120:;				=>>_A523506CC_120:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_47:;					=>>L0E8FA404_47:;
_A523506CC_121:;				=>>_A523506CC_121:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_A523506CC_122:;				=>>_A523506CC_122:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A523506CC_123:;				=>>_A523506CC_123:;
	
_A523506CC_124:;				=>>_A523506CC_124:;
	io[0x67]	= 0x0007;		=>>AR	= 0x07;io[0x67]	= AR
_A523506CC_125:;				=>>_A523506CC_125:;
	io[0x06]	= 0xC004;		=>>AR	= 0xC004;io[0x06]	= AR
_A523506CC_126:;				=>>_A523506CC_126:;
	io[0x05]	= 0x0000;		=>>AR	= 0x00;io[0x05]	= AR
_A523506CC_127:;				=>>_A523506CC_127:;
	io[0x09]	= 0x0000;		=>>AR	= 0x00;io[0x09]	= AR
_A523506CC_128:;				=>>_A523506CC_128:;
	io[0x1E]	= 0x000C;		=>>AR	= 0x0C;io[0x1E]	= AR
_A523506CC_129:;				=>>_A523506CC_129:;
	io[0x1F]	= 0x00FF;		=>>AR	= 0x00FF;io[0x1F]	= AR
	
_A523506CC_130:;				=>>_A523506CC_130:;
	sAX	= 0x0002;			=>>AX	= 0x02
_A523506CC_131:;				=>>_A523506CC_131:;
	asm	AR = AX				=>>AR = AX
_A523506CC_132:;				=>>_A523506CC_132:;
	asm	io[IOP_IX] = AR			=>>io[IOP_IX] = AR
	
_A523506CC_133:;				=>>_A523506CC_133:;
	sAX	= 0x7FFF;			=>>AX	= 0x7FFF
_A523506CC_134:;				=>>_A523506CC_134:;
	asm	AR = AX				=>>AR = AX
_A523506CC_135:;				=>>_A523506CC_135:;
	asm	io[IOP_DAT] = AR		=>>io[IOP_DAT] = AR
_A523506CC_136:;				=>>_A523506CC_136:;
	asm	eni				=>>eni
_A523506CC_137:;				=>>_A523506CC_137:;
	asm	set io[INTENA].b3		=>>set io[INTENA].b3
L0E8FA404_52:;					=>>L0E8FA404_52:;
_A523506CC_138:;				=>>_A523506CC_138:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A523506CC_139:;				=>>_A523506CC_139:;
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




























































































