
#include "crt0.h"
















// CODE segment					=>>VarRM[0:4095]={
  
};

.code


rjmp void _main();
rjmp void _KeyPlaySongC44FFB6D();
rjmp void _KeyPlayStop0C3B8DB1();
rjmp void _KeyPlayNextAFBA8CED();
rjmp void _KeyPlayPrev8E98A35A();
rjmp void _KeyModEEAB4D5A();
rjmp void _KeySubb3A3BA54B6D();
rjmp void _KeySubb3B3F6456DA();




.code
rjmp void _main()				=>>_main:
{
_AFFC519C6_0:;					=>>_AFFC519C6_0:;
	
_AFFC519C6_1:;					=>>_AFFC519C6_1:;
_AFFC519C6_2:;					=>>_AFFC519C6_2:;
	_InitialDA4A7CC4();			=>>pch	= _InitialDA4A7CC4;lcall	_InitialDA4A7CC4
_AFFC519C6_3:;					=>>_AFFC519C6_3:;
_AFFC519C6_4:;					=>>_AFFC519C6_4:;
	_InitKey3C587B6D();			=>>pch	= _InitKey3C587B6D;lcall	_InitKey3C587B6D
_AFFC519C6_5:;					=>>_AFFC519C6_5:;
	asm set io[0x06].b0;			=>>set io[0x06].b0//
_AFFC519C6_6:;					=>>_AFFC519C6_6:;
	asm set io[0x06].b1;			=>>set io[0x06].b1//
_AFFC519C6_7:;					=>>_AFFC519C6_7:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
_AFFC519C6_8:;					=>>_AFFC519C6_8:;
	asm clr io[0x09].b1;			=>>clr io[0x09].b1//
_AFFC519C6_9:;					=>>_AFFC519C6_9:;
_AFFC519C6_10:;					=>>_AFFC519C6_10:;
	ChangePWMIntToDynCache();		=>>pch	= ChangePWMIntToDynCache;lcall	ChangePWMIntToDynCache
_AFFC519C6_11:;					=>>_AFFC519C6_11:;
_AFFC519C6_12:;					=>>_AFFC519C6_12:;
	dtxInitialize();			=>>pch	= dtxInitialize;lcall	dtxInitialize
L9FD7D12A_4:;					=>>L9FD7D12A_4:;
_AFFC519C6_13:;					=>>_AFFC519C6_13:;
_AFFC519C6_14:;					=>>_AFFC519C6_14:;
	asm AX = #melody+0;			=>>AX = #melody+0//
	asm DX = #melody.n2			=>>DX = #melody.n2
	asm set DX.b11				=>>set DX.b11
	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _dtxFindToneEntry12F3B4ED;lcall	_dtxFindToneEntry12F3B4ED
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L9FD7D12A_5;	=>>if ZR	jmp L9FD7D12A_5
	goto	L9FD7D12A_3;			=>>jmp	L9FD7D12A_3
L9FD7D12A_5:;					=>>L9FD7D12A_5:;
	
L9FD7D12A_7:;					=>>L9FD7D12A_7:;
_AFFC519C6_15:;					=>>_AFFC519C6_15:;
	goto L9FD7D12A_7;			=>>jmp	L9FD7D12A_7
L9FD7D12A_6:;					=>>L9FD7D12A_6:;
	goto L9FD7D12A_4;			=>>jmp	L9FD7D12A_4
L9FD7D12A_3:;					=>>L9FD7D12A_3:;
_AFFC519C6_16:;					=>>_AFFC519C6_16:;
_AFFC519C6_17:;					=>>_AFFC519C6_17:;
	dtxInitParameters();			=>>pch	= dtxInitParameters;lcall	dtxInitParameters
_AFFC519C6_18:;					=>>_AFFC519C6_18:;
_AFFC519C6_19:;					=>>_AFFC519C6_19:;
	dtxReadTune();				=>>pch	= dtxReadTune;lcall	dtxReadTune
_AFFC519C6_20:;					=>>_AFFC519C6_20:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AFFC519C6_21:;					=>>_AFFC519C6_21:;
	sAX	= 0x7FFF;			=>>AX	= 0x7FFF
	asm I1 = dtxfltg+0;			=>>I1 = dtxfltg+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
L9FD7D12A_9:;					=>>L9FD7D12A_9:;
_AFFC519C6_22:;					=>>_AFFC519C6_22:;
_AFFC519C6_23:;					=>>_AFFC519C6_23:;
	asm	io[ClrWDT] = AR			=>>io[ClrWDT] = AR
	
_AFFC519C6_24:;					=>>_AFFC519C6_24:;
_AFFC519C6_25:;					=>>_AFFC519C6_25:;
	_PollingKey3B90E3B1();			=>>pch	= _PollingKey3B90E3B1;lcall	_PollingKey3B90E3B1
_AFFC519C6_26:;					=>>_AFFC519C6_26:;
_AFFC519C6_27:;					=>>_AFFC519C6_27:;
	_KeyShowLEDA84888EC();			=>>pch	= _KeyShowLEDA84888EC;lcall	_KeyShowLEDA84888EC
_AFFC519C6_28:;					=>>_AFFC519C6_28:;
_AFFC519C6_29:;					=>>_AFFC519C6_29:;
	_ToneVolCtrl03CF265A();			=>>pch	= _ToneVolCtrl03CF265A;lcall	_ToneVolCtrl03CF265A
_AFFC519C6_30:;					=>>_AFFC519C6_30:;
_AFFC519C6_31:;					=>>_AFFC519C6_31:;
	_WaitPCM_Empty_size53398B9D();		=>>pch	= _WaitPCM_Empty_size53398B9D;lcall	_WaitPCM_Empty_size53398B9D
	sCX	= 0x0000;			=>>CX	= 0x00
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L9FD7D12A_11;	=>>if ZR	jmp L9FD7D12A_11
	goto	L9FD7D12A_10;			=>>jmp	L9FD7D12A_10
L9FD7D12A_11:;					=>>L9FD7D12A_11:;
_AFFC519C6_32:;					=>>_AFFC519C6_32:;
	goto L9FD7D12A_9;			=>>jmp	L9FD7D12A_9
L9FD7D12A_10:;					=>>L9FD7D12A_10:;
_AFFC519C6_33:;					=>>_AFFC519C6_33:;
_AFFC519C6_34:;					=>>_AFFC519C6_34:;
	sAX	= 0;				=>>AX	= 0x00
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm test AR.b0;				=>>test AR.b0//
	if(__jz__) goto L9FD7D12A_13;		=>>if ZR	jmp L9FD7D12A_13
	sAX	= 1;				=>>AX	= 0x01
L9FD7D12A_13:;					=>>L9FD7D12A_13:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L9FD7D12A_14;	=>>if NZ	jmp L9FD7D12A_14
	goto	L9FD7D12A_12;			=>>jmp	L9FD7D12A_12
L9FD7D12A_14:;					=>>L9FD7D12A_14:;
	
_AFFC519C6_35:;					=>>_AFFC519C6_35:;
_AFFC519C6_36:;					=>>_AFFC519C6_36:;
	Subb3_Dec();				=>>pch	= Subb3_Dec;lcall	Subb3_Dec
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L9FD7D12A_16;	=>>if NZ	jmp L9FD7D12A_16
	goto	L9FD7D12A_15;			=>>jmp	L9FD7D12A_15
L9FD7D12A_16:;					=>>L9FD7D12A_16:;
	
_AFFC519C6_37:;					=>>_AFFC519C6_37:;
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm clr AR.b0;				=>>clr AR.b0//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
_AFFC519C6_38:;					=>>_AFFC519C6_38:;
_AFFC519C6_39:;					=>>_AFFC519C6_39:;
	_Sub3ZeroFillABFF23AA();		=>>pch	= _Sub3ZeroFillABFF23AA;lcall	_Sub3ZeroFillABFF23AA
L9FD7D12A_15:;					=>>L9FD7D12A_15:;
_AFFC519C6_40:;					=>>_AFFC519C6_40:;
	goto L9FD7D12A_17;			=>>jmp	L9FD7D12A_17
L9FD7D12A_12:;					=>>L9FD7D12A_12:;
	
_AFFC519C6_41:;					=>>_AFFC519C6_41:;
_AFFC519C6_42:;					=>>_AFFC519C6_42:;
	_Sub3ZeroFillABFF23AA();		=>>pch	= _Sub3ZeroFillABFF23AA;lcall	_Sub3ZeroFillABFF23AA
L9FD7D12A_17:;					=>>L9FD7D12A_17:;
_AFFC519C6_43:;					=>>_AFFC519C6_43:;
	goto L9FD7D12A_9;			=>>jmp	L9FD7D12A_9
L9FD7D12A_8:;					=>>L9FD7D12A_8:;
L9FD7D12A_2:;					=>>L9FD7D12A_2:;
_AFFC519C6_44:;					=>>_AFFC519C6_44:;
	return;					=>>rets
_main_end:;					=>>_main_end:;
_AFFC519C6_45:;					=>>_AFFC519C6_45:;
}

rjmp void _KeyPlaySongC44FFB6D()		=>>_KeyPlaySongC44FFB6D:
{
_AFFC519C6_46:;					=>>_AFFC519C6_46:;
	
_AFFC519C6_47:;					=>>_AFFC519C6_47:;
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm clr AR.b0;				=>>clr AR.b0//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
_AFFC519C6_48:;					=>>_AFFC519C6_48:;
_AFFC519C6_49:;					=>>_AFFC519C6_49:;
	_dtxCheckSongEnd870A9712();		=>>pch	= _dtxCheckSongEnd870A9712;lcall	_dtxCheckSongEnd870A9712
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L9FD7D12A_20;	=>>if NZ	jmp L9FD7D12A_20
	goto	L9FD7D12A_19;			=>>jmp	L9FD7D12A_19
L9FD7D12A_20:;					=>>L9FD7D12A_20:;
	
_AFFC519C6_50:;					=>>_AFFC519C6_50:;
_AFFC519C6_51:;					=>>_AFFC519C6_51:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);	=>>pch	= _dtxPlaySong5B7DBDA5;lcall	_dtxPlaySong5B7DBDA5
	goto L9FD7D12A_21;			=>>jmp	L9FD7D12A_21
L9FD7D12A_19:;					=>>L9FD7D12A_19:;
	
_AFFC519C6_52:;					=>>_AFFC519C6_52:;
_AFFC519C6_53:;					=>>_AFFC519C6_53:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
L9FD7D12A_21:;					=>>L9FD7D12A_21:;
_AFFC519C6_54:;					=>>_AFFC519C6_54:;
L9FD7D12A_18:;					=>>L9FD7D12A_18:;
_AFFC519C6_55:;					=>>_AFFC519C6_55:;
	return;					=>>rets
_KeyPlaySongC44FFB6D_end:;			=>>_KeyPlaySongC44FFB6D_end:;
_AFFC519C6_56:;					=>>_AFFC519C6_56:;
}

rjmp void _KeyPlayStop0C3B8DB1()		=>>_KeyPlayStop0C3B8DB1:
{
_AFFC519C6_57:;					=>>_AFFC519C6_57:;
	
_AFFC519C6_58:;					=>>_AFFC519C6_58:;
_AFFC519C6_59:;					=>>_AFFC519C6_59:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
L9FD7D12A_22:;					=>>L9FD7D12A_22:;
_AFFC519C6_60:;					=>>_AFFC519C6_60:;
	return;					=>>rets
_KeyPlayStop0C3B8DB1_end:;			=>>_KeyPlayStop0C3B8DB1_end:;
_AFFC519C6_61:;					=>>_AFFC519C6_61:;
}

rjmp void _KeyPlayNextAFBA8CED()		=>>_KeyPlayNextAFBA8CED:
{
_AFFC519C6_62:;					=>>_AFFC519C6_62:;
	
_AFFC519C6_63:;					=>>_AFFC519C6_63:;
_AFFC519C6_64:;					=>>_AFFC519C6_64:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
_AFFC519C6_65:;					=>>_AFFC519C6_65:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_songidx8C42F7DA;	=>>I1	= _songidx8C42F7DA
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX++;					=>>CX++
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AFFC519C6_66:;					=>>_AFFC519C6_66:;
_AFFC519C6_67:;					=>>_AFFC519C6_67:;
	_CheckSongLimit402181B4();		=>>pch	= _CheckSongLimit402181B4;lcall	_CheckSongLimit402181B4
_AFFC519C6_68:;					=>>_AFFC519C6_68:;
_AFFC519C6_69:;					=>>_AFFC519C6_69:;
	_KeyPlaySongC44FFB6D();			=>>pch	= _KeyPlaySongC44FFB6D;lcall	_KeyPlaySongC44FFB6D
L9FD7D12A_23:;					=>>L9FD7D12A_23:;
_AFFC519C6_70:;					=>>_AFFC519C6_70:;
	return;					=>>rets
_KeyPlayNextAFBA8CED_end:;			=>>_KeyPlayNextAFBA8CED_end:;
_AFFC519C6_71:;					=>>_AFFC519C6_71:;
}

rjmp void _KeyPlayPrev8E98A35A()		=>>_KeyPlayPrev8E98A35A:
{
_AFFC519C6_72:;					=>>_AFFC519C6_72:;
	
_AFFC519C6_73:;					=>>_AFFC519C6_73:;
_AFFC519C6_74:;					=>>_AFFC519C6_74:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
_AFFC519C6_75:;					=>>_AFFC519C6_75:;
	asm I1 = _songidx8C42F7DA+0;		=>>I1 = _songidx8C42F7DA+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_songidx8C42F7DA;	=>>I1	= _songidx8C42F7DA
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sCX--;					=>>CX--
	*(__int16*)sSI	= sCX;			=>>rm[I1]	= CX
_AFFC519C6_76:;					=>>_AFFC519C6_76:;
_AFFC519C6_77:;					=>>_AFFC519C6_77:;
	_CheckSongLimit402181B4();		=>>pch	= _CheckSongLimit402181B4;lcall	_CheckSongLimit402181B4
_AFFC519C6_78:;					=>>_AFFC519C6_78:;
_AFFC519C6_79:;					=>>_AFFC519C6_79:;
	_KeyPlaySongC44FFB6D();			=>>pch	= _KeyPlaySongC44FFB6D;lcall	_KeyPlaySongC44FFB6D
L9FD7D12A_24:;					=>>L9FD7D12A_24:;
_AFFC519C6_80:;					=>>_AFFC519C6_80:;
	return;					=>>rets
_KeyPlayPrev8E98A35A_end:;			=>>_KeyPlayPrev8E98A35A_end:;
_AFFC519C6_81:;					=>>_AFFC519C6_81:;
}

rjmp void _KeyModEEAB4D5A()			=>>_KeyModEEAB4D5A:
{
_AFFC519C6_82:;					=>>_AFFC519C6_82:;
	
_AFFC519C6_83:;					=>>_AFFC519C6_83:;
	asm AX = dtxtonech+7;			=>>AX = dtxtonech+7//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = dtxtonech+7;			=>>I1 = dtxtonech+7//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	asm AR = 0x0003;			=>>AR = 0x0003//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AFFC519C6_84:;					=>>_AFFC519C6_84:;
	asm AX = dtxtonech+15;			=>>AX = dtxtonech+15//
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0001;			=>>AX	= 0x01
	asm I1 = dtxtonech+15;			=>>I1 = dtxtonech+15//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	asm AR = 0x0003;			=>>AR = 0x0003//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
L9FD7D12A_25:;					=>>L9FD7D12A_25:;
_AFFC519C6_85:;					=>>_AFFC519C6_85:;
	return;					=>>rets
_KeyModEEAB4D5A_end:;				=>>_KeyModEEAB4D5A_end:;
_AFFC519C6_86:;					=>>_AFFC519C6_86:;
}

rjmp void _KeySubb3A3BA54B6D()			=>>_KeySubb3A3BA54B6D:
{
_AFFC519C6_87:;					=>>_AFFC519C6_87:;
	
_AFFC519C6_88:;					=>>_AFFC519C6_88:;
_AFFC519C6_89:;					=>>_AFFC519C6_89:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
_AFFC519C6_90:;					=>>_AFFC519C6_90:;
_AFFC519C6_91:;					=>>_AFFC519C6_91:;
	asm AX = #subdat0+0;			=>>AX = #subdat0+0//
	asm DX = #subdat0.n2			=>>DX = #subdat0.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AFFC519C6_92:;					=>>_AFFC519C6_92:;
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm set AR.b0;				=>>set AR.b0//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
L9FD7D12A_26:;					=>>L9FD7D12A_26:;
_AFFC519C6_93:;					=>>_AFFC519C6_93:;
	return;					=>>rets
_KeySubb3A3BA54B6D_end:;			=>>_KeySubb3A3BA54B6D_end:;
_AFFC519C6_94:;					=>>_AFFC519C6_94:;
}

rjmp void _KeySubb3B3F6456DA()			=>>_KeySubb3B3F6456DA:
{
_AFFC519C6_95:;					=>>_AFFC519C6_95:;
	
_AFFC519C6_96:;					=>>_AFFC519C6_96:;
_AFFC519C6_97:;					=>>_AFFC519C6_97:;
	dtxStopSong();				=>>pch	= dtxStopSong;lcall	dtxStopSong
_AFFC519C6_98:;					=>>_AFFC519C6_98:;
_AFFC519C6_99:;					=>>_AFFC519C6_99:;
	asm AX = #subdat1+0;			=>>AX = #subdat1+0//
	asm DX = #subdat1.n2			=>>DX = #subdat1.n2
	asm set DX.b11				=>>set DX.b11
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);=>>pch	= _Sub3Play422CAD6D;lcall	_Sub3Play422CAD6D
	RESTORESP(2);				=>>pop	AR;pop	AR;
_AFFC519C6_100:;				=>>_AFFC519C6_100:;
	asm I1 = _flags026116D5+0;		=>>I1 = _flags026116D5+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm set AR.b0;				=>>set AR.b0//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
L9FD7D12A_27:;					=>>L9FD7D12A_27:;
_AFFC519C6_101:;				=>>_AFFC519C6_101:;
	return;					=>>rets
_KeySubb3B3F6456DA_end:;			=>>_KeySubb3B3F6456DA_end:;
_AFFC519C6_102:;				=>>_AFFC519C6_102:;
}




.data



.code


naked void ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s(void)=>>ginit_code_HOW_DO_I_PLAY_DTX_AND_SUBBAND3_SIMULTANEOUSLY_528516D5_s:
{
	return;					=>>rets
}








.code



.code




__int16 _keyfuncF06F3D55[15] = {		=>>_keyfuncF06F3D55:
	(int)&_KeyPlayNextAFBA8CED, 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A, 0x0000, 0x0000, (int)&_KeyModEEAB4D5A, 0x0000, =>>DW #_KeyPlayNextAFBA8CED,0x0000,0x0000,#_KeyPlayPrev8E98A35A,0x0000,0x0000,#_KeyModEEAB4D5A,0x0000,
	0x0000, (int)&_KeySubb3A3BA54B6D, 0x0000, 0x0000, (int)&_KeySubb3B3F6456DA, 0x0000, 0x0000=>>DW 0x0000,#_KeySubb3A3BA54B6D,0x0000,0x0000,#_KeySubb3B3F6456DA,0x0000,0x0000,
};




.data





.code




































































































