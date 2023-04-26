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
__int16 bts_ch0_get_ix[2];
__int16 PCMYIN_PTR;
__int16 PCMYOU_PTR;
__int16 PCMIN;
__int16 SampleCh0Rate;
align(512) __int16 PCMY[512];
__int16 SUBFLTI[4];
__int16 SUBFLTA;
__int16 SUBFLTP;
__int16 SUBFLTG;

// .bss ends _bss

// CODE segment

.code


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
naked rjmp void Sbb_Ch0GetBts();
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
rjmp void _ClearRenderBufB079D01D()
{
	__int16 _i_1_2;
	////////////////////////////
_AEA1507FC_85:;
	////////////////////////////
_AEA1507FC_86:;
	asm AX = PCMY+0;
_AEA1507FC_87:;
	asm	AR = AX
_AEA1507FC_88:;
	asm	I0 = AR
_AEA1507FC_89:;
	_i_1_2+0	= 0x0200;
LFB78B58C_28:;
_AEA1507FC_90:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_29;
	goto	LFB78B58C_27;
LFB78B58C_29:;
	////////////////////////////
_AEA1507FC_91:;
	sAX	= 0x0000;
_AEA1507FC_92:;
	asm	rm[I0++] = AX
	goto LFB78B58C_28;
LFB78B58C_27:;
LFB78B58C_26:;
_AEA1507FC_93:;
	return;
_ClearRenderBufB079D01D_end:;
_AEA1507FC_94:;
}

rjmp void _Sub3Initial96BE24F3()
{
_AEA1507FC_95:;
_AEA1507FC_96:;
	asm	dsi
_AEA1507FC_97:;
	asm	nop
	////////////////////////////
_AEA1507FC_98:;
_AEA1507FC_99:;
	_ClearRenderBufB079D01D();
_AEA1507FC_100:;
	asm	AR = PASR,0
_AEA1507FC_101:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_102:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_103:;
	io[0x3B]	= 0x0000;
_AEA1507FC_104:;
_AEA1507FC_105:;
	Subb3_Init();
LFB78B58C_30:;
_AEA1507FC_106:;
	return;
_Sub3Initial96BE24F3_end:;
_AEA1507FC_107:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_AEA1507FC_108:;
_AEA1507FC_109:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AEA1507FC_110:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_33;
	goto	LFB78B58C_32;
LFB78B58C_33:;
	////////////////////////////
_AEA1507FC_111:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_32:;
_AEA1507FC_112:;
_AEA1507FC_113:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AEA1507FC_114:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_31;
LFB78B58C_31:;
_AEA1507FC_115:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_AEA1507FC_116:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_AEA1507FC_117:;
_AEA1507FC_118:;
	asm	push CBL
_AEA1507FC_119:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_AEA1507FC_120:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_AEA1507FC_121:;
	asm	AR = AX
_AEA1507FC_122:;
	asm	I0 = AR
_AEA1507FC_123:;
	_i_1_2+0	= 0x0120;
LFB78B58C_36:;
_AEA1507FC_124:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_37;
	goto	LFB78B58C_35;
LFB78B58C_37:;
	////////////////////////////
_AEA1507FC_125:;
	sAX	= 0x0000;
_AEA1507FC_126:;
	asm	rm[I0++] = AX
	goto LFB78B58C_36;
LFB78B58C_35:;
_AEA1507FC_127:;
_AEA1507FC_128:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_129:;
	asm	pop CBL
LFB78B58C_34:;
_AEA1507FC_130:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_AEA1507FC_131:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_AEA1507FC_132:;
	////////////////////////////
_AEA1507FC_133:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_AEA1507FC_134:;
_AEA1507FC_135:;
	_Sub3Initial96BE24F3();
_AEA1507FC_136:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AEA1507FC_137:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AEA1507FC_138:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AEA1507FC_139:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AEA1507FC_140:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_141:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_142:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_AEA1507FC_143:;
	asm	set io[INTENA].b0
_AEA1507FC_144:;
	asm	eni
LFB78B58C_38:;
_AEA1507FC_145:;
	return;
_Sub3Play422CAD6D_end:;
_AEA1507FC_146:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_AEA1507FC_147:;
_AEA1507FC_148:;
	asm	push I1
_AEA1507FC_149:;
	asm	push P1
_AEA1507FC_150:;
	asm	push AX
_AEA1507FC_151:;
	asm	push BX
_AEA1507FC_152:;
	asm	push CX
_AEA1507FC_153:;
	asm	push DX
	////////////////////////////
_AEA1507FC_154:;
_AEA1507FC_155:;
	_PUSH_P1HHB411C24A();
LFB78B58C_39:;
_AEA1507FC_156:;
	return;
Sbb_Ch0GetBts_end:;
_AEA1507FC_157:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_sub3play_8ED4FA41_s(void)
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
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// public PCMY
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// public _WaitPCM_Empty_size53398B9D
// public _Sub3ZeroFillABFF23AA
// public _Sub3Play422CAD6D
// public SUBFLTI
// public SUBFLTA
// public SUBFLTP
// public SUBFLTG
// public _ClearRenderBufB079D01D
// public _Sub3Initial96BE24F3
// public Sbb_Ch0GetBts
// extern _PUSH_P1HHB411C24A:proc
// public ginit_code_sub3play_8ED4FA41_s
