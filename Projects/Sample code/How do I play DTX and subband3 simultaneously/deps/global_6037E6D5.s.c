// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
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
rjmp void L0E8FA404_29()
{
_A5A7AA303_103:;
	////////////////////////////
_A5A7AA303_104:;
	io[0x16]	= 0x0000;
_A5A7AA303_105:;
	io[0x16]	= 0x0000;
_A5A7AA303_106:;
	io[0x16]	= 0x0000;
_A5A7AA303_107:;
	io[0x16]	= 0x0000;
_A5A7AA303_108:;
	io[0x36]	= 0x0000;
_A5A7AA303_109:;
	io[0x36]	= 0x0000;
_A5A7AA303_110:;
	io[0x36]	= 0x0000;
_A5A7AA303_111:;
	io[0x36]	= 0x0000;
_A5A7AA303_112:;
	io[0x36]	= 0x0000;
_A5A7AA303_113:;
	io[0x36]	= 0x0000;
_A5A7AA303_114:;
	io[0x36]	= 0x0000;
_A5A7AA303_115:;
	io[0x36]	= 0x0000;
_A5A7AA303_116:;
	io[0x3C]	= 0x003F;
_A5A7AA303_117:;
	sAX	= io[0x3C];
_A5A7AA303_118:;
	asm	set io[MISC].b9
_A5A7AA303_119:;
	asm	set io[MISC].b8
_A5A7AA303_120:;
	asm	set io[MISC].b4
L0E8FA404_31:;
_A5A7AA303_121:;
	return;
L0E8FA404_29_end:;
_A5A7AA303_122:;
}

rjmp void L0E8FA404_32()
{
_A5A7AA303_123:;
	////////////////////////////
_A5A7AA303_124:;
	io[0x04]	= 0x000F;
_A5A7AA303_125:;
	io[0x05]	= 0xFFFF;
_A5A7AA303_126:;
	io[0x07]	= 0x0000;
_A5A7AA303_127:;
	io[0x08]	= 0xFFFF;
L0E8FA404_34:;
_A5A7AA303_128:;
	return;
L0E8FA404_32_end:;
_A5A7AA303_129:;
}

rjmp void _InitialDA4A7CC4()
{
_A5A7AA303_130:;
	////////////////////////////
_A5A7AA303_131:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A5A7AA303_132:;
_A5A7AA303_133:;
	NEARCALL(L0E8FA404_29);
_A5A7AA303_134:;
_A5A7AA303_135:;
	NEARCALL(L0E8FA404_32);
_A5A7AA303_136:;
	sAX	= 0x0000;
	asm I1 = _flags026116D5+0;
	*(__int16*)sSI	= sAX
_A5A7AA303_137:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A5A7AA303_138:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
L0E8FA404_35:;
_A5A7AA303_139:;
	return;
_InitialDA4A7CC4_end:;
_A5A7AA303_140:;
}

rjmp void _CheckSongLimit402181B4()
{
_A5A7AA303_141:;
	////////////////////////////
_A5A7AA303_142:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L0E8FA404_38;
	goto	L0E8FA404_37;
L0E8FA404_38:;
	////////////////////////////
_A5A7AA303_143:;
	asm I1 = dtxsongcnt+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
	goto L0E8FA404_39;
L0E8FA404_37:;
	////////////////////////////
_A5A7AA303_144:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	asm I1 = dtxsongcnt+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto L0E8FA404_41;
	goto	L0E8FA404_40;
L0E8FA404_41:;
	////////////////////////////
_A5A7AA303_145:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
L0E8FA404_40:;
_A5A7AA303_146:;
L0E8FA404_39:;
_A5A7AA303_147:;
L0E8FA404_36:;
_A5A7AA303_148:;
	return;
_CheckSongLimit402181B4_end:;
_A5A7AA303_149:;
}

rjmp void _RampUpFF7996DA()
{
_A5A7AA303_150:;
	////////////////////////////
_A5A7AA303_151:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_44;
	goto	L0E8FA404_43;
L0E8FA404_44:;
_A5A7AA303_152:;
	sAX	= 0x0000;
	goto L0E8FA404_42;
L0E8FA404_43:;
_A5A7AA303_153:;
_A5A7AA303_154:;
_A5A7AA303_155:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_46;
	goto	L0E8FA404_45;
L0E8FA404_46:;
	////////////////////////////
_A5A7AA303_156:;
_A5A7AA303_157:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A5A7AA303_158:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_45:;
_A5A7AA303_159:;
_A5A7AA303_160:;
	sAX	= 0x0001;
	goto L0E8FA404_42;
L0E8FA404_42:;
_A5A7AA303_161:;
	return;
_RampUpFF7996DA_end:;
_A5A7AA303_162:;
}

rjmp void _RampDown1D382EDA()
{
_A5A7AA303_163:;
	////////////////////////////
_A5A7AA303_164:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_49;
	goto	L0E8FA404_48;
L0E8FA404_49:;
_A5A7AA303_165:;
	sAX	= 0x0000;
	goto L0E8FA404_47;
L0E8FA404_48:;
_A5A7AA303_166:;
_A5A7AA303_167:;
_A5A7AA303_168:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sCX	= *(__int16*)sSI++;
	sBX	= *(__int16*)sSI--;
	sfx_SUBLONG();
	sCX	= 0x0000;
	sBX	= 0x0005;
	sfx_CMPLONG_JA();
	if(__je__)	goto L0E8FA404_51;
	goto	L0E8FA404_50;
L0E8FA404_51:;
	////////////////////////////
_A5A7AA303_169:;
_A5A7AA303_170:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_A5A7AA303_171:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_50:;
_A5A7AA303_172:;
_A5A7AA303_173:;
	sAX	= 0x0001;
	goto L0E8FA404_47;
L0E8FA404_47:;
_A5A7AA303_174:;
	return;
_RampDown1D382EDA_end:;
_A5A7AA303_175:;
}

rjmp void _ToneVolCtrl03CF265A()
{
_A5A7AA303_176:;
	////////////////////////////
_A5A7AA303_177:;
	sAX	= 0;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L0E8FA404_54;
	sAX	= 1;
L0E8FA404_54:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L0E8FA404_55;
	goto	L0E8FA404_53;
L0E8FA404_55:;
	////////////////////////////
_A5A7AA303_178:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x100F;
	sfx_CMP_AX_CX_JG();
	if(__je__)	goto L0E8FA404_57;
	goto	L0E8FA404_56;
L0E8FA404_57:;
_A5A7AA303_179:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0010;
	sAX	= sAX - sCX;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
L0E8FA404_56:;
_A5A7AA303_180:;
	goto L0E8FA404_58;
L0E8FA404_53:;
	////////////////////////////
_A5A7AA303_181:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x7FFF;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L0E8FA404_60;
	goto	L0E8FA404_59;
L0E8FA404_60:;
_A5A7AA303_182:;
	sSI	= (int)&dtxfltg;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
L0E8FA404_59:;
_A5A7AA303_183:;
L0E8FA404_58:;
_A5A7AA303_184:;
L0E8FA404_52:;
_A5A7AA303_185:;
	return;
_ToneVolCtrl03CF265A_end:;
_A5A7AA303_186:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_global_6037E6D5_s(void)
{
	return;
}

// .code ends _ginit


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

// extern inp:proc
// extern outp:proc
// extern get_SATV:proc
// extern get_CBL:proc
// extern get_FLTO:proc
// extern get_FLTA:proc
// extern get_FLTP:proc
// extern get_FLTI:proc
// extern read_I0:proc
// extern read_I0P:proc
// extern read_I0P2:proc
// extern read_I0M:proc
// extern get_I0:proc
// extern read_P0:proc
// extern read_P0P:proc
// extern read_P0M:proc
// extern get_P0:proc
// extern set_IntVWR:proc
// extern clr_IntVWR:proc
// extern set_IntPrWR:proc
// extern clr_IntPrWR:proc
// extern set_INTENA:proc
// extern get_INTENA:proc
// extern set_INTREQ:proc
// extern get_INTREQ:proc
// extern set_IntVect:proc
// extern get_IntVect:proc
// extern get_IOC_PA:proc
// extern get_IOC_PB:proc
// extern get_IOC_PC:proc
// extern get_PortA:proc
// extern get_PortB:proc
// extern get_PortC:proc
// extern set_MISC:proc
// extern get_MISC:proc
// extern get_MACOP:proc
// extern vXCHG:proc
// extern cpuHalt:proc
// extern FA:proc
// extern _ClearTickCount5DDE4003:proc
// extern _GetTickCount18DC070C:proc
// extern _delay6F9F34ED:proc
// extern _lptr_read:proc
// extern _lptr_read32:proc
// extern _lptr_write:proc
// extern _lptr_write32:proc
// extern dtxfltg:word
// extern dtxsongcnt:word
// extern dtxtonech:word
// extern dtxRender:long
// extern dtxInitialize:proc
// extern dtxInitParameters:proc
// extern dtxReadTune:proc
// extern dtxStopSong:proc
// extern dtxStartBGServe:proc
// extern dtxStopBGServe:proc
// extern _dtxDoEvent05EA2C8C:proc
// extern _dtxFindToneEntry12F3B4ED:proc
// extern _dtxPlaySong5B7DBDA5:proc
// extern _dtxCheckSongEnd870A9712:proc
// public _flags026116D5
// public _songidx8C42F7DA
// public _ticksA7263C09
// public _sub_vol980B1B83
// extern subdat0:proc
// extern subdat1:proc
// public _InitialDA4A7CC4
// public _CheckSongLimit402181B4
// public _RampUpFF7996DA
// public _RampDown1D382EDA
// public _ToneVolCtrl03CF265A
// extern ChangePWMIntToDynCache:proc
// extern bts_ch0_get_ix:long
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMIN:word
// extern SampleCh0Rate:word
// extern PCMY:word
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// extern _WaitPCM_Empty_size53398B9D:proc
// extern _Sub3ZeroFillABFF23AA:proc
// extern _Sub3Play422CAD6D:proc
// public ginit_code_global_6037E6D5_s
