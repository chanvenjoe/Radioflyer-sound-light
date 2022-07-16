
#include "crt0.h"













__int16 _PLAY59F2A4ED;



// CODE segment					=>>VarRM[0:4095]={
 _PLAY59F2A4ED 
};

.code


rjmp void _main();
rjmp void _KeyPlayAdpECABF1D0();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
rjmp void _KeyPlaySubb36031D62D();




.code



.data



.code
rjmp void _main()				=>>_main:
{
_A0432E234_0:;					=>>_A0432E234_0:;
	
_A0432E234_1:;					=>>_A0432E234_1:;
_A0432E234_2:;					=>>_A0432E234_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_A0432E234_3:;					=>>_A0432E234_3:;
_A0432E234_4:;					=>>_A0432E234_4:;
	_InitKey3C587B6D();			=>>pch	= _InitKey3C587B6D;lcall	_InitKey3C587B6D
_A0432E234_5:;					=>>_A0432E234_5:;
_A0432E234_6:;					=>>_A0432E234_6:;
	ADPCM_CHX_Init();			=>>pch	= ADPCM_CHX_Init;lcall	ADPCM_CHX_Init
_A0432E234_7:;					=>>_A0432E234_7:;
_A0432E234_8:;					=>>_A0432E234_8:;
	_Sub3Initial96BE24F3();			=>>pch	= _Sub3Initial96BE24F3;lcall	_Sub3Initial96BE24F3
_A0432E234_9:;					=>>_A0432E234_9:;
	asm set io[0x06].b0;			=>>set io[0x06].b0//
_A0432E234_10:;					=>>_A0432E234_10:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = CopyToBank+0;			=>>I1 = CopyToBank+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_11:;					=>>_A0432E234_11:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_12:;					=>>_A0432E234_12:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A0432E234_13:;					=>>_A0432E234_13:;
	asm	eni				=>>eni
LF66E16C1_4:;					=>>LF66E16C1_4:;
_A0432E234_14:;					=>>_A0432E234_14:;
_A0432E234_15:;					=>>_A0432E234_15:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A0432E234_16:;					=>>_A0432E234_16:;
_A0432E234_17:;					=>>_A0432E234_17:;
	_PollingKey3B90E3B1();			=>>pch	= _PollingKey3B90E3B1;lcall	_PollingKey3B90E3B1
_A0432E234_18:;					=>>_A0432E234_18:;
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF66E16C1_6;	=>>if NZ	jmp LF66E16C1_6
	goto	LF66E16C1_5;			=>>jmp	LF66E16C1_5
LF66E16C1_6:;					=>>LF66E16C1_6:;
	
_A0432E234_19:;					=>>_A0432E234_19:;
_A0432E234_20:;					=>>_A0432E234_20:;
	Subb3_Dec();				=>>pch	= Subb3_Dec;lcall	Subb3_Dec
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto LF66E16C1_8;	=>>if NZ	jmp LF66E16C1_8
	goto	LF66E16C1_7;			=>>jmp	LF66E16C1_7
LF66E16C1_8:;					=>>LF66E16C1_8:;
	
_A0432E234_21:;					=>>_A0432E234_21:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_22:;					=>>_A0432E234_22:;
_A0432E234_23:;					=>>_A0432E234_23:;
	_Sub3ZeroFillABFF23AA();		=>>pch	= _Sub3ZeroFillABFF23AA;lcall	_Sub3ZeroFillABFF23AA
LF66E16C1_7:;					=>>LF66E16C1_7:;
_A0432E234_24:;					=>>_A0432E234_24:;
	goto LF66E16C1_9;			=>>jmp	LF66E16C1_9
LF66E16C1_5:;					=>>LF66E16C1_5:;
	
_A0432E234_25:;					=>>_A0432E234_25:;
_A0432E234_26:;					=>>_A0432E234_26:;
	_Sub3ZeroFillABFF23AA();		=>>pch	= _Sub3ZeroFillABFF23AA;lcall	_Sub3ZeroFillABFF23AA
LF66E16C1_9:;					=>>LF66E16C1_9:;
_A0432E234_27:;					=>>_A0432E234_27:;
_A0432E234_28:;					=>>_A0432E234_28:;
	goto LF66E16C1_4;			=>>jmp	LF66E16C1_4
LF66E16C1_3:;					=>>LF66E16C1_3:;
LF66E16C1_2:;					=>>LF66E16C1_2:;
_A0432E234_29:;					=>>_A0432E234_29:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_A0432E234_30:;					=>>_A0432E234_30:;
}

rjmp void _KeyPlayAdpECABF1D0()			=>>_KeyPlayAdpECABF1D0:
{
_A0432E234_31:;					=>>_A0432E234_31:;
	
_A0432E234_32:;					=>>_A0432E234_32:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_33:;					=>>_A0432E234_33:;
_A0432E234_34:;					=>>_A0432E234_34:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_playADPCMBACD5AFD(STACK[sSP + 0]);	=>>pch	= _playADPCMBACD5AFD;lcall	_playADPCMBACD5AFD
	RESTORESP(1);				=>>pop	AR;
LF66E16C1_10:;					=>>LF66E16C1_10:;
_A0432E234_35:;					=>>_A0432E234_35:;
	return;					=>>rets
_KeyPlayAdpECABF1D0_end:;			=>>_KeyPlayAdpECABF1D0_end:;
_A0432E234_36:;					=>>_A0432E234_36:;
}

rjmp void _KeyPlayNextAFBA8CED()		=>>_KeyPlayNextAFBA8CED:
{
_A0432E234_37:;					=>>_A0432E234_37:;
	
_A0432E234_38:;					=>>_A0432E234_38:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_A0432E234_39:;					=>>_A0432E234_39:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0009;			=>>CX	= 0x09
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto LF66E16C1_13;	=>>if ZR	jmp LF66E16C1_13
	goto	LF66E16C1_12;			=>>jmp	LF66E16C1_12
LF66E16C1_13:;					=>>LF66E16C1_13:;
_A0432E234_40:;					=>>_A0432E234_40:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LF66E16C1_12:;					=>>LF66E16C1_12:;
_A0432E234_41:;					=>>_A0432E234_41:;
_A0432E234_42:;					=>>_A0432E234_42:;
_A0432E234_43:;					=>>_A0432E234_43:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LF66E16C1_11:;					=>>LF66E16C1_11:;
_A0432E234_44:;					=>>_A0432E234_44:;
	return;					=>>rets
_KeyPlayNextAFBA8CED_end:;			=>>_KeyPlayNextAFBA8CED_end:;
_A0432E234_45:;					=>>_A0432E234_45:;
}

rjmp void _KeyPlayPrev8E98A35A()		=>>_KeyPlayPrev8E98A35A:
{
_A0432E234_46:;					=>>_A0432E234_46:;
	
_A0432E234_47:;					=>>_A0432E234_47:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX--;					=>>CX--
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_A0432E234_48:;					=>>_A0432E234_48:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LF66E16C1_16;	=>>if ZR	jmp LF66E16C1_16
	goto	LF66E16C1_15;			=>>jmp	LF66E16C1_15
LF66E16C1_16:;					=>>LF66E16C1_16:;
_A0432E234_49:;					=>>_A0432E234_49:;
	sAX	= 0x0008;			=>>AX	= 0x08
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LF66E16C1_15:;					=>>LF66E16C1_15:;
_A0432E234_50:;					=>>_A0432E234_50:;
_A0432E234_51:;					=>>_A0432E234_51:;
_A0432E234_52:;					=>>_A0432E234_52:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LF66E16C1_14:;					=>>LF66E16C1_14:;
_A0432E234_53:;					=>>_A0432E234_53:;
	return;					=>>rets
_KeyPlayPrev8E98A35A_end:;			=>>_KeyPlayPrev8E98A35A_end:;
_A0432E234_54:;					=>>_A0432E234_54:;
}

rjmp void _KeyPlaySubb36031D62D()		=>>_KeyPlaySubb36031D62D:
{
_A0432E234_55:;					=>>_A0432E234_55:;
	
_A0432E234_56:;					=>>_A0432E234_56:;
_A0432E234_57:;					=>>_A0432E234_57:;
	_StopAllADPCM9255018D();		=>>pch	= _StopAllADPCM9255018D;lcall	_StopAllADPCM9255018D
_A0432E234_58:;					=>>_A0432E234_58:;
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_PLAY59F2A4ED;		=>>I1	= _PLAY59F2A4ED
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_A0432E234_59:;					=>>_A0432E234_59:;
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sfx_CMP_AX_CX_JG();			=>>pch	= sfx_CMP_AX_CX_JG;lcall	sfx_CMP_AX_CX_JG
	if(__je__)	goto LF66E16C1_19;	=>>if ZR	jmp LF66E16C1_19
	goto	LF66E16C1_18;			=>>jmp	LF66E16C1_18
LF66E16C1_19:;					=>>LF66E16C1_19:;
_A0432E234_60:;					=>>_A0432E234_60:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LF66E16C1_18:;					=>>LF66E16C1_18:;
_A0432E234_61:;					=>>_A0432E234_61:;
_A0432E234_62:;					=>>_A0432E234_62:;
_A0432E234_63:;					=>>_A0432E234_63:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = _PLAY59F2A4ED+0;		=>>I1 = _PLAY59F2A4ED+0//
	asm CX = rm[I1];			=>>CX = rm[I1]//
	sfx_CMP_AX_CX_JE();			=>>AR	= AX;SF = AR - CX;
	if(__je__)	goto LF66E16C1_22;	=>>if ZR	jmp LF66E16C1_22
	goto	LF66E16C1_20;			=>>jmp	LF66E16C1_20
LF66E16C1_22:;					=>>LF66E16C1_22:;
	asm AX = #subb0+0;			=>>AX = #subb0+0//
	asm DX = #subb0.n2			=>>DX = #subb0.n2
	asm set DX.b11				=>>set DX.b11
	goto LF66E16C1_21;			=>>jmp	LF66E16C1_21
LF66E16C1_20:;					=>>LF66E16C1_20:;
	asm AX = #subb1+0;			=>>AX = #subb1+0//
	asm DX = #subb1.n2			=>>DX = #subb1.n2
	asm set DX.b11				=>>set DX.b11
LF66E16C1_21:;					=>>LF66E16C1_21:;
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
LF66E16C1_17:;					=>>LF66E16C1_17:;
_A0432E234_64:;					=>>_A0432E234_64:;
	return;					=>>rets
_KeyPlaySubb36031D62D_end:;			=>>_KeyPlaySubb36031D62D_end:;
_A0432E234_65:;					=>>_A0432E234_65:;
}




.data







.code



.code




__int16 _keyfuncF06F3D55[15] = {		=>>_keyfuncF06F3D55:
	(int)&_KeyPlayPrev8E98A35A[0], 0x0000, 0x0000, (int)&_KeyPlayAdpECABF1D0[0], 0x0000, 0x0000, (int)&_KeyPlayNextAFBA8CED[0], 0x0000, =>>DW #_KeyPlayPrev8E98A35A,0x0000,0x0000,#_KeyPlayAdpECABF1D0,0x0000,0x0000,#_KeyPlayNextAFBA8CED,0x0000,
	0x0000, (int)&_KeyPlaySubb36031D62D[0], 0x0000, 0x0000, 0x0000, 0x0000, 0x0000=>>DW 0x0000,#_KeyPlaySubb36031D62D,0x0000,0x0000,0x0000,0x0000,0x0000,
};




.data





.code























