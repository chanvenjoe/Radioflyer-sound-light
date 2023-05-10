; global.c Code Start!!;
VarRM[0:4095]={
 _flags026116D5,_songidx8C42F7DA 
};

; //
.code
; //
; //
; //rjmp void _InitialDA4A7CC4();
; //rjmp void _CheckSongLimit402181B4();
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
; //rjmp void L0E8FA404_19()			
L0E8FA404_19:
; //{
; //_A01B23225_68:;					
_A01B23225_68:
; //	
; //_A01B23225_69:;					
_A01B23225_69:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A01B23225_70:;					
_A01B23225_70:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A01B23225_71:;					
_A01B23225_71:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A01B23225_72:;					
_A01B23225_72:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A01B23225_73:;					
_A01B23225_73:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_74:;					
_A01B23225_74:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_75:;					
_A01B23225_75:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_76:;					
_A01B23225_76:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_77:;					
_A01B23225_77:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_78:;					
_A01B23225_78:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_79:;					
_A01B23225_79:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_80:;					
_A01B23225_80:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A01B23225_81:;					
_A01B23225_81:
; //	io[0x3C]	= 0x003F;		
	AR	= 0x3F
	io[0x3C]	= AR
; //_A01B23225_82:;					
_A01B23225_82:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A01B23225_83:;					
_A01B23225_83:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A01B23225_84:;					
_A01B23225_84:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A01B23225_85:;					
_A01B23225_85:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L0E8FA404_21:;					
L0E8FA404_21:
; //_A01B23225_86:;					
_A01B23225_86:
; //	return;					
	rets
; //L0E8FA404_19_end:;				
L0E8FA404_19_end:
; //_A01B23225_87:;					
_A01B23225_87:
; //}
; //
; //rjmp void L0E8FA404_22()			
L0E8FA404_22:
; //{
; //_A01B23225_88:;					
_A01B23225_88:
; //	
; //_A01B23225_89:;					
_A01B23225_89:
; //	io[0x04]	= 0x000F;		
	AR	= 0x0F
	io[0x04]	= AR
; //_A01B23225_90:;					
_A01B23225_90:
; //	io[0x05]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x05]	= AR
; //_A01B23225_91:;					
_A01B23225_91:
; //	io[0x07]	= 0x0000;		
	AR	= 0x00
	io[0x07]	= AR
; //_A01B23225_92:;					
_A01B23225_92:
; //	io[0x08]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x08]	= AR
; //L0E8FA404_24:;					
L0E8FA404_24:
; //_A01B23225_93:;					
_A01B23225_93:
; //	return;					
	rets
; //L0E8FA404_22_end:;				
L0E8FA404_22_end:
; //_A01B23225_94:;					
_A01B23225_94:
; //}
; //
; //rjmp void _InitialDA4A7CC4()			
_InitialDA4A7CC4:
; //{
; //_A01B23225_95:;					
_A01B23225_95:
; //	
; //_A01B23225_96:;					
_A01B23225_96:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A01B23225_97:;					
_A01B23225_97:
; //_A01B23225_98:;					
_A01B23225_98:
; //	NEARCALL(L0E8FA404_19);			
	call	L0E8FA404_19
; //_A01B23225_99:;					
_A01B23225_99:
; //_A01B23225_100:;				
_A01B23225_100:
; //	NEARCALL(L0E8FA404_22);			
	call	L0E8FA404_22
; //_A01B23225_101:;				
_A01B23225_101:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_25:;					
L0E8FA404_25:
; //_A01B23225_102:;				
_A01B23225_102:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A01B23225_103:;				
_A01B23225_103:
; //}
; //
; //rjmp void _CheckSongLimit402181B4()		
_CheckSongLimit402181B4:
; //{
; //_A01B23225_104:;				
_A01B23225_104:
; //	
; //_A01B23225_105:;				
_A01B23225_105:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L0E8FA404_28;	
	if ZR	jmp L0E8FA404_28
; //	goto	L0E8FA404_27;			
	jmp	L0E8FA404_27
; //L0E8FA404_28:;					
L0E8FA404_28:
; //	
; //_A01B23225_106:;				
_A01B23225_106:
; //	asm I1 = dtxsongcnt+0;			
	I1 = dtxsongcnt+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0001;			
	CX	= 0x01
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //	goto L0E8FA404_29;			
	jmp	L0E8FA404_29
; //L0E8FA404_27:;					
L0E8FA404_27:
; //	
; //_A01B23225_107:;				
_A01B23225_107:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = dtxsongcnt+0;			
	I1 = dtxsongcnt+0//
; //	asm CX = rm[I1];			
	CX = rm[I1]//
; //	sfx_CMP_AX_CX_JGE();			
	pch	= sfx_CMP_AX_CX_JGE
	lcall	sfx_CMP_AX_CX_JGE
; //	if(__je__)	goto L0E8FA404_31;	
	if ZR	jmp L0E8FA404_31
; //	goto	L0E8FA404_30;			
	jmp	L0E8FA404_30
; //L0E8FA404_31:;					
L0E8FA404_31:
; //	
; //_A01B23225_108:;				
_A01B23225_108:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_30:;					
L0E8FA404_30:
; //_A01B23225_109:;				
_A01B23225_109:
; //L0E8FA404_29:;					
L0E8FA404_29:
; //_A01B23225_110:;				
_A01B23225_110:
; //L0E8FA404_26:;					
L0E8FA404_26:
; //_A01B23225_111:;				
_A01B23225_111:
; //	return;					
	rets
; //_CheckSongLimit402181B4_end:;			
_CheckSongLimit402181B4_end:
; //_A01B23225_112:;				
_A01B23225_112:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_global_6037E6D5_s(void)	
ginit_code_global_6037E6D5_s:
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
