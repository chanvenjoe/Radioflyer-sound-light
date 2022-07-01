
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
_AE3845712_0:;					=>>_AE3845712_0:;
	
_AE3845712_1:;					=>>_AE3845712_1:;
_AE3845712_2:;					=>>_AE3845712_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_AE3845712_3:;					=>>_AE3845712_3:;
_AE3845712_4:;					=>>_AE3845712_4:;
	_InitKey3C587B6D();			=>>pch	= _InitKey3C587B6D;lcall	_InitKey3C587B6D
_AE3845712_5:;					=>>_AE3845712_5:;
_AE3845712_6:;					=>>_AE3845712_6:;
	ADPCM_CHX_Init();			=>>pch	= ADPCM_CHX_Init;lcall	ADPCM_CHX_Init
_AE3845712_7:;					=>>_AE3845712_7:;
	asm set io[0x06].b0;			=>>set io[0x06].b0//
_AE3845712_8:;					=>>_AE3845712_8:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = CopyToBank+0;			=>>I1 = CopyToBank+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AE3845712_9:;					=>>_AE3845712_9:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_AE3845712_10:;					=>>_AE3845712_10:;
	asm	eni				=>>eni
LE6FF7BEA_5:;					=>>LE6FF7BEA_5:;
_AE3845712_11:;					=>>_AE3845712_11:;
_AE3845712_12:;					=>>_AE3845712_12:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AE3845712_13:;					=>>_AE3845712_13:;
_AE3845712_14:;					=>>_AE3845712_14:;
	_PollingKey3B90E3B1();			=>>pch	= _PollingKey3B90E3B1;lcall	_PollingKey3B90E3B1
_AE3845712_15:;					=>>_AE3845712_15:;
_AE3845712_16:;					=>>_AE3845712_16:;
	_DoADPCM9CD0E20D();			=>>pch	= _DoADPCM9CD0E20D;lcall	_DoADPCM9CD0E20D
_AE3845712_17:;					=>>_AE3845712_17:;
	goto LE6FF7BEA_5;			=>>jmp	LE6FF7BEA_5
LE6FF7BEA_4:;					=>>LE6FF7BEA_4:;
LE6FF7BEA_3:;					=>>LE6FF7BEA_3:;
_AE3845712_18:;					=>>_AE3845712_18:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AE3845712_19:;					=>>_AE3845712_19:;
}

rjmp void _KeyPlayAdpECABF1D0()			=>>_KeyPlayAdpECABF1D0:
{
_AE3845712_20:;					=>>_AE3845712_20:;
	
_AE3845712_21:;					=>>_AE3845712_21:;
_AE3845712_22:;					=>>_AE3845712_22:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_playADPCMBACD5AFD(STACK[sSP + 0]);	=>>pch	= _playADPCMBACD5AFD;lcall	_playADPCMBACD5AFD
	RESTORESP(1);				=>>pop	AR;
LE6FF7BEA_6:;					=>>LE6FF7BEA_6:;
_AE3845712_23:;					=>>_AE3845712_23:;
	return;					=>>rets
_KeyPlayAdpECABF1D0_end:;			=>>_KeyPlayAdpECABF1D0_end:;
_AE3845712_24:;					=>>_AE3845712_24:;
}

rjmp void _KeyPlayNextAFBA8CED()		=>>_KeyPlayNextAFBA8CED:
{
_AE3845712_25:;					=>>_AE3845712_25:;
	
_AE3845712_26:;					=>>_AE3845712_26:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AE3845712_27:;					=>>_AE3845712_27:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0009;			=>>CX	= 0x09
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto LE6FF7BEA_9;	=>>if ZR	jmp LE6FF7BEA_9
	goto	LE6FF7BEA_8;			=>>jmp	LE6FF7BEA_8
LE6FF7BEA_9:;					=>>LE6FF7BEA_9:;
_AE3845712_28:;					=>>_AE3845712_28:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_8:;					=>>LE6FF7BEA_8:;
_AE3845712_29:;					=>>_AE3845712_29:;
_AE3845712_30:;					=>>_AE3845712_30:;
_AE3845712_31:;					=>>_AE3845712_31:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_7:;					=>>LE6FF7BEA_7:;
_AE3845712_32:;					=>>_AE3845712_32:;
	return;					=>>rets
_KeyPlayNextAFBA8CED_end:;			=>>_KeyPlayNextAFBA8CED_end:;
_AE3845712_33:;					=>>_AE3845712_33:;
}

rjmp void _KeyPlayPrev8E98A35A()		=>>_KeyPlayPrev8E98A35A:
{
_AE3845712_34:;					=>>_AE3845712_34:;
	
_AE3845712_35:;					=>>_AE3845712_35:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX--;					=>>CX--
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AE3845712_36:;					=>>_AE3845712_36:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LE6FF7BEA_12;	=>>if ZR	jmp LE6FF7BEA_12
	goto	LE6FF7BEA_11;			=>>jmp	LE6FF7BEA_11
LE6FF7BEA_12:;					=>>LE6FF7BEA_12:;
_AE3845712_37:;					=>>_AE3845712_37:;
	sAX	= 0x0005;			=>>AX	= 0x05
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_11:;					=>>LE6FF7BEA_11:;
_AE3845712_38:;					=>>_AE3845712_38:;
_AE3845712_39:;					=>>_AE3845712_39:;
_AE3845712_40:;					=>>_AE3845712_40:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_10:;					=>>LE6FF7BEA_10:;
_AE3845712_41:;					=>>_AE3845712_41:;
	return;					=>>rets
_KeyPlayPrev8E98A35A_end:;			=>>_KeyPlayPrev8E98A35A_end:;
_AE3845712_42:;					=>>_AE3845712_42:;
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















