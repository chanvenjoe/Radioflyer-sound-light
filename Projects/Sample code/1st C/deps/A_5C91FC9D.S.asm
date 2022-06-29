
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


interrupt void _PWM99B23D7D();
void _WakeupProc94A410F9();
void _main();
void _InitialDA4A7CC4();




.code
interrupt void _PWM99B23D7D()			=>>_PWM99B23D7D:
{						=>>push ax;push bx;push cx;push dx;push r0;push r1;push r2;push r3;push i1;push p1;push mx;push mr0;push mr1;push mr2;ar = p1.hh;push ar;
_AC1727E34_0:;					=>>_AC1727E34_0:;
_AC1727E34_1:;					=>>_AC1727E34_1:;
	asm	clr io[INTREQ].b0		=>>clr io[INTREQ].b0
_AC1727E34_2:;					=>>_AC1727E34_2:;
	asm	push AX				=>>push AX
_AC1727E34_3:;					=>>_AC1727E34_3:;
	asm	push I0				=>>push I0
_AC1727E34_4:;					=>>_AC1727E34_4:;
	asm	push I1				=>>push I1
_AC1727E34_5:;					=>>_AC1727E34_5:;
	asm	pop I1				=>>pop I1
_AC1727E34_6:;					=>>_AC1727E34_6:;
	asm	pop I0				=>>pop I0
_AC1727E34_7:;					=>>_AC1727E34_7:;
	asm	pop AX				=>>pop AX
	
LC114AE18_2:;					=>>LC114AE18_2:;
_AC1727E34_8:;					=>>_AC1727E34_8:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM99B23D7D_end:;				=>>_PWM99B23D7D_end:;
_AC1727E34_9:;					=>>_AC1727E34_9:;
}

void _WakeupProc94A410F9()			=>>_WakeupProc94A410F9:
{
_AC1727E34_10:;					=>>_AC1727E34_10:;
_AC1727E34_11:;					=>>_AC1727E34_11:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
LC114AE18_3:;					=>>LC114AE18_3:;
_AC1727E34_12:;					=>>_AC1727E34_12:;
	return;					=>>rets
_WakeupProc94A410F9_end:;			=>>_WakeupProc94A410F9_end:;
_AC1727E34_13:;					=>>_AC1727E34_13:;
}

void _main()					=>>_main:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AC1727E34_14:;					=>>_AC1727E34_14:;
	
_AC1727E34_15:;					=>>_AC1727E34_15:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
_AC1727E34_16:;					=>>_AC1727E34_16:;
_AC1727E34_17:;					=>>_AC1727E34_17:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
LC114AE18_6:;					=>>LC114AE18_6:;
_AC1727E34_18:;					=>>_AC1727E34_18:;
_AC1727E34_19:;					=>>_AC1727E34_19:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AC1727E34_20:;					=>>_AC1727E34_20:;
_AC1727E34_21:;					=>>_AC1727E34_21:;
	sAX	= 0x0001;			=>>AX	= 0x01
	PUSH(sAX);				=>>push	AX
	_delay6F9F34ED(STACK[sSP + 0]);		=>>pch	= _delay6F9F34ED;lcall	_delay6F9F34ED
	RESTORESP(1);				=>>pop	AR;
_AC1727E34_22:;					=>>_AC1727E34_22:;
_AC1727E34_23:;					=>>_AC1727E34_23:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0007;			=>>AX	= 0x07
	PUSH(sAX);				=>>push	AX
	outp(STACK[sSP + 0], STACK[sSP + 1]);	=>>pch	= outp;lcall	outp
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AC1727E34_24:;					=>>_AC1727E34_24:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000F;			=>>CX	= 0x0F
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LC114AE18_8;	=>>if ZR	jmp LC114AE18_8
	goto	LC114AE18_7;			=>>pch =	LC114AE18_7;ljmp	LC114AE18_7
LC114AE18_8:;					=>>LC114AE18_8:;
_AC1727E34_25:;					=>>_AC1727E34_25:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto LC114AE18_9;			=>>pch =	LC114AE18_9;ljmp	LC114AE18_9
LC114AE18_7:;					=>>LC114AE18_7:;
_AC1727E34_26:;					=>>_AC1727E34_26:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
LC114AE18_9:;					=>>LC114AE18_9:;
_AC1727E34_27:;					=>>_AC1727E34_27:;
_AC1727E34_28:;					=>>_AC1727E34_28:;
	goto LC114AE18_6;			=>>pch =	LC114AE18_6;ljmp	LC114AE18_6
LC114AE18_5:;					=>>LC114AE18_5:;
LC114AE18_4:;					=>>LC114AE18_4:;
_AC1727E34_29:;					=>>_AC1727E34_29:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_main_end:;					=>>_main_end:;
_AC1727E34_30:;					=>>_AC1727E34_30:;
}

void _InitialDA4A7CC4()				=>>_InitialDA4A7CC4:
{
_AC1727E34_31:;					=>>_AC1727E34_31:;
	
_AC1727E34_32:;					=>>_AC1727E34_32:;
	sAX	= 0x003F;			=>>AX	= 0x3F
_AC1727E34_33:;					=>>_AC1727E34_33:;
	asm	AR = AX				=>>AR = AX
_AC1727E34_34:;					=>>_AC1727E34_34:;
	asm	FLTG = AR			=>>FLTG = AR
	
	
_AC1727E34_35:;					=>>_AC1727E34_35:;
	sAX	= 0x1FFF;			=>>AX	= 0x1FFF
_AC1727E34_36:;					=>>_AC1727E34_36:;
	asm	AR = AX				=>>AR = AX
_AC1727E34_37:;					=>>_AC1727E34_37:;
	asm	FLTP = AR			=>>FLTP = AR
	
	
_AC1727E34_38:;					=>>_AC1727E34_38:;
	sAX	= 0x0008;			=>>AX	= 0x08
_AC1727E34_39:;					=>>_AC1727E34_39:;
	asm	AR = AX				=>>AR = AX
_AC1727E34_40:;					=>>_AC1727E34_40:;
	asm	CBL = AR			=>>CBL = AR
	
_AC1727E34_41:;					=>>_AC1727E34_41:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_AC1727E34_42:;					=>>_AC1727E34_42:;
	asm	eni				=>>eni
	
_AC1727E34_43:;					=>>_AC1727E34_43:;
	sAX	= 0x000F;			=>>AX	= 0x0F
_AC1727E34_44:;					=>>_AC1727E34_44:;
	asm	AR = AX				=>>AR = AX
_AC1727E34_45:;					=>>_AC1727E34_45:;
	asm	io[IOC_PA] = AR			=>>io[IOC_PA] = AR
	
	
_AC1727E34_46:;					=>>_AC1727E34_46:;
_AC1727E34_47:;					=>>_AC1727E34_47:;
	_ClearTickCount5DDE4003();		=>>pch	= _ClearTickCount5DDE4003;lcall	_ClearTickCount5DDE4003
LC114AE18_10:;					=>>LC114AE18_10:;
_AC1727E34_48:;					=>>_AC1727E34_48:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_AC1727E34_49:;					=>>_AC1727E34_49:;
}








.code



.code







.data





.code









