
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rjmp void _main();
rjmp void _KeyPlayAdpECABF1D0();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();




.code
rjmp void _main()				=>>_main:
{
_AECA8DE46_0:;					=>>_AECA8DE46_0:;
	
_AECA8DE46_1:;					=>>_AECA8DE46_1:;
_AECA8DE46_2:;					=>>_AECA8DE46_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_AECA8DE46_3:;					=>>_AECA8DE46_3:;
_AECA8DE46_4:;					=>>_AECA8DE46_4:;
	_InitKey3C587B6D();			=>>pch	= _InitKey3C587B6D;lcall	_InitKey3C587B6D
_AECA8DE46_5:;					=>>_AECA8DE46_5:;
_AECA8DE46_6:;					=>>_AECA8DE46_6:;
	ADPCM_CHX_Init();			=>>pch	= ADPCM_CHX_Init;lcall	ADPCM_CHX_Init
_AECA8DE46_7:;					=>>_AECA8DE46_7:;
	asm set io[0x06].b0;			=>>set io[0x06].b0//
_AECA8DE46_8:;					=>>_AECA8DE46_8:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = CopyToBank+0;			=>>I1 = CopyToBank+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AECA8DE46_9:;					=>>_AECA8DE46_9:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_AECA8DE46_10:;					=>>_AECA8DE46_10:;
	asm	eni				=>>eni
LE6FF7BEA_5:;					=>>LE6FF7BEA_5:;
_AECA8DE46_11:;					=>>_AECA8DE46_11:;
_AECA8DE46_12:;					=>>_AECA8DE46_12:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AECA8DE46_13:;					=>>_AECA8DE46_13:;
_AECA8DE46_14:;					=>>_AECA8DE46_14:;
	_PollingKey3B90E3B1();			=>>pch	= _PollingKey3B90E3B1;lcall	_PollingKey3B90E3B1
_AECA8DE46_15:;					=>>_AECA8DE46_15:;
_AECA8DE46_16:;					=>>_AECA8DE46_16:;
	_DoADPCM9CD0E20D();			=>>pch	= _DoADPCM9CD0E20D;lcall	_DoADPCM9CD0E20D
_AECA8DE46_17:;					=>>_AECA8DE46_17:;
	goto LE6FF7BEA_5;			=>>jmp	LE6FF7BEA_5
LE6FF7BEA_4:;					=>>LE6FF7BEA_4:;
LE6FF7BEA_3:;					=>>LE6FF7BEA_3:;
_AECA8DE46_18:;					=>>_AECA8DE46_18:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AECA8DE46_19:;					=>>_AECA8DE46_19:;
}

rjmp void _KeyPlayAdpECABF1D0()			=>>_KeyPlayAdpECABF1D0:
{
_AECA8DE46_20:;					=>>_AECA8DE46_20:;
	
_AECA8DE46_21:;					=>>_AECA8DE46_21:;
_AECA8DE46_22:;					=>>_AECA8DE46_22:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_playADPCMBACD5AFD(STACK[sSP + 0]);	=>>pch	= _playADPCMBACD5AFD;lcall	_playADPCMBACD5AFD
	RESTORESP(1);				=>>pop	AR;
LE6FF7BEA_6:;					=>>LE6FF7BEA_6:;
_AECA8DE46_23:;					=>>_AECA8DE46_23:;
	return;					=>>rets
_KeyPlayAdpECABF1D0_end:;			=>>_KeyPlayAdpECABF1D0_end:;
_AECA8DE46_24:;					=>>_AECA8DE46_24:;
}

rjmp void _KeyPlayNextAFBA8CED()		=>>_KeyPlayNextAFBA8CED:
{
_AECA8DE46_25:;					=>>_AECA8DE46_25:;
	
_AECA8DE46_26:;					=>>_AECA8DE46_26:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AECA8DE46_27:;					=>>_AECA8DE46_27:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0009;			=>>CX	= 0x09
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto LE6FF7BEA_9;	=>>if ZR	jmp LE6FF7BEA_9
	goto	LE6FF7BEA_8;			=>>jmp	LE6FF7BEA_8
LE6FF7BEA_9:;					=>>LE6FF7BEA_9:;
_AECA8DE46_28:;					=>>_AECA8DE46_28:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_8:;					=>>LE6FF7BEA_8:;
_AECA8DE46_29:;					=>>_AECA8DE46_29:;
_AECA8DE46_30:;					=>>_AECA8DE46_30:;
_AECA8DE46_31:;					=>>_AECA8DE46_31:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_7:;					=>>LE6FF7BEA_7:;
_AECA8DE46_32:;					=>>_AECA8DE46_32:;
	return;					=>>rets
_KeyPlayNextAFBA8CED_end:;			=>>_KeyPlayNextAFBA8CED_end:;
_AECA8DE46_33:;					=>>_AECA8DE46_33:;
}

rjmp void _KeyPlayPrev8E98A35A()		=>>_KeyPlayPrev8E98A35A:
{
_AECA8DE46_34:;					=>>_AECA8DE46_34:;
	
_AECA8DE46_35:;					=>>_AECA8DE46_35:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX--;					=>>CX--
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AECA8DE46_36:;					=>>_AECA8DE46_36:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LE6FF7BEA_12;	=>>if ZR	jmp LE6FF7BEA_12
	goto	LE6FF7BEA_11;			=>>jmp	LE6FF7BEA_11
LE6FF7BEA_12:;					=>>LE6FF7BEA_12:;
_AECA8DE46_37:;					=>>_AECA8DE46_37:;
	sAX	= 0x0005;			=>>AX	= 0x05
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_11:;					=>>LE6FF7BEA_11:;
_AECA8DE46_38:;					=>>_AECA8DE46_38:;
_AECA8DE46_39:;					=>>_AECA8DE46_39:;
_AECA8DE46_40:;					=>>_AECA8DE46_40:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_10:;					=>>LE6FF7BEA_10:;
_AECA8DE46_41:;					=>>_AECA8DE46_41:;
	return;					=>>rets
_KeyPlayPrev8E98A35A_end:;			=>>_KeyPlayPrev8E98A35A_end:;
_AECA8DE46_42:;					=>>_AECA8DE46_42:;
}




.data







.code



.code




__int16 _keyfuncF06F3D55[15] = {		=>>_keyfuncF06F3D55:
	(int)&_KeyPlayPrev8E98A35A[0], 0x0000, 0x0000, (int)&_KeyPlayAdpECABF1D0[0], 0x0000, 0x0000, (int)&_KeyPlayNextAFBA8CED[0], 0x0000, =>>DW #_KeyPlayPrev8E98A35A,0x0000,0x0000,#_KeyPlayAdpECABF1D0,0x0000,0x0000,#_KeyPlayNextAFBA8CED,0x0000,
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000=>>DW 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};




.data





.code















