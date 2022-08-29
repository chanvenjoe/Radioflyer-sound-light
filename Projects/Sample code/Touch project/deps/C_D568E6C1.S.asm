
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
_A569F39CC_0:;					=>>_A569F39CC_0:;
	
_A569F39CC_1:;					=>>_A569F39CC_1:;
_A569F39CC_2:;					=>>_A569F39CC_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_A569F39CC_3:;					=>>_A569F39CC_3:;
_A569F39CC_4:;					=>>_A569F39CC_4:;
	_InitKey3C587B6D();			=>>pch	= _InitKey3C587B6D;lcall	_InitKey3C587B6D
_A569F39CC_5:;					=>>_A569F39CC_5:;
_A569F39CC_6:;					=>>_A569F39CC_6:;
	ADPCM_CHX_Init();			=>>pch	= ADPCM_CHX_Init;lcall	ADPCM_CHX_Init
_A569F39CC_7:;					=>>_A569F39CC_7:;
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = CopyToBank+0;			=>>I1 = CopyToBank+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A569F39CC_8:;					=>>_A569F39CC_8:;
	asm	set io[INTENA].b0		=>>set io[INTENA].b0
_A569F39CC_9:;					=>>_A569F39CC_9:;
	asm	eni				=>>eni
_A569F39CC_10:;					=>>_A569F39CC_10:;
_A569F39CC_11:;					=>>_A569F39CC_11:;
	_touch_init378E5983();			=>>pch	= _touch_init378E5983;lcall	_touch_init378E5983
LE6FF7BEA_5:;					=>>LE6FF7BEA_5:;
_A569F39CC_12:;					=>>_A569F39CC_12:;
_A569F39CC_13:;					=>>_A569F39CC_13:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_A569F39CC_14:;					=>>_A569F39CC_14:;
_A569F39CC_15:;					=>>_A569F39CC_15:;
	_PollingKey3B90E3B1();			=>>pch	= _PollingKey3B90E3B1;lcall	_PollingKey3B90E3B1
_A569F39CC_16:;					=>>_A569F39CC_16:;
_A569F39CC_17:;					=>>_A569F39CC_17:;
	_DoADPCM9CD0E20D();			=>>pch	= _DoADPCM9CD0E20D;lcall	_DoADPCM9CD0E20D
_A569F39CC_18:;					=>>_A569F39CC_18:;
	goto LE6FF7BEA_5;			=>>jmp	LE6FF7BEA_5
LE6FF7BEA_4:;					=>>LE6FF7BEA_4:;
LE6FF7BEA_3:;					=>>LE6FF7BEA_3:;
_A569F39CC_19:;					=>>_A569F39CC_19:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_A569F39CC_20:;					=>>_A569F39CC_20:;
}

rjmp void _KeyPlayAdpECABF1D0()			=>>_KeyPlayAdpECABF1D0:
{
_A569F39CC_21:;					=>>_A569F39CC_21:;
	
_A569F39CC_22:;					=>>_A569F39CC_22:;
_A569F39CC_23:;					=>>_A569F39CC_23:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	_playADPCMBACD5AFD(STACK[sSP + 0]);	=>>pch	= _playADPCMBACD5AFD;lcall	_playADPCMBACD5AFD
	RESTORESP(1);				=>>pop	AR;
LE6FF7BEA_6:;					=>>LE6FF7BEA_6:;
_A569F39CC_24:;					=>>_A569F39CC_24:;
	return;					=>>rets
_KeyPlayAdpECABF1D0_end:;			=>>_KeyPlayAdpECABF1D0_end:;
_A569F39CC_25:;					=>>_A569F39CC_25:;
}

rjmp void _KeyPlayNextAFBA8CED()		=>>_KeyPlayNextAFBA8CED:
{
_A569F39CC_26:;					=>>_A569F39CC_26:;
	
_A569F39CC_27:;					=>>_A569F39CC_27:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_A569F39CC_28:;					=>>_A569F39CC_28:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0009;			=>>CX	= 0x09
	sfx_CMP_AX_CX_JGE();			=>>pch	= sfx_CMP_AX_CX_JGE;lcall	sfx_CMP_AX_CX_JGE
	if(__je__)	goto LE6FF7BEA_9;	=>>if ZR	jmp LE6FF7BEA_9
	goto	LE6FF7BEA_8;			=>>jmp	LE6FF7BEA_8
LE6FF7BEA_9:;					=>>LE6FF7BEA_9:;
_A569F39CC_29:;					=>>_A569F39CC_29:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_8:;					=>>LE6FF7BEA_8:;
_A569F39CC_30:;					=>>_A569F39CC_30:;
_A569F39CC_31:;					=>>_A569F39CC_31:;
_A569F39CC_32:;					=>>_A569F39CC_32:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_7:;					=>>LE6FF7BEA_7:;
_A569F39CC_33:;					=>>_A569F39CC_33:;
	return;					=>>rets
_KeyPlayNextAFBA8CED_end:;			=>>_KeyPlayNextAFBA8CED_end:;
_A569F39CC_34:;					=>>_A569F39CC_34:;
}

rjmp void _KeyPlayPrev8E98A35A()		=>>_KeyPlayPrev8E98A35A:
{
_A569F39CC_35:;					=>>_A569F39CC_35:;
	
_A569F39CC_36:;					=>>_A569F39CC_36:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_iADPCCACC469;		=>>I1	= _iADPCCACC469
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX--;					=>>CX--
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_A569F39CC_37:;					=>>_A569F39CC_37:;
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto LE6FF7BEA_12;	=>>if ZR	jmp LE6FF7BEA_12
	goto	LE6FF7BEA_11;			=>>jmp	LE6FF7BEA_11
LE6FF7BEA_12:;					=>>LE6FF7BEA_12:;
_A569F39CC_38:;					=>>_A569F39CC_38:;
	sAX	= 0x0005;			=>>AX	= 0x05
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
LE6FF7BEA_11:;					=>>LE6FF7BEA_11:;
_A569F39CC_39:;					=>>_A569F39CC_39:;
_A569F39CC_40:;					=>>_A569F39CC_40:;
_A569F39CC_41:;					=>>_A569F39CC_41:;
	_KeyPlayAdpECABF1D0();			=>>pch	= _KeyPlayAdpECABF1D0;lcall	_KeyPlayAdpECABF1D0
LE6FF7BEA_10:;					=>>LE6FF7BEA_10:;
_A569F39CC_42:;					=>>_A569F39CC_42:;
	return;					=>>rets
_KeyPlayPrev8E98A35A_end:;			=>>_KeyPlayPrev8E98A35A_end:;
_A569F39CC_43:;					=>>_A569F39CC_43:;
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
















