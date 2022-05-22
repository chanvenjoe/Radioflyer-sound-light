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


rjmp void _ClearRenderBufB079D01D();
rjmp void _Sub3Initial96BE24F3();
rjmp void _WaitPCM_Empty_size53398B9D();
rjmp void _Sub3ZeroFillABFF23AA();
rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
rjmp void Sbb_Ch0GetBts();
rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1);
// RCODE segment

// .model fdsp
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
_AE23BDF6A_87:;
	////////////////////////////
_AE23BDF6A_88:;
	asm AX = PCMY+0;
_AE23BDF6A_89:;
	asm	AR = AX
_AE23BDF6A_90:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AE23BDF6A_91:;
	_i_1_2+0	= 0x0200;
LFB78B58C_30:;
_AE23BDF6A_92:;
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
_AE23BDF6A_93:;
	sAX	= 0x0000;
_AE23BDF6A_94:;
	asm	rm[I0++] = AX
_AE23BDF6A_95:;
	goto LFB78B58C_30;
LFB78B58C_29:;
LFB78B58C_28:;
_AE23BDF6A_96:;
	return;
_ClearRenderBufB079D01D_end:;
_AE23BDF6A_97:;
}

rjmp void _Sub3Initial96BE24F3()
{
_AE23BDF6A_98:;
_AE23BDF6A_99:;
	asm	dsi
_AE23BDF6A_100:;
	asm	nop
	////////////////////////////
	////////////////////////////
_AE23BDF6A_101:;
_AE23BDF6A_102:;
	_ClearRenderBufB079D01D();
_AE23BDF6A_103:;
	asm	AR = PASR,0
_AE23BDF6A_104:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_105:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_106:;
	io[0x3B]	= 0x0000;
_AE23BDF6A_107:;
_AE23BDF6A_108:;
	Subb3_Init();
LFB78B58C_32:;
_AE23BDF6A_109:;
	return;
_Sub3Initial96BE24F3_end:;
_AE23BDF6A_110:;
}

rjmp void _WaitPCM_Empty_size53398B9D()
{
	__int16 _x_1_2;
	////////////////////////////
_AE23BDF6A_111:;
	////////////////////////////
_AE23BDF6A_112:;
	asm I1 = PCMYOU_PTR+0;
	sAX	= *(__int16*)sSI;
	asm I1 = PCMYIN_PTR+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX - sCX;
	// mark sfx_SHR_AX();
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AE23BDF6A_113:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LFB78B58C_35;
	goto	LFB78B58C_34;
LFB78B58C_35:;
	////////////////////////////
_AE23BDF6A_114:;
	sAX	= 0x01FF;
	sSI	= (int)&_x_1_2;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
LFB78B58C_34:;
_AE23BDF6A_115:;
_AE23BDF6A_116:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0121;
	sAX	= sAX - sCX;
	sSI	= (int)&_x_1_2;
	*(__int16*)sSI	= sAX;
_AE23BDF6A_117:;
	sSI	= (int)&_x_1_2;
	sAX	= *(__int16*)sSI;
	goto LFB78B58C_33;
LFB78B58C_33:;
_AE23BDF6A_118:;
	return;
_WaitPCM_Empty_size53398B9D_end:;
_AE23BDF6A_119:;
}

rjmp void _Sub3ZeroFillABFF23AA()
{
	__int16 _i_1_2;
	////////////////////////////
_AE23BDF6A_120:;
_AE23BDF6A_121:;
	asm	push CBL
	////////////////////////////
_AE23BDF6A_122:;
	io[0x3B]	= 0x0009;
	////////////////////////////
_AE23BDF6A_123:;
	asm I1 = PCMYIN_PTR+0;
	sAX	= *(__int16*)sSI;
_AE23BDF6A_124:;
	asm	AR = AX
_AE23BDF6A_125:;
	asm	I0 = AR
	////////////////////////////
_AE23BDF6A_126:;
	_i_1_2+0	= 0x0120;
LFB78B58C_38:;
_AE23BDF6A_127:;
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
_AE23BDF6A_128:;
	sAX	= 0x0000;
_AE23BDF6A_129:;
	asm	rm[I0++] = AX
_AE23BDF6A_130:;
	goto LFB78B58C_38;
LFB78B58C_37:;
_AE23BDF6A_131:;
_AE23BDF6A_132:;
	get_I0();
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_133:;
	asm	pop CBL
LFB78B58C_36:;
_AE23BDF6A_134:;
	return;
_Sub3ZeroFillABFF23AA_end:;
_AE23BDF6A_135:;
}

rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
{
_AE23BDF6A_136:;
	////////////////////////////
_AE23BDF6A_137:;
	sSI	= (int)&_sdata_0_4_0;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	asm I1 = bts_ch0_get_ix+0;
	sfx_STORSILONG();
_AE23BDF6A_138:;
_AE23BDF6A_139:;
	_Sub3Initial96BE24F3();
_AE23BDF6A_140:;
	asm AX = SUBFLTI+0;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE23BDF6A_141:;
	asm AX = SUBFLTI+1;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE23BDF6A_142:;
	asm AX = SUBFLTI+2;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE23BDF6A_143:;
	asm AX = SUBFLTI+3;
	PUSH(sAX);
	sAX	= 0x0000;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AE23BDF6A_144:;
	sAX	= 0x0000;
	asm I1 = SUBFLTA+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_145:;
	asm I1 = SampleCh0Rate+0;
	sAX	= *(__int16*)sSI;
	asm I1 = SUBFLTP+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_146:;
	sAX	= 0x003F;
	asm I1 = SUBFLTG+0;
	*(__int16*)sSI	= sAX
_AE23BDF6A_147:;
	asm	set io[INTENA].b0
_AE23BDF6A_148:;
	asm	eni
LFB78B58C_40:;
_AE23BDF6A_149:;
	return;
_Sub3Play422CAD6D_end:;
_AE23BDF6A_150:;
}

rjmp void Sbb_Ch0GetBts()
{
_AE23BDF6A_151:;
_AE23BDF6A_152:;
	asm	push I1
_AE23BDF6A_153:;
	asm	push P1
_AE23BDF6A_154:;
	asm	push AX
_AE23BDF6A_155:;
	asm	push BX
_AE23BDF6A_156:;
	asm	push CX
_AE23BDF6A_157:;
	asm	push DX
_AE23BDF6A_158:;
	asm	AR = P1.hh
_AE23BDF6A_159:;
	asm	push AR
	////////////////////////////
_AE23BDF6A_160:;
_AE23BDF6A_161:;
_AE23BDF6A_162:;
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
_AE23BDF6A_163:;
	asm	pop AR
_AE23BDF6A_164:;
	asm	P1.hh = AR
_AE23BDF6A_165:;
	asm	pop DX
_AE23BDF6A_166:;
	asm	pop CX
_AE23BDF6A_167:;
	asm	pop BX
	////////////////////////////
_AE23BDF6A_168:;
_AE23BDF6A_169:;
	asintax();
_AE23BDF6A_170:;
	asm	AR = AX
_AE23BDF6A_171:;
	asm	pop AX
_AE23BDF6A_172:;
	asm	pop P1
_AE23BDF6A_173:;
	asm	pop I1
LFB78B58C_41:;
_AE23BDF6A_174:;
	return;
Sbb_Ch0GetBts_end:;
_AE23BDF6A_175:;
}

rjmp void _Sbb_SkipdataE1C72441(__int16 _offset_0_4_0, __int16 _offset_0_4_1)
{
	////////////////////////////
LFB78B58C_42:;
_AE23BDF6A_176:;
	return;
_Sbb_SkipdataE1C72441_end:;
_AE23BDF6A_177:;
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
