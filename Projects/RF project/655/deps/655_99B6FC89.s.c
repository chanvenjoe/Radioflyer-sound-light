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

// .bss ends _bss

// CODE segment

.code


interrupt naked void _PWM99B23D7D();
void _WakeupProc94A410F9();
void _main();
void _InitialDA4A7CC4();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
interrupt naked void _PWM99B23D7D()
{
_ADDF15A34_0:;
_ADDF15A34_1:;
	asm	clr io[INTREQ].b0
_ADDF15A34_2:;
	asm	push AX
_ADDF15A34_3:;
	asm	push I0
_ADDF15A34_4:;
	asm	push I1
_ADDF15A34_5:;
	asm	pop I1
_ADDF15A34_6:;
	asm	pop I0
_ADDF15A34_7:;
	asm	pop AX
	////////////////////////////
LD1B663E8_2:;
_ADDF15A34_8:;
	return;
_PWM99B23D7D_end:;
_ADDF15A34_9:;
}

void _WakeupProc94A410F9()
{
_ADDF15A34_10:;
_ADDF15A34_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
LD1B663E8_3:;
_ADDF15A34_12:;
	return;
_WakeupProc94A410F9_end:;
_ADDF15A34_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_ADDF15A34_14:;
_ADDF15A34_15:;
	_i_1_2+0	= 0x00;
_ADDF15A34_16:;
_ADDF15A34_17:;
	_InitialDA4A7CC4();
LD1B663E8_6:;
_ADDF15A34_18:;
_ADDF15A34_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_ADDF15A34_20:;
_ADDF15A34_21:;
	sAX	= 0x0064;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_ADDF15A34_22:;
_ADDF15A34_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_ADDF15A34_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LD1B663E8_8;
	goto	LD1B663E8_7;
LD1B663E8_8:;
_ADDF15A34_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD1B663E8_9;
LD1B663E8_7:;
_ADDF15A34_26:;
	_i_1_2+0	= 0x00;
LD1B663E8_9:;
_ADDF15A34_27:;
	goto LD1B663E8_6;
LD1B663E8_5:;
LD1B663E8_4:;
_ADDF15A34_28:;
	return;
_main_end:;
_ADDF15A34_29:;
}

void _InitialDA4A7CC4()
{
_ADDF15A34_30:;
	////////////////////////////
_ADDF15A34_31:;
	sAX	= 0x003F;
_ADDF15A34_32:;
	asm	AR = AX
_ADDF15A34_33:;
	asm	FLTG = AR
	////////////////////////////
_ADDF15A34_34:;
	sAX	= 0x1FFF;
_ADDF15A34_35:;
	asm	AR = AX
_ADDF15A34_36:;
	asm	FLTP = AR
	////////////////////////////
_ADDF15A34_37:;
	sAX	= 0x0008;
_ADDF15A34_38:;
	asm	AR = AX
_ADDF15A34_39:;
	asm	CBL = AR
_ADDF15A34_40:;
	asm	set io[INTENA].b0
_ADDF15A34_41:;
	asm	eni
	////////////////////////////
_ADDF15A34_42:;
	sAX	= 0x000F;
_ADDF15A34_43:;
	asm	AR = AX
_ADDF15A34_44:;
	asm	io[IOC_PA] = AR
_ADDF15A34_45:;
_ADDF15A34_46:;
	_ClearTickCount5DDE4003();
LD1B663E8_10:;
_ADDF15A34_47:;
	return;
_InitialDA4A7CC4_end:;
_ADDF15A34_48:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_655_99B6FC89_s(void)
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
// public _InitialDA4A7CC4
// public _PWM99B23D7D
// public _WakeupProc94A410F9
// public _main
// public ginit_code_655_99B6FC89_s
