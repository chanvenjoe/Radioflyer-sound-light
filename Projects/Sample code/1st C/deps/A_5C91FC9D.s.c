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


interrupt void _PWM99B23D7D();
void _WakeupProc94A410F9();
void _main();
void _InitialDA4A7CC4();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
interrupt void _PWM99B23D7D()
{
_A0FBC1636_0:;
_A0FBC1636_1:;
	asm	clr io[INTREQ].b0
_A0FBC1636_2:;
	asm	push AX
_A0FBC1636_3:;
	asm	push I0
_A0FBC1636_4:;
	asm	push I1
_A0FBC1636_5:;
	asm	pop I1
_A0FBC1636_6:;
	asm	pop I0
_A0FBC1636_7:;
	asm	pop AX
	////////////////////////////
LC114AE18_2:;
_A0FBC1636_8:;
	return;
_PWM99B23D7D_end:;
_A0FBC1636_9:;
}

void _WakeupProc94A410F9()
{
_A0FBC1636_10:;
_A0FBC1636_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
LC114AE18_3:;
_A0FBC1636_12:;
	return;
_WakeupProc94A410F9_end:;
_A0FBC1636_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A0FBC1636_14:;
	////////////////////////////
_A0FBC1636_15:;
	_i_1_2+0	= 0x00;
_A0FBC1636_16:;
_A0FBC1636_17:;
	_InitialDA4A7CC4();
LC114AE18_6:;
_A0FBC1636_18:;
_A0FBC1636_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A0FBC1636_20:;
_A0FBC1636_21:;
	sAX	= 0x0064;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A0FBC1636_22:;
_A0FBC1636_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A0FBC1636_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LC114AE18_8;
	goto	LC114AE18_7;
LC114AE18_8:;
_A0FBC1636_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LC114AE18_9;
LC114AE18_7:;
_A0FBC1636_26:;
	_i_1_2+0	= 0x00;
LC114AE18_9:;
_A0FBC1636_27:;
_A0FBC1636_28:;
	goto LC114AE18_6;
LC114AE18_5:;
LC114AE18_4:;
_A0FBC1636_29:;
	return;
_main_end:;
_A0FBC1636_30:;
}

void _InitialDA4A7CC4()
{
_A0FBC1636_31:;
	////////////////////////////
_A0FBC1636_32:;
	sAX	= 0x003F;
_A0FBC1636_33:;
	asm	AR = AX
_A0FBC1636_34:;
	asm	FLTG = AR
	////////////////////////////
	////////////////////////////
_A0FBC1636_35:;
	sAX	= 0x1FFF;
_A0FBC1636_36:;
	asm	AR = AX
_A0FBC1636_37:;
	asm	FLTP = AR
	////////////////////////////
	////////////////////////////
_A0FBC1636_38:;
	sAX	= 0x0008;
_A0FBC1636_39:;
	asm	AR = AX
_A0FBC1636_40:;
	asm	CBL = AR
	////////////////////////////
_A0FBC1636_41:;
	asm	set io[INTENA].b0
_A0FBC1636_42:;
	asm	eni
	////////////////////////////
_A0FBC1636_43:;
	sAX	= 0x000F;
_A0FBC1636_44:;
	asm	AR = AX
_A0FBC1636_45:;
	asm	io[IOC_PA] = AR
	////////////////////////////
	////////////////////////////
_A0FBC1636_46:;
_A0FBC1636_47:;
	_ClearTickCount5DDE4003();
LC114AE18_10:;
_A0FBC1636_48:;
	return;
_InitialDA4A7CC4_end:;
_A0FBC1636_49:;
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

// extern outp:proc
// extern _ClearTickCount5DDE4003:proc
// extern _delay6F9F34ED:proc
// public _InitialDA4A7CC4
// public _PWM99B23D7D
// public _WakeupProc94A410F9
// public _main
