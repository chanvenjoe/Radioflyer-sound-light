
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
_AFFC519C6_103:;				=>>_AFFC519C6_103:;
	
_AFFC519C6_104:;				=>>_AFFC519C6_104:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AFFC519C6_105:;				=>>_AFFC519C6_105:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AFFC519C6_106:;				=>>_AFFC519C6_106:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AFFC519C6_107:;				=>>_AFFC519C6_107:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AFFC519C6_108:;				=>>_AFFC519C6_108:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_109:;				=>>_AFFC519C6_109:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_110:;				=>>_AFFC519C6_110:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_111:;				=>>_AFFC519C6_111:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_112:;				=>>_AFFC519C6_112:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_113:;				=>>_AFFC519C6_113:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_114:;				=>>_AFFC519C6_114:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_115:;				=>>_AFFC519C6_115:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AFFC519C6_116:;				=>>_AFFC519C6_116:;
	io[0x3C]	= 0x003F;		=>>AR	= 0x3F;io[0x3C]	= AR
_AFFC519C6_117:;				=>>_AFFC519C6_117:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AFFC519C6_118:;				=>>_AFFC519C6_118:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AFFC519C6_119:;				=>>_AFFC519C6_119:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AFFC519C6_120:;				=>>_AFFC519C6_120:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L0E8FA404_31:;					=>>L0E8FA404_31:;
_AFFC519C6_121:;				=>>_AFFC519C6_121:;
	return;					=>>rets
L0E8FA404_29_end:;				=>>L0E8FA404_29_end:;
_AFFC519C6_122:;				=>>_AFFC519C6_122:;
}

rjmp void L0E8FA404_32()			=>>L0E8FA404_32:
{
_AFFC519C6_123:;				=>>_AFFC519C6_123:;
	
_AFFC519C6_124:;				=>>_AFFC519C6_124:;
	io[0x04]	= 0x000F;		=>>AR	= 0x0F;io[0x04]	= AR
_AFFC519C6_125:;				=>>_AFFC519C6_125:;
	io[0x05]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x05]	= AR
_AFFC519C6_126:;				=>>_AFFC519C6_126:;
	io[0x07]	= 0x0000;		=>>AR	= 0x00;io[0x07]	= AR
_AFFC519C6_127:;				=>>_AFFC519C6_127:;
	io[0x08]	= 0xFFFF;		=>>AR	= 0xFFFF;io[0x08]	= AR
L0E8FA404_34:;					=>>L0E8FA404_34:;
_AFFC519C6_128:;				=>>_AFFC519C6_128:;
	return;					=>>rets
L0E8FA404_32_end:;				=>>L0E8FA404_32_end:;
_AFFC519C6_129:;				=>>_AFFC519C6_129:;
}

rjmp void _InitialDA4A7CC4()			=>>_InitialDA4A7CC4:
{
_AFFC519C6_130:;				=>>_AFFC519C6_130:;
	
_AFFC519C6_131:;				=>>_AFFC519C6_131:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AFFC519C6_132:;				=>>_AFFC519C6_132:;
_AFFC519C6_133:;				=>>_AFFC519C6_133:;
	NEARCALL(L0E8FA404_29);			=>>call	L0E8FA404_29
_AFFC519C6_134:;				=>>_AFFC519C6_134:;
_AFFC519C6_135:;				=>>_AFFC519C6_135:;
	NEARCALL(L0E8FA404_32);			=>>call	L0E8FA404_32
_AFFC519C6_136:;				=>>_AFFC519C6_136:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AFFC519C6_137:;				=>>_AFFC519C6_137:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AFFC519C6_138:;				=>>_AFFC519C6_138:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_35:;					=>>L0E8FA404_35:;
_AFFC519C6_139:;				=>>_AFFC519C6_139:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AFFC519C6_140:;				=>>_AFFC519C6_140:;
}

rjmp void _CheckSongLimit402181B4()		=>>_CheckSongLimit402181B4:
{
_AFFC519C6_141:;				=>>_AFFC519C6_141:;
	
_AFFC519C6_142:;				=>>_AFFC519C6_142:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L0E8FA404_38;	=>>if ZR	jmp L0E8FA404_38
	goto	L0E8FA404_37;			=>>jmp	L0E8FA404_37
L0E8FA404_38:;					=>>L0E8FA404_38:;
	
_AFFC519C6_143:;				=>>_AFFC519C6_143:;
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
	goto L0E8FA404_39;			=>>jmp	L0E8FA404_39
L0E8FA404_37:;					=>>L0E8FA404_37:;
	
_AFFC519C6_144:;				=>>_AFFC519C6_144:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = dtxsongcnt+0;			=>>I1 = dtxsongcnt+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto L0E8FA404_41;	=>>if ZR	jmp L0E8FA404_41
	goto	L0E8FA404_40;			=>>jmp	L0E8FA404_40
L0E8FA404_41:;					=>>L0E8FA404_41:;
	
_AFFC519C6_145:;				=>>_AFFC519C6_145:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_40:;					=>>L0E8FA404_40:;
_AFFC519C6_146:;				=>>_AFFC519C6_146:;
L0E8FA404_39:;					=>>L0E8FA404_39:;
_AFFC519C6_147:;				=>>_AFFC519C6_147:;
L0E8FA404_36:;					=>>L0E8FA404_36:;
_AFFC519C6_148:;				=>>_AFFC519C6_148:;
	return;					=>>rets
_CheckSongLimit402181B4_end:;			=>>_CheckSongLimit402181B4_end:;
_AFFC519C6_149:;				=>>_AFFC519C6_149:;
}

rjmp void _RampUpFF7996DA()			=>>_RampUpFF7996DA:
{
_AFFC519C6_150:;				=>>_AFFC519C6_150:;
	
_AFFC519C6_151:;				=>>_AFFC519C6_151:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x003F;			=>>CX	= 0x3F
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_44;	=>>if ZR	jmp L0E8FA404_44
	goto	L0E8FA404_43;			=>>jmp	L0E8FA404_43
L0E8FA404_44:;					=>>L0E8FA404_44:;
_AFFC519C6_152:;				=>>_AFFC519C6_152:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_43:;					=>>L0E8FA404_43:;
_AFFC519C6_153:;				=>>_AFFC519C6_153:;
_AFFC519C6_154:;				=>>_AFFC519C6_154:;
_AFFC519C6_155:;				=>>_AFFC519C6_155:;
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
	
_AFFC519C6_156:;				=>>_AFFC519C6_156:;
_AFFC519C6_157:;				=>>_AFFC519C6_157:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_AFFC519C6_158:;				=>>_AFFC519C6_158:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_45:;					=>>L0E8FA404_45:;
_AFFC519C6_159:;				=>>_AFFC519C6_159:;
_AFFC519C6_160:;				=>>_AFFC519C6_160:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_42;			=>>jmp	L0E8FA404_42
L0E8FA404_42:;					=>>L0E8FA404_42:;
_AFFC519C6_161:;				=>>_AFFC519C6_161:;
	return;					=>>rets
_RampUpFF7996DA_end:;				=>>_RampUpFF7996DA_end:;
_AFFC519C6_162:;				=>>_AFFC519C6_162:;
}

rjmp void _RampDown1D382EDA()			=>>_RampDown1D382EDA:
{
_AFFC519C6_163:;				=>>_AFFC519C6_163:;
	
_AFFC519C6_164:;				=>>_AFFC519C6_164:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm AR = 0x003F;			=>>AR = 0x003F//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L0E8FA404_49;	=>>if ZR	jmp L0E8FA404_49
	goto	L0E8FA404_48;			=>>jmp	L0E8FA404_48
L0E8FA404_49:;					=>>L0E8FA404_49:;
_AFFC519C6_165:;				=>>_AFFC519C6_165:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_48:;					=>>L0E8FA404_48:;
_AFFC519C6_166:;				=>>_AFFC519C6_166:;
_AFFC519C6_167:;				=>>_AFFC519C6_167:;
_AFFC519C6_168:;				=>>_AFFC519C6_168:;
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
	
_AFFC519C6_169:;				=>>_AFFC519C6_169:;
_AFFC519C6_170:;				=>>_AFFC519C6_170:;
	_GetTickCount18DC070C();		=>>pch	= _GetTickCount18DC070C;lcall	_GetTickCount18DC070C
	asm I1 = _ticksA7263C09+0;		=>>I1 = _ticksA7263C09+0//
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_AFFC519C6_171:;				=>>_AFFC519C6_171:;
	sSI	= (int)&_sub_vol980B1B83;	=>>I1	= _sub_vol980B1B83
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX--;					=>>AX--
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
L0E8FA404_50:;					=>>L0E8FA404_50:;
_AFFC519C6_172:;				=>>_AFFC519C6_172:;
_AFFC519C6_173:;				=>>_AFFC519C6_173:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L0E8FA404_47;			=>>jmp	L0E8FA404_47
L0E8FA404_47:;					=>>L0E8FA404_47:;
_AFFC519C6_174:;				=>>_AFFC519C6_174:;
	return;					=>>rets
_RampDown1D382EDA_end:;				=>>_RampDown1D382EDA_end:;
_AFFC519C6_175:;				=>>_AFFC519C6_175:;
}

rjmp void _ToneVolCtrl03CF265A()		=>>_ToneVolCtrl03CF265A:
{
_AFFC519C6_176:;				=>>_AFFC519C6_176:;
	
_AFFC519C6_177:;				=>>_AFFC519C6_177:;
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
	
_AFFC519C6_178:;				=>>_AFFC519C6_178:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x100F;			=>>CX	= 0x100F
	sfx_CMP_AX_CX_JG();			=>>pch	= sfx_CMP_AX_CX_JG;lcall	sfx_CMP_AX_CX_JG
	if(__je__)	goto L0E8FA404_57;	=>>if ZR	jmp L0E8FA404_57
	goto	L0E8FA404_56;			=>>jmp	L0E8FA404_56
L0E8FA404_57:;					=>>L0E8FA404_57:;
_AFFC519C6_179:;				=>>_AFFC519C6_179:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0010;			=>>CX	= 0x10
	sAX	= sAX - sCX;			=>>AR	= CX;AX	-= AR
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L0E8FA404_56:;					=>>L0E8FA404_56:;
_AFFC519C6_180:;				=>>_AFFC519C6_180:;
	goto L0E8FA404_58;			=>>jmp	L0E8FA404_58
L0E8FA404_53:;					=>>L0E8FA404_53:;
	
_AFFC519C6_181:;				=>>_AFFC519C6_181:;
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x7FFF;			=>>CX	= 0x7FFF
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto L0E8FA404_60;	=>>if ZR	jmp L0E8FA404_60
	goto	L0E8FA404_59;			=>>jmp	L0E8FA404_59
L0E8FA404_60:;					=>>L0E8FA404_60:;
_AFFC519C6_182:;				=>>_AFFC519C6_182:;
	sSI	= (int)&dtxfltg;		=>>I1	= dtxfltg
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sAX++;					=>>AX++
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
L0E8FA404_59:;					=>>L0E8FA404_59:;
_AFFC519C6_183:;				=>>_AFFC519C6_183:;
L0E8FA404_58:;					=>>L0E8FA404_58:;
_AFFC519C6_184:;				=>>_AFFC519C6_184:;
L0E8FA404_52:;					=>>L0E8FA404_52:;
_AFFC519C6_185:;				=>>_AFFC519C6_185:;
	return;					=>>rets
_ToneVolCtrl03CF265A_end:;			=>>_ToneVolCtrl03CF265A_end:;
_AFFC519C6_186:;				=>>_AFFC519C6_186:;
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






















































































