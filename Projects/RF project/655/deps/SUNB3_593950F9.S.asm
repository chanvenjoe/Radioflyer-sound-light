
#include "crt0.h"








__int16 L2A70A9A2_2;
__int16 L2A70A9A2_3;





__int16 _flagD698DD9D;
__int16 _Key_press_flag14FFF825;
__int16 _Play_flag71A588D5;



// CODE segment					=>>VarRM[0:4095]={
 L2A70A9A2_2,L2A70A9A2_3,_flagD698DD9D,_Key_press_flag14FFF825,_Play_flag71A588D5 
};

.code


naked void MyData();
interrupt rjmp void _RTC24B6AA79();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();




.code



.data



.code
interrupt rjmp void _RTC24B6AA79()		=>>_RTC24B6AA79:
{						=>>push ax;push bx;push cx;push dx;push r0;push r1;push r2;push r3;push i1;push p1;push mx;push mr0;push mr1;push mr2;ar = p1.hh;push ar;
_A523506CC_0:;					=>>_A523506CC_0:;
_A523506CC_1:;					=>>_A523506CC_1:;
	asm	clr io[INTREQ].b3		=>>clr io[INTREQ].b3
	
_A523506CC_2:;					=>>_A523506CC_2:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto L2A70A9A2_7;		=>>if ZR	jmp L2A70A9A2_7
	sAX	= 1;				=>>AX	= 0x01
L2A70A9A2_7:;					=>>L2A70A9A2_7:;
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_8;	=>>if ZR	jmp L2A70A9A2_8
	goto	L2A70A9A2_5;			=>>jmp	L2A70A9A2_5
L2A70A9A2_8:;					=>>L2A70A9A2_8:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L2A70A9A2_6;			=>>jmp	L2A70A9A2_6
L2A70A9A2_5:;					=>>L2A70A9A2_5:;
	sAX	= 0x0000;			=>>AX	= 0x00
L2A70A9A2_6:;					=>>L2A70A9A2_6:;
	sSI	= (int)&L2A70A9A2_3;		=>>I1	= L2A70A9A2_3
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L2A70A9A2_4:;					=>>L2A70A9A2_4:;
_A523506CC_3:;					=>>_A523506CC_3:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_RTC24B6AA79_end:;				=>>_RTC24B6AA79_end:;
_A523506CC_4:;					=>>_A523506CC_4:;
}

rjmp void _main()				=>>_main:
{
_A523506CC_5:;					=>>_A523506CC_5:;
	
_A523506CC_6:;					=>>_A523506CC_6:;
_A523506CC_7:;					=>>_A523506CC_7:;
	F_ChangePWMVectTabletobank2();		=>>pch	= F_ChangePWMVectTabletobank2;lcall	F_ChangePWMVectTabletobank2
_A523506CC_8:;					=>>_A523506CC_8:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_9:;					=>>_A523506CC_9:;
_A523506CC_10:;					=>>_A523506CC_10:;
	_INITIAL0C18377D();			=>>pch	= _INITIAL0C18377D;lcall	_INITIAL0C18377D
_A523506CC_11:;					=>>_A523506CC_11:;
_A523506CC_12:;					=>>_A523506CC_12:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_A523506CC_13:;					=>>_A523506CC_13:;
_A523506CC_14:;					=>>_A523506CC_14:;
	_ClearTickCount5DDE4003();		=>>pch	= _ClearTickCount5DDE4003;lcall	_ClearTickCount5DDE4003
_A523506CC_15:;					=>>_A523506CC_15:;
_A523506CC_16:;					=>>_A523506CC_16:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
L2A70A9A2_11:;					=>>L2A70A9A2_11:;
_A523506CC_17:;					=>>_A523506CC_17:;
_A523506CC_18:;					=>>_A523506CC_18:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A523506CC_19:;					=>>_A523506CC_19:;
	asm I1 = L2A70A9A2_3+0;			=>>I1 = L2A70A9A2_3+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_13;	=>>if ZR	jmp L2A70A9A2_13
	goto	L2A70A9A2_12;			=>>jmp	L2A70A9A2_12
L2A70A9A2_13:;					=>>L2A70A9A2_13:;
	
_A523506CC_20:;					=>>_A523506CC_20:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto L2A70A9A2_14;		=>>if ZR	jmp L2A70A9A2_14
	sAX	= 1;				=>>AX	= 0x01
L2A70A9A2_14:;					=>>L2A70A9A2_14:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_16;	=>>if ZR	jmp L2A70A9A2_16
	goto	L2A70A9A2_15;			=>>jmp	L2A70A9A2_15
L2A70A9A2_16:;					=>>L2A70A9A2_16:;
	
_A523506CC_21:;					=>>_A523506CC_21:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _Key_press_flag14FFF825+0;	=>>I1 = _Key_press_flag14FFF825+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_22:;					=>>_A523506CC_22:;
	sAX	= 0x0000;			=>>AX	= 0x00
	sSI	= (int)&L2A70A9A2_3;		=>>I1	= L2A70A9A2_3
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_23:;					=>>_A523506CC_23:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = _Play_flag71A588D5+0;		=>>I1 = _Play_flag71A588D5+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_24:;					=>>_A523506CC_24:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_18;	=>>if ZR	jmp L2A70A9A2_18
	goto	L2A70A9A2_17;			=>>jmp	L2A70A9A2_17
L2A70A9A2_18:;					=>>L2A70A9A2_18:;
	
_A523506CC_25:;					=>>_A523506CC_25:;
_A523506CC_26:;					=>>_A523506CC_26:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A523506CC_27:;					=>>_A523506CC_27:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
	goto L2A70A9A2_19;			=>>jmp	L2A70A9A2_19
L2A70A9A2_17:;					=>>L2A70A9A2_17:;
_A523506CC_28:;					=>>_A523506CC_28:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_21;	=>>if ZR	jmp L2A70A9A2_21
	goto	L2A70A9A2_20;			=>>jmp	L2A70A9A2_20
L2A70A9A2_21:;					=>>L2A70A9A2_21:;
	
_A523506CC_29:;					=>>_A523506CC_29:;
_A523506CC_30:;					=>>_A523506CC_30:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A523506CC_31:;					=>>_A523506CC_31:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
L2A70A9A2_20:;					=>>L2A70A9A2_20:;
_A523506CC_32:;					=>>_A523506CC_32:;
L2A70A9A2_19:;					=>>L2A70A9A2_19:;
_A523506CC_33:;					=>>_A523506CC_33:;
_A523506CC_34:;					=>>_A523506CC_34:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_23;	=>>if ZR	jmp L2A70A9A2_23
	goto	L2A70A9A2_22;			=>>jmp	L2A70A9A2_22
L2A70A9A2_23:;					=>>L2A70A9A2_23:;
	
_A523506CC_35:;					=>>_A523506CC_35:;
_A523506CC_36:;					=>>_A523506CC_36:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0004;			=>>AX	= 0x04
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A523506CC_37:;					=>>_A523506CC_37:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
L2A70A9A2_22:;					=>>L2A70A9A2_22:;
_A523506CC_38:;					=>>_A523506CC_38:;
_A523506CC_39:;					=>>_A523506CC_39:;
	sAX	= 0x0002;			=>>AX	= 0x02
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_26;	=>>if ZR	jmp L2A70A9A2_26
	goto	L2A70A9A2_24;			=>>jmp	L2A70A9A2_24
L2A70A9A2_26:;					=>>L2A70A9A2_26:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L2A70A9A2_25;			=>>jmp	L2A70A9A2_25
L2A70A9A2_24:;					=>>L2A70A9A2_24:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
L2A70A9A2_25:;					=>>L2A70A9A2_25:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L2A70A9A2_15:;					=>>L2A70A9A2_15:;
_A523506CC_40:;					=>>_A523506CC_40:;
L2A70A9A2_12:;					=>>L2A70A9A2_12:;
_A523506CC_41:;					=>>_A523506CC_41:;
_A523506CC_42:;					=>>_A523506CC_42:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto L2A70A9A2_28;	=>>if ZR	jmp L2A70A9A2_28
	goto	L2A70A9A2_27;			=>>jmp	L2A70A9A2_27
L2A70A9A2_28:;					=>>L2A70A9A2_28:;
	
_A523506CC_43:;					=>>_A523506CC_43:;
_A523506CC_44:;					=>>_A523506CC_44:;
	_RampUpFF7996DA();			=>>pch	= _RampUpFF7996DA;lcall	_RampUpFF7996DA
_A523506CC_45:;					=>>_A523506CC_45:;
_A523506CC_46:;					=>>_A523506CC_46:;
	_WaitPCM_Empty_size53398B9D();		=>>pch	= _WaitPCM_Empty_size53398B9D;lcall	_WaitPCM_Empty_size53398B9D
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L2A70A9A2_30;	=>>if ZR	jmp L2A70A9A2_30
	goto	L2A70A9A2_29;			=>>jmp	L2A70A9A2_29
L2A70A9A2_30:;					=>>L2A70A9A2_30:;
	
_A523506CC_47:;					=>>_A523506CC_47:;
	goto L2A70A9A2_11;			=>>jmp	L2A70A9A2_11
L2A70A9A2_29:;					=>>L2A70A9A2_29:;
_A523506CC_48:;					=>>_A523506CC_48:;
_A523506CC_49:;					=>>_A523506CC_49:;
_A523506CC_50:;					=>>_A523506CC_50:;
	Subb3_Dec();				=>>pch	= Subb3_Dec;lcall	Subb3_Dec
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L2A70A9A2_32;	=>>if NZ	jmp L2A70A9A2_32
	goto	L2A70A9A2_31;			=>>jmp	L2A70A9A2_31
L2A70A9A2_32:;					=>>L2A70A9A2_32:;
_A523506CC_51:;					=>>_A523506CC_51:;
_A523506CC_52:;					=>>_A523506CC_52:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
L2A70A9A2_31:;					=>>L2A70A9A2_31:;
_A523506CC_53:;					=>>_A523506CC_53:;
	goto L2A70A9A2_33;			=>>jmp	L2A70A9A2_33
L2A70A9A2_27:;					=>>L2A70A9A2_27:;
_A523506CC_54:;					=>>_A523506CC_54:;
_A523506CC_55:;					=>>_A523506CC_55:;
	_Sub3ZeroFillABFF23AA();		=>>pch	= _Sub3ZeroFillABFF23AA;lcall	_Sub3ZeroFillABFF23AA
L2A70A9A2_33:;					=>>L2A70A9A2_33:;
_A523506CC_56:;					=>>_A523506CC_56:;
	goto L2A70A9A2_11;			=>>jmp	L2A70A9A2_11
L2A70A9A2_10:;					=>>L2A70A9A2_10:;
L2A70A9A2_9:;					=>>L2A70A9A2_9:;
_A523506CC_57:;					=>>_A523506CC_57:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_A523506CC_58:;					=>>_A523506CC_58:;
}

rjmp void _InitSound5CCD501D()			=>>_InitSound5CCD501D:
{
_A523506CC_59:;					=>>_A523506CC_59:;
	
_A523506CC_60:;					=>>_A523506CC_60:;
	io[0x3E]	= 0x3FFF;		=>>AR	= 0x3FFF;io[0x3E]	= AR
_A523506CC_61:;					=>>_A523506CC_61:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A523506CC_62:;					=>>_A523506CC_62:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A523506CC_63:;					=>>_A523506CC_63:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A523506CC_64:;					=>>_A523506CC_64:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A523506CC_65:;					=>>_A523506CC_65:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_66:;					=>>_A523506CC_66:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_67:;					=>>_A523506CC_67:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_68:;					=>>_A523506CC_68:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_69:;					=>>_A523506CC_69:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_70:;					=>>_A523506CC_70:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_71:;					=>>_A523506CC_71:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_72:;					=>>_A523506CC_72:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A523506CC_73:;					=>>_A523506CC_73:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_A523506CC_74:;					=>>_A523506CC_74:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A523506CC_75:;					=>>_A523506CC_75:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A523506CC_76:;					=>>_A523506CC_76:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A523506CC_77:;					=>>_A523506CC_77:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
L2A70A9A2_34:;					=>>L2A70A9A2_34:;
_A523506CC_78:;					=>>_A523506CC_78:;
	return;					=>>rets
_InitSound5CCD501D_end:;			=>>_InitSound5CCD501D_end:;
_A523506CC_79:;					=>>_A523506CC_79:;
}

rjmp void _INITIAL0C18377D()			=>>_INITIAL0C18377D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A523506CC_80:;					=>>_A523506CC_80:;
_A523506CC_81:;					=>>_A523506CC_81:;
_A523506CC_82:;					=>>_A523506CC_82:;
	NEARCALL(_InitSound5CCD501D);		=>>call	_InitSound5CCD501D
	
_A523506CC_83:;					=>>_A523506CC_83:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A523506CC_84:;					=>>_A523506CC_84:;
	asm	AR = AX				=>>AR = AX
_A523506CC_85:;					=>>_A523506CC_85:;
	asm	I0 = AR				=>>I0 = AR
_A523506CC_86:;					=>>_A523506CC_86:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AR	= 0x0200;rm[I1]	= AR
L2A70A9A2_37:;					=>>L2A70A9A2_37:;
_A523506CC_87:;					=>>_A523506CC_87:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L2A70A9A2_38;	=>>if NZ	jmp L2A70A9A2_38
	goto	L2A70A9A2_36;			=>>jmp	L2A70A9A2_36
L2A70A9A2_38:;					=>>L2A70A9A2_38:;
	
_A523506CC_88:;					=>>_A523506CC_88:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A523506CC_89:;					=>>_A523506CC_89:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	goto L2A70A9A2_37;			=>>jmp	L2A70A9A2_37
L2A70A9A2_36:;					=>>L2A70A9A2_36:;
_A523506CC_90:;					=>>_A523506CC_90:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_91:;					=>>_A523506CC_91:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A523506CC_92:;					=>>_A523506CC_92:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_A523506CC_93:;					=>>_A523506CC_93:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_A523506CC_94:;					=>>_A523506CC_94:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
L2A70A9A2_35:;					=>>L2A70A9A2_35:;
_A523506CC_95:;					=>>_A523506CC_95:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_INITIAL0C18377D_end:;				=>>_INITIAL0C18377D_end:;
_A523506CC_96:;					=>>_A523506CC_96:;
}




.code


naked void ginit_code_SUNB3_593950F9_s(void)	=>>ginit_code_SUNB3_593950F9_s:
{
	asm P1 = #ginit_seg_SUNB3_593950F9_s+0;	=>>P1 = #ginit_seg_SUNB3_593950F9_s+0//
	asm I1 = L2A70A9A2_2;			=>>I1 = L2A70A9A2_2//
	sCX = 1;				=>>CX	= 0x01
	sfx_GLOBALINIT();			=>>pch	= sfx_GLOBALINIT;lcall	sfx_GLOBALINIT

	asm P1 = #ginit_seg_SUNB3_593950F9_s+1;	=>>P1 = #ginit_seg_SUNB3_593950F9_s+1//
	asm I1 = L2A70A9A2_3;			=>>I1 = L2A70A9A2_3//
	sCX = 1;				=>>CX	= 0x01
	sfx_GLOBALINIT();			=>>pch	= sfx_GLOBALINIT;lcall	sfx_GLOBALINIT

	return;					=>>rets
}








.code



.code







.code




__int16 ginit_seg_SUNB3_593950F9_s[2] = {	=>>ginit_seg_SUNB3_593950F9_s:
						=>>DW 
	0x0000,					=>>DW 0x0000,
						=>>DW 
	0x0000					=>>DW 0x0000,
};




.data

naked void MyData()				=>>MyData:
{
	asm	DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"=>>DW "subband3\Song_Scan_and_Sort_@11K7bps.T3Z"
}





.code























































































