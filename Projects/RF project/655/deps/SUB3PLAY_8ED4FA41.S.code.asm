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
; //_A523506CC_140:;				
_A523506CC_140:
; //	
; //_A523506CC_141:;				
_A523506CC_141:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //_A523506CC_142:;				
_A523506CC_142:
; //	asm	AR = AX				
	AR = AX
; //_A523506CC_143:;				
_A523506CC_143:
; //	asm	I0 = AR				
	I0 = AR
; //_A523506CC_144:;				
_A523506CC_144:
; //	_i_1_2+0	= 0x0200;		
	I1	= rm[BP_SAVE]
	AR	= 0x0200
	rm[I1]	= AR
; //LFB78B58C_56:;					
LFB78B58C_56:
; //_A523506CC_145:;				
_A523506CC_145:
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
; //	if(__jnz__)	goto LFB78B58C_57;	
	if NZ	jmp LFB78B58C_57
; //	goto	LFB78B58C_55;			
	jmp	LFB78B58C_55
; //LFB78B58C_57:;					
LFB78B58C_57:
; //	
; //_A523506CC_146:;				
_A523506CC_146:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A523506CC_147:;				
_A523506CC_147:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_56;			
	jmp	LFB78B58C_56
; //LFB78B58C_55:;					
LFB78B58C_55:
; //LFB78B58C_54:;					
LFB78B58C_54:
; //_A523506CC_148:;				
_A523506CC_148:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_ClearRenderBufB079D01D_end:;			
_ClearRenderBufB079D01D_end:
; //_A523506CC_149:;				
_A523506CC_149:
; //}
; //
; //rjmp void _Sub3Initial96BE24F3()		
_Sub3Initial96BE24F3:
; //{
; //_A523506CC_150:;				
_A523506CC_150:
; //_A523506CC_151:;				
_A523506CC_151:
; //	asm	dsi				
	dsi
; //_A523506CC_152:;				
_A523506CC_152:
; //	asm	nop				
	nop
; //	
; //_A523506CC_153:;				
_A523506CC_153:
; //_A523506CC_154:;				
_A523506CC_154:
; //	_ClearRenderBufB079D01D();		
	pch	= _ClearRenderBufB079D01D
	lcall	_ClearRenderBufB079D01D
; //_A523506CC_155:;				
_A523506CC_155:
; //	asm	AR = PASR,0			
	AR = PASR,0
; //_A523506CC_156:;				
_A523506CC_156:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_157:;				
_A523506CC_157:
; //	asm AX = PCMY+0;			
	AX = PCMY+0//
; //	asm I1 = PCMYOU_PTR+0;			
	I1 = PCMYOU_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_158:;				
_A523506CC_158:
; //	io[0x3B]	= 0x0000;		
	AR	= 0x00
	io[0x3B]	= AR
; //_A523506CC_159:;				
_A523506CC_159:
; //_A523506CC_160:;				
_A523506CC_160:
; //	Subb3_Init();				
	pch	= Subb3_Init
	lcall	Subb3_Init
; //LFB78B58C_58:;					
LFB78B58C_58:
; //_A523506CC_161:;				
_A523506CC_161:
; //	return;					
	rets
; //_Sub3Initial96BE24F3_end:;			
_Sub3Initial96BE24F3_end:
; //_A523506CC_162:;				
_A523506CC_162:
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
; //_A523506CC_163:;				
_A523506CC_163:
; //_A523506CC_164:;				
_A523506CC_164:
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
; //_A523506CC_165:;				
_A523506CC_165:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0000;			
	CX	= 0x00
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LFB78B58C_61;	
	if ZR	jmp LFB78B58C_61
; //	goto	LFB78B58C_60;			
	jmp	LFB78B58C_60
; //LFB78B58C_61:;					
LFB78B58C_61:
; //	
; //_A523506CC_166:;				
_A523506CC_166:
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
; //LFB78B58C_60:;					
LFB78B58C_60:
; //_A523506CC_167:;				
_A523506CC_167:
; //_A523506CC_168:;				
_A523506CC_168:
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
; //_A523506CC_169:;				
_A523506CC_169:
; //	sSI	= (int)&_x_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	goto LFB78B58C_59;			
	jmp	LFB78B58C_59
; //LFB78B58C_59:;					
LFB78B58C_59:
; //_A523506CC_170:;				
_A523506CC_170:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_WaitPCM_Empty_size53398B9D_end:;		
_WaitPCM_Empty_size53398B9D_end:
; //_A523506CC_171:;				
_A523506CC_171:
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
; //_A523506CC_172:;				
_A523506CC_172:
; //_A523506CC_173:;				
_A523506CC_173:
; //	asm	push CBL			
	push CBL
; //_A523506CC_174:;				
_A523506CC_174:
; //	io[0x3B]	= 0x0009;		
	AR	= 0x09
	io[0x3B]	= AR
; //	
; //_A523506CC_175:;				
_A523506CC_175:
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //_A523506CC_176:;				
_A523506CC_176:
; //	asm	AR = AX				
	AR = AX
; //_A523506CC_177:;				
_A523506CC_177:
; //	asm	I0 = AR				
	I0 = AR
; //_A523506CC_178:;				
_A523506CC_178:
; //	_i_1_2+0	= 0x0120;		
	I1	= rm[BP_SAVE]
	AR	= 0x0120
	rm[I1]	= AR
; //LFB78B58C_64:;					
LFB78B58C_64:
; //_A523506CC_179:;				
_A523506CC_179:
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
; //	if(__jnz__)	goto LFB78B58C_65;	
	if NZ	jmp LFB78B58C_65
; //	goto	LFB78B58C_63;			
	jmp	LFB78B58C_63
; //LFB78B58C_65:;					
LFB78B58C_65:
; //	
; //_A523506CC_180:;				
_A523506CC_180:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //_A523506CC_181:;				
_A523506CC_181:
; //	asm	rm[I0++] = AX			
	rm[I0++] = AX
; //	goto LFB78B58C_64;			
	jmp	LFB78B58C_64
; //LFB78B58C_63:;					
LFB78B58C_63:
; //_A523506CC_182:;				
_A523506CC_182:
; //_A523506CC_183:;				
_A523506CC_183:
; //	get_I0();				
	push	I0
	pop	AX
; //	asm I1 = PCMYIN_PTR+0;			
	I1 = PCMYIN_PTR+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_184:;				
_A523506CC_184:
; //	asm	pop CBL				
	pop CBL
; //LFB78B58C_62:;					
LFB78B58C_62:
; //_A523506CC_185:;				
_A523506CC_185:
; //	return;					
	AR	= 1
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3ZeroFillABFF23AA_end:;			
_Sub3ZeroFillABFF23AA_end:
; //_A523506CC_186:;				
_A523506CC_186:
; //}
; //
; //rjmp void _Sub3Play422CAD6D(__int16 _sdata_0_4_0, __int16 _sdata_0_4_1)
_Sub3Play422CAD6D:
; //{						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
; //_A523506CC_187:;				
_A523506CC_187:
; //	
; //_A523506CC_188:;				
_A523506CC_188:
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
; //_A523506CC_189:;				
_A523506CC_189:
; //_A523506CC_190:;				
_A523506CC_190:
; //	_Sub3Initial96BE24F3();			
	pch	= _Sub3Initial96BE24F3
	lcall	_Sub3Initial96BE24F3
; //_A523506CC_191:;				
_A523506CC_191:
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
; //_A523506CC_192:;				
_A523506CC_192:
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
; //_A523506CC_193:;				
_A523506CC_193:
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
; //_A523506CC_194:;				
_A523506CC_194:
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
; //_A523506CC_195:;				
_A523506CC_195:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	asm I1 = SUBFLTA+0;			
	I1 = SUBFLTA+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_196:;				
_A523506CC_196:
; //	asm I1 = SampleCh0Rate+0;		
	I1 = SampleCh0Rate+0//
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	asm I1 = SUBFLTP+0;			
	I1 = SUBFLTP+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_197:;				
_A523506CC_197:
; //	sAX	= 0x003F;			
	AX	= 0x3F
; //	asm I1 = SUBFLTG+0;			
	I1 = SUBFLTG+0//
; //	*(__int16*)sSI	= sAX			
	rm[I1]	= AX
; //_A523506CC_198:;				
_A523506CC_198:
; //	asm	set io[INTENA].b0		
	set io[INTENA].b0
; //_A523506CC_199:;				
_A523506CC_199:
; //	asm	eni				
	eni
; //LFB78B58C_66:;					
LFB78B58C_66:
; //_A523506CC_200:;				
_A523506CC_200:
; //	return;					
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_Sub3Play422CAD6D_end:;				
_Sub3Play422CAD6D_end:
; //_A523506CC_201:;				
_A523506CC_201:
; //}
; //
; //naked rjmp void Sbb_Ch0GetBts()			
Sbb_Ch0GetBts:
; //{
; //_A523506CC_202:;				
_A523506CC_202:
; //_A523506CC_203:;				
_A523506CC_203:
; //	asm	push I1				
	push I1
; //_A523506CC_204:;				
_A523506CC_204:
; //	asm	push P1				
	push P1
; //_A523506CC_205:;				
_A523506CC_205:
; //	asm	push AX				
	push AX
; //_A523506CC_206:;				
_A523506CC_206:
; //	asm	push BX				
	push BX
; //_A523506CC_207:;				
_A523506CC_207:
; //	asm	push CX				
	push CX
; //_A523506CC_208:;				
_A523506CC_208:
; //	asm	push DX				
	push DX
; //_A523506CC_209:;				
_A523506CC_209:
; //	asm	AR = P1.hh			
	AR = P1.hh
; //_A523506CC_210:;				
_A523506CC_210:
; //	asm	push AR				
	push AR
; //	
; //_A523506CC_211:;				
_A523506CC_211:
; //_A523506CC_212:;				
_A523506CC_212:
; //_A523506CC_213:;				
_A523506CC_213:
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
; //_A523506CC_214:;				
_A523506CC_214:
; //	asm	pop AR				
	pop AR
; //_A523506CC_215:;				
_A523506CC_215:
; //	asm	P1.hh = AR			
	P1.hh = AR
; //_A523506CC_216:;				
_A523506CC_216:
; //	asm	AR = AX				
	AR = AX
; //	
; //_A523506CC_217:;				
_A523506CC_217:
; //	asm	pop DX				
	pop DX
; //_A523506CC_218:;				
_A523506CC_218:
; //	asm	pop CX				
	pop CX
; //_A523506CC_219:;				
_A523506CC_219:
; //	asm	pop BX				
	pop BX
; //_A523506CC_220:;				
_A523506CC_220:
; //	asm	pop AX				
	pop AX
; //_A523506CC_221:;				
_A523506CC_221:
; //	asm	pop P1				
	pop P1
; //_A523506CC_222:;				
_A523506CC_222:
; //	asm	pop I1				
	pop I1
; //LFB78B58C_67:;					
LFB78B58C_67:
; //_A523506CC_223:;				
_A523506CC_223:
; //	return;					
	rets
; //Sbb_Ch0GetBts_end:;				
Sbb_Ch0GetBts_end:
; //_A523506CC_224:;				
_A523506CC_224:
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
