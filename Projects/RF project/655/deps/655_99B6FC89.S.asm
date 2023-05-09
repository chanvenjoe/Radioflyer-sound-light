
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
_AE0CFD6DA_0:;					=>>_AE0CFD6DA_0:;
	
_AE0CFD6DA_1:;					=>>_AE0CFD6DA_1:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE0CFD6DA_2:;					=>>_AE0CFD6DA_2:;
_AE0CFD6DA_3:;					=>>_AE0CFD6DA_3:;
	_INITIAL0C18377D();			=>>pch	= _INITIAL0C18377D;lcall	_INITIAL0C18377D
_AE0CFD6DA_4:;					=>>_AE0CFD6DA_4:;
_AE0CFD6DA_5:;					=>>_AE0CFD6DA_5:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
LD1B663E8_5:;					=>>LD1B663E8_5:;
_AE0CFD6DA_6:;					=>>_AE0CFD6DA_6:;
_AE0CFD6DA_7:;					=>>_AE0CFD6DA_7:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AE0CFD6DA_8:;					=>>_AE0CFD6DA_8:;
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
_AE0CFD6DA_9:;					=>>_AE0CFD6DA_9:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto LD1B663E8_11;		=>>if ZR	jmp LD1B663E8_11
	sAX	= 1;				=>>AX	= 0x01
LD1B663E8_11:;					=>>LD1B663E8_11:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto LD1B663E8_12;	=>>if ZR	jmp LD1B663E8_12
	sAX	= 1;				=>>AX	= 0x01
	goto	LD1B663E8_13;			=>>jmp	LD1B663E8_13
LD1B663E8_12:;					=>>LD1B663E8_12:;
	sAX	= 0;				=>>AX	= 0x00
LD1B663E8_13:;					=>>LD1B663E8_13:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LD1B663E8_14;	=>>if NZ	jmp LD1B663E8_14
	goto	LD1B663E8_10;			=>>jmp	LD1B663E8_10
LD1B663E8_14:;					=>>LD1B663E8_14:;
	asm I1 = _Key_press_flag14FFF825+0;	=>>I1 = _Key_press_flag14FFF825+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JNE();			=>>pch	= sfx_CMP_AX_CX_JNE;lcall	sfx_CMP_AX_CX_JNE
	if(__je__)	goto LD1B663E8_15;	=>>if ZR	jmp LD1B663E8_15
	sAX	= 1;				=>>AX	= 0x01
	goto	LD1B663E8_16;			=>>jmp	LD1B663E8_16
LD1B663E8_15:;					=>>LD1B663E8_15:;
	sAX	= 0;				=>>AX	= 0x00
LD1B663E8_16:;					=>>LD1B663E8_16:;
LD1B663E8_10:;					=>>LD1B663E8_10:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LD1B663E8_18;	=>>if NZ	jmp LD1B663E8_18
	goto	LD1B663E8_17;			=>>jmp	LD1B663E8_17
LD1B663E8_18:;					=>>LD1B663E8_18:;
	
_AE0CFD6DA_10:;					=>>_AE0CFD6DA_10:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _Key_press_flag14FFF825+0;	=>>I1 = _Key_press_flag14FFF825+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE0CFD6DA_11:;					=>>_AE0CFD6DA_11:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto LD1B663E8_19;		=>>if ZR	jmp LD1B663E8_19
	sAX	= 1;				=>>AX	= 0x01
LD1B663E8_19:;					=>>LD1B663E8_19:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_21;	=>>if ZR	jmp LD1B663E8_21
	goto	LD1B663E8_20;			=>>jmp	LD1B663E8_20
LD1B663E8_21:;					=>>LD1B663E8_21:;
	
_AE0CFD6DA_12:;					=>>_AE0CFD6DA_12:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_23;	=>>if ZR	jmp LD1B663E8_23
	goto	LD1B663E8_22;			=>>jmp	LD1B663E8_22
LD1B663E8_23:;					=>>LD1B663E8_23:;
	
_AE0CFD6DA_13:;					=>>_AE0CFD6DA_13:;
_AE0CFD6DA_14:;					=>>_AE0CFD6DA_14:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AE0CFD6DA_15:;					=>>_AE0CFD6DA_15:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
	goto LD1B663E8_24;			=>>jmp	LD1B663E8_24
LD1B663E8_22:;					=>>LD1B663E8_22:;
_AE0CFD6DA_16:;					=>>_AE0CFD6DA_16:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_26;	=>>if ZR	jmp LD1B663E8_26
	goto	LD1B663E8_25;			=>>jmp	LD1B663E8_25
LD1B663E8_26:;					=>>LD1B663E8_26:;
	
_AE0CFD6DA_17:;					=>>_AE0CFD6DA_17:;
_AE0CFD6DA_18:;					=>>_AE0CFD6DA_18:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AE0CFD6DA_19:;					=>>_AE0CFD6DA_19:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
LD1B663E8_25:;					=>>LD1B663E8_25:;
_AE0CFD6DA_20:;					=>>_AE0CFD6DA_20:;
LD1B663E8_24:;					=>>LD1B663E8_24:;
_AE0CFD6DA_21:;					=>>_AE0CFD6DA_21:;
_AE0CFD6DA_22:;					=>>_AE0CFD6DA_22:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_28;	=>>if ZR	jmp LD1B663E8_28
	goto	LD1B663E8_27;			=>>jmp	LD1B663E8_27
LD1B663E8_28:;					=>>LD1B663E8_28:;
	
_AE0CFD6DA_23:;					=>>_AE0CFD6DA_23:;
_AE0CFD6DA_24:;					=>>_AE0CFD6DA_24:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0004;			=>>AX	= 0x04
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AE0CFD6DA_25:;					=>>_AE0CFD6DA_25:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
LD1B663E8_27:;					=>>LD1B663E8_27:;
_AE0CFD6DA_26:;					=>>_AE0CFD6DA_26:;
_AE0CFD6DA_27:;					=>>_AE0CFD6DA_27:;
	sAX	= 0x0002;			=>>AX	= 0x02
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_31;	=>>if ZR	jmp LD1B663E8_31
	goto	LD1B663E8_29;			=>>jmp	LD1B663E8_29
LD1B663E8_31:;					=>>LD1B663E8_31:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto LD1B663E8_30;			=>>jmp	LD1B663E8_30
LD1B663E8_29:;					=>>LD1B663E8_29:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
LD1B663E8_30:;					=>>LD1B663E8_30:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LD1B663E8_20:;					=>>LD1B663E8_20:;
_AE0CFD6DA_28:;					=>>_AE0CFD6DA_28:;
LD1B663E8_17:;					=>>LD1B663E8_17:;
_AE0CFD6DA_29:;					=>>_AE0CFD6DA_29:;
	goto LD1B663E8_5;			=>>jmp	LD1B663E8_5
LD1B663E8_4:;					=>>LD1B663E8_4:;
LD1B663E8_3:;					=>>LD1B663E8_3:;
_AE0CFD6DA_30:;					=>>_AE0CFD6DA_30:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AE0CFD6DA_31:;					=>>_AE0CFD6DA_31:;
}

rjmp void _InitSound5CCD501D()			=>>_InitSound5CCD501D:
{
_AE0CFD6DA_32:;					=>>_AE0CFD6DA_32:;
	
_AE0CFD6DA_33:;					=>>_AE0CFD6DA_33:;
	io[0x3E]	= 0x3FFF;		=>>AR	= 0x3FFF;io[0x3E]	= AR
_AE0CFD6DA_34:;					=>>_AE0CFD6DA_34:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE0CFD6DA_35:;					=>>_AE0CFD6DA_35:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE0CFD6DA_36:;					=>>_AE0CFD6DA_36:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE0CFD6DA_37:;					=>>_AE0CFD6DA_37:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE0CFD6DA_38:;					=>>_AE0CFD6DA_38:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_39:;					=>>_AE0CFD6DA_39:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_40:;					=>>_AE0CFD6DA_40:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_41:;					=>>_AE0CFD6DA_41:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_42:;					=>>_AE0CFD6DA_42:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_43:;					=>>_AE0CFD6DA_43:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_44:;					=>>_AE0CFD6DA_44:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_45:;					=>>_AE0CFD6DA_45:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE0CFD6DA_46:;					=>>_AE0CFD6DA_46:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_AE0CFD6DA_47:;					=>>_AE0CFD6DA_47:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AE0CFD6DA_48:;					=>>_AE0CFD6DA_48:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AE0CFD6DA_49:;					=>>_AE0CFD6DA_49:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AE0CFD6DA_50:;					=>>_AE0CFD6DA_50:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
LD1B663E8_32:;					=>>LD1B663E8_32:;
_AE0CFD6DA_51:;					=>>_AE0CFD6DA_51:;
	return;					=>>rets
_InitSound5CCD501D_end:;			=>>_InitSound5CCD501D_end:;
_AE0CFD6DA_52:;					=>>_AE0CFD6DA_52:;
}

rjmp void _INITIAL0C18377D()			=>>_INITIAL0C18377D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AE0CFD6DA_53:;					=>>_AE0CFD6DA_53:;
_AE0CFD6DA_54:;					=>>_AE0CFD6DA_54:;
_AE0CFD6DA_55:;					=>>_AE0CFD6DA_55:;
	NEARCALL(_InitSound5CCD501D);		=>>call	_InitSound5CCD501D
	
_AE0CFD6DA_56:;					=>>_AE0CFD6DA_56:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_AE0CFD6DA_57:;					=>>_AE0CFD6DA_57:;
	asm	AR = AX				=>>AR = AX
_AE0CFD6DA_58:;					=>>_AE0CFD6DA_58:;
	asm	I0 = AR				=>>I0 = AR
_AE0CFD6DA_59:;					=>>_AE0CFD6DA_59:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
LD1B663E8_35:;					=>>LD1B663E8_35:;
_AE0CFD6DA_60:;					=>>_AE0CFD6DA_60:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LD1B663E8_36;	=>>if NZ	jmp LD1B663E8_36
	goto	LD1B663E8_34;			=>>jmp	LD1B663E8_34
LD1B663E8_36:;					=>>LD1B663E8_36:;
	
_AE0CFD6DA_61:;					=>>_AE0CFD6DA_61:;
	sAX	= 0x0000;			=>>AX	= 0x00
_AE0CFD6DA_62:;					=>>_AE0CFD6DA_62:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto LD1B663E8_35;			=>>jmp	LD1B663E8_35
LD1B663E8_34:;					=>>LD1B663E8_34:;
_AE0CFD6DA_63:;					=>>_AE0CFD6DA_63:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE0CFD6DA_64:;					=>>_AE0CFD6DA_64:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE0CFD6DA_65:;					=>>_AE0CFD6DA_65:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_AE0CFD6DA_66:;					=>>_AE0CFD6DA_66:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_AE0CFD6DA_67:;					=>>_AE0CFD6DA_67:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
LD1B663E8_33:;					=>>LD1B663E8_33:;
_AE0CFD6DA_68:;					=>>_AE0CFD6DA_68:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_INITIAL0C18377D_end:;				=>>_INITIAL0C18377D_end:;
_AE0CFD6DA_69:;					=>>_AE0CFD6DA_69:;
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






















































































