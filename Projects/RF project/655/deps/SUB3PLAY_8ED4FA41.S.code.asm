; sub3play.c Code Start!!;
VarRM[0:4095]={
 bts_ch0_get_ix[2],PCMYIN_PTR,PCMYOU_PTR,PCMIN,SampleCh0Rate,BaseOn512#PCMY[512],SUBFLTI[4],SUBFLTA
,SUBFLTP,SUBFLTG 
};

; //
.code
; //
; //
; //rjmp void _ClearRenderBufB079D01D();
; //rjmp void _Sub3Initial96BE24F3();
; //rjmp void _WaitPCM_Empty_size53398B9D();
; //rjmp void _Sub3ZeroFillABFF23AA();
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1);
; //naked rjmp void Sbb_Ch0GetBts();
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
; //rjmp void _ClearRenderBufB079D01D()		
_ClearRenderBufB079D01D:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A8ADEC9C4_120:;				
_A8ADEC9C4_120:
; //	
; //_A8ADEC9C4_121:;				
_A8ADEC9C4_121:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A8ADEC9C4_122:;				
_A8ADEC9C4_122:
; //	asm	AR = AX				
	AR = AX
; //_A8ADEC9C4_123:;				
_A8ADEC9C4_123:
; //	asm	I0 = AR				
	I0 = AR
; //_A8ADEC9C4_124:;				
_A8ADEC9C4_124:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //LFB78B58C_45:;					
LFB78B58C_45:
; //_A8ADEC9C4_125:;				
_A8ADEC9C4_125:
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
; //	if(__jnz__)	goto LFB78B58C_46;	
	if NZ	jmp LFB78B58C_46
; //	goto	LFB78B58C_44;			
	jmp	LFB78B58C_44
; //LFB78B58C_46:;					
LFB78B58C_46:
; //	
; //_A8ADEC9C4_126:;				
_A8ADEC9C4_126:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A8ADEC9C4_127:;				
_A8ADEC9C4_127:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_45;			
	jmp	LFB78B58C_45
; //LFB78B58C_44:;					
LFB78B58C_44:
; //LFB78B58C_43:;					
LFB78B58C_43:
; //_A8ADEC9C4_128:;				
_A8ADEC9C4_128:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_A8ADEC9C4_129:;				
_A8ADEC9C4_129:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_A8ADEC9C4_130:;				
_A8ADEC9C4_130:
; //_A8ADEC9C4_131:;				
_A8ADEC9C4_131:
; //	asm	dsi				
	dsi
; //_A8ADEC9C4_132:;				
_A8ADEC9C4_132:
; //	asm	nop				
	nop
; //	
; //_A8ADEC9C4_133:;				
_A8ADEC9C4_133:
; //_A8ADEC9C4_134:;				
_A8ADEC9C4_134:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A8ADEC9C4_135:;				
_A8ADEC9C4_135:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A8ADEC9C4_136:;				
_A8ADEC9C4_136:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_137:;				
_A8ADEC9C4_137:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_138:;				
_A8ADEC9C4_138:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_A8ADEC9C4_139:;				
_A8ADEC9C4_139:
; //_A8ADEC9C4_140:;				
_A8ADEC9C4_140:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_47:;					
LFB78B58C_47:
; //_A8ADEC9C4_141:;				
_A8ADEC9C4_141:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_A8ADEC9C4_142:;				
_A8ADEC9C4_142:
; //}
; //
; //rjmp void _WaitPCM_Empty_size53398B9D()		
_WaitPCM_Empty_size53398B9D:
; //{
; //	__int16 _x_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A8ADEC9C4_143:;				
_A8ADEC9C4_143:
; //_A8ADEC9C4_144:;				
_A8ADEC9C4_144:
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_145:;				
_A8ADEC9C4_145:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LFB78B58C_50;	
	if ZR	jmp LFB78B58C_50
; //	goto	LFB78B58C_49;			
	jmp	LFB78B58C_49
; //LFB78B58C_50:;					
LFB78B58C_50:
; //	
; //_A8ADEC9C4_146:;				
_A8ADEC9C4_146:
; //	sAX	= 0x01FF;			
	AX	= 0x01FF
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	sAX	= sAX & sCX;			
	AR	= CX
	AX	&= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LFB78B58C_49:;					
LFB78B58C_49:
; //_A8ADEC9C4_147:;				
_A8ADEC9C4_147:
; //_A8ADEC9C4_148:;				
_A8ADEC9C4_148:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0121;			
	CX	= 0x0121
; //	sAX	= sAX - sCX;			
	AR	= CX
	AX	-= AR
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_149:;				
_A8ADEC9C4_149:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_48;			
	jmp	LFB78B58C_48
; //LFB78B58C_48:;					
LFB78B58C_48:
; //_A8ADEC9C4_150:;				
_A8ADEC9C4_150:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_A8ADEC9C4_151:;				
_A8ADEC9C4_151:
; //}
; //
; //rjmp void _Sub3ZeroFillABFF23AA()		
_Sub3ZeroFillABFF23AA:
; //{
; //	__int16 _i_1_2;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -1
	BP	+= AR
; //_A8ADEC9C4_152:;				
_A8ADEC9C4_152:
; //_A8ADEC9C4_153:;				
_A8ADEC9C4_153:
; //	asm	push CBL			
	push CBL
; //_A8ADEC9C4_154:;				
_A8ADEC9C4_154:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_A8ADEC9C4_155:;				
_A8ADEC9C4_155:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A8ADEC9C4_156:;				
_A8ADEC9C4_156:
; //	asm	AR = AX				
	AR = AX
; //_A8ADEC9C4_157:;				
_A8ADEC9C4_157:
; //	asm	I0 = AR				
	I0 = AR
; //_A8ADEC9C4_158:;				
_A8ADEC9C4_158:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AR	= 0x0120
	rm[I1]	= AR
; //LFB78B58C_53:;					
LFB78B58C_53:
; //_A8ADEC9C4_159:;				
_A8ADEC9C4_159:
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
; //	if(__jnz__)	goto LFB78B58C_54;	
	if NZ	jmp LFB78B58C_54
; //	goto	LFB78B58C_52;			
	jmp	LFB78B58C_52
; //LFB78B58C_54:;					
LFB78B58C_54:
; //	
; //_A8ADEC9C4_160:;				
_A8ADEC9C4_160:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A8ADEC9C4_161:;				
_A8ADEC9C4_161:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_53;			
	jmp	LFB78B58C_53
; //LFB78B58C_52:;					
LFB78B58C_52:
; //_A8ADEC9C4_162:;				
_A8ADEC9C4_162:
; //_A8ADEC9C4_163:;				
_A8ADEC9C4_163:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_164:;				
_A8ADEC9C4_164:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_51:;					
LFB78B58C_51:
; //_A8ADEC9C4_165:;				
_A8ADEC9C4_165:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_A8ADEC9C4_166:;				
_A8ADEC9C4_166:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A8ADEC9C4_167:;				
_A8ADEC9C4_167:
; //	
; //_A8ADEC9C4_168:;				
_A8ADEC9C4_168:
; //	sSI	= (int)&_sdata_0_4_0;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_A8ADEC9C4_169:;				
_A8ADEC9C4_169:
; //_A8ADEC9C4_170:;				
_A8ADEC9C4_170:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_A8ADEC9C4_171:;				
_A8ADEC9C4_171:
; //	asm AX = SUBFLTI+0;			
	AX = SUBFLTI+0//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_172:;				
_A8ADEC9C4_172:
; //	asm AX = SUBFLTI+1;			
	AX = SUBFLTI+1//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_173:;				
_A8ADEC9C4_173:
; //	asm AX = SUBFLTI+2;			
	AX = SUBFLTI+2//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_174:;				
_A8ADEC9C4_174:
; //	asm AX = SUBFLTI+3;			
	AX = SUBFLTI+3//
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A8ADEC9C4_175:;				
_A8ADEC9C4_175:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_176:;				
_A8ADEC9C4_176:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_177:;				
_A8ADEC9C4_177:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A8ADEC9C4_178:;				
_A8ADEC9C4_178:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A8ADEC9C4_179:;				
_A8ADEC9C4_179:
; //	asm	eni				
	eni
; //LFB78B58C_55:;					
LFB78B58C_55:
; //_A8ADEC9C4_180:;				
_A8ADEC9C4_180:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_A8ADEC9C4_181:;				
_A8ADEC9C4_181:
; //}
; //
; //naked rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_A8ADEC9C4_182:;				
_A8ADEC9C4_182:
; //_A8ADEC9C4_183:;				
_A8ADEC9C4_183:
; //	asm	push I1				
	push I1
; //_A8ADEC9C4_184:;				
_A8ADEC9C4_184:
; //	asm	push P1				
	push P1
; //_A8ADEC9C4_185:;				
_A8ADEC9C4_185:
; //	asm	push AX				
	push AX
; //_A8ADEC9C4_186:;				
_A8ADEC9C4_186:
; //	asm	push BX				
	push BX
; //_A8ADEC9C4_187:;				
_A8ADEC9C4_187:
; //	asm	push CX				
	push CX
; //_A8ADEC9C4_188:;				
_A8ADEC9C4_188:
; //	asm	push DX				
	push DX
; //_A8ADEC9C4_189:;				
_A8ADEC9C4_189:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_A8ADEC9C4_190:;				
_A8ADEC9C4_190:
; //	asm	push AR				
	push AR
; //	
; //_A8ADEC9C4_191:;				
_A8ADEC9C4_191:
; //_A8ADEC9C4_192:;				
_A8ADEC9C4_192:
; //_A8ADEC9C4_193:;				
_A8ADEC9C4_193:
; //	asm I1 = bts_ch0_get_ix+0;		
	I1 = bts_ch0_get_ix+0//
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	sSI	= (int)&bts_ch0_get_ix[0];	
	I1	= bts_ch0_get_ix
; //	PUSH(sAX);				
	push	AX
; //	PUSH(sDX);				
	push	DX
; //	sfx_GETSILONG_BXCX();			
	CX	= rm[I1++]
	BX	= rm[I1--]
; //	sAX = 0x0001;				
	AX	= 0x01
; //	sDX = 0x0000;				
	DX	= 0x00
; //	sfx_ADDLONG_BXCX_DXAX();		
	AR	= AX
	CX	= CX + AR
	AR	= DX
	BX	= BX + AR + C
; //	sfx_STORSILONG_BXCX();			
	rm[I1++]	= CX
	rm[I1--]	= BX
; //	sDX	= POP();			
	pop	DX
; //	sAX	= POP();			
	pop	AX
; //	_lptr_read(STACK[sSP + 0], STACK[sSP + 1]);
	pch	= _lptr_read
	lcall	_lptr_read
; //	vXCHG(STACK[sSP + 0]);			
	AR	= AX
	AX	= xchg AR
; //_A8ADEC9C4_194:;				
_A8ADEC9C4_194:
; //	asm	pop AR				
	pop AR
; //_A8ADEC9C4_195:;				
_A8ADEC9C4_195:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_A8ADEC9C4_196:;				
_A8ADEC9C4_196:
; //	asm	AR = AX				
	AR = AX
; //	
; //_A8ADEC9C4_197:;				
_A8ADEC9C4_197:
; //	asm	pop DX				
	pop DX
; //_A8ADEC9C4_198:;				
_A8ADEC9C4_198:
; //	asm	pop CX				
	pop CX
; //_A8ADEC9C4_199:;				
_A8ADEC9C4_199:
; //	asm	pop BX				
	pop BX
; //_A8ADEC9C4_200:;				
_A8ADEC9C4_200:
; //	asm	pop AX				
	pop AX
; //_A8ADEC9C4_201:;				
_A8ADEC9C4_201:
; //	asm	pop P1				
	pop P1
; //_A8ADEC9C4_202:;				
_A8ADEC9C4_202:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_56:;					
LFB78B58C_56:
; //_A8ADEC9C4_203:;				
_A8ADEC9C4_203:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_A8ADEC9C4_204:;				
_A8ADEC9C4_204:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_sub3play_8ED4FA41_s(void)	
ginit_code_sub3play_8ED4FA41_s:
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
