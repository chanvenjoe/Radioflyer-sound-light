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
_A735335B1_0:;
	////////////////////////////
_A735335B1_1:;
_A735335B1_2:;
	F_ChangePWMVectTabletobank2();
_A735335B1_3:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A735335B1_4:;
_A735335B1_5:;
	_INITIAL0C18377D();
_A735335B1_6:;
_A735335B1_7:;
	_ClearTickCount5DDE4003();
_A735335B1_8:;
_A735335B1_9:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_4:;
_A735335B1_10:;
_A735335B1_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A735335B1_12:;
_A735335B1_13:;
	_RampUpFF7996DA();
_A735335B1_14:;
_A735335B1_15:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto LB6D5333B_6;
	goto	LB6D5333B_5;
LB6D5333B_6:;
_A735335B1_16:;
_A735335B1_17:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
LB6D5333B_5:;
_A735335B1_18:;
_A735335B1_19:;
	goto LB6D5333B_4;
LB6D5333B_3:;
LB6D5333B_2:;
_A735335B1_20:;
	return;
_main_end:;
_A735335B1_21:;
}

rjmp void _InitSound5CCD501D()
{
_A735335B1_22:;
	////////////////////////////
_A735335B1_23:;
	io[0x3E]	= 0x3FFF;
_A735335B1_24:;
	io[0x16]	= 0x0000;
_A735335B1_25:;
	io[0x16]	= 0x0000;
_A735335B1_26:;
	io[0x16]	= 0x0000;
_A735335B1_27:;
	io[0x16]	= 0x0000;
_A735335B1_28:;
	io[0x36]	= 0x0000;
_A735335B1_29:;
	io[0x36]	= 0x0000;
_A735335B1_30:;
	io[0x36]	= 0x0000;
_A735335B1_31:;
	io[0x36]	= 0x0000;
_A735335B1_32:;
	io[0x36]	= 0x0000;
_A735335B1_33:;
	io[0x36]	= 0x0000;
_A735335B1_34:;
	io[0x36]	= 0x0000;
_A735335B1_35:;
	io[0x36]	= 0x0000;
_A735335B1_36:;
	io[0x3C]	= 0x0000;
_A735335B1_37:;
	sAX	= io[0x3C];
_A735335B1_38:;
	asm	set io[MISC].b9
_A735335B1_39:;
	asm	set io[MISC].b8
_A735335B1_40:;
	asm	set io[MISC].b4
LB6D5333B_7:;
_A735335B1_41:;
	return;
_InitSound5CCD501D_end:;
_A735335B1_42:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A735335B1_43:;
	////////////////////////////
_A735335B1_44:;
_A735335B1_45:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A735335B1_46:;
	asm AX = PCMY+0;
_A735335B1_47:;
	asm	AR = AX
_A735335B1_48:;
	asm	I0 = AR
	////////////////////////////
_A735335B1_49:;
	_i_1_2+0	= 0x0200;
LB6D5333B_10:;
_A735335B1_50:;
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
_A735335B1_51:;
	sAX	= 0x0000;
_A735335B1_52:;
	asm	rm[I0++] = AX
_A735335B1_53:;
	goto LB6D5333B_10;
LB6D5333B_9:;
_A735335B1_54:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A735335B1_55:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A735335B1_56:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A735335B1_57:;
	io[0x3E]	= 0x1FFF;
_A735335B1_58:;
	io[0x3B]	= 0x0000;
LB6D5333B_8:;
_A735335B1_59:;
	return;
_INITIAL0C18377D_end:;
_A735335B1_60:;
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
	asm	DW "subband3\baby_Silen@31K9bps.TZB"
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
