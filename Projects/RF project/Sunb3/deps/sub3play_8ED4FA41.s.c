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
_A89F084ED_125:;
	////////////////////////////
_A89F084ED_126:;
	asm AX = PCMY+0;
_A89F084ED_127:;
	asm	AR = AX
_A89F084ED_128:;
	asm	I0 = AR
_A89F084ED_129:;
	_i_1_2+0	= 0x0200;
LFB78B58C_61:;
_A89F084ED_130:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_62;
	goto	LFB78B58C_60;
LFB78B58C_62:;
	////////////////////////////
_A89F084ED_131:;
	sAX	= 0x0000;
_A89F084ED_132:;
	asm	rm[I0++] = AX
	goto LFB78B58C_61;
LFB78B58C_60:;
LFB78B58C_59:;
_A89F084ED_133:;
	return;
_ClearRenderBufB079D01D_end:;
_A89F084ED_134:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A89F084ED_135:;
_A89F084ED_136:;
	asm	dsi
_A89F084ED_137:;
	asm	nop
	////////////////////////////
_A89F084ED_138:;
_A89F084ED_139:;
	_ClearRenderBufB079D01D();
_A89F084ED_140:;
	asm	AR = PASR,0
_A89F084ED_141:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A89F084ED_142:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A89F084ED_143:;
	io[0x3B]	= 0x0000;
_A89F084ED_144:;
_A89F084ED_145:;
	Subb3_Init();
LFB78B58C_63:;
_A89F084ED_146:;
	return;
_Sub3Initial96BE24F3_end:;
_A89F084ED_147:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A89F084ED_148:;
_A89F084ED_149:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A89F084ED_150:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_66;
	goto	LFB78B58C_65;
LFB78B58C_66:;
	////////////////////////////
_A89F084ED_151:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_65:;
_A89F084ED_152:;
_A89F084ED_153:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A89F084ED_154:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_64;
LFB78B58C_64:;
_A89F084ED_155:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A89F084ED_156:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A89F084ED_157:;
_A89F084ED_158:;
	asm	push CBL
_A89F084ED_159:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A89F084ED_160:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A89F084ED_161:;
	asm	AR = AX
_A89F084ED_162:;
	asm	I0 = AR
_A89F084ED_163:;
	_i_1_2+0	= 0x0120;
LFB78B58C_69:;
_A89F084ED_164:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LFB78B58C_70;
	goto	LFB78B58C_68;
LFB78B58C_70:;
	////////////////////////////
_A89F084ED_165:;
	sAX	= 0x0000;
_A89F084ED_166:;
	asm	rm[I0++] = AX
	goto LFB78B58C_69;
LFB78B58C_68:;
_A89F084ED_167:;
_A89F084ED_168:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A89F084ED_169:;
	asm	pop CBL
LFB78B58C_67:;
_A89F084ED_170:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A89F084ED_171:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A89F084ED_172:;
	////////////////////////////
_A89F084ED_173:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A89F084ED_174:;
_A89F084ED_175:;
	_Sub3Initial96BE24F3();
_A89F084ED_176:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A89F084ED_177:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A89F084ED_178:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A89F084ED_179:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A89F084ED_180:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A89F084ED_181:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A89F084ED_182:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A89F084ED_183:;
	asm	set io[INTENA].b0
_A89F084ED_184:;
	asm	eni
LFB78B58C_71:;
_A89F084ED_185:;
	return;
_Sub3Play422CAD6D_end:;
_A89F084ED_186:;
}

naked rjmp void Sbb_Ch0GetBts()
{
_A89F084ED_187:;
_A89F084ED_188:;
	asm	push I1
_A89F084ED_189:;
	asm	push P1
_A89F084ED_190:;
	asm	push AX
_A89F084ED_191:;
	asm	push BX
_A89F084ED_192:;
	asm	push CX
_A89F084ED_193:;
	asm	push DX
_A89F084ED_194:;
	asm	AR = P1.hh
_A89F084ED_195:;
	asm	push AR
	////////////////////////////
_A89F084ED_196:;
_A89F084ED_197:;
_A89F084ED_198:;
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
_A89F084ED_199:;
	asm	pop AR
_A89F084ED_200:;
	asm	P1.hh = AR
_A89F084ED_201:;
	asm	AR = AX
	////////////////////////////
_A89F084ED_202:;
	asm	pop DX
_A89F084ED_203:;
	asm	pop CX
_A89F084ED_204:;
	asm	pop BX
_A89F084ED_205:;
	asm	pop AX
_A89F084ED_206:;
	asm	pop P1
_A89F084ED_207:;
	asm	pop I1
LFB78B58C_72:;
_A89F084ED_208:;
	return;
Sbb_Ch0GetBts_end:;
_A89F084ED_209:;
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
