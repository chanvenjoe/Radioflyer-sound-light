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

.code


naked void MyData();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
rjmp void _main()
{
_A7F5C94F4_0:;
	////////////////////////////
_A7F5C94F4_1:;
_A7F5C94F4_2:;
	F_ChangePWMVectTabletobank2();
_A7F5C94F4_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A7F5C94F4_4:;
_A7F5C94F4_5:;
	_INITIAL0C18377D();
_A7F5C94F4_6:;
_A7F5C94F4_7:;
	_ClearTickCount5DDE4003();
_A7F5C94F4_8:;
_A7F5C94F4_9:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_4:;
_A7F5C94F4_10:;
_A7F5C94F4_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A7F5C94F4_12:;
_A7F5C94F4_13:;
	_RampUpFF7996DA();
_A7F5C94F4_14:;
_A7F5C94F4_15:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_6;
	goto	LB6D5333B_5;
LB6D5333B_6:;
_A7F5C94F4_16:;
_A7F5C94F4_17:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_5:;
_A7F5C94F4_18:;
_A7F5C94F4_19:;
	goto LB6D5333B_4;
LB6D5333B_3:;
LB6D5333B_2:;
_A7F5C94F4_20:;
	return;
_main_end:;
_A7F5C94F4_21:;
}

rjmp void _InitSound5CCD501D()
{
_A7F5C94F4_22:;
	////////////////////////////
_A7F5C94F4_23:;
	io[0x3E]	= 0x3FFF;
_A7F5C94F4_24:;
	io[0x16]	= 0x0000;
_A7F5C94F4_25:;
	io[0x16]	= 0x0000;
_A7F5C94F4_26:;
	io[0x16]	= 0x0000;
_A7F5C94F4_27:;
	io[0x16]	= 0x0000;
_A7F5C94F4_28:;
	io[0x36]	= 0x0000;
_A7F5C94F4_29:;
	io[0x36]	= 0x0000;
_A7F5C94F4_30:;
	io[0x36]	= 0x0000;
_A7F5C94F4_31:;
	io[0x36]	= 0x0000;
_A7F5C94F4_32:;
	io[0x36]	= 0x0000;
_A7F5C94F4_33:;
	io[0x36]	= 0x0000;
_A7F5C94F4_34:;
	io[0x36]	= 0x0000;
_A7F5C94F4_35:;
	io[0x36]	= 0x0000;
_A7F5C94F4_36:;
	io[0x3C]	= 0x0000;
_A7F5C94F4_37:;
	sAX	= io[0x3C];
_A7F5C94F4_38:;
	asm	set io[MISC].b9
_A7F5C94F4_39:;
	asm	set io[MISC].b8
_A7F5C94F4_40:;
	asm	set io[MISC].b4
LB6D5333B_7:;
_A7F5C94F4_41:;
	return;
_InitSound5CCD501D_end:;
_A7F5C94F4_42:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A7F5C94F4_43:;
	////////////////////////////
_A7F5C94F4_44:;
_A7F5C94F4_45:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A7F5C94F4_46:;
	asm AX = PCMY+0;
_A7F5C94F4_47:;
	asm	AR = AX
_A7F5C94F4_48:;
	asm	I0 = AR
	////////////////////////////
_A7F5C94F4_49:;
	_i_1_2+0	= 0x0200;
LB6D5333B_10:;
_A7F5C94F4_50:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_11;
	goto	LB6D5333B_9;
LB6D5333B_11:;
	////////////////////////////
_A7F5C94F4_51:;
	sAX	= 0x0000;
_A7F5C94F4_52:;
	asm	rm[I0++] = AX
_A7F5C94F4_53:;
	goto LB6D5333B_10;
LB6D5333B_9:;
_A7F5C94F4_54:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A7F5C94F4_55:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A7F5C94F4_56:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A7F5C94F4_57:;
	io[0x3E]	= 0x1FFF;
_A7F5C94F4_58:;
	io[0x3B]	= 0x0000;
LB6D5333B_8:;
_A7F5C94F4_59:;
	return;
_INITIAL0C18377D_end:;
_A7F5C94F4_60:;
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
naked void MyData()
{
	asm	DW "subband3\3104-Bounce-Count-Song@34K3bps.T3Z"
}


// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern _ClearTickCount5DDE4003:proc
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMY:word
// extern Subb3_Dec:proc
// extern _Sub3Play422CAD6D:proc
// public _INITIAL0C18377D
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _main
// public _InitSound5CCD501D
