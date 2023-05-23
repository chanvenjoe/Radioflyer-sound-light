
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
_A8ADEC9C4_78:;					=>>_A8ADEC9C4_78:;
	
_A8ADEC9C4_79:;					=>>_A8ADEC9C4_79:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_33;	=>>if ZR	jmp L0E8FA404_33
	goto	L0E8FA404_32;			=>>jmp	L0E8FA404_32
L0E8FA404_33:;					=>>L0E8FA404_33:;
_A8ADEC9C4_80:;					=>>_A8ADEC9C4_80:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_31;			=>>jmp	L0E8FA404_31
L0E8FA404_32:;					=>>L0E8FA404_32:;
_A8ADEC9C4_81:;					=>>_A8ADEC9C4_81:;
_A8ADEC9C4_82:;					=>>_A8ADEC9C4_82:;
_A8ADEC9C4_83:;					=>>_A8ADEC9C4_83:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_35;	=>>if ZR	jmp L0E8FA404_35
	goto	L0E8FA404_34;			=>>jmp	L0E8FA404_34
L0E8FA404_35:;					=>>L0E8FA404_35:;
	
_A8ADEC9C4_84:;					=>>_A8ADEC9C4_84:;
_A8ADEC9C4_85:;					=>>_A8ADEC9C4_85:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A8ADEC9C4_86:;					=>>_A8ADEC9C4_86:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_34:;					=>>L0E8FA404_34:;
_A8ADEC9C4_87:;					=>>_A8ADEC9C4_87:;
_A8ADEC9C4_88:;					=>>_A8ADEC9C4_88:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_31;			=>>jmp	L0E8FA404_31
L0E8FA404_31:;					=>>L0E8FA404_31:;
_A8ADEC9C4_89:;					=>>_A8ADEC9C4_89:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_A8ADEC9C4_90:;					=>>_A8ADEC9C4_90:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_A8ADEC9C4_91:;					=>>_A8ADEC9C4_91:;
	
_A8ADEC9C4_92:;					=>>_A8ADEC9C4_92:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_38;	=>>if ZR	jmp L0E8FA404_38
	goto	L0E8FA404_37;			=>>jmp	L0E8FA404_37
L0E8FA404_38:;					=>>L0E8FA404_38:;
_A8ADEC9C4_93:;					=>>_A8ADEC9C4_93:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_36;			=>>jmp	L0E8FA404_36
L0E8FA404_37:;					=>>L0E8FA404_37:;
_A8ADEC9C4_94:;					=>>_A8ADEC9C4_94:;
_A8ADEC9C4_95:;					=>>_A8ADEC9C4_95:;
_A8ADEC9C4_96:;					=>>_A8ADEC9C4_96:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sCX	= *(__int16*)sSI++;		=>>CX	= rm[I1++]
	sBX	= *(__int16*)sSI--;		=>>BX	= rm[I1--]
	sfx_SUBLONG();				=>>AR	= CX;AX	= AX - AR;AR	= BX;DX	= DX - AR + C - 1;
	sCX	= 0x0000;			=>>CX	= 0x00
	sBX	= 0x0005;			=>>BX	= 0x05
	sfx_CMPLONG_JA();			=>>pch	= sfx_CMPLONG_JA;lcall	sfx_CMPLONG_JA
	if(__je__)	goto L0E8FA404_40;	=>>if ZR	jmp L0E8FA404_40
	goto	L0E8FA404_39;			=>>jmp	L0E8FA404_39
L0E8FA404_40:;					=>>L0E8FA404_40:;
	
_A8ADEC9C4_97:;					=>>_A8ADEC9C4_97:;
_A8ADEC9C4_98:;					=>>_A8ADEC9C4_98:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A8ADEC9C4_99:;					=>>_A8ADEC9C4_99:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_39:;					=>>L0E8FA404_39:;
_A8ADEC9C4_100:;				=>>_A8ADEC9C4_100:;
_A8ADEC9C4_101:;				=>>_A8ADEC9C4_101:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_36;			=>>jmp	L0E8FA404_36
L0E8FA404_36:;					=>>L0E8FA404_36:;
_A8ADEC9C4_102:;				=>>_A8ADEC9C4_102:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_A8ADEC9C4_103:;				=>>_A8ADEC9C4_103:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A8ADEC9C4_104:;				=>>_A8ADEC9C4_104:;
	
_A8ADEC9C4_105:;				=>>_A8ADEC9C4_105:;
	io[0x67]	= 0x0007;		=>>AR	= 0x07;io[0x67]	= AR
_A8ADEC9C4_106:;				=>>_A8ADEC9C4_106:;
	io[0x06]	= 0xC004;		=>>AR	= 0xC004;io[0x06]	= AR
_A8ADEC9C4_107:;				=>>_A8ADEC9C4_107:;
	io[0x05]	= 0x0000;		=>>AR	= 0x00;io[0x05]	= AR
_A8ADEC9C4_108:;				=>>_A8ADEC9C4_108:;
	io[0x09]	= 0x0000;		=>>AR	= 0x00;io[0x09]	= AR
_A8ADEC9C4_109:;				=>>_A8ADEC9C4_109:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
	
_A8ADEC9C4_110:;				=>>_A8ADEC9C4_110:;
	sAX	= 0x0002;			=>>AX	= 0x02
_A8ADEC9C4_111:;				=>>_A8ADEC9C4_111:;
	asm	AR = AX				=>>AR = AX
_A8ADEC9C4_112:;				=>>_A8ADEC9C4_112:;
	asm	io[IOP_IX] = AR			=>>io[IOP_IX] = AR
	
_A8ADEC9C4_113:;				=>>_A8ADEC9C4_113:;
	sAX	= 0x2AAA;			=>>AX	= 0x2AAA
_A8ADEC9C4_114:;				=>>_A8ADEC9C4_114:;
	asm	AR = AX				=>>AR = AX
_A8ADEC9C4_115:;				=>>_A8ADEC9C4_115:;
	asm	io[IOP_DAT] = AR		=>>io[IOP_DAT] = AR
_A8ADEC9C4_116:;				=>>_A8ADEC9C4_116:;
	asm	eni				=>>eni
_A8ADEC9C4_117:;				=>>_A8ADEC9C4_117:;
	asm	set io[INTENA].b3		=>>set io[INTENA].b3
L0E8FA404_41:;					=>>L0E8FA404_41:;
_A8ADEC9C4_118:;				=>>_A8ADEC9C4_118:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A8ADEC9C4_119:;				=>>_A8ADEC9C4_119:;
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




























































































