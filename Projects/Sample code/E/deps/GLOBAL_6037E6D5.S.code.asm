; global.c Code Start!!;
VarRM[0:4095]={
 _flags026116D5,_songidx8C42F7DA,_sub_vol980B1B83,_ticksA7263C09[2] 
};

; //
.code
; //
; //
; //rjmp void _InitialDA4A7CC4();
; //rjmp void _CheckSongLimit402181B4();
; //rjmp void _RampUpFF7996DA();
; //rjmp void _RampDown1D382EDA();
; //rjmp void _ToneVolCtrl03CF265A();
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
; //rjmp void L0E8FA404_28()			
L0E8FA404_28:
; //{
; //_A2C562ABC_104:;				
_A2C562ABC_104:
; //	
; //_A2C562ABC_105:;				
_A2C562ABC_105:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A2C562ABC_106:;				
_A2C562ABC_106:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A2C562ABC_107:;				
_A2C562ABC_107:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A2C562ABC_108:;				
_A2C562ABC_108:
; //	io[0x16]	= 0x0000;		
	AR	= 0x00
	io[0x16]	= AR
; //_A2C562ABC_109:;				
_A2C562ABC_109:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_110:;				
_A2C562ABC_110:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_111:;				
_A2C562ABC_111:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_112:;				
_A2C562ABC_112:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_113:;				
_A2C562ABC_113:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_114:;				
_A2C562ABC_114:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_115:;				
_A2C562ABC_115:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_116:;				
_A2C562ABC_116:
; //	io[0x36]	= 0x0000;		
	AR	= 0x00
	io[0x36]	= AR
; //_A2C562ABC_117:;				
_A2C562ABC_117:
; //	io[0x3C]	= 0x003F;		
	AR	= 0x3F
	io[0x3C]	= AR
; //_A2C562ABC_118:;				
_A2C562ABC_118:
; //	sAX	= io[0x3C];			
	AR	= io[0x3C]
	AX	= AR
; //_A2C562ABC_119:;				
_A2C562ABC_119:
; //	asm	set io[MISC].b9			
	set io[MISC].b9
; //_A2C562ABC_120:;				
_A2C562ABC_120:
; //	asm	set io[MISC].b8			
	set io[MISC].b8
; //_A2C562ABC_121:;				
_A2C562ABC_121:
; //	asm	set io[MISC].b4			
	set io[MISC].b4
; //L0E8FA404_30:;					
L0E8FA404_30:
; //_A2C562ABC_122:;				
_A2C562ABC_122:
; //	return;					
	rets
; //L0E8FA404_28_end:;				
L0E8FA404_28_end:
; //_A2C562ABC_123:;				
_A2C562ABC_123:
; //}
; //
; //rjmp void L0E8FA404_31()			
L0E8FA404_31:
; //{
; //_A2C562ABC_124:;				
_A2C562ABC_124:
; //	
; //_A2C562ABC_125:;				
_A2C562ABC_125:
; //	io[0x04]	= 0x000F;		
	AR	= 0x0F
	io[0x04]	= AR
; //_A2C562ABC_126:;				
_A2C562ABC_126:
; //	io[0x05]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x05]	= AR
; //_A2C562ABC_127:;				
_A2C562ABC_127:
; //	io[0x07]	= 0x0000;		
	AR	= 0x00
	io[0x07]	= AR
; //_A2C562ABC_128:;				
_A2C562ABC_128:
; //	io[0x08]	= 0xFFFF;		
	AR	= 0xFFFF
	io[0x08]	= AR
; //L0E8FA404_33:;					
L0E8FA404_33:
; //_A2C562ABC_129:;				
_A2C562ABC_129:
; //	return;					
	rets
; //L0E8FA404_31_end:;				
L0E8FA404_31_end:
; //_A2C562ABC_130:;				
_A2C562ABC_130:
; //}
; //
; //rjmp void _InitialDA4A7CC4()			
_InitialDA4A7CC4:
; //{
; //_A2C562ABC_131:;				
_A2C562ABC_131:
; //	
; //_A2C562ABC_132:;				
_A2C562ABC_132:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_133:;				
_A2C562ABC_133:
; //_A2C562ABC_134:;				
_A2C562ABC_134:
; //	NEARCALL(L0E8FA404_28);			
	call	L0E8FA404_28
; //_A2C562ABC_135:;				
_A2C562ABC_135:
; //_A2C562ABC_136:;				
_A2C562ABC_136:
; //	NEARCALL(L0E8FA404_31);			
	call	L0E8FA404_31
; //_A2C562ABC_137:;				
_A2C562ABC_137:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_138:;				
_A2C562ABC_138:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A2C562ABC_139:;				
_A2C562ABC_139:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_34:;					
L0E8FA404_34:
; //_A2C562ABC_140:;				
_A2C562ABC_140:
; //	return;					
	rets
; //_InitialDA4A7CC4_end:;				
_InitialDA4A7CC4_end:
; //_A2C562ABC_141:;				
_A2C562ABC_141:
; //}
; //
; //rjmp void _CheckSongLimit402181B4()		
_CheckSongLimit402181B4:
; //{
; //_A2C562ABC_142:;				
_A2C562ABC_142:
; //	
; //_A2C562ABC_143:;				
_A2C562ABC_143:
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto L0E8FA404_37;	
	if ZR	jmp L0E8FA404_37
; //	goto	L0E8FA404_36;			
	jmp	L0E8FA404_36
; //L0E8FA404_37:;					
L0E8FA404_37:
; //	
; //_A2C562ABC_144:;				
_A2C562ABC_144:
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
; //	goto L0E8FA404_38;			
	jmp	L0E8FA404_38
; //L0E8FA404_36:;					
L0E8FA404_36:
; //	
; //_A2C562ABC_145:;				
_A2C562ABC_145:
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
; //	if(__je__)	goto L0E8FA404_40;	
	if ZR	jmp L0E8FA404_40
; //	goto	L0E8FA404_39;			
	jmp	L0E8FA404_39
; //L0E8FA404_40:;					
L0E8FA404_40:
; //	
; //_A2C562ABC_146:;				
_A2C562ABC_146:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = _songidx8C42F7DA+0;		
	I1 = _songidx8C42F7DA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_39:;					
L0E8FA404_39:
; //_A2C562ABC_147:;				
_A2C562ABC_147:
; //L0E8FA404_38:;					
L0E8FA404_38:
; //_A2C562ABC_148:;				
_A2C562ABC_148:
; //L0E8FA404_35:;					
L0E8FA404_35:
; //_A2C562ABC_149:;				
_A2C562ABC_149:
; //	return;					
	rets
; //_CheckSongLimit402181B4_end:;			
_CheckSongLimit402181B4_end:
; //_A2C562ABC_150:;				
_A2C562ABC_150:
; //}
; //
; //rjmp void _RampUpFF7996DA()			
_RampUpFF7996DA:
; //{
; //_A2C562ABC_151:;				
_A2C562ABC_151:
; //	
; //_A2C562ABC_152:;				
_A2C562ABC_152:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x003F;			
	AR = 0x003F//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sCX	= 0x003F;			
	CX	= 0x3F
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0E8FA404_43;	
	if ZR	jmp L0E8FA404_43
; //	goto	L0E8FA404_42;			
	jmp	L0E8FA404_42
; //L0E8FA404_43:;					
L0E8FA404_43:
; //_A2C562ABC_153:;				
_A2C562ABC_153:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_41;			
	jmp	L0E8FA404_41
; //L0E8FA404_42:;					
L0E8FA404_42:
; //_A2C562ABC_154:;				
_A2C562ABC_154:
; //_A2C562ABC_155:;				
_A2C562ABC_155:
; //_A2C562ABC_156:;				
_A2C562ABC_156:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sCX	= *(__int16*)sSI++;		
	CX	= rm[I1++]
; //	sBX	= *(__int16*)sSI--;		
	BX	= rm[I1--]
; //	sfx_SUBLONG();				
	AR	= CX
	AX	= AX - AR
	AR	= BX
	DX	= DX - AR + C - 1
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sBX	= 0x0005;			
	BX	= 0x05
; //	sfx_CMPLONG_JA();			
	pch	= sfx_CMPLONG_JA
	lcall	sfx_CMPLONG_JA
; //	if(__je__)	goto L0E8FA404_45;	
	if ZR	jmp L0E8FA404_45
; //	goto	L0E8FA404_44;			
	jmp	L0E8FA404_44
; //L0E8FA404_45:;					
L0E8FA404_45:
; //	
; //_A2C562ABC_157:;				
_A2C562ABC_157:
; //_A2C562ABC_158:;				
_A2C562ABC_158:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	
; //_A2C562ABC_159:;				
_A2C562ABC_159:
; //	sSI	= (int)&_sub_vol980B1B83;	
	I1	= _sub_vol980B1B83
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sAX++;					
	AX++
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //L0E8FA404_44:;					
L0E8FA404_44:
; //_A2C562ABC_160:;				
_A2C562ABC_160:
; //_A2C562ABC_161:;				
_A2C562ABC_161:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_41;			
	jmp	L0E8FA404_41
; //L0E8FA404_41:;					
L0E8FA404_41:
; //_A2C562ABC_162:;				
_A2C562ABC_162:
; //	return;					
	rets
; //_RampUpFF7996DA_end:;				
_RampUpFF7996DA_end:
; //_A2C562ABC_163:;				
_A2C562ABC_163:
; //}
; //
; //rjmp void _RampDown1D382EDA()			
_RampDown1D382EDA:
; //{
; //_A2C562ABC_164:;				
_A2C562ABC_164:
; //	
; //_A2C562ABC_165:;				
_A2C562ABC_165:
; //	asm I1 = _sub_vol980B1B83+0;		
	I1 = _sub_vol980B1B83+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm AR = 0x003F;			
	AR = 0x003F//
; //	asm AX = AX & AR;			
	AX = AX & AR//
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JE();			
	AR	= AX
	SF = AR - CX
; //	if(__je__)	goto L0E8FA404_48;	
	if ZR	jmp L0E8FA404_48
; //	goto	L0E8FA404_47;			
	jmp	L0E8FA404_47
; //L0E8FA404_48:;					
L0E8FA404_48:
; //_A2C562ABC_166:;				
_A2C562ABC_166:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto L0E8FA404_46;			
	jmp	L0E8FA404_46
; //L0E8FA404_47:;					
L0E8FA404_47:
; //_A2C562ABC_167:;				
_A2C562ABC_167:
; //_A2C562ABC_168:;				
_A2C562ABC_168:
; //_A2C562ABC_169:;				
_A2C562ABC_169:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sCX	= *(__int16*)sSI++;		
	CX	= rm[I1++]
; //	sBX	= *(__int16*)sSI--;		
	BX	= rm[I1--]
; //	sfx_SUBLONG();				
	AR	= CX
	AX	= AX - AR
	AR	= BX
	DX	= DX - AR + C - 1
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sBX	= 0x0005;			
	BX	= 0x05
; //	sfx_CMPLONG_JA();			
	pch	= sfx_CMPLONG_JA
	lcall	sfx_CMPLONG_JA
; //	if(__je__)	goto L0E8FA404_50;	
	if ZR	jmp L0E8FA404_50
; //	goto	L0E8FA404_49;			
	jmp	L0E8FA404_49
; //L0E8FA404_50:;					
L0E8FA404_50:
; //	
; //_A2C562ABC_170:;				
_A2C562ABC_170:
; //_A2C562ABC_171:;				
_A2C562ABC_171:
; //	_GetTickCount18DC070C();		
	pch	= _GetTickCount18DC070C
	lcall	_GetTickCount18DC070C
; //	asm I1 = _ticksA7263C09+0;		
	I1 = _ticksA7263C09+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //	
; //_A2C562ABC_172:;				
_A2C562ABC_172:
; //	sSI	= (int)&_sub_vol980B1B83;	
	I1	= _sub_vol980B1B83
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sAX--;					
	AX--
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //	io[0x3C]	= sAX;			
	AR	= AX
	io[0x3C]	= AR
; //L0E8FA404_49:;					
L0E8FA404_49:
; //_A2C562ABC_173:;				
_A2C562ABC_173:
; //_A2C562ABC_174:;				
_A2C562ABC_174:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto L0E8FA404_46;			
	jmp	L0E8FA404_46
; //L0E8FA404_46:;					
L0E8FA404_46:
; //_A2C562ABC_175:;				
_A2C562ABC_175:
; //	return;					
	rets
; //_RampDown1D382EDA_end:;				
_RampDown1D382EDA_end:
; //_A2C562ABC_176:;				
_A2C562ABC_176:
; //}
; //
; //rjmp void _ToneVolCtrl03CF265A()		
_ToneVolCtrl03CF265A:
; //{
; //_A2C562ABC_177:;				
_A2C562ABC_177:
; //	
; //_A2C562ABC_178:;				
_A2C562ABC_178:
; //	sAX	= 0;				
	AX	= 0x00
; //	asm I1 = _flags026116D5+0;		
	I1 = _flags026116D5+0//
; //	asm AR = rm[I1];			
	AR = rm[I1]//
; //	asm test AR.b0;				
	test AR.b0//
; //	if(__jz__) goto L0E8FA404_53;		
	if ZR	jmp L0E8FA404_53
; //	sAX	= 1;				
	AX	= 0x01
; //L0E8FA404_53:;					
L0E8FA404_53:
; //	sfx_CHECKZERO();			
	AR	= AX
; //	if(__jnz__)	goto L0E8FA404_54;	
	if NZ	jmp L0E8FA404_54
; //	goto	L0E8FA404_52;			
	jmp	L0E8FA404_52
; //L0E8FA404_54:;					
L0E8FA404_54:
; //	
; //_A2C562ABC_179:;				
_A2C562ABC_179:
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x100F;			
	CX	= 0x100F
; //	sfx_CMP_AX_CX_JG();			
	pch	= sfx_CMP_AX_CX_JG
	lcall	sfx_CMP_AX_CX_JG
; //	if(__je__)	goto L0E8FA404_56;	
	if ZR	jmp L0E8FA404_56
; //	goto	L0E8FA404_55;			
	jmp	L0E8FA404_55
; //L0E8FA404_56:;					
L0E8FA404_56:
; //_A2C562ABC_180:;				
_A2C562ABC_180:
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0010;			
	CX	= 0x10
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //L0E8FA404_55:;					
L0E8FA404_55:
; //_A2C562ABC_181:;				
_A2C562ABC_181:
; //	goto L0E8FA404_57;			
	jmp	L0E8FA404_57
; //L0E8FA404_52:;					
L0E8FA404_52:
; //	
; //_A2C562ABC_182:;				
_A2C562ABC_182:
; //	asm I1 = dtxfltg+0;			
	I1 = dtxfltg+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x7FFF;			
	CX	= 0x7FFF
; //	sfx_CMP_AX_CX_JNE();			
	pch	= sfx_CMP_AX_CX_JNE
	lcall	sfx_CMP_AX_CX_JNE
; //	if(__je__)	goto L0E8FA404_59;	
	if ZR	jmp L0E8FA404_59
; //	goto	L0E8FA404_58;			
	jmp	L0E8FA404_58
; //L0E8FA404_59:;					
L0E8FA404_59:
; //_A2C562ABC_183:;				
_A2C562ABC_183:
; //	sSI	= (int)&dtxfltg;		
	I1	= dtxfltg
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sAX++;					
	AX++
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //L0E8FA404_58:;					
L0E8FA404_58:
; //_A2C562ABC_184:;				
_A2C562ABC_184:
; //L0E8FA404_57:;					
L0E8FA404_57:
; //_A2C562ABC_185:;				
_A2C562ABC_185:
; //L0E8FA404_51:;					
L0E8FA404_51:
; //_A2C562ABC_186:;				
_A2C562ABC_186:
; //	return;					
	rets
; //_ToneVolCtrl03CF265A_end:;			
_ToneVolCtrl03CF265A_end:
; //_A2C562ABC_187:;				
_A2C562ABC_187:
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
