
#include "crt0.h"













__int16 _flags026116D5;
__int16 _songidx8C42F7DA;
__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];



// CODE segment					=>>VarRM[0:4095]={
 _flags026116D5,_songidx8C42F7DA,_sub_vol980B1B83,_ticksA7263C09[2] 
};

.code


rjmp void _InitialDA4A7CC4();
rjmp void _CheckSongLimit402181B4();
rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();
rjmp void _ToneVolCtrl03CF265A();




.code



.data



.code
rjmp void L0E8FA404_29()			=>>L0E8FA404_29:
{
_A5A7AA303_103:;				=>>_A5A7AA303_103:;
	
_A5A7AA303_104:;				=>>_A5A7AA303_104:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A5A7AA303_105:;				=>>_A5A7AA303_105:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A5A7AA303_106:;				=>>_A5A7AA303_106:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A5A7AA303_107:;				=>>_A5A7AA303_107:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A5A7AA303_108:;				=>>_A5A7AA303_108:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_109:;				=>>_A5A7AA303_109:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_110:;				=>>_A5A7AA303_110:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_111:;				=>>_A5A7AA303_111:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_112:;				=>>_A5A7AA303_112:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_113:;				=>>_A5A7AA303_113:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_114:;				=>>_A5A7AA303_114:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_115:;				=>>_A5A7AA303_115:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A5A7AA303_116:;				=>>_A5A7AA303_116:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_A5A7AA303_117:;				=>>_A5A7AA303_117:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A5A7AA303_118:;				=>>_A5A7AA303_118:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A5A7AA303_119:;				=>>_A5A7AA303_119:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A5A7AA303_120:;				=>>_A5A7AA303_120:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_31:;					=>>L0E8FA404_31:;
_A5A7AA303_121:;				=>>_A5A7AA303_121:;
	return;					=>>rets
L0E8FA404_29_end:;				=>>L0E8FA404_29_end:;
_A5A7AA303_122:;				=>>_A5A7AA303_122:;
}

rjmp void L0E8FA404_32()			=>>L0E8FA404_32:
{
_A5A7AA303_123:;				=>>_A5A7AA303_123:;
	
_A5A7AA303_124:;				=>>_A5A7AA303_124:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_A5A7AA303_125:;				=>>_A5A7AA303_125:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_A5A7AA303_126:;				=>>_A5A7AA303_126:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_A5A7AA303_127:;				=>>_A5A7AA303_127:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
L0E8FA404_34:;					=>>L0E8FA404_34:;
_A5A7AA303_128:;				=>>_A5A7AA303_128:;
	return;					=>>rets
L0E8FA404_32_end:;				=>>L0E8FA404_32_end:;
_A5A7AA303_129:;				=>>_A5A7AA303_129:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_A5A7AA303_130:;				=>>_A5A7AA303_130:;
	
_A5A7AA303_131:;				=>>_A5A7AA303_131:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_132:;				=>>_A5A7AA303_132:;
_A5A7AA303_133:;				=>>_A5A7AA303_133:;
	NEARCALL(L0E8FA404_29);			=>>call	L0E8FA404_29
_A5A7AA303_134:;				=>>_A5A7AA303_134:;
_A5A7AA303_135:;				=>>_A5A7AA303_135:;
	NEARCALL(L0E8FA404_32);			=>>call	L0E8FA404_32
_A5A7AA303_136:;				=>>_A5A7AA303_136:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_137:;				=>>_A5A7AA303_137:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A5A7AA303_138:;				=>>_A5A7AA303_138:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_35:;					=>>L0E8FA404_35:;
_A5A7AA303_139:;				=>>_A5A7AA303_139:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A5A7AA303_140:;				=>>_A5A7AA303_140:;
}

rjmp void _CheckSongLimit402181B4()		=>>_CheckSongLimit402181B4:
{
_A5A7AA303_141:;				=>>_A5A7AA303_141:;
	
_A5A7AA303_142:;				=>>_A5A7AA303_142:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L0E8FA404_38;	=>>if ZR	jmp L0E8FA404_38
	goto	L0E8FA404_37;			=>>jmp	L0E8FA404_37
L0E8FA404_38:;					=>>L0E8FA404_38:;
	
_A5A7AA303_143:;				=>>_A5A7AA303_143:;
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
	goto L0E8FA404_39;			=>>jmp	L0E8FA404_39
L0E8FA404_37:;					=>>L0E8FA404_37:;
	
_A5A7AA303_144:;				=>>_A5A7AA303_144:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto L0E8FA404_41;	=>>if ZR	jmp L0E8FA404_41
	goto	L0E8FA404_40;			=>>jmp	L0E8FA404_40
L0E8FA404_41:;					=>>L0E8FA404_41:;
	
_A5A7AA303_145:;				=>>_A5A7AA303_145:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_40:;					=>>L0E8FA404_40:;
_A5A7AA303_146:;				=>>_A5A7AA303_146:;
L0E8FA404_39:;					=>>L0E8FA404_39:;
_A5A7AA303_147:;				=>>_A5A7AA303_147:;
L0E8FA404_36:;					=>>L0E8FA404_36:;
_A5A7AA303_148:;				=>>_A5A7AA303_148:;
	return;					=>>rets
_CheckSongLimit402181B4_end:;			=>>_CheckSongLimit402181B4_end:;
_A5A7AA303_149:;				=>>_A5A7AA303_149:;
}

rjmp void _RampUpFF7996DA()			=>>_RampUpFF7996DA:
{
_A5A7AA303_150:;				=>>_A5A7AA303_150:;
	
_A5A7AA303_151:;				=>>_A5A7AA303_151:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_44;	=>>if ZR	jmp L0E8FA404_44
	goto	L0E8FA404_43;			=>>jmp	L0E8FA404_43
L0E8FA404_44:;					=>>L0E8FA404_44:;
_A5A7AA303_152:;				=>>_A5A7AA303_152:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_43:;					=>>L0E8FA404_43:;
_A5A7AA303_153:;				=>>_A5A7AA303_153:;
_A5A7AA303_154:;				=>>_A5A7AA303_154:;
_A5A7AA303_155:;				=>>_A5A7AA303_155:;
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
	
_A5A7AA303_156:;				=>>_A5A7AA303_156:;
_A5A7AA303_157:;				=>>_A5A7AA303_157:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A5A7AA303_158:;				=>>_A5A7AA303_158:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_45:;					=>>L0E8FA404_45:;
_A5A7AA303_159:;				=>>_A5A7AA303_159:;
_A5A7AA303_160:;				=>>_A5A7AA303_160:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_42:;					=>>L0E8FA404_42:;
_A5A7AA303_161:;				=>>_A5A7AA303_161:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_A5A7AA303_162:;				=>>_A5A7AA303_162:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_A5A7AA303_163:;				=>>_A5A7AA303_163:;
	
_A5A7AA303_164:;				=>>_A5A7AA303_164:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_49;	=>>if ZR	jmp L0E8FA404_49
	goto	L0E8FA404_48;			=>>jmp	L0E8FA404_48
L0E8FA404_49:;					=>>L0E8FA404_49:;
_A5A7AA303_165:;				=>>_A5A7AA303_165:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_48:;					=>>L0E8FA404_48:;
_A5A7AA303_166:;				=>>_A5A7AA303_166:;
_A5A7AA303_167:;				=>>_A5A7AA303_167:;
_A5A7AA303_168:;				=>>_A5A7AA303_168:;
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
	
_A5A7AA303_169:;				=>>_A5A7AA303_169:;
_A5A7AA303_170:;				=>>_A5A7AA303_170:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A5A7AA303_171:;				=>>_A5A7AA303_171:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_50:;					=>>L0E8FA404_50:;
_A5A7AA303_172:;				=>>_A5A7AA303_172:;
_A5A7AA303_173:;				=>>_A5A7AA303_173:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_47:;					=>>L0E8FA404_47:;
_A5A7AA303_174:;				=>>_A5A7AA303_174:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_A5A7AA303_175:;				=>>_A5A7AA303_175:;
}

rjmp void _ToneVolCtrl03CF265A()		=>>_ToneVolCtrl03CF265A:
{
_A5A7AA303_176:;				=>>_A5A7AA303_176:;
	
_A5A7AA303_177:;				=>>_A5A7AA303_177:;
	sAX	= 0;				=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L0E8FA404_54;		=>>if ZR	jmp L0E8FA404_54
	sAX	= 1;				=>>AX	= 0x01
L0E8FA404_54:;					=>>L0E8FA404_54:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L0E8FA404_55;	=>>if NZ	jmp L0E8FA404_55
	goto	L0E8FA404_53;			=>>jmp	L0E8FA404_53
L0E8FA404_55:;					=>>L0E8FA404_55:;
	
_A5A7AA303_178:;				=>>_A5A7AA303_178:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x100F;			=>>CX	= 0x100F
	sfx_CMP_AX_CX_JG();			=>>pch	= sfx_CMP_AX_CX_JG;lcall	sfx_CMP_AX_CX_JG
	if(__je__)	goto L0E8FA404_57;	=>>if ZR	jmp L0E8FA404_57
	goto	L0E8FA404_56;			=>>jmp	L0E8FA404_56
L0E8FA404_57:;					=>>L0E8FA404_57:;
_A5A7AA303_179:;				=>>_A5A7AA303_179:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0010;			=>>CX	= 0x10
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_56:;					=>>L0E8FA404_56:;
_A5A7AA303_180:;				=>>_A5A7AA303_180:;
	goto L0E8FA404_58;			=>>jmp	L0E8FA404_58
L0E8FA404_53:;					=>>L0E8FA404_53:;
	
_A5A7AA303_181:;				=>>_A5A7AA303_181:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x7FFF;			=>>CX	= 0x7FFF
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto L0E8FA404_60;	=>>if ZR	jmp L0E8FA404_60
	goto	L0E8FA404_59;			=>>jmp	L0E8FA404_59
L0E8FA404_60:;					=>>L0E8FA404_60:;
_A5A7AA303_182:;				=>>_A5A7AA303_182:;
	sSI	= (int)&dtxfltg;		=>>I1	= dtxfltg
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
L0E8FA404_59:;					=>>L0E8FA404_59:;
_A5A7AA303_183:;				=>>_A5A7AA303_183:;
L0E8FA404_58:;					=>>L0E8FA404_58:;
_A5A7AA303_184:;				=>>_A5A7AA303_184:;
L0E8FA404_52:;					=>>L0E8FA404_52:;
_A5A7AA303_185:;				=>>_A5A7AA303_185:;
	return;					=>>rets
_ToneVolCtrl03CF265A_end:;			=>>_ToneVolCtrl03CF265A_end:;
_A5A7AA303_186:;				=>>_A5A7AA303_186:;
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






















































































