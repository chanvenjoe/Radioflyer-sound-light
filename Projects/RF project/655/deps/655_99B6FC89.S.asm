
#include "crt0.h"








__int16 LD1B663E8_2;
__int16 _flagD698DD9D;





__int16 _TFSF_Color_BufA76B681D[5];



// CODE segment					=>>VarRM[0:4095]={
 LD1B663E8_2,_flagD698DD9D,_TFSF_Color_BufA76B681D[5] 
};

.code


void _main();




.code



.data



.code
void _main()					=>>_main:
{
_A30BB6F62_0:;					=>>_A30BB6F62_0:;
	
_A30BB6F62_1:;					=>>_A30BB6F62_1:;
_A30BB6F62_2:;					=>>_A30BB6F62_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
LD1B663E8_5:;					=>>LD1B663E8_5:;
_A30BB6F62_3:;					=>>_A30BB6F62_3:;
_A30BB6F62_4:;					=>>_A30BB6F62_4:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A30BB6F62_5:;					=>>_A30BB6F62_5:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto LD1B663E8_6;		=>>if ZR	jmp LD1B663E8_6
	sAX	= 1;				=>>AX	= 0x01
LD1B663E8_6:;					=>>LD1B663E8_6:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_8;	=>>if ZR	jmp LD1B663E8_8
	goto	LD1B663E8_7;			=>>pch =	LD1B663E8_7;ljmp	LD1B663E8_7
LD1B663E8_8:;					=>>LD1B663E8_8:;
_A30BB6F62_6:;					=>>_A30BB6F62_6:;
	asm	nop				=>>nop
_A30BB6F62_7:;					=>>_A30BB6F62_7:;
	asm	nop				=>>nop
_A30BB6F62_8:;					=>>_A30BB6F62_8:;
	asm	nop				=>>nop
_A30BB6F62_9:;					=>>_A30BB6F62_9:;
	asm	nop				=>>nop
_A30BB6F62_10:;					=>>_A30BB6F62_10:;
	asm	nop				=>>nop
_A30BB6F62_11:;					=>>_A30BB6F62_11:;
	asm	nop				=>>nop
_A30BB6F62_12:;					=>>_A30BB6F62_12:;
	asm	nop				=>>nop
_A30BB6F62_13:;					=>>_A30BB6F62_13:;
	asm	nop				=>>nop
_A30BB6F62_14:;					=>>_A30BB6F62_14:;
	asm	nop				=>>nop
_A30BB6F62_15:;					=>>_A30BB6F62_15:;
	asm	nop				=>>nop
_A30BB6F62_16:;					=>>_A30BB6F62_16:;
	asm	nop				=>>nop
_A30BB6F62_17:;					=>>_A30BB6F62_17:;
	asm	nop				=>>nop
_A30BB6F62_18:;					=>>_A30BB6F62_18:;
	asm	nop				=>>nop
_A30BB6F62_19:;					=>>_A30BB6F62_19:;
	asm	nop				=>>nop
_A30BB6F62_20:;					=>>_A30BB6F62_20:;
	asm	nop				=>>nop
_A30BB6F62_21:;					=>>_A30BB6F62_21:;
	asm	nop				=>>nop
_A30BB6F62_22:;					=>>_A30BB6F62_22:;
	asm	nop				=>>nop
_A30BB6F62_23:;					=>>_A30BB6F62_23:;
	asm	nop				=>>nop
_A30BB6F62_24:;					=>>_A30BB6F62_24:;
	asm	nop				=>>nop
_A30BB6F62_25:;					=>>_A30BB6F62_25:;
	asm	nop				=>>nop
_A30BB6F62_26:;					=>>_A30BB6F62_26:;
	asm	nop				=>>nop
_A30BB6F62_27:;					=>>_A30BB6F62_27:;
	asm	nop				=>>nop
_A30BB6F62_28:;					=>>_A30BB6F62_28:;
	asm	nop				=>>nop
_A30BB6F62_29:;					=>>_A30BB6F62_29:;
	asm	nop				=>>nop
_A30BB6F62_30:;					=>>_A30BB6F62_30:;
	asm	nop				=>>nop
_A30BB6F62_31:;					=>>_A30BB6F62_31:;
	asm	nop				=>>nop
_A30BB6F62_32:;					=>>_A30BB6F62_32:;
	asm	nop				=>>nop
_A30BB6F62_33:;					=>>_A30BB6F62_33:;
	asm	nop				=>>nop
_A30BB6F62_34:;					=>>_A30BB6F62_34:;
	asm	nop				=>>nop
_A30BB6F62_35:;					=>>_A30BB6F62_35:;
	asm	nop				=>>nop
_A30BB6F62_36:;					=>>_A30BB6F62_36:;
	asm	nop				=>>nop
_A30BB6F62_37:;					=>>_A30BB6F62_37:;
	asm	nop				=>>nop
_A30BB6F62_38:;					=>>_A30BB6F62_38:;
	asm	nop				=>>nop
_A30BB6F62_39:;					=>>_A30BB6F62_39:;
	asm	nop				=>>nop
_A30BB6F62_40:;					=>>_A30BB6F62_40:;
	asm	nop				=>>nop
_A30BB6F62_41:;					=>>_A30BB6F62_41:;
	asm	nop				=>>nop
	
_A30BB6F62_42:;					=>>_A30BB6F62_42:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x08].b2;			=>>test io[0x08].b2//
	if(__jz__) goto LD1B663E8_9;		=>>if ZR	jmp LD1B663E8_9
	sAX	= 1;				=>>AX	= 0x01
LD1B663E8_9:;					=>>LD1B663E8_9:;
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JE();			=>>pch	= sfx_CMP_AX_CX_JE;lcall	sfx_CMP_AX_CX_JE
	if(__je__)	goto LD1B663E8_11;	=>>if ZR	jmp LD1B663E8_11
	goto	LD1B663E8_10;			=>>pch =	LD1B663E8_10;ljmp	LD1B663E8_10
LD1B663E8_11:;					=>>LD1B663E8_11:;
	
_A30BB6F62_43:;					=>>_A30BB6F62_43:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LD1B663E8_13;	=>>if NZ	jmp LD1B663E8_13
	goto	LD1B663E8_12;			=>>pch =	LD1B663E8_12;ljmp	LD1B663E8_12
LD1B663E8_13:;					=>>LD1B663E8_13:;
	
_A30BB6F62_44:;					=>>_A30BB6F62_44:;
_A30BB6F62_45:;					=>>_A30BB6F62_45:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0005;			=>>AX	= 0x05
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A30BB6F62_46:;					=>>_A30BB6F62_46:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
_A30BB6F62_47:;					=>>_A30BB6F62_47:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_NOT_AX();				=>>AR	= -1;AX	= AX ^ AR;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
	goto LD1B663E8_14;			=>>pch =	LD1B663E8_14;ljmp	LD1B663E8_14
LD1B663E8_12:;					=>>LD1B663E8_12:;
	
_A30BB6F62_48:;					=>>_A30BB6F62_48:;
_A30BB6F62_49:;					=>>_A30BB6F62_49:;
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0003;			=>>AX	= 0x03
	PUSH(sAX);				=>>push	AX
	_WS_TRSF_color_setE1CC300C(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _WS_TRSF_color_setE1CC300C;lcall	_WS_TRSF_color_setE1CC300C
	RESTORESP(2);				=>>pop	AR;pop	AR;
_A30BB6F62_50:;					=>>_A30BB6F62_50:;
	asm clr io[0x09].b14;			=>>clr io[0x09].b14//
_A30BB6F62_51:;					=>>_A30BB6F62_51:;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_NOT_AX();				=>>AR	= -1;AX	= AX ^ AR;
	asm I1 = _flagD698DD9D+0;		=>>I1 = _flagD698DD9D+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LD1B663E8_14:;					=>>LD1B663E8_14:;
_A30BB6F62_52:;					=>>_A30BB6F62_52:;
LD1B663E8_10:;					=>>LD1B663E8_10:;
_A30BB6F62_53:;					=>>_A30BB6F62_53:;
LD1B663E8_7:;					=>>LD1B663E8_7:;
_A30BB6F62_54:;					=>>_A30BB6F62_54:;
	goto LD1B663E8_5;			=>>pch =	LD1B663E8_5;ljmp	LD1B663E8_5
LD1B663E8_4:;					=>>LD1B663E8_4:;
LD1B663E8_3:;					=>>LD1B663E8_3:;
_A30BB6F62_55:;					=>>_A30BB6F62_55:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_A30BB6F62_56:;					=>>_A30BB6F62_56:;
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

	return;					=>>rets
}








.code



.code







.code




__int16 ginit_seg_655_99B6FC89_s[2] = {		=>>ginit_seg_655_99B6FC89_s:
						=>>DW 
	0x0000,					=>>DW 0x0000,
						=>>DW 
	0x0000					=>>DW 0x0000,
};




.data





.code

































































