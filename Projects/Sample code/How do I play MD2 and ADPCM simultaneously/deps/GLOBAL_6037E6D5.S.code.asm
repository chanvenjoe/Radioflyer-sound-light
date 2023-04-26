; global.c Code Start!!;
VarRM[0:4095]={
 _songidx8C42F7DA,iSync,uSync 
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
; //rjmp void L0E8FA404_60()			
L0E8FA404_60:
; //{
; //_A149B8B01_130:;				
_A149B8B01_130:
; //	
; //_A149B8B01_131:;				
_A149B8B01_131:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A149B8B01_132:;				
_A149B8B01_132:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A149B8B01_133:;				
_A149B8B01_133:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A149B8B01_134:;				
_A149B8B01_134:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A149B8B01_135:;				
_A149B8B01_135:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_136:;				
_A149B8B01_136:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_137:;				
_A149B8B01_137:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_138:;				
_A149B8B01_138:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_139:;				
_A149B8B01_139:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_140:;				
_A149B8B01_140:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_141:;				
_A149B8B01_141:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_142:;				
_A149B8B01_142:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A149B8B01_143:;				
_A149B8B01_143:
; //	io[0x3C]	= 0x003F;		
	AR	= 0x3F
	io[0x3C]	= AR
; //_A149B8B01_144:;				
_A149B8B01_144:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A149B8B01_145:;				
_A149B8B01_145:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A149B8B01_146:;				
_A149B8B01_146:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A149B8B01_147:;				
_A149B8B01_147:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L0E8FA404_62:;					
L0E8FA404_62:
; //_A149B8B01_148:;				
_A149B8B01_148:
; //	return;					
	rets
; //L0E8FA404_60_end:;				
L0E8FA404_60_end:
; //_A149B8B01_149:;				
_A149B8B01_149:
; //}
; //
; //rjmp void L0E8FA404_63()			
L0E8FA404_63:
; //{
; //_A149B8B01_150:;				
_A149B8B01_150:
; //	
; //_A149B8B01_151:;				
_A149B8B01_151:
; //	io[0x04]	= 0x000F;		
	AR	= 0x0F
	io[0x04]	= AR
; //_A149B8B01_152:;				
_A149B8B01_152:
; //	io[0x05]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x05]	= AR
; //_A149B8B01_153:;				
_A149B8B01_153:
; //	io[0x07]	= 0x0000;		
	AR	= 0x00
	io[0x07]	= AR
; //_A149B8B01_154:;				
_A149B8B01_154:
; //	io[0x08]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x08]	= AR
; //L0E8FA404_65:;					
L0E8FA404_65:
; //_A149B8B01_155:;				
_A149B8B01_155:
; //	return;					
	rets
; //L0E8FA404_63_end:;				
L0E8FA404_63_end:
; //_A149B8B01_156:;				
_A149B8B01_156:
; //}
; //
; //rjmp void _InitialDA4A7CC4()			
_InitialDA4A7CC4:
; //{
; //_A149B8B01_157:;				
_A149B8B01_157:
; //	
; //_A149B8B01_158:;				
_A149B8B01_158:
; //	sAX	= 0xFFFF;			
	AX	= 0xFFFF
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_159:;				
_A149B8B01_159:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _iADPCCACC469+0;		
	I1 = _iADPCCACC469+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_160:;				
_A149B8B01_160:
; //	sAX	= 0x5555;			
	AX	= 0x5555
; //	asm I1 = iSync+0;			
	I1 = iSync+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_161:;				
_A149B8B01_161:
; //	sAX	= 0xAAAA;			
	AX	= 0xAAAA
; //	asm I1 = uSync+0;			
	I1 = uSync+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A149B8B01_162:;				
_A149B8B01_162:
; //_A149B8B01_163:;				
_A149B8B01_163:
; //	NEARCALL(L0E8FA404_60);			
	call	L0E8FA404_60
; //_A149B8B01_164:;				
_A149B8B01_164:
; //_A149B8B01_165:;				
_A149B8B01_165:
; //	NEARCALL(L0E8FA404_63);			
	call	L0E8FA404_63
; //L0E8FA404_66:;					
L0E8FA404_66:
; //_A149B8B01_166:;				
_A149B8B01_166:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A149B8B01_167:;				
_A149B8B01_167:
; //}
; //
; //rjmp void _CheckSongLimit402181B4()		
_CheckSongLimit402181B4:
; //{
; //_A149B8B01_168:;				
_A149B8B01_168:
; //	
; //_A149B8B01_169:;				
_A149B8B01_169:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L0E8FA404_69;	
	if ZR	jmp L0E8FA404_69
; //	goto	L0E8FA404_68;			
	jmp	L0E8FA404_68
; //L0E8FA404_69:;					
L0E8FA404_69:
; //	
; //_A149B8B01_170:;				
_A149B8B01_170:
; //	asm I1 = mp_songcnt+0;			
	I1 = mp_songcnt+0//
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
; //	goto L0E8FA404_70;			
	jmp	L0E8FA404_70
; //L0E8FA404_68:;					
L0E8FA404_68:
; //	
; //_A149B8B01_171:;				
_A149B8B01_171:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = mp_songcnt+0;			
	I1 = mp_songcnt+0//
; //	asm CX = rm[I1];			
	CX = rm[I1]//
; //	sfx_CMP_AX_CX_JGE();			
	pch	= sfx_CMP_AX_CX_JGE
	lcall	sfx_CMP_AX_CX_JGE
; //	if(__je__)	goto L0E8FA404_72;	
	if ZR	jmp L0E8FA404_72
; //	goto	L0E8FA404_71;			
	jmp	L0E8FA404_71
; //L0E8FA404_72:;					
L0E8FA404_72:
; //	
; //_A149B8B01_172:;				
_A149B8B01_172:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_71:;					
L0E8FA404_71:
; //_A149B8B01_173:;				
_A149B8B01_173:
; //L0E8FA404_70:;					
L0E8FA404_70:
; //_A149B8B01_174:;				
_A149B8B01_174:
; //L0E8FA404_67:;					
L0E8FA404_67:
; //_A149B8B01_175:;				
_A149B8B01_175:
; //	return;					
	rets
; //_CheckSongLimit402181B4_end:;			
_CheckSongLimit402181B4_end:
; //_A149B8B01_176:;				
_A149B8B01_176:
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
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
