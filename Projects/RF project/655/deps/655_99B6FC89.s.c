// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 LD1B663E8_2;
__int16 _flagD698DD9D;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _TFSF_Color_BufA76B681D[5];

// .bss ends _bss

// CODE segment

.code


void _main();
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
void _main()
{
_A30BB6F62_0:;
	////////////////////////////
_A30BB6F62_1:;
_A30BB6F62_2:;
	_InitialDA4A7CC4();
LD1B663E8_5:;
_A30BB6F62_3:;
_A30BB6F62_4:;
	asm	io[ClrWDT] = AR
	////////////////////////////
_A30BB6F62_5:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto LD1B663E8_6;
	sAX	= 1;
LD1B663E8_6:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_8;
	goto	LD1B663E8_7;
LD1B663E8_8:;
_A30BB6F62_6:;
	asm	nop
_A30BB6F62_7:;
	asm	nop
_A30BB6F62_8:;
	asm	nop
_A30BB6F62_9:;
	asm	nop
_A30BB6F62_10:;
	asm	nop
_A30BB6F62_11:;
	asm	nop
_A30BB6F62_12:;
	asm	nop
_A30BB6F62_13:;
	asm	nop
_A30BB6F62_14:;
	asm	nop
_A30BB6F62_15:;
	asm	nop
_A30BB6F62_16:;
	asm	nop
_A30BB6F62_17:;
	asm	nop
_A30BB6F62_18:;
	asm	nop
_A30BB6F62_19:;
	asm	nop
_A30BB6F62_20:;
	asm	nop
_A30BB6F62_21:;
	asm	nop
_A30BB6F62_22:;
	asm	nop
_A30BB6F62_23:;
	asm	nop
_A30BB6F62_24:;
	asm	nop
_A30BB6F62_25:;
	asm	nop
_A30BB6F62_26:;
	asm	nop
_A30BB6F62_27:;
	asm	nop
_A30BB6F62_28:;
	asm	nop
_A30BB6F62_29:;
	asm	nop
_A30BB6F62_30:;
	asm	nop
_A30BB6F62_31:;
	asm	nop
_A30BB6F62_32:;
	asm	nop
_A30BB6F62_33:;
	asm	nop
_A30BB6F62_34:;
	asm	nop
_A30BB6F62_35:;
	asm	nop
_A30BB6F62_36:;
	asm	nop
_A30BB6F62_37:;
	asm	nop
_A30BB6F62_38:;
	asm	nop
_A30BB6F62_39:;
	asm	nop
_A30BB6F62_40:;
	asm	nop
_A30BB6F62_41:;
	asm	nop
	////////////////////////////
_A30BB6F62_42:;
	sAX	= 0;
	asm test io[0x08].b2;
	if(__jz__) goto LD1B663E8_9;
	sAX	= 1;
LD1B663E8_9:;
	sCX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__je__)	goto LD1B663E8_11;
	goto	LD1B663E8_10;
LD1B663E8_11:;
	////////////////////////////
_A30BB6F62_43:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD1B663E8_13;
	goto	LD1B663E8_12;
LD1B663E8_13:;
	////////////////////////////
_A30BB6F62_44:;
_A30BB6F62_45:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0005;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A30BB6F62_46:;
	asm clr io[0x09].b14;
_A30BB6F62_47:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sfx_NOT_AX();
	asm I1 = _flagD698DD9D+0;
	*(__int16*)sSI	= sAX
	goto LD1B663E8_14;
LD1B663E8_12:;
	////////////////////////////
_A30BB6F62_48:;
_A30BB6F62_49:;
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
_A30BB6F62_50:;
	asm clr io[0x09].b14;
_A30BB6F62_51:;
	asm I1 = _flagD698DD9D+0;
	sAX	= *(__int16*)sSI;
	sfx_NOT_AX();
	asm I1 = _flagD698DD9D+0;
	*(__int16*)sSI	= sAX
LD1B663E8_14:;
_A30BB6F62_52:;
LD1B663E8_10:;
_A30BB6F62_53:;
LD1B663E8_7:;
_A30BB6F62_54:;
	goto LD1B663E8_5;
LD1B663E8_4:;
LD1B663E8_3:;
_A30BB6F62_55:;
	return;
_main_end:;
_A30BB6F62_56:;
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

__int16 ginit_seg_655_99B6FC89_s[2] = {
	// LD1B663E8_2
	0x0000,
	// _flagD698DD9D
	0x0000
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
// extern inbuf:word
// extern outbuf:word
// extern PCMY:word
// extern _InitialDA4A7CC4:proc
// extern _DoADPCM9CD0E20D:proc
// public _flagD698DD9D
// public _TFSF_Color_BufA76B681D
// public _main
// public ginit_code_655_99B6FC89_s
