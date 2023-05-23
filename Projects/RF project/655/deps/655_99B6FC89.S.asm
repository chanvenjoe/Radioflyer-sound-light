
#include "crt0.h"








__int16 LD1B663E8_2;
__int16 _flagD698DD9D;
__int16 _Key_press_flag14FFF825;





__int16 _TFSF_Color_BufA76B681D[5];



// CODE segment					=>>VarRM[0:4095]={
 LD1B663E8_2,_flagD698DD9D,_Key_press_flag14FFF825,_TFSF_Color_BufA76B681D[5] 
};

.code


rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();




.code



.data



.code
rjmp void _main()				=>>_main:
{
_AED4A60EA_0:;					=>>_AED4A60EA_0:;
	
_AED4A60EA_1:;					=>>_AED4A60EA_1:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AED4A60EA_2:;					=>>_AED4A60EA_2:;
_AED4A60EA_3:;					=>>_AED4A60EA_3:;
	_INITIAL0C18377D();			=>>pch	= _INITIAL0C18377D;lcall	_INITIAL0C18377D
_AED4A60EA_4:;					=>>_AED4A60EA_4:;
_AED4A60EA_5:;					=>>_AED4A60EA_5:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
LD1B663E8_5:;					=>>LD1B663E8_5:;
_AED4A60EA_6:;					=>>_AED4A60EA_6:;
_AED4A60EA_7:;					=>>_AED4A60EA_7:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AED4A60EA_8:;					=>>_AED4A60EA_8:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto LD1B663E8_8;		=>>if ZR	jmp LD1B663E8_8
	sAX	= 1;				=>>AX	= 0x01
LD1B663E8_8:;					=>>LD1B663E8_8:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_9;	=>>if ZR	jmp LD1B663E8_9
	goto	LD1B663E8_6;			=>>jmp	LD1B663E8_6
LD1B663E8_9:;					=>>LD1B663E8_9:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto LD1B663E8_7;			=>>jmp	LD1B663E8_7
LD1B663E8_6:;					=>>LD1B663E8_6:;
	sAX	= 0x0000;			=>>AX	= 0x00
LD1B663E8_7:;					=>>LD1B663E8_7:;
	asm I1 = _Key_press_flag14FFF825+0;	=>>I1 = _Key_press_flag14FFF825+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AED4A60EA_9:;					=>>_AED4A60EA_9:;
_AED4A60EA_10:;					=>>_AED4A60EA_10:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AED4A60EA_11:;					=>>_AED4A60EA_11:;
_AED4A60EA_12:;					=>>_AED4A60EA_12:;
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_delay6F9F34ED(STACK[sSP + 0]);		=>>pch	= _delay6F9F34ED;lcall	_delay6F9F34ED
	RESTORESP(1);				=>>pop	AR;
_AED4A60EA_13:;					=>>_AED4A60EA_13:;
_AED4A60EA_14:;					=>>_AED4A60EA_14:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AED4A60EA_15:;					=>>_AED4A60EA_15:;
_AED4A60EA_16:;					=>>_AED4A60EA_16:;
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_delay6F9F34ED(STACK[sSP + 0]);		=>>pch	= _delay6F9F34ED;lcall	_delay6F9F34ED
	RESTORESP(1);				=>>pop	AR;
_AED4A60EA_17:;					=>>_AED4A60EA_17:;
_AED4A60EA_18:;					=>>_AED4A60EA_18:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0004;			=>>AX	= 0x04
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
	goto LD1B663E8_5;			=>>jmp	LD1B663E8_5
LD1B663E8_4:;					=>>LD1B663E8_4:;
LD1B663E8_3:;					=>>LD1B663E8_3:;
_AED4A60EA_19:;					=>>_AED4A60EA_19:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AED4A60EA_20:;					=>>_AED4A60EA_20:;
}

rjmp void _InitSound5CCD501D()			=>>_InitSound5CCD501D:
{
_AED4A60EA_21:;					=>>_AED4A60EA_21:;
	
_AED4A60EA_22:;					=>>_AED4A60EA_22:;
	io[0x3E]	= 0x3FFF;		=>>AR	= 0x3FFF;io[0x3E]	= AR
_AED4A60EA_23:;					=>>_AED4A60EA_23:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AED4A60EA_24:;					=>>_AED4A60EA_24:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AED4A60EA_25:;					=>>_AED4A60EA_25:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AED4A60EA_26:;					=>>_AED4A60EA_26:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AED4A60EA_27:;					=>>_AED4A60EA_27:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_28:;					=>>_AED4A60EA_28:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_29:;					=>>_AED4A60EA_29:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_30:;					=>>_AED4A60EA_30:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_31:;					=>>_AED4A60EA_31:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_32:;					=>>_AED4A60EA_32:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_33:;					=>>_AED4A60EA_33:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_34:;					=>>_AED4A60EA_34:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AED4A60EA_35:;					=>>_AED4A60EA_35:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_AED4A60EA_36:;					=>>_AED4A60EA_36:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AED4A60EA_37:;					=>>_AED4A60EA_37:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AED4A60EA_38:;					=>>_AED4A60EA_38:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AED4A60EA_39:;					=>>_AED4A60EA_39:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
LD1B663E8_10:;					=>>LD1B663E8_10:;
_AED4A60EA_40:;					=>>_AED4A60EA_40:;
	return;					=>>rets
_InitSound5CCD501D_end:;			=>>_InitSound5CCD501D_end:;
_AED4A60EA_41:;					=>>_AED4A60EA_41:;
}

rjmp void _INITIAL0C18377D()			=>>_INITIAL0C18377D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AED4A60EA_42:;					=>>_AED4A60EA_42:;
_AED4A60EA_43:;					=>>_AED4A60EA_43:;
_AED4A60EA_44:;					=>>_AED4A60EA_44:;
	NEARCALL(_InitSound5CCD501D);		=>>call	_InitSound5CCD501D
	
_AED4A60EA_45:;					=>>_AED4A60EA_45:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_AED4A60EA_46:;					=>>_AED4A60EA_46:;
	asm	AR = AX				=>>AR = AX
_AED4A60EA_47:;					=>>_AED4A60EA_47:;
	asm	I0 = AR				=>>I0 = AR
_AED4A60EA_48:;					=>>_AED4A60EA_48:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
LD1B663E8_13:;					=>>LD1B663E8_13:;
_AED4A60EA_49:;					=>>_AED4A60EA_49:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LD1B663E8_14;	=>>if NZ	jmp LD1B663E8_14
	goto	LD1B663E8_12;			=>>jmp	LD1B663E8_12
LD1B663E8_14:;					=>>LD1B663E8_14:;
	
_AED4A60EA_50:;					=>>_AED4A60EA_50:;
	sAX	= 0x0000;			=>>AX	= 0x00
_AED4A60EA_51:;					=>>_AED4A60EA_51:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LD1B663E8_13;			=>>jmp	LD1B663E8_13
LD1B663E8_12:;					=>>LD1B663E8_12:;
_AED4A60EA_52:;					=>>_AED4A60EA_52:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AED4A60EA_53:;					=>>_AED4A60EA_53:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AED4A60EA_54:;					=>>_AED4A60EA_54:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_AED4A60EA_55:;					=>>_AED4A60EA_55:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_AED4A60EA_56:;					=>>_AED4A60EA_56:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
LD1B663E8_11:;					=>>LD1B663E8_11:;
_AED4A60EA_57:;					=>>_AED4A60EA_57:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_INITIAL0C18377D_end:;				=>>_INITIAL0C18377D_end:;
_AED4A60EA_58:;					=>>_AED4A60EA_58:;
}




.code


naked void ginit_code_655_99B6FC89_s(void)	=>>ginit_code_655_99B6FC89_s:
{
	asm P1 = #ginit_seg_655_99B6FC89_s+0;	=>>P1 = #ginit_seg_655_99B6FC89_s+0//
	asm I1 = LD1B663E8_2;			=>>I1 = LD1B663E8_2//
	sCX = 1;				=>>CX	= 0x01
	sfx_GLOBALINIT();			=>>pch	= sfx_GLOBALINIT;lcall	sfx_GLOBALINIT

	asm P1 = #ginit_seg_655_99B6FC89_s+1;	=>>P1 = #ginit_seg_655_99B6FC89_s+1//
	asm I1 = _flagD698DD9D;			=>>I1 = _flagD698DD9D//
	sCX = 1;				=>>CX	= 0x01
	sfx_GLOBALINIT();			=>>pch	= sfx_GLOBALINIT;lcall	sfx_GLOBALINIT

	asm P1 = #ginit_seg_655_99B6FC89_s+2;	=>>P1 = #ginit_seg_655_99B6FC89_s+2//
	asm I1 = _Key_press_flag14FFF825;	=>>I1 = _Key_press_flag14FFF825//
	sCX = 1;				=>>CX	= 0x01
	sfx_GLOBALINIT();			=>>pch	= sfx_GLOBALINIT;lcall	sfx_GLOBALINIT

	return;					=>>rets
}








.code



.code







.code




__int16 ginit_seg_655_99B6FC89_s[3] = {		=>>ginit_seg_655_99B6FC89_s:
						=>>DW 
	0x0000,					=>>DW 0x0000,
						=>>DW 
	0x0000,					=>>DW 0x0000,
						=>>DW 
	0x0001					=>>DW 0x0001,
};




.data





.code



















































































