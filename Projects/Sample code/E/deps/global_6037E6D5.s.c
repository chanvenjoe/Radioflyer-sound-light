// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _flags026116D5;
__int16 _songidx8C42F7DA;
__int16 _sub_vol980B1B83;
__int16 _ticksA7263C09[2];

// .bss ends _bss

// CODE segment

.code


rjmp void _InitialDA4A7CC4();
rjmp void _CheckSongLimit402181B4();
rjmp void _RampUpFF7996DA();
rjmp void _RampDown1D382EDA();
rjmp void _ToneVolCtrl03CF265A();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _text
.code
rjmp void L0E8FA404_28()
{
_A2C562ABC_104:;
	////////////////////////////
_A2C562ABC_105:;
	io[0x16]	= 0x0000;
_A2C562ABC_106:;
	io[0x16]	= 0x0000;
_A2C562ABC_107:;
	io[0x16]	= 0x0000;
_A2C562ABC_108:;
	io[0x16]	= 0x0000;
_A2C562ABC_109:;
	io[0x36]	= 0x0000;
_A2C562ABC_110:;
	io[0x36]	= 0x0000;
_A2C562ABC_111:;
	io[0x36]	= 0x0000;
_A2C562ABC_112:;
	io[0x36]	= 0x0000;
_A2C562ABC_113:;
	io[0x36]	= 0x0000;
_A2C562ABC_114:;
	io[0x36]	= 0x0000;
_A2C562ABC_115:;
	io[0x36]	= 0x0000;
_A2C562ABC_116:;
	io[0x36]	= 0x0000;
_A2C562ABC_117:;
	io[0x3C]	= 0x003F;
_A2C562ABC_118:;
	sAX	= io[0x3C];
_A2C562ABC_119:;
	asm	set io[MISC].b9
_A2C562ABC_120:;
	asm	set io[MISC].b8
_A2C562ABC_121:;
	asm	set io[MISC].b4
L0E8FA404_30:;
_A2C562ABC_122:;
	return;
L0E8FA404_28_end:;
_A2C562ABC_123:;
}

rjmp void L0E8FA404_31()
{
_A2C562ABC_124:;
	////////////////////////////
_A2C562ABC_125:;
	io[0x04]	= 0x000F;
_A2C562ABC_126:;
	io[0x05]	= 0xFFFF;
_A2C562ABC_127:;
	io[0x07]	= 0x0000;
_A2C562ABC_128:;
	io[0x08]	= 0xFFFF;
L0E8FA404_33:;
_A2C562ABC_129:;
	return;
L0E8FA404_31_end:;
_A2C562ABC_130:;
}

rjmp void _InitialDA4A7CC4()
{
_A2C562ABC_131:;
	////////////////////////////
_A2C562ABC_132:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_133:;
_A2C562ABC_134:;
	NEARCALL(L0E8FA404_28);
_A2C562ABC_135:;
_A2C562ABC_136:;
	NEARCALL(L0E8FA404_31);
_A2C562ABC_137:;
	sAX	= 0x0000;
	asm I1 = _flags026116D5+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_138:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A2C562ABC_139:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
L0E8FA404_34:;
_A2C562ABC_140:;
	return;
_InitialDA4A7CC4_end:;
_A2C562ABC_141:;
}

rjmp void _CheckSongLimit402181B4()
{
_A2C562ABC_142:;
	////////////////////////////
_A2C562ABC_143:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L0E8FA404_37;
	goto	L0E8FA404_36;
L0E8FA404_37:;
	////////////////////////////
_A2C562ABC_144:;
	asm I1 = dtxsongcnt+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
	goto L0E8FA404_38;
L0E8FA404_36:;
	////////////////////////////
_A2C562ABC_145:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	asm I1 = dtxsongcnt+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto L0E8FA404_40;
	goto	L0E8FA404_39;
L0E8FA404_40:;
	////////////////////////////
_A2C562ABC_146:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
L0E8FA404_39:;
_A2C562ABC_147:;
L0E8FA404_38:;
_A2C562ABC_148:;
L0E8FA404_35:;
_A2C562ABC_149:;
	return;
_CheckSongLimit402181B4_end:;
_A2C562ABC_150:;
}

rjmp void _RampUpFF7996DA()
{
_A2C562ABC_151:;
	////////////////////////////
_A2C562ABC_152:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_43;
	goto	L0E8FA404_42;
L0E8FA404_43:;
_A2C562ABC_153:;
	sAX	= 0x0000;
	goto L0E8FA404_41;
L0E8FA404_42:;
_A2C562ABC_154:;
_A2C562ABC_155:;
_A2C562ABC_156:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_45;
	goto	L0E8FA404_44;
L0E8FA404_45:;
	////////////////////////////
_A2C562ABC_157:;
_A2C562ABC_158:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
	////////////////////////////
_A2C562ABC_159:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_44:;
_A2C562ABC_160:;
_A2C562ABC_161:;
	sAX	= 0x0001;
	goto L0E8FA404_41;
L0E8FA404_41:;
_A2C562ABC_162:;
	return;
_RampUpFF7996DA_end:;
_A2C562ABC_163:;
}

rjmp void _RampDown1D382EDA()
{
_A2C562ABC_164:;
	////////////////////////////
_A2C562ABC_165:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_48;
	goto	L0E8FA404_47;
L0E8FA404_48:;
_A2C562ABC_166:;
	sAX	= 0x0000;
	goto L0E8FA404_46;
L0E8FA404_47:;
_A2C562ABC_167:;
_A2C562ABC_168:;
_A2C562ABC_169:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_50;
	goto	L0E8FA404_49;
L0E8FA404_50:;
	////////////////////////////
_A2C562ABC_170:;
_A2C562ABC_171:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
	////////////////////////////
_A2C562ABC_172:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_49:;
_A2C562ABC_173:;
_A2C562ABC_174:;
	sAX	= 0x0001;
	goto L0E8FA404_46;
L0E8FA404_46:;
_A2C562ABC_175:;
	return;
_RampDown1D382EDA_end:;
_A2C562ABC_176:;
}

rjmp void _ToneVolCtrl03CF265A()
{
_A2C562ABC_177:;
	////////////////////////////
_A2C562ABC_178:;
	sAX	= 0;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L0E8FA404_53;
	sAX	= 1;
L0E8FA404_53:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L0E8FA404_54;
	goto	L0E8FA404_52;
L0E8FA404_54:;
	////////////////////////////
_A2C562ABC_179:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x100F;
	sfx_CMP_AX_CX_JG();
	if(__je__)	goto L0E8FA404_56;
	goto	L0E8FA404_55;
L0E8FA404_56:;
_A2C562ABC_180:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0010;
	sAX	= sAX - sCX;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
L0E8FA404_55:;
_A2C562ABC_181:;
	goto L0E8FA404_57;
L0E8FA404_52:;
	////////////////////////////
_A2C562ABC_182:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x7FFF;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L0E8FA404_59;
	goto	L0E8FA404_58;
L0E8FA404_59:;
_A2C562ABC_183:;
	sSI	= (int)&dtxfltg;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
L0E8FA404_58:;
_A2C562ABC_184:;
L0E8FA404_57:;
_A2C562ABC_185:;
L0E8FA404_51:;
_A2C562ABC_186:;
	return;
_ToneVolCtrl03CF265A_end:;
_A2C562ABC_187:;
}

// .code ends _text


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _GetTickCount18DC070C:proc
// extern dtxfltg:word
// extern dtxsongcnt:word
// public _flags026116D5
// public _songidx8C42F7DA
// public _ticksA7263C09
// public _sub_vol980B1B83
// public _InitialDA4A7CC4
// public _CheckSongLimit402181B4
// public _RampUpFF7996DA
// public _RampDown1D382EDA
// public _ToneVolCtrl03CF265A
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMY:word
