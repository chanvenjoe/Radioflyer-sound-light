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
_A8ADEC9C4_120:;
	////////////////////////////
_A8ADEC9C4_121:;
	asm AX = PCMY+0;
_A8ADEC9C4_122:;
	asm	AR = AX
_A8ADEC9C4_123:;
	asm	I0 = AR
_A8ADEC9C4_124:;
	_i_1_2+0	= 0x0200;
LFB78B58C_45:;
_A8ADEC9C4_125:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_46;
	goto	LFB78B58C_44;
LFB78B58C_46:;
	////////////////////////////
_A8ADEC9C4_126:;
	sAX	= 0x0000;
_A8ADEC9C4_127:;
	asm	rm[I0++] = AX
	goto LFB78B58C_45;
LFB78B58C_44:;
LFB78B58C_43:;
_A8ADEC9C4_128:;
	return;
_ClearRenderBufB079D01D_end:;
_A8ADEC9C4_129:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A8ADEC9C4_130:;
_A8ADEC9C4_131:;
	asm	dsi
_A8ADEC9C4_132:;
	asm	nop
	////////////////////////////
_A8ADEC9C4_133:;
_A8ADEC9C4_134:;
	_ClearRenderBufB079D01D();
_A8ADEC9C4_135:;
	asm	AR = PASR,0
_A8ADEC9C4_136:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_137:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_138:;
	io[0x3B]	= 0x0000;
_A8ADEC9C4_139:;
_A8ADEC9C4_140:;
	Subb3_Init();
LFB78B58C_47:;
_A8ADEC9C4_141:;
	return;
_Sub3Initial96BE24F3_end:;
_A8ADEC9C4_142:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A8ADEC9C4_143:;
_A8ADEC9C4_144:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_145:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_50;
	goto	LFB78B58C_49;
LFB78B58C_50:;
	////////////////////////////
_A8ADEC9C4_146:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_49:;
_A8ADEC9C4_147:;
_A8ADEC9C4_148:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_149:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_48;
LFB78B58C_48:;
_A8ADEC9C4_150:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A8ADEC9C4_151:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A8ADEC9C4_152:;
_A8ADEC9C4_153:;
	asm	push CBL
_A8ADEC9C4_154:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A8ADEC9C4_155:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A8ADEC9C4_156:;
	asm	AR = AX
_A8ADEC9C4_157:;
	asm	I0 = AR
_A8ADEC9C4_158:;
	_i_1_2+0	= 0x0120;
LFB78B58C_53:;
_A8ADEC9C4_159:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_54;
	goto	LFB78B58C_52;
LFB78B58C_54:;
	////////////////////////////
_A8ADEC9C4_160:;
	sAX	= 0x0000;
_A8ADEC9C4_161:;
	asm	rm[I0++] = AX
	goto LFB78B58C_53;
LFB78B58C_52:;
_A8ADEC9C4_162:;
_A8ADEC9C4_163:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_164:;
	asm	pop CBL
LFB78B58C_51:;
_A8ADEC9C4_165:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A8ADEC9C4_166:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A8ADEC9C4_167:;
	////////////////////////////
_A8ADEC9C4_168:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A8ADEC9C4_169:;
_A8ADEC9C4_170:;
	_Sub3Initial96BE24F3();
_A8ADEC9C4_171:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_172:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_173:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_174:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A8ADEC9C4_175:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_176:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_177:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A8ADEC9C4_178:;
	asm	set io[INTENA].b0
_A8ADEC9C4_179:;
	asm	eni
LFB78B58C_55:;
_A8ADEC9C4_180:;
	return;
_Sub3Play422CAD6D_end:;
_A8ADEC9C4_181:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_A8ADEC9C4_182:;
_A8ADEC9C4_183:;
	asm	push I1
_A8ADEC9C4_184:;
	asm	push P1
_A8ADEC9C4_185:;
	asm	push AX
_A8ADEC9C4_186:;
	asm	push BX
_A8ADEC9C4_187:;
	asm	push CX
_A8ADEC9C4_188:;
	asm	push DX
_A8ADEC9C4_189:;
	asm	AR = P1.hh
_A8ADEC9C4_190:;
	asm	push AR
	////////////////////////////
_A8ADEC9C4_191:;
_A8ADEC9C4_192:;
_A8ADEC9C4_193:;
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
_A8ADEC9C4_194:;
	asm	pop AR
_A8ADEC9C4_195:;
	asm	P1.hh = AR
_A8ADEC9C4_196:;
	asm	AR = AX
	////////////////////////////
_A8ADEC9C4_197:;
	asm	pop DX
_A8ADEC9C4_198:;
	asm	pop CX
_A8ADEC9C4_199:;
	asm	pop BX
_A8ADEC9C4_200:;
	asm	pop AX
_A8ADEC9C4_201:;
	asm	pop P1
_A8ADEC9C4_202:;
	asm	pop I1
LFB78B58C_56:;
_A8ADEC9C4_203:;
	return;
Sbb_Ch0GetBts_end:;
_A8ADEC9C4_204:;
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
// extern _InitialDA4A7CC4:proc
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
