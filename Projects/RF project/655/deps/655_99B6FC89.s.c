// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 LD1B663E8_2;
__int16 _flagD698DD9D;
__int16 _Key_press_flag14FFF825;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _TFSF_Color_BufA76B681D[5];

// .bss ends _bss

// CODE segment

.code


rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();
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
rjmp void _main()
{
_AED4A60EA_0:;
	////////////////////////////
_AED4A60EA_1:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_AED4A60EA_2:;
_AED4A60EA_3:;
	_INITIAL0C18377D();
_AED4A60EA_4:;
_AED4A60EA_5:;
	_InitialDA4A7CC4();
LD1B663E8_5:;
_AED4A60EA_6:;
_AED4A60EA_7:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AED4A60EA_8:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto LD1B663E8_8;
	sAX	= 1;
LD1B663E8_8:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_9;
	goto	LD1B663E8_6;
LD1B663E8_9:;
	sAX	= 0x0001;
	goto LD1B663E8_7;
LD1B663E8_6:;
	sAX	= 0x0000;
LD1B663E8_7:;
	asm I1 = _Key_press_flag14FFF825+0;
	*(__int16*)sSI	= sAX
_AED4A60EA_9:;
_AED4A60EA_10:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AED4A60EA_11:;
_AED4A60EA_12:;
	sAX	= 0x0005;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_AED4A60EA_13:;
_AED4A60EA_14:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AED4A60EA_15:;
_AED4A60EA_16:;
	sAX	= 0x0005;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
_AED4A60EA_17:;
_AED4A60EA_18:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	goto LD1B663E8_5;
LD1B663E8_4:;
LD1B663E8_3:;
_AED4A60EA_19:;
	return;
_main_end:;
_AED4A60EA_20:;
}

rjmp void _InitSound5CCD501D()
{
_AED4A60EA_21:;
	////////////////////////////
_AED4A60EA_22:;
	io[0x3E]	= 0x3FFF;
_AED4A60EA_23:;
	io[0x16]	= 0x0000;
_AED4A60EA_24:;
	io[0x16]	= 0x0000;
_AED4A60EA_25:;
	io[0x16]	= 0x0000;
_AED4A60EA_26:;
	io[0x16]	= 0x0000;
_AED4A60EA_27:;
	io[0x36]	= 0x0000;
_AED4A60EA_28:;
	io[0x36]	= 0x0000;
_AED4A60EA_29:;
	io[0x36]	= 0x0000;
_AED4A60EA_30:;
	io[0x36]	= 0x0000;
_AED4A60EA_31:;
	io[0x36]	= 0x0000;
_AED4A60EA_32:;
	io[0x36]	= 0x0000;
_AED4A60EA_33:;
	io[0x36]	= 0x0000;
_AED4A60EA_34:;
	io[0x36]	= 0x0000;
_AED4A60EA_35:;
	io[0x3C]	= 0x0000;
_AED4A60EA_36:;
	sAX	= io[0x3C];
_AED4A60EA_37:;
	asm	set io[MISC].b9
_AED4A60EA_38:;
	asm	set io[MISC].b8
_AED4A60EA_39:;
	asm	set io[MISC].b4
LD1B663E8_10:;
_AED4A60EA_40:;
	return;
_InitSound5CCD501D_end:;
_AED4A60EA_41:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_AED4A60EA_42:;
_AED4A60EA_43:;
_AED4A60EA_44:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_AED4A60EA_45:;
	asm AX = PCMY+0;
_AED4A60EA_46:;
	asm	AR = AX
_AED4A60EA_47:;
	asm	I0 = AR
_AED4A60EA_48:;
	_i_1_2+0	= 0x0200;
LD1B663E8_13:;
_AED4A60EA_49:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD1B663E8_14;
	goto	LD1B663E8_12;
LD1B663E8_14:;
	////////////////////////////
_AED4A60EA_50:;
	sAX	= 0x0000;
_AED4A60EA_51:;
	asm	rm[I0++] = AX
	goto LD1B663E8_13;
LD1B663E8_12:;
_AED4A60EA_52:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AED4A60EA_53:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AED4A60EA_54:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AED4A60EA_55:;
	io[0x3E]	= 0x1FFF;
_AED4A60EA_56:;
	io[0x3B]	= 0x0000;
LD1B663E8_11:;
_AED4A60EA_57:;
	return;
_INITIAL0C18377D_end:;
_AED4A60EA_58:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_655_99B6FC89_s(void)
{
	asm P1 = #ginit_seg_655_99B6FC89_s+0;
	asm I1 = LD1B663E8_2;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_655_99B6FC89_s+1;
	asm I1 = _flagD698DD9D;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_655_99B6FC89_s+2;
	asm I1 = _Key_press_flag14FFF825;
	sCX = 1;
	sfx_GLOBALINIT();

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

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// global init segment

__int16 ginit_seg_655_99B6FC89_s[3] = {
	// LD1B663E8_2
	0x0000,
	// _flagD698DD9D
	0x0000,
	// _Key_press_flag14FFF825
	0x0001
};

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
// extern bts_ch0_get_ix:long
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMIN:word
// extern SampleCh0Rate:word
// extern PCMY:word
// extern Subb3_Init:proc
// extern Subb3_Dec:proc
// extern _WaitPCM_Empty_size53398B9D:proc
// extern _Sub3ZeroFillABFF23AA:proc
// extern _Sub3Play422CAD6D:proc
// extern _WS_Send24bits851C5C55:proc
// extern _WS_ColorSet_LEDCA3DEB8C:proc
// extern _WS_Color_copyADB1DFED:proc
// extern _WS_RefreshAD7B99B1:proc
// extern _WS_Key_RGBC5B96B6D:proc
// extern _WS_Hue_change433A3E3B:proc
// extern _WS_voice_Pik5A718B9D:proc
// extern _Get_RGB_Max5738F55A:proc
// extern _Get_RGB_Min13C4962A:proc
// extern _Get_Hue_Val458A4EED:proc
// extern _HSV_RGBE39B83AE:proc
// extern _WS_TRSF_color_setE1CC300C:proc
// public _flagD698DD9D
// public _Key_press_flag14FFF825
// public _INITIAL0C18377D
// public _TFSF_Color_BufA76B681D
// public _main
// public _InitSound5CCD501D
// public ginit_code_655_99B6FC89_s
