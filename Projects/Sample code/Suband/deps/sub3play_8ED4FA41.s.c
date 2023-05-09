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
_A0D289B83_89:;
	////////////////////////////
_A0D289B83_90:;
	asm AX = PCMY+0;
_A0D289B83_91:;
	asm	AR = AX
_A0D289B83_92:;
	asm	I0 = AR
_A0D289B83_93:;
	_i_1_2+0	= 0x0200;
LFB78B58C_30:;
_A0D289B83_94:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_31;
	goto	LFB78B58C_29;
LFB78B58C_31:;
	////////////////////////////
_A0D289B83_95:;
	sAX	= 0x0000;
_A0D289B83_96:;
	asm	rm[I0++] = AX
	goto LFB78B58C_30;
LFB78B58C_29:;
LFB78B58C_28:;
_A0D289B83_97:;
	return;
_ClearRenderBufB079D01D_end:;
_A0D289B83_98:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A0D289B83_99:;
_A0D289B83_100:;
	asm	dsi
_A0D289B83_101:;
	asm	nop
	////////////////////////////
_A0D289B83_102:;
_A0D289B83_103:;
	_ClearRenderBufB079D01D();
_A0D289B83_104:;
	asm	AR = PASR,0
_A0D289B83_105:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0D289B83_106:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A0D289B83_107:;
	io[0x3B]	= 0x0000;
_A0D289B83_108:;
_A0D289B83_109:;
	Subb3_Init();
LFB78B58C_32:;
_A0D289B83_110:;
	return;
_Sub3Initial96BE24F3_end:;
_A0D289B83_111:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A0D289B83_112:;
_A0D289B83_113:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A0D289B83_114:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_35;
	goto	LFB78B58C_34;
LFB78B58C_35:;
	////////////////////////////
_A0D289B83_115:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_34:;
_A0D289B83_116:;
_A0D289B83_117:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A0D289B83_118:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_33;
LFB78B58C_33:;
_A0D289B83_119:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A0D289B83_120:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A0D289B83_121:;
_A0D289B83_122:;
	asm	push CBL
_A0D289B83_123:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A0D289B83_124:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A0D289B83_125:;
	asm	AR = AX
_A0D289B83_126:;
	asm	I0 = AR
_A0D289B83_127:;
	_i_1_2+0	= 0x0120;
LFB78B58C_38:;
_A0D289B83_128:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_39;
	goto	LFB78B58C_37;
LFB78B58C_39:;
	////////////////////////////
_A0D289B83_129:;
	sAX	= 0x0000;
_A0D289B83_130:;
	asm	rm[I0++] = AX
	goto LFB78B58C_38;
LFB78B58C_37:;
_A0D289B83_131:;
_A0D289B83_132:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A0D289B83_133:;
	asm	pop CBL
LFB78B58C_36:;
_A0D289B83_134:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A0D289B83_135:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A0D289B83_136:;
	////////////////////////////
_A0D289B83_137:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A0D289B83_138:;
_A0D289B83_139:;
	_Sub3Initial96BE24F3();
_A0D289B83_140:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0D289B83_141:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0D289B83_142:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0D289B83_143:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A0D289B83_144:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A0D289B83_145:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A0D289B83_146:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A0D289B83_147:;
	asm	set io[INTENA].b0
_A0D289B83_148:;
	asm	eni
LFB78B58C_40:;
_A0D289B83_149:;
	return;
_Sub3Play422CAD6D_end:;
_A0D289B83_150:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_A0D289B83_151:;
_A0D289B83_152:;
	asm	push I1
_A0D289B83_153:;
	asm	push P1
_A0D289B83_154:;
	asm	push AX
_A0D289B83_155:;
	asm	push BX
_A0D289B83_156:;
	asm	push CX
_A0D289B83_157:;
	asm	push DX
_A0D289B83_158:;
	asm	AR = P1.hh
_A0D289B83_159:;
	asm	push AR
	////////////////////////////
_A0D289B83_160:;
_A0D289B83_161:;
_A0D289B83_162:;
	asm I1 = bts_ch0_get_ix+0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sSI	= (int)&bts_ch0_get_ix[0];
	PUSH(sAX);
	PUSH(sDX);
	sfx_GETSILONG_BXCX();
	sAX = 0x0001;
	sDX = 0x0000;
	sfx_ADDLONG_BXCX_DXAX();
	sfx_STORSILONG_BXCX();
	sDX	= POP();
	sAX	= POP();
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	vXCHG(STACK[sSP + 0]);
_A0D289B83_163:;
	asm	pop AR
_A0D289B83_164:;
	asm	P1.hh = AR
_A0D289B83_165:;
	asm	AR = AX
	////////////////////////////
_A0D289B83_166:;
	asm	pop DX
_A0D289B83_167:;
	asm	pop CX
_A0D289B83_168:;
	asm	pop BX
_A0D289B83_169:;
	asm	pop AX
_A0D289B83_170:;
	asm	pop P1
_A0D289B83_171:;
	asm	pop I1
LFB78B58C_41:;
_A0D289B83_172:;
	return;
Sbb_Ch0GetBts_end:;
_A0D289B83_173:;
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
// public ginit_code_sub3play_8ED4FA41_s
