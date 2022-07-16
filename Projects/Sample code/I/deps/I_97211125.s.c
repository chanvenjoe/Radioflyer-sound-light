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

// .bss ends _bss

// CODE segment


rjmp void _main();
rjmp void _KeyFLTG26AB5DA5();
rjmp void _KeyNext95394134();
rjmp void _KeyFilter2DD39D89();
rjmp void _KeyPWM0271E8F3();
// RCODE segment

// .model fdsp
// .code segment _text
.code
rjmp void _main()
{
_A23D8952F_0:;
	////////////////////////////
_A23D8952F_1:;
_A23D8952F_2:;
	_InitialDA4A7CC4();
_A23D8952F_3:;
_A23D8952F_4:;
	_InitKey3C587B6D();
_A23D8952F_5:;
_A23D8952F_6:;
	_ClearTickCount5DDE4003();
_A23D8952F_7:;
	asm set io[0x05].b4;
_A23D8952F_8:;
	asm set io[0x05].b5;
_A23D8952F_9:;
	asm clr io[0x08].b4;
_A23D8952F_10:;
	asm clr io[0x08].b5;
_A23D8952F_11:;
	sAX	= 0xFFFF;
	asm I1 = _songidx8C42F7DA+0;
	*(__int16*)sSI	= sAX
_A23D8952F_12:;
	sAX	= 0x003F;
	asm I1 = mp_vol+0;
	*(__int16*)sSI	= sAX
LCC85B4CC_8:;
_A23D8952F_13:;
_A23D8952F_14:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A23D8952F_15:;
_A23D8952F_16:;
	asm AX = #Subband2+0;
	asm DX = #Subband2.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A23D8952F_17:;
_A23D8952F_18:;
	asm AX = #melody+0;
	asm DX = #melody.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_MidiPlay439F8F83(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A23D8952F_19:;
	goto LCC85B4CC_8;
LCC85B4CC_7:;
LCC85B4CC_6:;
_A23D8952F_20:;
	return;
_main_end:;
_A23D8952F_21:;
}

rjmp void _KeyFLTG26AB5DA5()
{
_A23D8952F_22:;
	////////////////////////////
_A23D8952F_23:;
	asm I1 = mp_vol+0;
	sAX	= *(__int16*)sSI;
	asm AR = 0x0080;
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LCC85B4CC_11;
	goto	LCC85B4CC_10;
LCC85B4CC_11:;
	////////////////////////////
_A23D8952F_24:;
	sAX	= 0x003F;
	asm I1 = mp_vol+0;
	asm AR = rm[I1];
	asm AX = AX & AR;
	asm I1 = mp_vol+0;
	*(__int16*)sSI	= sAX
	goto LCC85B4CC_12;
LCC85B4CC_10:;
	////////////////////////////
_A23D8952F_25:;
	sAX	= 0x00C0;
	asm I1 = mp_vol+0;
	asm AR = rm[I1];
	asm AX = AX | AR;
	asm I1 = mp_vol+0;
	*(__int16*)sSI	= sAX
LCC85B4CC_12:;
_A23D8952F_26:;
_A23D8952F_27:;
	asm I1 = mp_vol+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
LCC85B4CC_9:;
_A23D8952F_28:;
	return;
_KeyFLTG26AB5DA5_end:;
_A23D8952F_29:;
}

rjmp void _KeyNext95394134()
{
_A23D8952F_30:;
	////////////////////////////
_A23D8952F_31:;
	asm I1 = _flags026116D5+0;
	asm AR = rm[I1];
	asm set AR.b0;
	asm rm[I1] = AR;
LCC85B4CC_13:;
_A23D8952F_32:;
	return;
_KeyNext95394134_end:;
_A23D8952F_33:;
}

rjmp void _KeyFilter2DD39D89()
{
_A23D8952F_34:;
	////////////////////////////
_A23D8952F_35:;
_A23D8952F_36:;
	_isWideBandFilterOnCD82ADAA();
	sfx_CHECKZERO();
	if(__jnz__)	goto LCC85B4CC_16;
	goto	LCC85B4CC_15;
LCC85B4CC_16:;
_A23D8952F_37:;
	asm	clr io[MISC].b8
	////////////////////////////
	goto LCC85B4CC_17;
LCC85B4CC_15:;
_A23D8952F_38:;
	asm	set io[MISC].b8
	////////////////////////////
LCC85B4CC_17:;
_A23D8952F_39:;
LCC85B4CC_14:;
_A23D8952F_40:;
	return;
_KeyFilter2DD39D89_end:;
_A23D8952F_41:;
}

rjmp void _KeyPWM0271E8F3()
{
_A23D8952F_42:;
	////////////////////////////
_A23D8952F_43:;
	asm I1 = _dac7C245355+0;
	sAX	= *(__int16*)sSI;
	sfx_LOGNOT_AX();
	asm I1 = _dac7C245355+0;
	*(__int16*)sSI	= sAX
_A23D8952F_44:;
	asm I1 = _dac7C245355+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LCC85B4CC_20;
	goto	LCC85B4CC_19;
LCC85B4CC_20:;
_A23D8952F_45:;
	asm	set io[MISC].b6
_A23D8952F_46:;
	asm	set io[MISC].b4
_A23D8952F_47:;
	asm	clr io[MISC].b9
_A23D8952F_48:;
	asm	set io[MISC].b5
	////////////////////////////
	goto LCC85B4CC_21;
LCC85B4CC_19:;
_A23D8952F_49:;
	asm	set io[MISC].b9
_A23D8952F_50:;
	asm	clr io[MISC].b5
_A23D8952F_51:;
	asm	clr io[MISC].b6
_A23D8952F_52:;
	asm	clr io[MISC].b4
	////////////////////////////
LCC85B4CC_21:;
_A23D8952F_53:;
LCC85B4CC_18:;
_A23D8952F_54:;
	return;
_KeyPWM0271E8F3_end:;
_A23D8952F_55:;
}

// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

__int16 _keyfuncF06F3D55[15] = {
	(int)&_KeyFLTG26AB5DA5[0], 0x0000, 0x0000, (int)&_KeyNext95394134[0], 0x0000, 0x0000, (int)&_KeyFilter2DD39D89[0], 0x0000, 
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _ClearTickCount5DDE4003:proc
// extern mp_vol:word
// extern _flags026116D5:word
// extern _songidx8C42F7DA:word
// extern _dac7C245355:word
// extern _InitialDA4A7CC4:proc
// extern _InitKey3C587B6D:proc
// public _keyfuncF06F3D55
// extern _MidiPlay439F8F83:proc
// extern _Sub3Play422CAD6D:proc
// extern _isWideBandFilterOnCD82ADAA:proc
// extern melody:proc
// extern Subband2:proc
// public _main
// public _KeyFLTG26AB5DA5
// public _KeyNext95394134
// public _KeyFilter2DD39D89
// public _KeyPWM0271E8F3
