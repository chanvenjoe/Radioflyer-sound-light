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
rjmp void Sbb_Ch0GetBts();
rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);
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
_A19163650_87:;
	////////////////////////////
_A19163650_88:;
	asm AX = PCMY+0;
_A19163650_89:;
	asm	AR = AX
_A19163650_90:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A19163650_91:;
	_i_1_2+0	= 0x0200;
LFB78B58C_30:;
_A19163650_92:;
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
_A19163650_93:;
	sAX	= 0x0000;
_A19163650_94:;
	asm	rm[I0++] = AX
_A19163650_95:;
	goto LFB78B58C_30;
LFB78B58C_29:;
LFB78B58C_28:;
_A19163650_96:;
	return;
_ClearRenderBufB079D01D_end:;
_A19163650_97:;
}

rjmp void _Sub3Initial96BE24F3()
{
_A19163650_98:;
_A19163650_99:;
	asm	dsi
_A19163650_100:;
	asm	nop
	////////////////////////////
	////////////////////////////
_A19163650_101:;
_A19163650_102:;
	_ClearRenderBufB079D01D();
_A19163650_103:;
	asm	AR = PASR,0
_A19163650_104:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A19163650_105:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A19163650_106:;
	io[0x3B]	= 0x0000;
_A19163650_107:;
_A19163650_108:;
	Subb3_Init();
LFB78B58C_32:;
_A19163650_109:;
	return;
_Sub3Initial96BE24F3_end:;
_A19163650_110:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_A19163650_111:;
	////////////////////////////
_A19163650_112:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A19163650_113:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_35;
	goto	LFB78B58C_34;
LFB78B58C_35:;
	////////////////////////////
_A19163650_114:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_34:;
_A19163650_115:;
_A19163650_116:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_A19163650_117:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_33;
LFB78B58C_33:;
_A19163650_118:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_A19163650_119:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_A19163650_120:;
_A19163650_121:;
	asm	push CBL
	////////////////////////////
_A19163650_122:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_A19163650_123:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_A19163650_124:;
	asm	AR = AX
_A19163650_125:;
	asm	I0 = AR
	////////////////////////////
_A19163650_126:;
	_i_1_2+0	= 0x0120;
LFB78B58C_38:;
_A19163650_127:;
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
_A19163650_128:;
	sAX	= 0x0000;
_A19163650_129:;
	asm	rm[I0++] = AX
_A19163650_130:;
	goto LFB78B58C_38;
LFB78B58C_37:;
_A19163650_131:;
_A19163650_132:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A19163650_133:;
	asm	pop CBL
LFB78B58C_36:;
_A19163650_134:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_A19163650_135:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_A19163650_136:;
	////////////////////////////
_A19163650_137:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_A19163650_138:;
_A19163650_139:;
	_Sub3Initial96BE24F3();
_A19163650_140:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A19163650_141:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A19163650_142:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A19163650_143:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_A19163650_144:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_A19163650_145:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_A19163650_146:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_A19163650_147:;
	asm	set io[INTENA].b0
_A19163650_148:;
	asm	eni
LFB78B58C_40:;
_A19163650_149:;
	return;
_Sub3Play422CAD6D_end:;
_A19163650_150:;
}

rjmp void Sbb_Ch0GetBts()
{
_A19163650_151:;
_A19163650_152:;
	asm	push I1
_A19163650_153:;
	asm	push P1
_A19163650_154:;
	asm	push AX
_A19163650_155:;
	asm	push BX
_A19163650_156:;
	asm	push CX
_A19163650_157:;
	asm	push DX
_A19163650_158:;
	asm	AR = P1.hh
_A19163650_159:;
	asm	push AR
	////////////////////////////
_A19163650_160:;
_A19163650_161:;
_A19163650_162:;
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
	PUSH(sDX);
	PUSH(sAX);
	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	PUSH(sAX);
	vXCHG(STACK[sSP + 0]);
	RESTORESP(1);
_A19163650_163:;
	asm	pop AR
_A19163650_164:;
	asm	P1.hh = AR
_A19163650_165:;
	asm	pop DX
_A19163650_166:;
	asm	pop CX
_A19163650_167:;
	asm	pop BX
	////////////////////////////
_A19163650_168:;
_A19163650_169:;
	asintax();
_A19163650_170:;
	asm	AR = AX
_A19163650_171:;
	asm	pop AX
_A19163650_172:;
	asm	pop P1
_A19163650_173:;
	asm	pop I1
LFB78B58C_41:;
_A19163650_174:;
	return;
Sbb_Ch0GetBts_end:;
_A19163650_175:;
}

rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
{
	////////////////////////////
LFB78B58C_42:;
_A19163650_176:;
	return;
_Sbb_SkipdataE1C72441_end:;
_A19163650_177:;
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

// extern get_I0:proc
// extern vXCHG:proc
// extern _lptr_read:proc
// extern asintax:proc
// public bts_ch0_get_ix
// public PCMYIN_PTR
// public PCMYOU_PTR
// public PCMIN
// public SampleCh0Rate
// public PCMY
// extern Subb3_Init:proc
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
// public _Sbb_SkipdataE1C72441
