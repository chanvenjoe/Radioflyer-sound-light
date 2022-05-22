
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};


naked void MyData();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();




.code
rjmp void _main()				=>>_main:
{
_AE23BDF6A_0:;					=>>_AE23BDF6A_0:;
	
_AE23BDF6A_1:;					=>>_AE23BDF6A_1:;
_AE23BDF6A_2:;					=>>_AE23BDF6A_2:;
	F_ChangePWMVectTabletobank2();		=>>pch	= F_ChangePWMVectTabletobank2;lcall	F_ChangePWMVectTabletobank2
_AE23BDF6A_3:;					=>>_AE23BDF6A_3:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE23BDF6A_4:;					=>>_AE23BDF6A_4:;
_AE23BDF6A_5:;					=>>_AE23BDF6A_5:;
	_INITIAL0C18377D();			=>>pch	= _INITIAL0C18377D;lcall	_INITIAL0C18377D
_AE23BDF6A_6:;					=>>_AE23BDF6A_6:;
_AE23BDF6A_7:;					=>>_AE23BDF6A_7:;
	_ClearTickCount5DDE4003();		=>>pch	= _ClearTickCount5DDE4003;lcall	_ClearTickCount5DDE4003
_AE23BDF6A_8:;					=>>_AE23BDF6A_8:;
_AE23BDF6A_9:;					=>>_AE23BDF6A_9:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
LB6D5333B_4:;					=>>LB6D5333B_4:;
_AE23BDF6A_10:;					=>>_AE23BDF6A_10:;
_AE23BDF6A_11:;					=>>_AE23BDF6A_11:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AE23BDF6A_12:;					=>>_AE23BDF6A_12:;
_AE23BDF6A_13:;					=>>_AE23BDF6A_13:;
	_RampUpFF7996DA();			=>>pch	= _RampUpFF7996DA;lcall	_RampUpFF7996DA
_AE23BDF6A_14:;					=>>_AE23BDF6A_14:;
_AE23BDF6A_15:;					=>>_AE23BDF6A_15:;
	Subb3_Dec();				=>>pch	= Subb3_Dec;lcall	Subb3_Dec
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LB6D5333B_6;	=>>if NZ	jmp LB6D5333B_6
	goto	LB6D5333B_5;			=>>jmp	LB6D5333B_5
LB6D5333B_6:;					=>>LB6D5333B_6:;
_AE23BDF6A_16:;					=>>_AE23BDF6A_16:;
_AE23BDF6A_17:;					=>>_AE23BDF6A_17:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
LB6D5333B_5:;					=>>LB6D5333B_5:;
_AE23BDF6A_18:;					=>>_AE23BDF6A_18:;
_AE23BDF6A_19:;					=>>_AE23BDF6A_19:;
	goto LB6D5333B_4;			=>>jmp	LB6D5333B_4
LB6D5333B_3:;					=>>LB6D5333B_3:;
LB6D5333B_2:;					=>>LB6D5333B_2:;
_AE23BDF6A_20:;					=>>_AE23BDF6A_20:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AE23BDF6A_21:;					=>>_AE23BDF6A_21:;
}

rjmp void _InitSound5CCD501D()			=>>_InitSound5CCD501D:
{
_AE23BDF6A_22:;					=>>_AE23BDF6A_22:;
	
_AE23BDF6A_23:;					=>>_AE23BDF6A_23:;
	io[0x3E]	= 0x3FFF;		=>>AR	= 0x3FFF;io[0x3E]	= AR
_AE23BDF6A_24:;					=>>_AE23BDF6A_24:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE23BDF6A_25:;					=>>_AE23BDF6A_25:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE23BDF6A_26:;					=>>_AE23BDF6A_26:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE23BDF6A_27:;					=>>_AE23BDF6A_27:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_AE23BDF6A_28:;					=>>_AE23BDF6A_28:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_29:;					=>>_AE23BDF6A_29:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_30:;					=>>_AE23BDF6A_30:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_31:;					=>>_AE23BDF6A_31:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_32:;					=>>_AE23BDF6A_32:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_33:;					=>>_AE23BDF6A_33:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_34:;					=>>_AE23BDF6A_34:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_35:;					=>>_AE23BDF6A_35:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_AE23BDF6A_36:;					=>>_AE23BDF6A_36:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_AE23BDF6A_37:;					=>>_AE23BDF6A_37:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AE23BDF6A_38:;					=>>_AE23BDF6A_38:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_AE23BDF6A_39:;					=>>_AE23BDF6A_39:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_AE23BDF6A_40:;					=>>_AE23BDF6A_40:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
LB6D5333B_7:;					=>>LB6D5333B_7:;
_AE23BDF6A_41:;					=>>_AE23BDF6A_41:;
	return;					=>>rets
_InitSound5CCD501D_end:;			=>>_InitSound5CCD501D_end:;
_AE23BDF6A_42:;					=>>_AE23BDF6A_42:;
}

rjmp void _INITIAL0C18377D()			=>>_INITIAL0C18377D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AE23BDF6A_43:;					=>>_AE23BDF6A_43:;
	
_AE23BDF6A_44:;					=>>_AE23BDF6A_44:;
_AE23BDF6A_45:;					=>>_AE23BDF6A_45:;
	NEARCALL(_InitSound5CCD501D);		=>>call	_InitSound5CCD501D
	
_AE23BDF6A_46:;					=>>_AE23BDF6A_46:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_AE23BDF6A_47:;					=>>_AE23BDF6A_47:;
	asm	AR = AX				=>>AR = AX
_AE23BDF6A_48:;					=>>_AE23BDF6A_48:;
	asm	I0 = AR				=>>I0 = AR
	
_AE23BDF6A_49:;					=>>_AE23BDF6A_49:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AX	= 0x0200;rm[I1]	= AX
LB6D5333B_10:;					=>>LB6D5333B_10:;
_AE23BDF6A_50:;					=>>_AE23BDF6A_50:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LB6D5333B_11;	=>>if NZ	jmp LB6D5333B_11
	goto	LB6D5333B_9;			=>>jmp	LB6D5333B_9
LB6D5333B_11:;					=>>LB6D5333B_11:;
	
_AE23BDF6A_51:;					=>>_AE23BDF6A_51:;
	sAX	= 0x0000;			=>>AX	= 0x00
_AE23BDF6A_52:;					=>>_AE23BDF6A_52:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
_AE23BDF6A_53:;					=>>_AE23BDF6A_53:;
	goto LB6D5333B_10;			=>>jmp	LB6D5333B_10
LB6D5333B_9:;					=>>LB6D5333B_9:;
_AE23BDF6A_54:;					=>>_AE23BDF6A_54:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE23BDF6A_55:;					=>>_AE23BDF6A_55:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE23BDF6A_56:;					=>>_AE23BDF6A_56:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_AE23BDF6A_57:;					=>>_AE23BDF6A_57:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_AE23BDF6A_58:;					=>>_AE23BDF6A_58:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
LB6D5333B_8:;					=>>LB6D5333B_8:;
_AE23BDF6A_59:;					=>>_AE23BDF6A_59:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_INITIAL0C18377D_end:;				=>>_INITIAL0C18377D_end:;
_AE23BDF6A_60:;					=>>_AE23BDF6A_60:;
}








.code



.code







.data

naked void MyData()				=>>MyData:
{
	asm	DW "subband3\5003reezeounceusicong_1@34K3bps.T3Z"=>>DW "subband3\5003reezeounceusicong_1@34K3bps.T3Z"
}





.code
















