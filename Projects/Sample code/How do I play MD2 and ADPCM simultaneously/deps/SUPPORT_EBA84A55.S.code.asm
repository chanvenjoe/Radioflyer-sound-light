; support.c Code Start!!;
VarRM[0:4095]={
 _adpch30670376[72],_adpFLTG0FBE3CB5[4],_iADPCCACC469 
};

; //
.code
; //
; //
; //rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
; //rjmp void _StopAllADPCM9255018D();
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
; //rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)
_playADPCMBACD5AFD:
; //{
; //	__int16 _i_1_2;
; //	__int16 _p_1_4;
; //	__int16 _q_1_6;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -3
	BP	+= AR
; //_A149B8B01_177:;				
_A149B8B01_177:
; //_A149B8B01_178:;				
_A149B8B01_178:
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_179:;				
_A149B8B01_179:
; //	_i_1_2+0	= 0x00;			
	I1	= rm[BP_SAVE]
	AR	= 0x00
	rm[I1]	= AR
; //LB7C4B5D5_75:;					
LB7C4B5D5_75:
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0004;			
	CX	= 0x04
; //	sfx_CMP_AX_CX_JL();			
	pch	= sfx_CMP_AX_CX_JL
	lcall	sfx_CMP_AX_CX_JL
; //	if(__je__)	goto LB7C4B5D5_79;	
	if ZR	jmp LB7C4B5D5_79
; //	goto	LB7C4B5D5_77;			
	jmp	LB7C4B5D5_77
; //LB7C4B5D5_79:;					
LB7C4B5D5_79:
; //	goto LB7C4B5D5_76;			
	jmp	LB7C4B5D5_76
; //LB7C4B5D5_78:;					
LB7C4B5D5_78:
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
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LB7C4B5D5_75;			
	jmp	LB7C4B5D5_75
; //LB7C4B5D5_76:;					
LB7C4B5D5_76:
; //	
; //_A149B8B01_180:;				
_A149B8B01_180:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sSI	= sAX;				
	AR	= AX
	I1	= AR
; //	sAX	= *(__int16*)sSI++;		
	AX	= rm[I1++]
; //	sDX	= *(__int16*)sSI--;		
	DX	= rm[I1--]
; //	sfx_CHECKZEROLONG();			
	AR	= AX
	AR	|= DX
; //	if(__jz__)	goto LB7C4B5D5_81;	
	if ZR	jmp LB7C4B5D5_81
; //	goto	LB7C4B5D5_80;			
	jmp	LB7C4B5D5_80
; //LB7C4B5D5_81:;					
LB7C4B5D5_81:
; //	
; //_A149B8B01_181:;				
_A149B8B01_181:
; //_A149B8B01_182:;				
_A149B8B01_182:
; //	sAX	= 0x0012;			
	AX	= 0x12
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDX	= 0;				
	DX	= 0x00
; //	PUSH(sDX);				
	push	DX
; //	PUSH(sAX);				
	push	AX
; //	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	pch	= _memset5A9D755A
	lcall	_memset5A9D755A
; //	RESTORESP(4);				
	AR	= 4
	BP	+= AR
; //_A149B8B01_183:;				
_A149B8B01_183:
; //	asm AX = #_adpdata32993E3B+0;		
	AX = #_adpdata32993E3B+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_index_0_4;		
	AR	= 2
	I1	= rm[BP_SAVE]
	I1	+= AR
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
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_184:;				
_A149B8B01_184:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI++;		
	AX	= pm[P1++]
; //	sDX	= *(__int16*)sDI--;		
	DX	= pm[P1--]
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_A149B8B01_185:;				
_A149B8B01_185:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0011;			
	CX	= 0x11
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0002;			
	CX	= 0x02
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_186:;				
_A149B8B01_186:
; //	asm AX = _adpFLTG0FBE3CB5+0;		
	AX = _adpFLTG0FBE3CB5+0//
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_i_1_2;			
	I1	= rm[BP_SAVE]
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	
; //	sCX	= POP();			
	pop	CX
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sSI	= (int)&_q_1_6;			
	AR	= -2
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x0003;			
	CX	= 0x03
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	sDI	= sAX;				
	AR	= AX
	P1	= AR
; //	sAX	= *(__int16*)sDI;		
	AX	= pm[P1]
; //	sSI	= POP();			
	pop	I1
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //_A149B8B01_187:;				
_A149B8B01_187:
; //	sAX	= 0x0001;			
	AX	= 0x01
; //	goto LB7C4B5D5_74;			
	jmp	LB7C4B5D5_74
; //LB7C4B5D5_80:;					
LB7C4B5D5_80:
; //_A149B8B01_188:;				
_A149B8B01_188:
; //_A149B8B01_189:;				
_A149B8B01_189:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0012;			
	AR = 0x0012//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LB7C4B5D5_78;			
	jmp	LB7C4B5D5_78
; //LB7C4B5D5_77:;					
LB7C4B5D5_77:
; //_A149B8B01_190:;				
_A149B8B01_190:
; //_A149B8B01_191:;				
_A149B8B01_191:
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	goto LB7C4B5D5_74;			
	jmp	LB7C4B5D5_74
; //LB7C4B5D5_74:;					
LB7C4B5D5_74:
; //_A149B8B01_192:;				
_A149B8B01_192:
; //	return;					
	AR	= 3
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_playADPCMBACD5AFD_end:;			
_playADPCMBACD5AFD_end:
; //_A149B8B01_193:;				
_A149B8B01_193:
; //}
; //
; //rjmp void _StopAllADPCM9255018D()		
_StopAllADPCM9255018D:
; //{
; //	__int16 _i_1_2;
; //	__int16 _p_1_4;
; //						
	AR	= rm[BP_SAVE]
	push	AR
	AR	= BP
	rm[BP_SAVE]	= AR
	AR	 = -2
	BP	+= AR
; //_A149B8B01_194:;				
_A149B8B01_194:
; //_A149B8B01_195:;				
_A149B8B01_195:
; //	_i_1_2+0	= 0x04;			
	I1	= rm[BP_SAVE]
	AR	= 0x04
	rm[I1]	= AR
; //_A149B8B01_196:;				
_A149B8B01_196:
; //	asm AX = _adpch30670376+0;		
	AX = _adpch30670376+0//
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	*(__int16*)sSI	= sAX;			
	rm[I1]	= AX
; //LB7C4B5D5_84:;					
LB7C4B5D5_84:
; //_A149B8B01_197:;				
_A149B8B01_197:
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
; //	if(__jnz__)	goto LB7C4B5D5_85;	
	if NZ	jmp LB7C4B5D5_85
; //	goto	LB7C4B5D5_83;			
	jmp	LB7C4B5D5_83
; //LB7C4B5D5_85:;					
LB7C4B5D5_85:
; //	
; //_A149B8B01_198:;				
_A149B8B01_198:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sCX	= 0x000A;			
	CX	= 0x0A
; //	sAX	= sAX + sCX;			
	AR	= CX
	AX	+= AR
; //	PUSH(sAX);				
	push	AX
; //	sAX	= 0x0000;			
	AX	= 0x00
; //	sDX	= 0x0000;			
	DX	= 0x00
; //	sSI	= POP();			
	pop	I1
; //	sfx_STORSILONG();			
	rm[I1++]	= AX
	rm[I1--]	= DX
; //_A149B8B01_199:;				
_A149B8B01_199:
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	sAX	= *(__int16*)sSI;		
	AX	= rm[I1]
; //	sSI	= (int)&_p_1_4;			
	AR	= -1
	I1	= rm[BP_SAVE]
	I1	+= AR
; //	asm AR = 0x0012;			
	AR = 0x0012//
; //	sCX	= *(__int16*)sSI;		
	CX	= rm[I1]
; //	asm rm[I1] = CX + AR;			
	rm[I1] = CX + AR//
; //	goto LB7C4B5D5_84;			
	jmp	LB7C4B5D5_84
; //LB7C4B5D5_83:;					
LB7C4B5D5_83:
; //LB7C4B5D5_82:;					
LB7C4B5D5_82:
; //_A149B8B01_200:;				
_A149B8B01_200:
; //	return;					
	AR	= 2
	BP	+= AR
	pop	AR
	rm[BP_SAVE]	= AR
	rets
; //_StopAllADPCM9255018D_end:;			
_StopAllADPCM9255018D_end:
; //_A149B8B01_201:;				
_A149B8B01_201:
; //}
; //
; //
; //
; //
.code
; //
; //
; //naked void ginit_code_support_EBA84A55_s(void)	
ginit_code_support_EBA84A55_s:
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
; //__int16 _adpdata32993E3B[40] = {		
_adpdata32993E3B:
; //	(int)&ADPCM_CH0_Data, (int)&ADPCM_CH0_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH1_Data, (int)&ADPCM_CH1_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH0_Data,#ADPCM_CH0_Data.h|0x0800,0x1FFF,0x003F,#ADPCM_CH1_Data,#ADPCM_CH1_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH2_Data, (int)&ADPCM_CH2_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH3_Data, (int)&ADPCM_CH3_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH2_Data,#ADPCM_CH2_Data.h|0x0800,0x3FFF,0x003F,#ADPCM_CH3_Data,#ADPCM_CH3_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH4_Data, (int)&ADPCM_CH4_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH5_Data, (int)&ADPCM_CH5_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH4_Data,#ADPCM_CH4_Data.h|0x0800,0x3FFF,0x003F,#ADPCM_CH5_Data,#ADPCM_CH5_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH6_Data, (int)&ADPCM_CH6_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH7_Data, (int)&ADPCM_CH7_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH6_Data,#ADPCM_CH6_Data.h|0x0800,0x1FFF,0x003F,#ADPCM_CH7_Data,#ADPCM_CH7_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH8_Data, (int)&ADPCM_CH8_Data.h|0x0800, 0x3FFF, 0x003F, 0x0000, 0x0000, 0x0000, 0x0000
DW #ADPCM_CH8_Data,#ADPCM_CH8_Data.h|0x0800,0x3FFF,0x003F,0x0000,0x0000,0x0000,0x0000,
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
