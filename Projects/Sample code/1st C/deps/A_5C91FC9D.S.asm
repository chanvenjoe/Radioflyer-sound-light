
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
_A0FBC1636_0:;					=>>_A0FBC1636_0:;
_A0FBC1636_1:;					=>>_A0FBC1636_1:;
	asm	clr io[INTREQ].b0		=>>clr io[INTREQ].b0
_A0FBC1636_2:;					=>>_A0FBC1636_2:;
	asm	push AX				=>>push AX
_A0FBC1636_3:;					=>>_A0FBC1636_3:;
	asm	push I0				=>>push I0
_A0FBC1636_4:;					=>>_A0FBC1636_4:;
	asm	push I1				=>>push I1
_A0FBC1636_5:;					=>>_A0FBC1636_5:;
	asm	pop I1				=>>pop I1
_A0FBC1636_6:;					=>>_A0FBC1636_6:;
	asm	pop I0				=>>pop I0
_A0FBC1636_7:;					=>>_A0FBC1636_7:;
	asm	pop AX				=>>pop AX
	
LC114AE18_2:;					=>>LC114AE18_2:;
_A0FBC1636_8:;					=>>_A0FBC1636_8:;
	return;					=>>pop ar;p1.hh = ar;pop mr2;pop mr1;pop mr0;pop mx;pop p1;pop i1;pop r3;pop r2;pop r1;pop r0;pop dx;pop cx;pop bx;pop ax;reti
_PWM99B23D7D_end:;				=>>_PWM99B23D7D_end:;
_A0FBC1636_9:;					=>>_A0FBC1636_9:;
}

void _WakeupProc94A410F9()			=>>_WakeupProc94A410F9:
{
_A0FBC1636_10:;					=>>_A0FBC1636_10:;
_A0FBC1636_11:;					=>>_A0FBC1636_11:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
LC114AE18_3:;					=>>LC114AE18_3:;
_A0FBC1636_12:;					=>>_A0FBC1636_12:;
	return;					=>>rets
_WakeupProc94A410F9_end:;			=>>_WakeupProc94A410F9_end:;
_A0FBC1636_13:;					=>>_A0FBC1636_13:;
}

void _main()					=>>_main:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A0FBC1636_14:;					=>>_A0FBC1636_14:;
	
_A0FBC1636_15:;					=>>_A0FBC1636_15:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
_A0FBC1636_16:;					=>>_A0FBC1636_16:;
_A0FBC1636_17:;					=>>_A0FBC1636_17:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
LC114AE18_6:;					=>>LC114AE18_6:;
_A0FBC1636_18:;					=>>_A0FBC1636_18:;
_A0FBC1636_19:;					=>>_A0FBC1636_19:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A0FBC1636_20:;					=>>_A0FBC1636_20:;
_A0FBC1636_21:;					=>>_A0FBC1636_21:;
	sAX	= 0x0064;			=>>AX	= 0x64
	PUSH(sAX);				=>>push	AX
	_delay6F9F34ED(STACK[sSP + 0]);		=>>pch	= _delay6F9F34ED;lcall	_delay6F9F34ED
	RESTORESP(1);				=>>pop	AR;
_A0FBC1636_22:;					=>>_A0FBC1636_22:;
_A0FBC1636_23:;					=>>_A0FBC1636_23:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0007;			=>>AX	= 0x07
	PUSH(sAX);				=>>push	AX
	outp(STACK[sSP + 0], STACK[sSP + 1]);	=>>pch	= outp;lcall	outp
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A0FBC1636_24:;					=>>_A0FBC1636_24:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000F;			=>>CX	= 0x0F
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LC114AE18_8;	=>>if ZR	jmp LC114AE18_8
	goto	LC114AE18_7;			=>>pch =	LC114AE18_7;ljmp	LC114AE18_7
LC114AE18_8:;					=>>LC114AE18_8:;
_A0FBC1636_25:;					=>>_A0FBC1636_25:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto LC114AE18_9;			=>>pch =	LC114AE18_9;ljmp	LC114AE18_9
LC114AE18_7:;					=>>LC114AE18_7:;
_A0FBC1636_26:;					=>>_A0FBC1636_26:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
LC114AE18_9:;					=>>LC114AE18_9:;
_A0FBC1636_27:;					=>>_A0FBC1636_27:;
_A0FBC1636_28:;					=>>_A0FBC1636_28:;
	goto LC114AE18_6;			=>>pch =	LC114AE18_6;ljmp	LC114AE18_6
LC114AE18_5:;					=>>LC114AE18_5:;
LC114AE18_4:;					=>>LC114AE18_4:;
_A0FBC1636_29:;					=>>_A0FBC1636_29:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_main_end:;					=>>_main_end:;
_A0FBC1636_30:;					=>>_A0FBC1636_30:;
}

void _InitialDA4A7CC4()				=>>_InitialDA4A7CC4:
{
_A0FBC1636_31:;					=>>_A0FBC1636_31:;
	
_A0FBC1636_32:;					=>>_A0FBC1636_32:;
	sAX	= 0x003F;			=>>AX	= 0x3F
_A0FBC1636_33:;					=>>_A0FBC1636_33:;
	asm	AR = AX				=>>AR = AX
_A0FBC1636_34:;					=>>_A0FBC1636_34:;
	asm	FLTG = AR			=>>FLTG = AR
	
	
_A0FBC1636_35:;					=>>_A0FBC1636_35:;
	sAX	= 0x1FFF;			=>>AX	= 0x1FFF
_A0FBC1636_36:;					=>>_A0FBC1636_36:;
	asm	AR = AX				=>>AR = AX
_A0FBC1636_37:;					=>>_A0FBC1636_37:;
	asm	FLTP = AR			=>>FLTP = AR
	
	
_A0FBC1636_38:;					=>>_A0FBC1636_38:;
	sAX	= 0x0008;			=>>AX	= 0x08
_A0FBC1636_39:;					=>>_A0FBC1636_39:;
	asm	AR = AX				=>>AR = AX
_A0FBC1636_40:;					=>>_A0FBC1636_40:;
	asm	CBL = AR			=>>CBL = AR
	
_A0FBC1636_41:;					=>>_A0FBC1636_41:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A0FBC1636_42:;					=>>_A0FBC1636_42:;
	asm	eni				=>>eni
	
_A0FBC1636_43:;					=>>_A0FBC1636_43:;
	sAX	= 0x000F;			=>>AX	= 0x0F
_A0FBC1636_44:;					=>>_A0FBC1636_44:;
	asm	AR = AX				=>>AR = AX
_A0FBC1636_45:;					=>>_A0FBC1636_45:;
	asm	io[IOC_PA] = AR			=>>io[IOC_PA] = AR
	
	
_A0FBC1636_46:;					=>>_A0FBC1636_46:;
_A0FBC1636_47:;					=>>_A0FBC1636_47:;
	_ClearTickCount5DDE4003();		=>>pch	= _ClearTickCount5DDE4003;lcall	_ClearTickCount5DDE4003
LC114AE18_10:;					=>>LC114AE18_10:;
_A0FBC1636_48:;					=>>_A0FBC1636_48:;
	return;					=>>rets
_InitialDA4A7CC4_end:;				=>>_InitialDA4A7CC4_end:;
_A0FBC1636_49:;					=>>_A0FBC1636_49:;
}








.code



.code







.data





.code









