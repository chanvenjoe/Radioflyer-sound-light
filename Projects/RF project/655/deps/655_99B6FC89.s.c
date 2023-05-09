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
_AE0CFD6DA_0:;
	////////////////////////////
_AE0CFD6DA_1:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_2:;
_AE0CFD6DA_3:;
	_INITIAL0C18377D();
_AE0CFD6DA_4:;
_AE0CFD6DA_5:;
	_InitialDA4A7CC4();
LD1B663E8_5:;
_AE0CFD6DA_6:;
_AE0CFD6DA_7:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_AE0CFD6DA_8:;
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
_AE0CFD6DA_9:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto LD1B663E8_11;
	sAX	= 1;
LD1B663E8_11:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto LD1B663E8_12;
	sAX	= 1;
	goto	LD1B663E8_13;
LD1B663E8_12:;
	sAX	= 0;
LD1B663E8_13:;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD1B663E8_14;
	goto	LD1B663E8_10;
LD1B663E8_14:;
	asm I1 = _Key_press_flag14FFF825+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto LD1B663E8_15;
	sAX	= 1;
	goto	LD1B663E8_16;
LD1B663E8_15:;
	sAX	= 0;
LD1B663E8_16:;
LD1B663E8_10:;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD1B663E8_18;
	goto	LD1B663E8_17;
LD1B663E8_18:;
	////////////////////////////
_AE0CFD6DA_10:;
	sAX	= 0x0000;
	asm I1 = _Key_press_flag14FFF825+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_11:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto LD1B663E8_19;
	sAX	= 1;
LD1B663E8_19:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_21;
	goto	LD1B663E8_20;
LD1B663E8_21:;
	////////////////////////////
_AE0CFD6DA_12:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_23;
	goto	LD1B663E8_22;
LD1B663E8_23:;
	////////////////////////////
_AE0CFD6DA_13:;
_AE0CFD6DA_14:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AE0CFD6DA_15:;
	asm clr io[0x09].b14;
	goto LD1B663E8_24;
LD1B663E8_22:;
_AE0CFD6DA_16:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_26;
	goto	LD1B663E8_25;
LD1B663E8_26:;
	////////////////////////////
_AE0CFD6DA_17:;
_AE0CFD6DA_18:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AE0CFD6DA_19:;
	asm clr io[0x09].b14;
LD1B663E8_25:;
_AE0CFD6DA_20:;
LD1B663E8_24:;
_AE0CFD6DA_21:;
_AE0CFD6DA_22:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_28;
	goto	LD1B663E8_27;
LD1B663E8_28:;
	////////////////////////////
_AE0CFD6DA_23:;
_AE0CFD6DA_24:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_AE0CFD6DA_25:;
	asm clr io[0x09].b14;
LD1B663E8_27:;
_AE0CFD6DA_26:;
_AE0CFD6DA_27:;
	sAX	= 0x0002;
	asm I1 = _flagD698DD9D+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_31;
	goto	LD1B663E8_29;
LD1B663E8_31:;
	sAX	= 0x0000;
	goto LD1B663E8_30;
LD1B663E8_29:;
	sAX	= 0x0001;
	asm I1 = _flagD698DD9D+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
LD1B663E8_30:;
	asm I1 = _flagD698DD9D+0;
	*(__int16*)sSI	= sAX
LD1B663E8_20:;
_AE0CFD6DA_28:;
LD1B663E8_17:;
_AE0CFD6DA_29:;
	goto LD1B663E8_5;
LD1B663E8_4:;
LD1B663E8_3:;
_AE0CFD6DA_30:;
	return;
_main_end:;
_AE0CFD6DA_31:;
}

rjmp void _InitSound5CCD501D()
{
_AE0CFD6DA_32:;
	////////////////////////////
_AE0CFD6DA_33:;
	io[0x3E]	= 0x3FFF;
_AE0CFD6DA_34:;
	io[0x16]	= 0x0000;
_AE0CFD6DA_35:;
	io[0x16]	= 0x0000;
_AE0CFD6DA_36:;
	io[0x16]	= 0x0000;
_AE0CFD6DA_37:;
	io[0x16]	= 0x0000;
_AE0CFD6DA_38:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_39:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_40:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_41:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_42:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_43:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_44:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_45:;
	io[0x36]	= 0x0000;
_AE0CFD6DA_46:;
	io[0x3C]	= 0x0000;
_AE0CFD6DA_47:;
	sAX	= io[0x3C];
_AE0CFD6DA_48:;
	asm	set io[MISC].b9
_AE0CFD6DA_49:;
	asm	set io[MISC].b8
_AE0CFD6DA_50:;
	asm	set io[MISC].b4
LD1B663E8_32:;
_AE0CFD6DA_51:;
	return;
_InitSound5CCD501D_end:;
_AE0CFD6DA_52:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_AE0CFD6DA_53:;
_AE0CFD6DA_54:;
_AE0CFD6DA_55:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_AE0CFD6DA_56:;
	asm AX = PCMY+0;
_AE0CFD6DA_57:;
	asm	AR = AX
_AE0CFD6DA_58:;
	asm	I0 = AR
_AE0CFD6DA_59:;
	_i_1_2+0	= 0x0200;
LD1B663E8_35:;
_AE0CFD6DA_60:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD1B663E8_36;
	goto	LD1B663E8_34;
LD1B663E8_36:;
	////////////////////////////
_AE0CFD6DA_61:;
	sAX	= 0x0000;
_AE0CFD6DA_62:;
	asm	rm[I0++] = AX
	goto LD1B663E8_35;
LD1B663E8_34:;
_AE0CFD6DA_63:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_64:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_AE0CFD6DA_65:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AE0CFD6DA_66:;
	io[0x3E]	= 0x1FFF;
_AE0CFD6DA_67:;
	io[0x3B]	= 0x0000;
LD1B663E8_33:;
_AE0CFD6DA_68:;
	return;
_INITIAL0C18377D_end:;
_AE0CFD6DA_69:;
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
// extern inbuf:word
// extern outbuf:word
// extern PCMY:word
// extern _ticksA7263C09:long
// extern _sub_vol980B1B83:word
// extern _RampUpFF7996DA:proc
// extern _RampDown1D382EDA:proc
// extern _InitialDA4A7CC4:proc
// extern _DoADPCM9CD0E20D:proc
// extern bts_ch0_get_ix:long
// extern PCMYIN_PTR:word
// extern PCMYOU_PTR:word
// extern PCMIN:word
// extern SampleCh0Rate:word
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
