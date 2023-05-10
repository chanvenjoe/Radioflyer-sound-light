// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 L2A70A9A2_2;
__int16 L2A70A9A2_3;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _flagD698DD9D;
__int16 _Key_press_flag14FFF825;
__int16 _Play_flag71A588D5;

// .bss ends _bss

// CODE segment

.code


naked void MyData();
interrupt rjmp void _RTC24B6AA79();
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
interrupt rjmp void _RTC24B6AA79()
{
_A523506CC_0:;
_A523506CC_1:;
	asm	clr io[INTREQ].b3
	////////////////////////////
_A523506CC_2:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_7;
	sAX	= 1;
L2A70A9A2_7:;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_8;
	goto	L2A70A9A2_5;
L2A70A9A2_8:;
	sAX	= 0x0001;
	goto L2A70A9A2_6;
L2A70A9A2_5:;
	sAX	= 0x0000;
L2A70A9A2_6:;
	sSI	= (int)&L2A70A9A2_3;
	*(__int16*)sSI	= sAX
L2A70A9A2_4:;
_A523506CC_3:;
	return;
_RTC24B6AA79_end:;
_A523506CC_4:;
}

rjmp void _main()
{
_A523506CC_5:;
	////////////////////////////
_A523506CC_6:;
_A523506CC_7:;
	F_ChangePWMVectTabletobank2();
_A523506CC_8:;
	sAX	= 0x0000;
	asm I1 = _sub_vol980B1B83+0;
	*(__int16*)sSI	= sAX
_A523506CC_9:;
_A523506CC_10:;
	_INITIAL0C18377D();
_A523506CC_11:;
_A523506CC_12:;
	_InitialDA4A7CC4();
_A523506CC_13:;
_A523506CC_14:;
	_ClearTickCount5DDE4003();
_A523506CC_15:;
_A523506CC_16:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2A70A9A2_11:;
_A523506CC_17:;
_A523506CC_18:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A523506CC_19:;
	asm I1 = L2A70A9A2_3+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_13;
	goto	L2A70A9A2_12;
L2A70A9A2_13:;
	////////////////////////////
_A523506CC_20:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto L2A70A9A2_14;
	sAX	= 1;
L2A70A9A2_14:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_16;
	goto	L2A70A9A2_15;
L2A70A9A2_16:;
	////////////////////////////
_A523506CC_21:;
	sAX	= 0x0000;
	asm I1 = _Key_press_flag14FFF825+0;
	*(__int16*)sSI	= sAX
_A523506CC_22:;
	sAX	= 0x0000;
	sSI	= (int)&L2A70A9A2_3;
	*(__int16*)sSI	= sAX
_A523506CC_23:;
	sAX	= 0x0001;
	asm I1 = _Play_flag71A588D5+0;
	*(__int16*)sSI	= sAX
_A523506CC_24:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_18;
	goto	L2A70A9A2_17;
L2A70A9A2_18:;
	////////////////////////////
_A523506CC_25:;
_A523506CC_26:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A523506CC_27:;
	asm clr io[0x09].b14;
	goto L2A70A9A2_19;
L2A70A9A2_17:;
_A523506CC_28:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_21;
	goto	L2A70A9A2_20;
L2A70A9A2_21:;
	////////////////////////////
_A523506CC_29:;
_A523506CC_30:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A523506CC_31:;
	asm clr io[0x09].b14;
L2A70A9A2_20:;
_A523506CC_32:;
L2A70A9A2_19:;
_A523506CC_33:;
_A523506CC_34:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_23;
	goto	L2A70A9A2_22;
L2A70A9A2_23:;
	////////////////////////////
_A523506CC_35:;
_A523506CC_36:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A523506CC_37:;
	asm clr io[0x09].b14;
L2A70A9A2_22:;
_A523506CC_38:;
_A523506CC_39:;
	sAX	= 0x0002;
	asm I1 = _flagD698DD9D+0;
	asm CX = rm[I1];
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_26;
	goto	L2A70A9A2_24;
L2A70A9A2_26:;
	sAX	= 0x0000;
	goto L2A70A9A2_25;
L2A70A9A2_24:;
	sAX	= 0x0001;
	asm I1 = _flagD698DD9D+0;
	sCX	= *(__int16*)sSI;
	sAX	= sAX + sCX;
L2A70A9A2_25:;
	asm I1 = _flagD698DD9D+0;
	*(__int16*)sSI	= sAX
L2A70A9A2_15:;
_A523506CC_40:;
L2A70A9A2_12:;
_A523506CC_41:;
_A523506CC_42:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto L2A70A9A2_28;
	goto	L2A70A9A2_27;
L2A70A9A2_28:;
	////////////////////////////
_A523506CC_43:;
_A523506CC_44:;
	_RampUpFF7996DA();
_A523506CC_45:;
_A523506CC_46:;
	_WaitPCM_Empty_size53398B9D();
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L2A70A9A2_30;
	goto	L2A70A9A2_29;
L2A70A9A2_30:;
	////////////////////////////
_A523506CC_47:;
	goto L2A70A9A2_11;
L2A70A9A2_29:;
_A523506CC_48:;
_A523506CC_49:;
_A523506CC_50:;
	Subb3_Dec();
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_32;
	goto	L2A70A9A2_31;
L2A70A9A2_32:;
_A523506CC_51:;
_A523506CC_52:;
	asm AX = #MyData+0;
	asm DX = #MyData.n2
	asm set DX.b11
	PUSH(sDX);
	PUSH(sAX);
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
L2A70A9A2_31:;
_A523506CC_53:;
	goto L2A70A9A2_33;
L2A70A9A2_27:;
_A523506CC_54:;
_A523506CC_55:;
	_Sub3ZeroFillABFF23AA();
L2A70A9A2_33:;
_A523506CC_56:;
	goto L2A70A9A2_11;
L2A70A9A2_10:;
L2A70A9A2_9:;
_A523506CC_57:;
	return;
_main_end:;
_A523506CC_58:;
}

rjmp void _InitSound5CCD501D()
{
_A523506CC_59:;
	////////////////////////////
_A523506CC_60:;
	io[0x3E]	= 0x3FFF;
_A523506CC_61:;
	io[0x16]	= 0x0000;
_A523506CC_62:;
	io[0x16]	= 0x0000;
_A523506CC_63:;
	io[0x16]	= 0x0000;
_A523506CC_64:;
	io[0x16]	= 0x0000;
_A523506CC_65:;
	io[0x36]	= 0x0000;
_A523506CC_66:;
	io[0x36]	= 0x0000;
_A523506CC_67:;
	io[0x36]	= 0x0000;
_A523506CC_68:;
	io[0x36]	= 0x0000;
_A523506CC_69:;
	io[0x36]	= 0x0000;
_A523506CC_70:;
	io[0x36]	= 0x0000;
_A523506CC_71:;
	io[0x36]	= 0x0000;
_A523506CC_72:;
	io[0x36]	= 0x0000;
_A523506CC_73:;
	io[0x3C]	= 0x0000;
_A523506CC_74:;
	sAX	= io[0x3C];
_A523506CC_75:;
	asm	set io[MISC].b9
_A523506CC_76:;
	asm	set io[MISC].b8
_A523506CC_77:;
	asm	set io[MISC].b4
L2A70A9A2_34:;
_A523506CC_78:;
	return;
_InitSound5CCD501D_end:;
_A523506CC_79:;
}

rjmp void _INITIAL0C18377D()
{
	__int16 _i_1_2;
	////////////////////////////
_A523506CC_80:;
_A523506CC_81:;
_A523506CC_82:;
	NEARCALL(_InitSound5CCD501D);
	////////////////////////////
_A523506CC_83:;
	asm AX = PCMY+0;
_A523506CC_84:;
	asm	AR = AX
_A523506CC_85:;
	asm	I0 = AR
_A523506CC_86:;
	_i_1_2+0	= 0x0200;
L2A70A9A2_37:;
_A523506CC_87:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L2A70A9A2_38;
	goto	L2A70A9A2_36;
L2A70A9A2_38:;
	////////////////////////////
_A523506CC_88:;
	sAX	= 0x0000;
_A523506CC_89:;
	asm	rm[I0++] = AX
	goto L2A70A9A2_37;
L2A70A9A2_36:;
_A523506CC_90:;
	asm AX = PCMY+0;
	asm I1 = PCMYIN_PTR+0;
	*(__int16*)sSI	= sAX
_A523506CC_91:;
	asm AX = PCMY+0;
	asm I1 = PCMYOU_PTR+0;
	*(__int16*)sSI	= sAX
_A523506CC_92:;
	asm I1 = _sub_vol980B1B83+0;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A523506CC_93:;
	io[0x3E]	= 0x1FFF;
_A523506CC_94:;
	io[0x3B]	= 0x0000;
L2A70A9A2_35:;
_A523506CC_95:;
	return;
_INITIAL0C18377D_end:;
_A523506CC_96:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_SUNB3_593950F9_s(void)
{
	asm P1 = #ginit_seg_SUNB3_593950F9_s+0;
	asm I1 = L2A70A9A2_2;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_SUNB3_593950F9_s+1;
	asm I1 = L2A70A9A2_3;
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

__int16 ginit_seg_SUNB3_593950F9_s[2] = {
	// L2A70A9A2_2
	0x0000,
	// L2A70A9A2_3
	0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void MyData()
{
	asm	DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"
}


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
// public _Play_flag71A588D5
// public _INITIAL0C18377D
// public MyData
// extern Pwm_process:proc
// extern F_ChangePWMVectTabletobank2:proc
// public _RTC24B6AA79
// public _main
// public _InitSound5CCD501D
// public ginit_code_SUNB3_593950F9_s
