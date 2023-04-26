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
_AFFC519C6_103:;
	////////////////////////////
_AFFC519C6_104:;
	io[0x16]	= 0x0000;
_AFFC519C6_105:;
	io[0x16]	= 0x0000;
_AFFC519C6_106:;
	io[0x16]	= 0x0000;
_AFFC519C6_107:;
	io[0x16]	= 0x0000;
_AFFC519C6_108:;
	io[0x36]	= 0x0000;
_AFFC519C6_109:;
	io[0x36]	= 0x0000;
_AFFC519C6_110:;
	io[0x36]	= 0x0000;
_AFFC519C6_111:;
	io[0x36]	= 0x0000;
_AFFC519C6_112:;
	io[0x36]	= 0x0000;
_AFFC519C6_113:;
	io[0x36]	= 0x0000;
_AFFC519C6_114:;
	io[0x36]	= 0x0000;
_AFFC519C6_115:;
	io[0x36]	= 0x0000;
_AFFC519C6_116:;
	io[0x3C]	= 0x003F;
_AFFC519C6_117:;
	sAX	= io[0x3C];
_AFFC519C6_118:;
	asm	set io[MISC].b9
_AFFC519C6_119:;
	asm	set io[MISC].b8
_AFFC519C6_120:;
	asm	set io[MISC].b4
L0E8FA404_31:;
_AFFC519C6_121:;
	return;
L0E8FA404_29_end:;
_AFFC519C6_122:;
}

rjmp void L0E8FA404_32()
{
_AFFC519C6_123:;
	////////////////////////////
_AFFC519C6_124:;
	io[0x04]	= 0x000F;
_AFFC519C6_125:;
	io[0x05]	= 0xFFFF;
_AFFC519C6_126:;
	io[0x07]	= 0x0000;
_AFFC519C6_127:;
	io[0x08]	= 0xFFFF;
L0E8FA404_34:;
_AFFC519C6_128:;
	return;
L0E8FA404_32_end:;
_AFFC519C6_129:;
}

rjmp void _InitialDA4A7CC4()
{
_AFFC519C6_130:;
	////////////////////////////
_AFFC519C6_131:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_132:;
_AFFC519C6_133:;
	NEARCALL(L0E8FA404_29);
_AFFC519C6_134:;
_AFFC519C6_135:;
	NEARCALL(L0E8FA404_32);
_AFFC519C6_136:;
	sAX	= 0x0000;
	asm I1 = _flags026116D5+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_137:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AFFC519C6_138:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
L0E8FA404_35:;
_AFFC519C6_139:;
	return;
_InitialDA4A7CC4_end:;
_AFFC519C6_140:;
}

rjmp void _CheckSongLimit402181B4()
{
_AFFC519C6_141:;
	////////////////////////////
_AFFC519C6_142:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L0E8FA404_38;
	goto	L0E8FA404_37;
L0E8FA404_38:;
	////////////////////////////
_AFFC519C6_143:;
	asm I1 = dtxsongcnt+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
	goto L0E8FA404_39;
L0E8FA404_37:;
	////////////////////////////
_AFFC519C6_144:;
	asm I1 = _songidx8C42F7DA+0;
	sAX	= *(__int16*)sSI;
	asm I1 = dtxsongcnt+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JGE();
	if(__je__)	goto L0E8FA404_41;
	goto	L0E8FA404_40;
L0E8FA404_41:;
	////////////////////////////
_AFFC519C6_145:;
	sAX	= 0x0000;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
L0E8FA404_40:;
_AFFC519C6_146:;
L0E8FA404_39:;
_AFFC519C6_147:;
L0E8FA404_36:;
_AFFC519C6_148:;
	return;
_CheckSongLimit402181B4_end:;
_AFFC519C6_149:;
}

rjmp void _RampUpFF7996DA()
{
_AFFC519C6_150:;
	////////////////////////////
_AFFC519C6_151:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x003F;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_44;
	goto	L0E8FA404_43;
L0E8FA404_44:;
_AFFC519C6_152:;
	sAX	= 0x0000;
	goto L0E8FA404_42;
L0E8FA404_43:;
_AFFC519C6_153:;
_AFFC519C6_154:;
_AFFC519C6_155:;
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
_AFFC519C6_156:;
_AFFC519C6_157:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_AFFC519C6_158:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_45:;
_AFFC519C6_159:;
_AFFC519C6_160:;
	sAX	= 0x0001;
	goto L0E8FA404_42;
L0E8FA404_42:;
_AFFC519C6_161:;
	return;
_RampUpFF7996DA_end:;
_AFFC519C6_162:;
}

rjmp void _RampDown1D382EDA()
{
_AFFC519C6_163:;
	////////////////////////////
_AFFC519C6_164:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x003F;
	asm AX = AX & AR;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L0E8FA404_49;
	goto	L0E8FA404_48;
L0E8FA404_49:;
_AFFC519C6_165:;
	sAX	= 0x0000;
	goto L0E8FA404_47;
L0E8FA404_48:;
_AFFC519C6_166:;
_AFFC519C6_167:;
_AFFC519C6_168:;
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
_AFFC519C6_169:;
_AFFC519C6_170:;
	_GetTickCount18DC070C();
	asm I1 = _ticksA7263C09+0;
	sfx_STORSILONG();
_AFFC519C6_171:;
	sSI	= (int)&_sub_vol980B1B83;
	sAX	= *(__int16*)sSI;
	sAX--;
	*(__int16*)sSI	= sAX;
	io[0x3C]	= sAX;
L0E8FA404_50:;
_AFFC519C6_172:;
_AFFC519C6_173:;
	sAX	= 0x0001;
	goto L0E8FA404_47;
L0E8FA404_47:;
_AFFC519C6_174:;
	return;
_RampDown1D382EDA_end:;
_AFFC519C6_175:;
}

rjmp void _ToneVolCtrl03CF265A()
{
_AFFC519C6_176:;
	////////////////////////////
_AFFC519C6_177:;
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
_AFFC519C6_178:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x100F;
	sfx_CMP_AX_CX_JG();
	if(__je__)	goto L0E8FA404_57;
	goto	L0E8FA404_56;
L0E8FA404_57:;
_AFFC519C6_179:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0010;
	sAX	= sAX - sCX;
	asm I1 = dtxfltg+0;
	*(__int16*)sSI	= sAX
L0E8FA404_56:;
_AFFC519C6_180:;
	goto L0E8FA404_58;
L0E8FA404_53:;
	////////////////////////////
_AFFC519C6_181:;
	asm I1 = dtxfltg+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x7FFF;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L0E8FA404_60;
	goto	L0E8FA404_59;
L0E8FA404_60:;
_AFFC519C6_182:;
	sSI	= (int)&dtxfltg;
	sAX	= *(__int16*)sSI;
	sAX++;
	*(__int16*)sSI	= sAX;
L0E8FA404_59:;
_AFFC519C6_183:;
L0E8FA404_58:;
_AFFC519C6_184:;
L0E8FA404_52:;
_AFFC519C6_185:;
	return;
_ToneVolCtrl03CF265A_end:;
_AFFC519C6_186:;
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
