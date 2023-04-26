; HOW DO I PLAY MD2 AND ADPCM SIMULTANEOUSLY.C Code Start!!;
VarRM[0:4095]={
 PCMY[32],_PLAY59F2A4ED 
};

; //
.code
; //
; //
; //rjmp void _main();
; //rjmp void _KeyPlayADPCM2EB28CF3();
; //rjmp void _KeyNextSong7526CDA5();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
.code
; //rjmp void _main()				
_main:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A149B8B01_0:;					
_A149B8B01_0:
; //_A149B8B01_1:;					
_A149B8B01_1:
; //_A149B8B01_2:;					
_A149B8B01_2:
; //	_InitialDA4A7CC4();			
	pch	= _InitialDA4A7CC4
	lcall	_InitialDA4A7CC4
; //_A149B8B01_3:;					
_A149B8B01_3:
; //_A149B8B01_4:;					
_A149B8B01_4:
; //	_InitKey3C587B6D();			
	pch	= _InitKey3C587B6D
	lcall	_InitKey3C587B6D
; //_A149B8B01_5:;					
_A149B8B01_5:
; //_A149B8B01_6:;					
_A149B8B01_6:
; //	md2Initialize();			
	pch	= md2Initialize
	lcall	md2Initialize
; //_A149B8B01_7:;					
_A149B8B01_7:
; //_A149B8B01_8:;					
_A149B8B01_8:
; //	ADPCM_ChX_init();			
	pch	= ADPCM_ChX_init
	lcall	ADPCM_ChX_init
; //_A149B8B01_9:;					
_A149B8B01_9:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = CopyToBank+0;			
	I1 = CopyToBank+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_10:;					
_A149B8B01_10:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = _PLAY59F2A4ED+0;		
	I1 = _PLAY59F2A4ED+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_11:;					
_A149B8B01_11:
; //_A149B8B01_12:;					
_A149B8B01_12:
; //	asm AX = #MidiData+0;			
	AX = #MidiData+0//
; //	asm DX = #MidiData.n2			
	DX = #MidiData.n2
; //	asm set DX.b11				
	set DX.b11
; //	_md2FindMidiEntry757C576D(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _md2FindMidiEntry757C576D
	lcall	_md2FindMidiEntry757C576D
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto L3723FA83_6;	
	if ZR	jmp L3723FA83_6
; //	goto	L3723FA83_5;			
	jmp	L3723FA83_5
; //L3723FA83_6:;					
L3723FA83_6:
; //	
; //L3723FA83_8:;					
L3723FA83_8:
; //_A149B8B01_13:;					
_A149B8B01_13:
; //	goto L3723FA83_8;			
	jmp	L3723FA83_8
; //L3723FA83_7:;					
L3723FA83_7:
; //L3723FA83_5:;					
L3723FA83_5:
; //_A149B8B01_14:;					
_A149B8B01_14:
; //_A149B8B01_15:;					
_A149B8B01_15:
; //_A149B8B01_16:;					
_A149B8B01_16:
; //	md2InitParameters();			
	pch	= md2InitParameters
	lcall	md2InitParameters
; //_A149B8B01_17:;					
_A149B8B01_17:
; //_A149B8B01_18:;					
_A149B8B01_18:
; //	md2StartBGServe();			
	pch	= md2StartBGServe
	lcall	md2StartBGServe
; //_A149B8B01_19:;					
_A149B8B01_19:
; //	sAX	= 0xFFFF;			
	AX	= 0xFFFF
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_20:;					
_A149B8B01_20:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = mp_vol+0;			
	I1 = mp_vol+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_21:;					
_A149B8B01_21:
; //	sAX	= 0x4000;			
	AX	= 0x4000
; //	asm I1 = mp_tempo+0;			
	I1 = mp_tempo+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_22:;					
_A149B8B01_22:
; //	sAX	= 0x0007;			
	AX	= 0x07
; //	asm I1 = mp_lop+0;			
	I1 = mp_lop+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L3723FA83_10:;					
L3723FA83_10:
; //_A149B8B01_23:;					
_A149B8B01_23:
; //_A149B8B01_24:;					
_A149B8B01_24:
; //	asm	io[ClrWDT] = AR			
	io[ClrWDT] = AR
; //	
; //_A149B8B01_25:;					
_A149B8B01_25:
; //_A149B8B01_26:;					
_A149B8B01_26:
; //	_PollingKey3B90E3B1();			
	pch	= _PollingKey3B90E3B1
	lcall	_PollingKey3B90E3B1
; //_A149B8B01_27:;					
_A149B8B01_27:
; //	asm I1 = _PLAY59F2A4ED+0;		
	I1 = _PLAY59F2A4ED+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L3723FA83_12;	
	if NZ	jmp L3723FA83_12
; //	goto	L3723FA83_11;			
	jmp	L3723FA83_11
; //L3723FA83_12:;					
L3723FA83_12:
; //	
; //_A149B8B01_28:;					
_A149B8B01_28:
; //_A149B8B01_29:;					
_A149B8B01_29:
; //	_md2ChkSongEnd0B00CDA5();		
	pch	= _md2ChkSongEnd0B00CDA5
	lcall	_md2ChkSongEnd0B00CDA5
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L3723FA83_14;	
	if NZ	jmp L3723FA83_14
; //	goto	L3723FA83_13;			
	jmp	L3723FA83_13
; //L3723FA83_14:;					
L3723FA83_14:
; //	
; //_A149B8B01_30:;					
_A149B8B01_30:
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
; //_A149B8B01_31:;					
_A149B8B01_31:
; //_A149B8B01_32:;					
_A149B8B01_32:
; //	_CheckSongLimit402181B4();		
	pch	= _CheckSongLimit402181B4
	lcall	_CheckSongLimit402181B4
; //_A149B8B01_33:;					
_A149B8B01_33:
; //_A149B8B01_34:;					
_A149B8B01_34:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	_md2PlaySongF1CD4C9D(STACK[sSP + 0]);	
	pch	= _md2PlaySongF1CD4C9D
	lcall	_md2PlaySongF1CD4C9D
; //L3723FA83_13:;					
L3723FA83_13:
; //_A149B8B01_35:;					
_A149B8B01_35:
; //L3723FA83_11:;					
L3723FA83_11:
; //_A149B8B01_36:;					
_A149B8B01_36:
; //_A149B8B01_37:;					
_A149B8B01_37:
; //_A149B8B01_38:;					
_A149B8B01_38:
; //	SyncNow();				
	pch	= SyncNow
	lcall	SyncNow
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jz__)	goto L3723FA83_16;	
	if ZR	jmp L3723FA83_16
; //	goto	L3723FA83_15;			
	jmp	L3723FA83_15
; //L3723FA83_16:;					
L3723FA83_16:
; //_A149B8B01_39:;					
_A149B8B01_39:
; //	goto L3723FA83_10;			
	jmp	L3723FA83_10
; //L3723FA83_15:;					
L3723FA83_15:
; //_A149B8B01_40:;					
_A149B8B01_40:
; //_A149B8B01_41:;					
_A149B8B01_41:
; //_A149B8B01_42:;					
_A149B8B01_42:
; //	_md2DoRoutine82B98B9D();		
	pch	= _md2DoRoutine82B98B9D
	lcall	_md2DoRoutine82B98B9D
; //_A149B8B01_43:;					
_A149B8B01_43:
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_44:;					
_A149B8B01_44:
; //_A149B8B01_45:;					
_A149B8B01_45:
; //	ClearAudioBuffer();			
	pch	= ClearAudioBuffer
	lcall	ClearAudioBuffer
; //_A149B8B01_46:;					
_A149B8B01_46:
; //	_i_1_2+0	= 0x04;			
	I1	= rm[BP_SAVE]
	AR	= 0x04
	rm[I1]	= AR
; //L3723FA83_18:;					
L3723FA83_18:
; //_A149B8B01_47:;					
_A149B8B01_47:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	asm AR = 0x0001;			
	AR = 0x0001//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX - AR;			
	rm[I1] = CX - AR//
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L3723FA83_19;	
	if NZ	jmp L3723FA83_19
; //	goto	L3723FA83_17;			
	jmp	L3723FA83_17
; //L3723FA83_19:;					
L3723FA83_19:
; //	
; //_A149B8B01_48:;					
_A149B8B01_48:
; //_A149B8B01_49:;					
_A149B8B01_49:
; //	DecodeChannel();			
	pch	= DecodeChannel
	lcall	DecodeChannel
; //_A149B8B01_50:;					
_A149B8B01_50:
; //	asm I1 = ADPCM_Tmpi+0;			
	I1 = ADPCM_Tmpi+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&ADPCM_Tmpi;		
	I1	= ADPCM_Tmpi
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm AR = 0x0012;			
	AR = 0x0012//
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto L3723FA83_18;			
	jmp	L3723FA83_18
; //L3723FA83_17:;					
L3723FA83_17:
; //_A149B8B01_51:;					
_A149B8B01_51:
; //_A149B8B01_52:;					
_A149B8B01_52:
; //	MixAll();				
	pch	= MixAll
	lcall	MixAll
; //	goto L3723FA83_10;			
	jmp	L3723FA83_10
; //L3723FA83_9:;					
L3723FA83_9:
; //L3723FA83_4:;					
L3723FA83_4:
; //_A149B8B01_53:;					
_A149B8B01_53:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_main_end:;					
_main_end:
; //_A149B8B01_54:;					
_A149B8B01_54:
; //}
; //
; //rjmp void _KeyPlayADPCM2EB28CF3()		
_KeyPlayADPCM2EB28CF3:
; //{
; //_A149B8B01_55:;					
_A149B8B01_55:
; //	
; //_A149B8B01_56:;					
_A149B8B01_56:
; //_A149B8B01_57:;					
_A149B8B01_57:
; //	md2StopSong();				
	pch	= md2StopSong
	lcall	md2StopSong
; //_A149B8B01_58:;					
_A149B8B01_58:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _PLAY59F2A4ED+0;		
	I1 = _PLAY59F2A4ED+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_59:;					
_A149B8B01_59:
; //	asm AX = #_adpdata32993E3B+0;		
	AX = #_adpdata32993E3B+0//
; //	PUSH(sAX);				
	push	AX
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0004;			
	CX	= 0x04
; //	sfx_IMUL_AX_CX();			
	pch	= sfx_IMUL_AX_CX
	lcall	sfx_IMUL_AX_CX
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI++;		
	AX	= pm[P1++]
; //	sDX	= *(__int16*)sDI--;		
	DX	= pm[P1--]
; //	sfx_CHECKZEROLONG();			
	AR	= AX
	AR	|= DX
; //	if(__jz__)	goto L3723FA83_22;	
	if ZR	jmp L3723FA83_22
; //	goto	L3723FA83_21;			
	jmp	L3723FA83_21
; //L3723FA83_22:;					
L3723FA83_22:
; //_A149B8B01_60:;					
_A149B8B01_60:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L3723FA83_21:;					
L3723FA83_21:
; //_A149B8B01_61:;					
_A149B8B01_61:
; //_A149B8B01_62:;					
_A149B8B01_62:
; //_A149B8B01_63:;					
_A149B8B01_63:
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_iADPCCACC469;		
	I1	= _iADPCCACC469
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sCX++;					
	CX++
; //	*(__int16*)sSI	= sCX;			
	rm[I1]	= CX
; //	PUSH(sAX);				
	push	AX
; //	_playADPCMBACD5AFD(STACK[sSP + 0]);	
	pch	= _playADPCMBACD5AFD
	lcall	_playADPCMBACD5AFD
; //	RESTORESP(1);				
	pop	AR
; //L3723FA83_20:;					
L3723FA83_20:
; //_A149B8B01_64:;					
_A149B8B01_64:
; //	return;					
	rets
; //_KeyPlayADPCM2EB28CF3_end:;			
_KeyPlayADPCM2EB28CF3_end:
; //_A149B8B01_65:;					
_A149B8B01_65:
; //}
; //
; //rjmp void _KeyNextSong7526CDA5()		
_KeyNextSong7526CDA5:
; //{
; //_A149B8B01_66:;					
_A149B8B01_66:
; //	
; //_A149B8B01_67:;					
_A149B8B01_67:
; //_A149B8B01_68:;					
_A149B8B01_68:
; //	_StopAllADPCM9255018D();		
	pch	= _StopAllADPCM9255018D
	lcall	_StopAllADPCM9255018D
; //_A149B8B01_69:;					
_A149B8B01_69:
; //_A149B8B01_70:;					
_A149B8B01_70:
; //	md2StopSong();				
	pch	= md2StopSong
	lcall	md2StopSong
; //_A149B8B01_71:;					
_A149B8B01_71:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	asm I1 = _PLAY59F2A4ED+0;		
	I1 = _PLAY59F2A4ED+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L3723FA83_23:;					
L3723FA83_23:
; //_A149B8B01_72:;					
_A149B8B01_72:
; //	return;					
	rets
; //_KeyNextSong7526CDA5_end:;			
_KeyNextSong7526CDA5_end:
; //_A149B8B01_73:;					
_A149B8B01_73:
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
; //naked void ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s(void)
ginit_code_HOW_DO_I_PLAY_MD2_AND_ADPCM_SIMULTANEOUSLY_D38B16D5_s:
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
; //	(int)&_KeyPlayADPCM2EB28CF3, 0x0000, 0x0000, (int)&_KeyNextSong7526CDA5, 0x0000, 0x0000, 0x0000, 0x0000, 
DW #_KeyPlayADPCM2EB28CF3,0x0000,0x0000,#_KeyNextSong7526CDA5,0x0000,0x0000,0x0000,0x0000,
; //	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
DW 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
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
