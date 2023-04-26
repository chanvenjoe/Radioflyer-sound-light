
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


naked void MyData();
rjmp void _main();
rjmp void _InitSound5CCD501D();
rjmp void _INITIAL0C18377D();




.code
rjmp void _main()				=>>_main:
{
_A735335B1_0:;					=>>_A735335B1_0:;
	
_A735335B1_1:;					=>>_A735335B1_1:;
_A735335B1_2:;					=>>_A735335B1_2:;
	F_ChangePWMVectTabletobank2();		=>>pch	= F_ChangePWMVectTabletobank2;lcall	F_ChangePWMVectTabletobank2
_A735335B1_3:;					=>>_A735335B1_3:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A735335B1_4:;					=>>_A735335B1_4:;
_A735335B1_5:;					=>>_A735335B1_5:;
	_INITIAL0C18377D();			=>>pch	= _INITIAL0C18377D;lcall	_INITIAL0C18377D
_A735335B1_6:;					=>>_A735335B1_6:;
_A735335B1_7:;					=>>_A735335B1_7:;
	_ClearTickCount5DDE4003();		=>>pch	= _ClearTickCount5DDE4003;lcall	_ClearTickCount5DDE4003
_A735335B1_8:;					=>>_A735335B1_8:;
_A735335B1_9:;					=>>_A735335B1_9:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
LB6D5333B_4:;					=>>LB6D5333B_4:;
_A735335B1_10:;					=>>_A735335B1_10:;
_A735335B1_11:;					=>>_A735335B1_11:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A735335B1_12:;					=>>_A735335B1_12:;
_A735335B1_13:;					=>>_A735335B1_13:;
	_RampUpFF7996DA();			=>>pch	= _RampUpFF7996DA;lcall	_RampUpFF7996DA
_A735335B1_14:;					=>>_A735335B1_14:;
_A735335B1_15:;					=>>_A735335B1_15:;
	Subb3_Dec();				=>>pch	= Subb3_Dec;lcall	Subb3_Dec
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LB6D5333B_6;	=>>if NZ	jmp LB6D5333B_6
	goto	LB6D5333B_5;			=>>jmp	LB6D5333B_5
LB6D5333B_6:;					=>>LB6D5333B_6:;
_A735335B1_16:;					=>>_A735335B1_16:;
_A735335B1_17:;					=>>_A735335B1_17:;
	asm AX = #MyData+0;			=>>AX = #MyData+0//
	asm DX = #MyData.n2			=>>DX = #MyData.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
LB6D5333B_5:;					=>>LB6D5333B_5:;
_A735335B1_18:;					=>>_A735335B1_18:;
_A735335B1_19:;					=>>_A735335B1_19:;
	goto LB6D5333B_4;			=>>jmp	LB6D5333B_4
LB6D5333B_3:;					=>>LB6D5333B_3:;
LB6D5333B_2:;					=>>LB6D5333B_2:;
_A735335B1_20:;					=>>_A735335B1_20:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_A735335B1_21:;					=>>_A735335B1_21:;
}

rjmp void _InitSound5CCD501D()			=>>_InitSound5CCD501D:
{
_A735335B1_22:;					=>>_A735335B1_22:;
	
_A735335B1_23:;					=>>_A735335B1_23:;
	io[0x3E]	= 0x3FFF;		=>>AR	= 0x3FFF;io[0x3E]	= AR
_A735335B1_24:;					=>>_A735335B1_24:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A735335B1_25:;					=>>_A735335B1_25:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A735335B1_26:;					=>>_A735335B1_26:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A735335B1_27:;					=>>_A735335B1_27:;
	io[0x16]	= 0x0000;		=>>AR	= 0x00;io[0x16]	= AR
_A735335B1_28:;					=>>_A735335B1_28:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_29:;					=>>_A735335B1_29:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_30:;					=>>_A735335B1_30:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_31:;					=>>_A735335B1_31:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_32:;					=>>_A735335B1_32:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_33:;					=>>_A735335B1_33:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_34:;					=>>_A735335B1_34:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_35:;					=>>_A735335B1_35:;
	io[0x36]	= 0x0000;		=>>AR	= 0x00;io[0x36]	= AR
_A735335B1_36:;					=>>_A735335B1_36:;
	io[0x3C]	= 0x0000;		=>>AR	= 0x00;io[0x3C]	= AR
_A735335B1_37:;					=>>_A735335B1_37:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_A735335B1_38:;					=>>_A735335B1_38:;
	asm	set io[MISC].b9			=>>set io[MISC].b9
_A735335B1_39:;					=>>_A735335B1_39:;
	asm	set io[MISC].b8			=>>set io[MISC].b8
_A735335B1_40:;					=>>_A735335B1_40:;
	asm	set io[MISC].b4			=>>set io[MISC].b4
LB6D5333B_7:;					=>>LB6D5333B_7:;
_A735335B1_41:;					=>>_A735335B1_41:;
	return;					=>>rets
_InitSound5CCD501D_end:;			=>>_InitSound5CCD501D_end:;
_A735335B1_42:;					=>>_A735335B1_42:;
}

rjmp void _INITIAL0C18377D()			=>>_INITIAL0C18377D:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A735335B1_43:;					=>>_A735335B1_43:;
	
_A735335B1_44:;					=>>_A735335B1_44:;
_A735335B1_45:;					=>>_A735335B1_45:;
	NEARCALL(_InitSound5CCD501D);		=>>call	_InitSound5CCD501D
	
_A735335B1_46:;					=>>_A735335B1_46:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
_A735335B1_47:;					=>>_A735335B1_47:;
	asm	AR = AX				=>>AR = AX
_A735335B1_48:;					=>>_A735335B1_48:;
	asm	I0 = AR				=>>I0 = AR
	
_A735335B1_49:;					=>>_A735335B1_49:;
	_i_1_2+0	= 0x0200;		=>>I1	= rm[BP_SAVE];AX	= 0x0200;rm[I1]	= AX
LB6D5333B_10:;					=>>LB6D5333B_10:;
_A735335B1_50:;					=>>_A735335B1_50:;
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
	
_A735335B1_51:;					=>>_A735335B1_51:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A735335B1_52:;					=>>_A735335B1_52:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
_A735335B1_53:;					=>>_A735335B1_53:;
	goto LB6D5333B_10;			=>>jmp	LB6D5333B_10
LB6D5333B_9:;					=>>LB6D5333B_9:;
_A735335B1_54:;					=>>_A735335B1_54:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYIN_PTR+0;			=>>I1 = PCMYIN_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A735335B1_55:;					=>>_A735335B1_55:;
	asm AX = PCMY+0;			=>>AX = PCMY+0//
	asm I1 = PCMYOU_PTR+0;			=>>I1 = PCMYOU_PTR+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A735335B1_56:;					=>>_A735335B1_56:;
	asm I1 = _sub_vol980B1B83+0;		=>>I1 = _sub_vol980B1B83+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_A735335B1_57:;					=>>_A735335B1_57:;
	io[0x3E]	= 0x1FFF;		=>>AR	= 0x1FFF;io[0x3E]	= AR
_A735335B1_58:;					=>>_A735335B1_58:;
	io[0x3B]	= 0x0000;		=>>AR	= 0x00;io[0x3B]	= AR
LB6D5333B_8:;					=>>LB6D5333B_8:;
_A735335B1_59:;					=>>_A735335B1_59:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_INITIAL0C18377D_end:;				=>>_INITIAL0C18377D_end:;
_A735335B1_60:;					=>>_A735335B1_60:;
}








.code



.code







.data

naked void MyData()				=>>MyData:
{
	asm	DW "subband3\baby_Silen@31K9bps.TZB"=>>DW "subband3\baby_Silen@31K9bps.TZB"
}





.code
















