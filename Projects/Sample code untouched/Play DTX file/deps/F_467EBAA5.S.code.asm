; F.C Code Start!!;
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
; //
; //
; //
; //
.code
; //rjmp void _main()				
_main:
; //{
; //_A01B23225_0:;					
_A01B23225_0:
; //	
; //_A01B23225_1:;					
_A01B23225_1:
; //_A01B23225_2:;					
_A01B23225_2:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //_A01B23225_3:;					
_A01B23225_3:
; //_A01B23225_4:;					
_A01B23225_4:
; //	_InitKey3C587B6D();			
	pch	= _InitKey3C587B6D
	lcall	_InitKey3C587B6D
; //_A01B23225_5:;					
_A01B23225_5:
; //	asm set io[0x06].b0;			
	set io[0x06].b0//
; //_A01B23225_6:;					
_A01B23225_6:
; //	asm set io[0x06].b1;			
	set io[0x06].b1//
; //_A01B23225_7:;					
_A01B23225_7:
; //	asm clr io[0x09].b0;			
	clr io[0x09].b0//
; //_A01B23225_8:;					
_A01B23225_8:
; //	asm clr io[0x09].b1;			
	clr io[0x09].b1//
; //_A01B23225_9:;					
_A01B23225_9:
; //_A01B23225_10:;					
_A01B23225_10:
; //	dtxInitialize();			
	pch	= dtxInitialize
	lcall	dtxInitialize
; //LC9A47239_4:;					
LC9A47239_4:
; //_A01B23225_11:;					
_A01B23225_11:
; //_A01B23225_12:;					
_A01B23225_12:
; //	asm AX = #melody+0;			
	AX = #melody+0//
; //	asm DX = #melody.n2			
	DX = #melody.n2
; //	asm set DX.b11				
	set DX.b11
; //	_dtxFindToneEntry12F3B4ED(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _dtxFindToneEntry12F3B4ED
	lcall	_dtxFindToneEntry12F3B4ED
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto LC9A47239_5;	
	if ZR	jmp LC9A47239_5
; //	goto	LC9A47239_3;			
	jmp	LC9A47239_3
; //LC9A47239_5:;					
LC9A47239_5:
; //	
; //LC9A47239_7:;					
LC9A47239_7:
; //_A01B23225_13:;					
_A01B23225_13:
; //	goto LC9A47239_7;			
	jmp	LC9A47239_7
; //LC9A47239_6:;					
LC9A47239_6:
; //	goto LC9A47239_4;			
	jmp	LC9A47239_4
; //LC9A47239_3:;					
LC9A47239_3:
; //_A01B23225_14:;					
_A01B23225_14:
; //_A01B23225_15:;					
_A01B23225_15:
; //	dtxInitParameters();			
	pch	= dtxInitParameters
	lcall	dtxInitParameters
; //_A01B23225_16:;					
_A01B23225_16:
; //_A01B23225_17:;					
_A01B23225_17:
; //	dtxReadTune();				
	pch	= dtxReadTune
	lcall	dtxReadTune
; //_A01B23225_18:;					
_A01B23225_18:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A01B23225_19:;					
_A01B23225_19:
; //	sAX	= 0x7FFF;			
	AX	= 0x7FFF
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //LC9A47239_9:;					
LC9A47239_9:
; //_A01B23225_20:;					
_A01B23225_20:
; //_A01B23225_21:;					
_A01B23225_21:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A01B23225_22:;					
_A01B23225_22:
; //_A01B23225_23:;					
_A01B23225_23:
; //	_PollingKey3B90E3B1();			
	pch	= _PollingKey3B90E3B1
	lcall	_PollingKey3B90E3B1
; //_A01B23225_24:;					
_A01B23225_24:
; //_A01B23225_25:;					
_A01B23225_25:
; //	_KeyShowLEDA84888EC();			
	pch	= _KeyShowLEDA84888EC
	lcall	_KeyShowLEDA84888EC
; //	goto LC9A47239_9;			
	jmp	LC9A47239_9
; //LC9A47239_8:;					
LC9A47239_8:
; //LC9A47239_2:;					
LC9A47239_2:
; //_A01B23225_26:;					
_A01B23225_26:
; //	return;					
	rets
; //_main_end:;					
_main_end:
; //_A01B23225_27:;					
_A01B23225_27:
; //}
; //
; //rjmp void _KeyPlaySongC44FFB6D()		
_KeyPlaySongC44FFB6D:
; //{
; //_A01B23225_28:;					
_A01B23225_28:
; //	
; //_A01B23225_29:;					
_A01B23225_29:
; //_A01B23225_30:;					
_A01B23225_30:
; //	_dtxCheckSongEnd870A9712();		
	pch	= _dtxCheckSongEnd870A9712
	lcall	_dtxCheckSongEnd870A9712
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto LC9A47239_12;	
	if NZ	jmp LC9A47239_12
; //	goto	LC9A47239_11;			
	jmp	LC9A47239_11
; //LC9A47239_12:;					
LC9A47239_12:
; //	
; //_A01B23225_31:;					
_A01B23225_31:
; //_A01B23225_32:;					
_A01B23225_32:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);	
	pch	= _dtxPlaySong5B7DBDA5
	lcall	_dtxPlaySong5B7DBDA5
; //	goto LC9A47239_13;			
	jmp	LC9A47239_13
; //LC9A47239_11:;					
LC9A47239_11:
; //	
; //_A01B23225_33:;					
_A01B23225_33:
; //_A01B23225_34:;					
_A01B23225_34:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //LC9A47239_13:;					
LC9A47239_13:
; //_A01B23225_35:;					
_A01B23225_35:
; //LC9A47239_10:;					
LC9A47239_10:
; //_A01B23225_36:;					
_A01B23225_36:
; //	return;					
	rets
; //_KeyPlaySongC44FFB6D_end:;			
_KeyPlaySongC44FFB6D_end:
; //_A01B23225_37:;					
_A01B23225_37:
; //}
; //
; //rjmp void _KeyPlayStop0C3B8DB1()		
_KeyPlayStop0C3B8DB1:
; //{
; //_A01B23225_38:;					
_A01B23225_38:
; //	
; //_A01B23225_39:;					
_A01B23225_39:
; //_A01B23225_40:;					
_A01B23225_40:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //LC9A47239_14:;					
LC9A47239_14:
; //_A01B23225_41:;					
_A01B23225_41:
; //	return;					
	rets
; //_KeyPlayStop0C3B8DB1_end:;			
_KeyPlayStop0C3B8DB1_end:
; //_A01B23225_42:;					
_A01B23225_42:
; //}
; //
; //rjmp void _KeyPlayNextAFBA8CED()		
_KeyPlayNextAFBA8CED:
; //{
; //_A01B23225_43:;					
_A01B23225_43:
; //	
; //_A01B23225_44:;					
_A01B23225_44:
; //_A01B23225_45:;					
_A01B23225_45:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A01B23225_46:;					
_A01B23225_46:
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
; //_A01B23225_47:;					
_A01B23225_47:
; //_A01B23225_48:;					
_A01B23225_48:
; //	_CheckSongLimit402181B4();		
	pch	= _CheckSongLimit402181B4
	lcall	_CheckSongLimit402181B4
; //_A01B23225_49:;					
_A01B23225_49:
; //_A01B23225_50:;					
_A01B23225_50:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);	
	pch	= _dtxPlaySong5B7DBDA5
	lcall	_dtxPlaySong5B7DBDA5
; //LC9A47239_15:;					
LC9A47239_15:
; //_A01B23225_51:;					
_A01B23225_51:
; //	return;					
	rets
; //_KeyPlayNextAFBA8CED_end:;			
_KeyPlayNextAFBA8CED_end:
; //_A01B23225_52:;					
_A01B23225_52:
; //}
; //
; //rjmp void _KeyPlayPrev8E98A35A()		
_KeyPlayPrev8E98A35A:
; //{
; //_A01B23225_53:;					
_A01B23225_53:
; //	
; //_A01B23225_54:;					
_A01B23225_54:
; //_A01B23225_55:;					
_A01B23225_55:
; //	dtxStopSong();				
	pch	= dtxStopSong
	lcall	dtxStopSong
; //_A01B23225_56:;					
_A01B23225_56:
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
; //_A01B23225_57:;					
_A01B23225_57:
; //_A01B23225_58:;					
_A01B23225_58:
; //	_CheckSongLimit402181B4();		
	pch	= _CheckSongLimit402181B4
	lcall	_CheckSongLimit402181B4
; //_A01B23225_59:;					
_A01B23225_59:
; //_A01B23225_60:;					
_A01B23225_60:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	_dtxPlaySong5B7DBDA5(STACK[sSP + 0]);	
	pch	= _dtxPlaySong5B7DBDA5
	lcall	_dtxPlaySong5B7DBDA5
; //LC9A47239_16:;					
LC9A47239_16:
; //_A01B23225_61:;					
_A01B23225_61:
; //	return;					
	rets
; //_KeyPlayPrev8E98A35A_end:;			
_KeyPlayPrev8E98A35A_end:
; //_A01B23225_62:;					
_A01B23225_62:
; //}
; //
; //rjmp void _KeyModEEAB4D5A()			
_KeyModEEAB4D5A:
; //{
; //_A01B23225_63:;					
_A01B23225_63:
; //	
; //_A01B23225_64:;					
_A01B23225_64:
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
; //_A01B23225_65:;					
_A01B23225_65:
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
; //LC9A47239_17:;					
LC9A47239_17:
; //_A01B23225_66:;					
_A01B23225_66:
; //	return;					
	rets
; //_KeyModEEAB4D5A_end:;				
_KeyModEEAB4D5A_end:
; //_A01B23225_67:;					
_A01B23225_67:
; //}
; //
; //
; //
; //
.data
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_F_467EBAA5_s(void)	
ginit_code_F_467EBAA5_s:
; //{
; //	return;					
	rets
; //}
; //
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
; //	(int)&_KeyPlayNextAFBA8CED, 0x0000, 0x0000, (int)&_KeyPlayPrev8E98A35A, 0x0000, 0x0000, (int)&_KeyModEEAB4D5A, 0x0000, 
DW #_KeyPlayNextAFBA8CED,0x0000,0x0000,#_KeyPlayPrev8E98A35A,0x0000,0x0000,#_KeyModEEAB4D5A,0x0000,
; //	0x0000, (int)&_KeyPlayStop0C3B8DB1, 0x0000, 0x0000, (int)&_KeyPlaySongC44FFB6D, 0x0000, 0x0000
DW 0x0000,#_KeyPlayStop0C3B8DB1,0x0000,0x0000,#_KeyPlaySongC44FFB6D,0x0000,0x0000,
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
; //
; //
; //
; //
; //
; //
; //
