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
_A3D9E037E_0:;
_A3D9E037E_1:;
	asm	clr io[INTREQ].b0
_A3D9E037E_2:;
	asm	push AX
_A3D9E037E_3:;
	asm	push I0
_A3D9E037E_4:;
	asm	push I1
_A3D9E037E_5:;
	asm	pop I1
_A3D9E037E_6:;
	asm	pop I0
_A3D9E037E_7:;
	asm	pop AX
	////////////////////////////
LC114AE18_2:;
_A3D9E037E_8:;
	return;
_PWM99B23D7D_end:;
_A3D9E037E_9:;
}

void _WakeupProc94A410F9()
{
_A3D9E037E_10:;
_A3D9E037E_11:;
	asm	io[ClrWDT] = AR
	////////////////////////////
LC114AE18_3:;
_A3D9E037E_12:;
	return;
_WakeupProc94A410F9_end:;
_A3D9E037E_13:;
}

void _main()
{
	__int16 _i_1_2;
	////////////////////////////
_A3D9E037E_14:;
_A3D9E037E_15:;
	_i_1_2+0	= 0x00;
_A3D9E037E_16:;
_A3D9E037E_17:;
	_InitialDA4A7CC4();
LC114AE18_6:;
_A3D9E037E_18:;
_A3D9E037E_19:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A3D9E037E_20:;
_A3D9E037E_21:;
	sAX	= 0x0001;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_A3D9E037E_22:;
_A3D9E037E_23:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	outp(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A3D9E037E_24:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000F;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto LC114AE18_8;
	goto	LC114AE18_7;
LC114AE18_8:;
_A3D9E037E_25:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LC114AE18_9;
LC114AE18_7:;
_A3D9E037E_26:;
	_i_1_2+0	= 0x00;
LC114AE18_9:;
_A3D9E037E_27:;
	goto LC114AE18_6;
LC114AE18_5:;
LC114AE18_4:;
_A3D9E037E_28:;
	return;
_main_end:;
_A3D9E037E_29:;
}

void _InitialDA4A7CC4()
{
_A3D9E037E_30:;
	////////////////////////////
_A3D9E037E_31:;
	sAX	= 0x003F;
_A3D9E037E_32:;
	asm	AR = AX
_A3D9E037E_33:;
	asm	FLTG = AR
	////////////////////////////
_A3D9E037E_34:;
	sAX	= 0x1FFF;
_A3D9E037E_35:;
	asm	AR = AX
_A3D9E037E_36:;
	asm	FLTP = AR
	////////////////////////////
_A3D9E037E_37:;
	sAX	= 0x0008;
_A3D9E037E_38:;
	asm	AR = AX
_A3D9E037E_39:;
	asm	CBL = AR
_A3D9E037E_40:;
	asm	set io[INTENA].b0
_A3D9E037E_41:;
	asm	eni
	////////////////////////////
_A3D9E037E_42:;
	sAX	= 0x000F;
_A3D9E037E_43:;
	asm	AR = AX
_A3D9E037E_44:;
	asm	io[IOC_PA] = AR
_A3D9E037E_45:;
_A3D9E037E_46:;
	_ClearTickCount5DDE4003();
LC114AE18_10:;
_A3D9E037E_47:;
	return;
_InitialDA4A7CC4_end:;
_A3D9E037E_48:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_A_5C91FC9D_s(void)
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
// public ginit_code_A_5C91FC9D_s
