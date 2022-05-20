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
_A9EF1CCFE_0:;
_A9EF1CCFE_1:;
	asm	clr io[INTREQ].b0
_A9EF1CCFE_2:;
	asm	push AX
_A9EF1CCFE_3:;
	asm	push I0
_A9EF1CCFE_4:;
	asm	push I1
_A9EF1CCFE_5:;
	asm	pop I1
_A9EF1CCFE_6:;
	asm	pop I0
_A9EF1CCFE_7:;
	asm	pop AX
	////////////////////////////
LC114AE18_2:;
_A9EF1CCFE_8:;
	return;
_PWM99B23D7D_end:;
_A9EF1CCFE_9:;
}

void _WakeupProc94A410F9()
{
_A9EF1CCFE_10:;
_A9EF1CCFE_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
LC114AE18_3:;
_A9EF1CCFE_12:;
	return;
_WakeupProc94A410F9_end:;
_A9EF1CCFE_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A9EF1CCFE_14:;
	////////////////////////////
_A9EF1CCFE_15:;
	_i_1_2+0	= 0x00;
_A9EF1CCFE_16:;
_A9EF1CCFE_17:;
	_InitialDA4A7CC4();
LC114AE18_6:;
_A9EF1CCFE_18:;
_A9EF1CCFE_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A9EF1CCFE_20:;
_A9EF1CCFE_21:;
	sAX	= 0x0064;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A9EF1CCFE_22:;
_A9EF1CCFE_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A9EF1CCFE_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LC114AE18_8;
	goto	LC114AE18_7;
LC114AE18_8:;
_A9EF1CCFE_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LC114AE18_9;
LC114AE18_7:;
_A9EF1CCFE_26:;
	_i_1_2+0	= 0x00;
LC114AE18_9:;
_A9EF1CCFE_27:;
_A9EF1CCFE_28:;
	goto LC114AE18_6;
LC114AE18_5:;
LC114AE18_4:;
_A9EF1CCFE_29:;
	return;
_main_end:;
_A9EF1CCFE_30:;
}

void _InitialDA4A7CC4()
{
_A9EF1CCFE_31:;
	////////////////////////////
_A9EF1CCFE_32:;
	sAX	= 0x003F;
_A9EF1CCFE_33:;
	asm	AR = AX
_A9EF1CCFE_34:;
	asm	FLTG = AR
	////////////////////////////
	////////////////////////////
_A9EF1CCFE_35:;
	sAX	= 0x1FFF;
_A9EF1CCFE_36:;
	asm	AR = AX
_A9EF1CCFE_37:;
	asm	FLTP = AR
	////////////////////////////
	////////////////////////////
_A9EF1CCFE_38:;
	sAX	= 0x0008;
_A9EF1CCFE_39:;
	asm	AR = AX
_A9EF1CCFE_40:;
	asm	CBL = AR
	////////////////////////////
_A9EF1CCFE_41:;
	asm	set io[INTENA].b0
_A9EF1CCFE_42:;
	asm	eni
	////////////////////////////
_A9EF1CCFE_43:;
	sAX	= 0x000F;
_A9EF1CCFE_44:;
	asm	AR = AX
_A9EF1CCFE_45:;
	asm	io[IOC_PA] = AR
	////////////////////////////
	////////////////////////////
_A9EF1CCFE_46:;
_A9EF1CCFE_47:;
	_ClearTickCount5DDE4003();
LC114AE18_10:;
_A9EF1CCFE_48:;
	return;
_InitialDA4A7CC4_end:;
_A9EF1CCFE_49:;
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
