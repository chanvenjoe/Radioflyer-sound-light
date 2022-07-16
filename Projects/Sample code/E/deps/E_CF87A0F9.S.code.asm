; E.C Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //rjmp void _main();
; //rjmp void _KeyPlaySongC44FFB6D();
; //rjmp void _KeyPlayStop0C3B8DB1();
; //rjmp void _KeyPlayNextAFBA8CED();
; //rjmp void _KeyPlayPrev8E98A35A();
; //rjmp void _KeyModEEAB4D5A();
; //rjmp void _KeySubb3A3BA54B6D();
; //rjmp void _KeySubb3B3F6456DA();
; //
; //
; //
; //
.code
; //rjmp void _main()				
_main:
; //{
; //_A2C562ABC_0:;					
_A2C562ABC_0:
; //	
; //_A2C562ABC_1:;					
_A2C562ABC_1:
; //_A2C562ABC_2:;					
_A2C562ABC_2:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //_A2C562ABC_3:;					
_A2C562ABC_3:
; //_A2C562ABC_4:;					
_A2C562ABC_4:
; //	_InitKey3C587B6D();			
	pch	= _InitKey3C587B6D
	lcall	_InitKey3C587B6D
; //_A2C562ABC_5:;					
_A2C562ABC_5:
; //	asm set io[0x06].b0;			
	set io[0x06].b0//
; //_A2C562ABC_6:;					
_A2C562ABC_6:
; //	asm set io[0x06].b1;			
	set io[0x06].b1//
; //_A2C562ABC_7:;					
_A2C562ABC_7:
; //	asm clr io[0x09].b0;			
	clr io[0x09].b0//
; //_A2C562ABC_8:;					
_A2C562ABC_8:
; //	asm clr io[0x09].b1;			
	clr io[0x09].b1//
; //_A2C562ABC_9:;					
_A2C562ABC_9:
; //_A2C562ABC_10:;					
_A2C562ABC_10:
; //	ChangePWMIntToDynCache();		
	pch	= ChangePWMIntToDynCache
	lcall	ChangePWMIntToDynCache
; //_A2C562ABC_11:;					
_A2C562ABC_11:
; //_A2C562ABC_12:;					
_A2C562ABC_12:
; //	dtxInitialize();			
	pch	= dtxInitialize
	lcall	dtxInitialize
; //LF66E16C1_5:;					
LF66E16C1_5:
; //_A2C562ABC_13:;					
_A2C562ABC_13:
; //_A2C562ABC_14:;					
_A2C562ABC_14:
; //	asm AX = #melody+0;			
	AX = #melody+0//
; //	asm DX = #melody.n2			
	DX = #melody.n2
; //	asm set DX.b11				
	set DX.b11
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _dtxFindToneEntry12F3B4ED
	lcall	_dtxFindToneEntry12F3B4ED
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto LF66E16C1_6;	
	if ZR	jmp LF66E16C1_6
; //	goto	LF66E16C1_4;			
	jmp	LF66E16C1_4
; //LF66E16C1_6:;					
LF66E16C1_6:
; //	
; //LF66E16C1_8:;					
LF66E16C1_8:
; //_A2C562ABC_15:;					
_A2C562ABC_15:
; //_A2C562ABC_16:;					
_A2C562ABC_16:
; //	goto LF66E16C1_8;			
	jmp	LF66E16C1_8
; //LF66E16C1_7:;					
LF66E16C1_7:
; //_A2C562ABC_17:;					
_A2C562ABC_17:
; //	goto LF66E16C1_5;			
	jmp	LF66E16C1_5
; //LF66E16C1_4:;					
LF66E16C1_4:
; //_A2C562ABC_18:;					
_A2C562ABC_18:
; //_A2C562ABC_19:;					
_A2C562ABC_19:
; //	dtxInitParameters();			
	pch	= dtxInitParameters
	lcall	dtxInitParameters
; //_A2C562ABC_20:;					
_A2C562ABC_20:
; //_A2C562ABC_21:;					
_A2C562ABC_21:
; //	dtxReadTune();				
	pch	= dtxReadTune
	lcall	dtxReadTune
; //_A2C562ABC_22:;					
_A2C562ABC_22:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_23:;					
_A2C562ABC_23:
; //	sAX	= 0x7FFF;			
	AX	= 0x7FFF
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LF66E16C1_10:;					
LF66E16C1_10:
; //_A2C562ABC_24:;					
_A2C562ABC_24:
; //_A2C562ABC_25:;					
_A2C562ABC_25:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A2C562ABC_26:;					
_A2C562ABC_26:
; //_A2C562ABC_27:;					
_A2C562ABC_27:
; //	_PollingKey3B90E3B1();			
	pch	= _PollingKey3B90E3B1
	lcall	_PollingKey3B90E3B1
; //_A2C562ABC_28:;					
_A2C562ABC_28:
; //_A2C562ABC_29:;					
_A2C562ABC_29:
; //	_KeyShowLEDA84888EC();			
	pch	= _KeyShowLEDA84888EC
	lcall	_KeyShowLEDA84888EC
; //_A2C562ABC_30:;					
_A2C562ABC_30:
; //_A2C562ABC_31:;					
_A2C562ABC_31:
; //	_ToneVolCtrl03CF265A();			
	pch	= _ToneVolCtrl03CF265A
	lcall	_ToneVolCtrl03CF265A
; //_A2C562ABC_32:;					
_A2C562ABC_32:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto LF66E16C1_12;		
	if ZR	jmp LF66E16C1_12
; //	sAX	= 1;				
	AX	= 0x01
; //LF66E16C1_12:;					
LF66E16C1_12:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LF66E16C1_13;	
	if NZ	jmp LF66E16C1_13
; //	goto	LF66E16C1_11;			
	jmp	LF66E16C1_11
; //LF66E16C1_13:;					
LF66E16C1_13:
; //	
; //_A2C562ABC_33:;					
_A2C562ABC_33:
; //_A2C562ABC_34:;					
_A2C562ABC_34:
; //	Subb3_Dec();				
	pch	= Subb3_Dec
	lcall	Subb3_Dec
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LF66E16C1_15;	
	if NZ	jmp LF66E16C1_15
; //	goto	LF66E16C1_14;			
	jmp	LF66E16C1_14
; //LF66E16C1_15:;					
LF66E16C1_15:
; //	
; //_A2C562ABC_35:;					
_A2C562ABC_35:
; //	asm set io[0x09].b0;			
	set io[0x09].b0//
; //_A2C562ABC_36:;					
_A2C562ABC_36:
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm clr AR.b0;				
	clr AR.b0//
; //	asm rm[I1] = AR;			
	rm[I1] = AR//
; //_A2C562ABC_37:;					
_A2C562ABC_37:
; //_A2C562ABC_38:;					
_A2C562ABC_38:
; //	_Sub3ZeroFillABFF23AA();		
	pch	= _Sub3ZeroFillABFF23AA
	lcall	_Sub3ZeroFillABFF23AA
; //LF66E16C1_14:;					
LF66E16C1_14:
; //_A2C562ABC_39:;					
_A2C562ABC_39:
; //	goto LF66E16C1_16;			
	jmp	LF66E16C1_16
; //LF66E16C1_11:;					
LF66E16C1_11:
; //	
; //_A2C562ABC_40:;					
_A2C562ABC_40:
; //_A2C562ABC_41:;					
_A2C562ABC_41:
; //	_Sub3ZeroFillABFF23AA();		
	pch	= _Sub3ZeroFillABFF23AA
	lcall	_Sub3ZeroFillABFF23AA
; //LF66E16C1_16:;					
LF66E16C1_16:
; //_A2C562ABC_42:;					
_A2C562ABC_42:
; //_A2C562ABC_43:;					
_A2C562ABC_43:
; //	asm clr io[0x09].b0;			
	clr io[0x09].b0//
; //_A2C562ABC_44:;					
_A2C562ABC_44:
; //	goto LF66E16C1_10;			
	jmp	LF66E16C1_10
; //LF66E16C1_9:;					
LF66E16C1_9:
; //LF66E16C1_3:;					
LF66E16C1_3:
; //_A2C562ABC_45:;					
_A2C562ABC_45:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A2C562ABC_46:;					
_A2C562ABC_46:
; //}
; //
; //rjmp void _KeyPlaySongC44FFB6D()		
_KeyPlaySongC44FFB6D:
; //{
; //_A2C562ABC_47:;					
_A2C562ABC_47:
; //	
; //_A2C562ABC_48:;					
_A2C562ABC_48:
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm clr AR.b0;				
	clr AR.b0//
; //	asm rm[I1] = AR;			
	rm[I1] = AR//
; //_A2C562ABC_49:;					
_A2C562ABC_49:
; //_A2C562ABC_50:;					
_A2C562ABC_50:
; //	_dtxCheckSongEnd870A9712();		
	pch	= _dtxCheckSongEnd870A9712
	lcall	_dtxCheckSongEnd870A9712
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LF66E16C1_19;	
	if NZ	jmp LF66E16C1_19
; //	goto	LF66E16C1_18;			
	jmp	LF66E16C1_18
; //LF66E16C1_19:;					
LF66E16C1_19:
; //	
; //_A2C562ABC_51:;					
_A2C562ABC_51:
; //_A2C562ABC_52:;					
_A2C562ABC_52:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	PUSH(sAX);				
	push	AX
; //	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);	
	pch	= _dtxPlaySong5B7DBDA5
	lcall	_dtxPlaySong5B7DBDA5
; //	RESTORESP(1);				
	pop	AR
; //	goto LF66E16C1_20;			
	jmp	LF66E16C1_20
; //LF66E16C1_18:;					
LF66E16C1_18:
; //	
; //_A2C562ABC_53:;					
_A2C562ABC_53:
; //_A2C562ABC_54:;					
_A2C562ABC_54:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //LF66E16C1_20:;					
LF66E16C1_20:
; //_A2C562ABC_55:;					
_A2C562ABC_55:
; //LF66E16C1_17:;					
LF66E16C1_17:
; //_A2C562ABC_56:;					
_A2C562ABC_56:
; //	return;					
	rets
; //_KeyPlaySongC44FFB6D_end:;			
_KeyPlaySongC44FFB6D_end:
; //_A2C562ABC_57:;					
_A2C562ABC_57:
; //}
; //
; //rjmp void _KeyPlayStop0C3B8DB1()		
_KeyPlayStop0C3B8DB1:
; //{
; //_A2C562ABC_58:;					
_A2C562ABC_58:
; //	
; //_A2C562ABC_59:;					
_A2C562ABC_59:
; //_A2C562ABC_60:;					
_A2C562ABC_60:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //LF66E16C1_21:;					
LF66E16C1_21:
; //_A2C562ABC_61:;					
_A2C562ABC_61:
; //	return;					
	rets
; //_KeyPlayStop0C3B8DB1_end:;			
_KeyPlayStop0C3B8DB1_end:
; //_A2C562ABC_62:;					
_A2C562ABC_62:
; //}
; //
; //rjmp void _KeyPlayNextAFBA8CED()		
_KeyPlayNextAFBA8CED:
; //{
; //_A2C562ABC_63:;					
_A2C562ABC_63:
; //	
; //_A2C562ABC_64:;					
_A2C562ABC_64:
; //_A2C562ABC_65:;					
_A2C562ABC_65:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A2C562ABC_66:;					
_A2C562ABC_66:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_songidx8C42F7DA;	
	I1	= _songidx8C42F7DA
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX++;					
	CX++
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //_A2C562ABC_67:;					
_A2C562ABC_67:
; //_A2C562ABC_68:;					
_A2C562ABC_68:
; //	_CheckSongLimit402181B4();		
	pch	= _CheckSongLimit402181B4
	lcall	_CheckSongLimit402181B4
; //_A2C562ABC_69:;					
_A2C562ABC_69:
; //_A2C562ABC_70:;					
_A2C562ABC_70:
; //	_KeyPlaySongC44FFB6D();			
	pch	= _KeyPlaySongC44FFB6D
	lcall	_KeyPlaySongC44FFB6D
; //LF66E16C1_22:;					
LF66E16C1_22:
; //_A2C562ABC_71:;					
_A2C562ABC_71:
; //	return;					
	rets
; //_KeyPlayNextAFBA8CED_end:;			
_KeyPlayNextAFBA8CED_end:
; //_A2C562ABC_72:;					
_A2C562ABC_72:
; //}
; //
; //rjmp void _KeyPlayPrev8E98A35A()		
_KeyPlayPrev8E98A35A:
; //{
; //_A2C562ABC_73:;					
_A2C562ABC_73:
; //	
; //_A2C562ABC_74:;					
_A2C562ABC_74:
; //_A2C562ABC_75:;					
_A2C562ABC_75:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A2C562ABC_76:;					
_A2C562ABC_76:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_songidx8C42F7DA;	
	I1	= _songidx8C42F7DA
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX--;					
	CX--
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //_A2C562ABC_77:;					
_A2C562ABC_77:
; //_A2C562ABC_78:;					
_A2C562ABC_78:
; //	_CheckSongLimit402181B4();		
	pch	= _CheckSongLimit402181B4
	lcall	_CheckSongLimit402181B4
; //_A2C562ABC_79:;					
_A2C562ABC_79:
; //_A2C562ABC_80:;					
_A2C562ABC_80:
; //	_KeyPlaySongC44FFB6D();			
	pch	= _KeyPlaySongC44FFB6D
	lcall	_KeyPlaySongC44FFB6D
; //LF66E16C1_23:;					
LF66E16C1_23:
; //_A2C562ABC_81:;					
_A2C562ABC_81:
; //	return;					
	rets
; //_KeyPlayPrev8E98A35A_end:;			
_KeyPlayPrev8E98A35A_end:
; //_A2C562ABC_82:;					
_A2C562ABC_82:
; //}
; //
; //rjmp void _KeyModEEAB4D5A()			
_KeyModEEAB4D5A:
; //{
; //_A2C562ABC_83:;					
_A2C562ABC_83:
; //	
; //_A2C562ABC_84:;					
_A2C562ABC_84:
; //	asm AX = dtxtonech+7;			
	AX = dtxtonech+7//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = dtxtonech+7;			
	I1 = dtxtonech+7//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	asm AR = 0x0003;			
	AR = 0x0003//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A2C562ABC_85:;					
_A2C562ABC_85:
; //	asm AX = dtxtonech+15;			
	AX = dtxtonech+15//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = dtxtonech+15;			
	I1 = dtxtonech+15//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	asm AR = 0x0003;			
	AR = 0x0003//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LF66E16C1_24:;					
LF66E16C1_24:
; //_A2C562ABC_86:;					
_A2C562ABC_86:
; //	return;					
	rets
; //_KeyModEEAB4D5A_end:;				
_KeyModEEAB4D5A_end:
; //_A2C562ABC_87:;					
_A2C562ABC_87:
; //}
; //
; //rjmp void _KeySubb3A3BA54B6D()			
_KeySubb3A3BA54B6D:
; //{
; //_A2C562ABC_88:;					
_A2C562ABC_88:
; //	
; //_A2C562ABC_89:;					
_A2C562ABC_89:
; //_A2C562ABC_90:;					
_A2C562ABC_90:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A2C562ABC_91:;					
_A2C562ABC_91:
; //_A2C562ABC_92:;					
_A2C562ABC_92:
; //	asm AX = #subdat0+0;			
	AX = #subdat0+0//
; //	asm DX = #subdat0.n2			
	DX = #subdat0.n2
; //	asm set DX.b11				
	set DX.b11
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _Sub3Play422CAD6D
	lcall	_Sub3Play422CAD6D
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //_A2C562ABC_93:;					
_A2C562ABC_93:
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm set AR.b0;				
	set AR.b0//
; //	asm rm[I1] = AR;			
	rm[I1] = AR//
; //LF66E16C1_25:;					
LF66E16C1_25:
; //_A2C562ABC_94:;					
_A2C562ABC_94:
; //	return;					
	rets
; //_KeySubb3A3BA54B6D_end:;			
_KeySubb3A3BA54B6D_end:
; //_A2C562ABC_95:;					
_A2C562ABC_95:
; //}
; //
; //rjmp void _KeySubb3B3F6456DA()			
_KeySubb3B3F6456DA:
; //{
; //_A2C562ABC_96:;					
_A2C562ABC_96:
; //	
; //_A2C562ABC_97:;					
_A2C562ABC_97:
; //_A2C562ABC_98:;					
_A2C562ABC_98:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A2C562ABC_99:;					
_A2C562ABC_99:
; //_A2C562ABC_100:;				
_A2C562ABC_100:
; //	asm AX = #subdat1+0;			
	AX = #subdat1+0//
; //	asm DX = #subdat1.n2			
	DX = #subdat1.n2
; //	asm set DX.b11				
	set DX.b11
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_Sub3Play422CAD6D(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _Sub3Play422CAD6D
	lcall	_Sub3Play422CAD6D
; //	RESTORESP(2);				
	pop	AR
	pop	AR
; //_A2C562ABC_101:;				
_A2C562ABC_101:
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm set AR.b0;				
	set AR.b0//
; //	asm rm[I1] = AR;			
	rm[I1] = AR//
; //LF66E16C1_26:;					
LF66E16C1_26:
; //_A2C562ABC_102:;				
_A2C562ABC_102:
; //	return;					
	rets
; //_KeySubb3B3F6456DA_end:;			
_KeySubb3B3F6456DA_end:
; //_A2C562ABC_103:;				
_A2C562ABC_103:
; //}
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //
.code
; //
; //
; //
; //
; //__int16 _keyfuncF06F3D55[15] = {		
_keyfuncF06F3D55:
; //	(int)&_KeyPlayNextAFBA8CED[0], 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A[0], 0x0000, 0x0000, (int)&_KeyModEEAB4D5A[0], 0x0000, 
DW #_KeyPlayNextAFBA8CED,0x0000,0x0000,#_KeyPlayPrev8E98A35A,0x0000,0x0000,#_KeyModEEAB4D5A,0x0000,
; //	0x0000, (int)&_KeySubb3A3BA54B6D[0], 0x0000, 0x0000, (int)&_KeySubb3B3F6456DA[0], 0x0000, 0x0000
DW 0x0000,#_KeySubb3A3BA54B6D,0x0000,0x0000,#_KeySubb3B3F6456DA,0x0000,0x0000,
; //};
; //
; //
; //
; //
.data
; //
; //
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
