
#include "crt0.h"













__int16 _iADPCCACC469;
__int16 _adpch30670376[36];
__int16 _adpFLTG0FBE3CB5[2];



// CODE segment					=>>VarRM[0:4095]={
 _iADPCCACC469,_adpch30670376[36],_adpFLTG0FBE3CB5[2] 
};

.code


rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
rjmp void ADPCM_CHX_Init();
rjmp void ADPCM_CHXGetBts();
rjmp void _DoADPCM9CD0E20D();




.code



.data



.code
rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)=>>_playADPCMBACD5AFD:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	__int16 _q_1_6;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -3;BP	+= AR
_AECA8DE46_104:;				=>>_AECA8DE46_104:;
	
_AECA8DE46_105:;				=>>_AECA8DE46_105:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_106:;				=>>_AECA8DE46_106:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
L7F5A46A0_26:;					=>>L7F5A46A0_26:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L7F5A46A0_30;	=>>if ZR	jmp L7F5A46A0_30
	goto	L7F5A46A0_28;			=>>jmp	L7F5A46A0_28
L7F5A46A0_30:;					=>>L7F5A46A0_30:;
	goto L7F5A46A0_27;			=>>jmp	L7F5A46A0_27
L7F5A46A0_29:;					=>>L7F5A46A0_29:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto L7F5A46A0_26;			=>>jmp	L7F5A46A0_26
L7F5A46A0_27:;					=>>L7F5A46A0_27:;
	
_AECA8DE46_107:;				=>>_AECA8DE46_107:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sfx_CHECKZEROLONG();			=>>AR	= AX;AR	|= DX;
	if(__jz__)	goto L7F5A46A0_32;	=>>if ZR	jmp L7F5A46A0_32
	goto	L7F5A46A0_31;			=>>jmp	L7F5A46A0_31
L7F5A46A0_32:;					=>>L7F5A46A0_32:;
	
_AECA8DE46_108:;				=>>_AECA8DE46_108:;
_AECA8DE46_109:;				=>>_AECA8DE46_109:;
	sAX	= 0x0012;			=>>AX	= 0x12
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDX	= 0;				=>>DX	= 0x00
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);=>>pch	= _memset5A9D755A;lcall	_memset5A9D755A
	RESTORESP(4);				=>>AR	= 4;BP	+= AR;
_AECA8DE46_110:;				=>>_AECA8DE46_110:;
	asm AX = #_adpdata32993E3B+0;		=>>AX = #_adpdata32993E3B+0//
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_index_0_4;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0004;			=>>CX	= 0x04
	sfx_IMUL_AX_CX();			=>>pch	= sfx_IMUL_AX_CX;lcall	sfx_IMUL_AX_CX
	sCX	= POP();			=>>pop	CX
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_111:;				=>>_AECA8DE46_111:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI++;		=>>AX	= pm[P1++]
	sDX	= *(__int16*)sDI--;		=>>DX	= pm[P1--]
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_AECA8DE46_112:;				=>>_AECA8DE46_112:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0011;			=>>CX	= 0x11
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0002;			=>>CX	= 0x02
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_113:;				=>>_AECA8DE46_113:;
	asm AX = _adpFLTG0FBE3CB5+0;		=>>AX = _adpFLTG0FBE3CB5+0//
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	
	sCX	= POP();			=>>pop	CX
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_q_1_6;			=>>AR	= -2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0003;			=>>CX	= 0x03
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sDI	= sAX;				=>>AR	= AX;P1	= AR
	sAX	= *(__int16*)sDI;		=>>AX	= pm[P1]
	sSI	= POP();			=>>pop	I1
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_114:;				=>>_AECA8DE46_114:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_31:;					=>>L7F5A46A0_31:;
_AECA8DE46_115:;				=>>_AECA8DE46_115:;
_AECA8DE46_116:;				=>>_AECA8DE46_116:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0012;			=>>AR = 0x0012//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_AECA8DE46_117:;				=>>_AECA8DE46_117:;
	goto L7F5A46A0_29;			=>>jmp	L7F5A46A0_29
L7F5A46A0_28:;					=>>L7F5A46A0_28:;
_AECA8DE46_118:;				=>>_AECA8DE46_118:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L7F5A46A0_25;			=>>jmp	L7F5A46A0_25
L7F5A46A0_25:;					=>>L7F5A46A0_25:;
_AECA8DE46_119:;				=>>_AECA8DE46_119:;
	return;					=>>AR	= 3;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_playADPCMBACD5AFD_end:;			=>>_playADPCMBACD5AFD_end:;
_AECA8DE46_120:;				=>>_AECA8DE46_120:;
}

rjmp void ADPCM_CHX_Init()			=>>ADPCM_CHX_Init:
{
_AECA8DE46_121:;				=>>_AECA8DE46_121:;
	
_AECA8DE46_122:;				=>>_AECA8DE46_122:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AECA8DE46_123:;				=>>_AECA8DE46_123:;
_AECA8DE46_124:;				=>>_AECA8DE46_124:;
	sAX	= 0x0024;			=>>AX	= 0x24
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	PUSH(sAX);				=>>push	AX
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sDX	= 0;				=>>DX	= 0x00
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);=>>pch	= _memset5A9D755A;lcall	_memset5A9D755A
	RESTORESP(4);				=>>AR	= 4;BP	+= AR;
L7F5A46A0_33:;					=>>L7F5A46A0_33:;
_AECA8DE46_125:;				=>>_AECA8DE46_125:;
	return;					=>>rets
ADPCM_CHX_Init_end:;				=>>ADPCM_CHX_Init_end:;
_AECA8DE46_126:;				=>>_AECA8DE46_126:;
}

rjmp void ADPCM_CHXGetBts()			=>>ADPCM_CHXGetBts:
{
_AECA8DE46_127:;				=>>_AECA8DE46_127:;
_AECA8DE46_128:;				=>>_AECA8DE46_128:;
	asm	push AX				=>>push AX
_AECA8DE46_129:;				=>>_AECA8DE46_129:;
	asm	push BX				=>>push BX
_AECA8DE46_130:;				=>>_AECA8DE46_130:;
	asm	push CX				=>>push CX
_AECA8DE46_131:;				=>>_AECA8DE46_131:;
	asm	push DX				=>>push DX
_AECA8DE46_132:;				=>>_AECA8DE46_132:;
	asm	push I1				=>>push I1
_AECA8DE46_133:;				=>>_AECA8DE46_133:;
	asm	push P0				=>>push P0
_AECA8DE46_134:;				=>>_AECA8DE46_134:;
	asm	AR = P0.hh			=>>AR = P0.hh
_AECA8DE46_135:;				=>>_AECA8DE46_135:;
	asm	push AR				=>>push AR
	
_AECA8DE46_136:;				=>>_AECA8DE46_136:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	PUSH(sAX);				=>>push	AX
	PUSH(sDX);				=>>push	DX
	sCX	= 0x0001;			=>>CX	= 0x01
	sBX	= 0x0000;			=>>BX	= 0x00
	sfx_ADDLONG();				=>>AR	= CX;AX	= AX + AR;AR	= BX;DX	= DX + AR + C;
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	sDX	= POP();			=>>pop	DX
	sAX	= POP();			=>>pop	AX
_AECA8DE46_137:;				=>>_AECA8DE46_137:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_138:;				=>>_AECA8DE46_138:;
	asm	P0 = AR				=>>P0 = AR
_AECA8DE46_139:;				=>>_AECA8DE46_139:;
	asm	AR = DX				=>>AR = DX
_AECA8DE46_140:;				=>>_AECA8DE46_140:;
	asm	P0.hh = AR			=>>P0.hh = AR
	
_AECA8DE46_141:;				=>>_AECA8DE46_141:;
_AECA8DE46_142:;				=>>_AECA8DE46_142:;
	read_P0();				=>>AX	= pm[P0];
_AECA8DE46_143:;				=>>_AECA8DE46_143:;
	asm	pop AR				=>>pop AR
_AECA8DE46_144:;				=>>_AECA8DE46_144:;
	asm	P0.hh = AR			=>>P0.hh = AR
_AECA8DE46_145:;				=>>_AECA8DE46_145:;
	asm	pop P0				=>>pop P0
_AECA8DE46_146:;				=>>_AECA8DE46_146:;
	asm	pop I1				=>>pop I1
_AECA8DE46_147:;				=>>_AECA8DE46_147:;
	asm	pop DX				=>>pop DX
_AECA8DE46_148:;				=>>_AECA8DE46_148:;
	asm	pop CX				=>>pop CX
_AECA8DE46_149:;				=>>_AECA8DE46_149:;
	asm	pop BX				=>>pop BX
	
_AECA8DE46_150:;				=>>_AECA8DE46_150:;
_AECA8DE46_151:;				=>>_AECA8DE46_151:;
	asintax();				=>>_AECA8DE46_152:;				=>>_AECA8DE46_152:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_153:;				=>>_AECA8DE46_153:;
	asm	pop AX				=>>pop AX
L7F5A46A0_34:;					=>>L7F5A46A0_34:;
_AECA8DE46_154:;				=>>_AECA8DE46_154:;
	return;					=>>rets
ADPCM_CHXGetBts_end:;				=>>ADPCM_CHXGetBts_end:;
_AECA8DE46_155:;				=>>_AECA8DE46_155:;
}

rjmp void L7F5A46A0_35()			=>>L7F5A46A0_35:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AECA8DE46_156:;				=>>_AECA8DE46_156:;
	
_AECA8DE46_157:;				=>>_AECA8DE46_157:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_AECA8DE46_158:;				=>>_AECA8DE46_158:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_159:;				=>>_AECA8DE46_159:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AECA8DE46_160:;				=>>_AECA8DE46_160:;
	_i_1_2+0	= 0x40;			=>>I1	= rm[BP_SAVE];AX	= 0x40;rm[I1]	= AX
L7F5A46A0_39:;					=>>L7F5A46A0_39:;
_AECA8DE46_161:;				=>>_AECA8DE46_161:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_40;	=>>if NZ	jmp L7F5A46A0_40
	goto	L7F5A46A0_38;			=>>jmp	L7F5A46A0_38
L7F5A46A0_40:;					=>>L7F5A46A0_40:;
	
_AECA8DE46_162:;				=>>_AECA8DE46_162:;
	sAX	= 0x0000;			=>>AX	= 0x00
_AECA8DE46_163:;				=>>_AECA8DE46_163:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AECA8DE46_164:;				=>>_AECA8DE46_164:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
_AECA8DE46_165:;				=>>_AECA8DE46_165:;
	goto L7F5A46A0_39;			=>>jmp	L7F5A46A0_39
L7F5A46A0_38:;					=>>L7F5A46A0_38:;
L7F5A46A0_37:;					=>>L7F5A46A0_37:;
_AECA8DE46_166:;				=>>_AECA8DE46_166:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_35_end:;				=>>L7F5A46A0_35_end:;
_AECA8DE46_167:;				=>>_AECA8DE46_167:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)	=>>L7F5A46A0_41:
{
	__int16 _p_1_2;
	__int16 _i_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_AECA8DE46_168:;				=>>_AECA8DE46_168:;
	
_AECA8DE46_169:;				=>>_AECA8DE46_169:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sfx_CHECKZEROLONG();			=>>AR	= AX;AR	|= DX;
	if(__jnz__)	goto L7F5A46A0_45;	=>>if NZ	jmp L7F5A46A0_45
	goto	L7F5A46A0_44;			=>>jmp	L7F5A46A0_44
L7F5A46A0_45:;					=>>L7F5A46A0_45:;
	
_AECA8DE46_170:;				=>>_AECA8DE46_170:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_AECA8DE46_171:;				=>>_AECA8DE46_171:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_172:;				=>>_AECA8DE46_172:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AECA8DE46_173:;				=>>_AECA8DE46_173:;
_AECA8DE46_174:;				=>>_AECA8DE46_174:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AECA8DE46_175:;				=>>_AECA8DE46_175:;
_AECA8DE46_176:;				=>>_AECA8DE46_176:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AECA8DE46_177:;				=>>_AECA8DE46_177:;
_AECA8DE46_178:;				=>>_AECA8DE46_178:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AECA8DE46_179:;				=>>_AECA8DE46_179:;
_AECA8DE46_180:;				=>>_AECA8DE46_180:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
_AECA8DE46_181:;				=>>_AECA8DE46_181:;
_AECA8DE46_182:;				=>>_AECA8DE46_182:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3D]	= sAX;			=>>AR	= AX;io[0x3D]	= AR
_AECA8DE46_183:;				=>>_AECA8DE46_183:;
_AECA8DE46_184:;				=>>_AECA8DE46_184:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x3E]	= sAX;			=>>AR	= AX;io[0x3E]	= AR
_AECA8DE46_185:;				=>>_AECA8DE46_185:;
	sSI	= (int)&_vol_0_4;		=>>AR	= 2;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_AECA8DE46_186:;				=>>_AECA8DE46_186:;
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
_AECA8DE46_187:;				=>>_AECA8DE46_187:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_188:;				=>>_AECA8DE46_188:;
	_i_1_4+0	= 0x20;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR;AX	= 0x20;rm[I1]	= AX
L7F5A46A0_47:;					=>>L7F5A46A0_47:;
_AECA8DE46_189:;				=>>_AECA8DE46_189:;
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_48;	=>>if NZ	jmp L7F5A46A0_48
	goto	L7F5A46A0_46;			=>>jmp	L7F5A46A0_46
L7F5A46A0_48:;					=>>L7F5A46A0_48:;
	
_AECA8DE46_190:;				=>>_AECA8DE46_190:;
	sAX	= 0;				=>>AX	= 0x00
	asm test io[0x00].b14;			=>>test io[0x00].b14//
	if(__jz__) goto L7F5A46A0_49;		=>>if ZR	jmp L7F5A46A0_49
	sAX	= 1;				=>>AX	= 0x01
L7F5A46A0_49:;					=>>L7F5A46A0_49:;
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_51;	=>>if ZR	jmp L7F5A46A0_51
	goto	L7F5A46A0_50;			=>>jmp	L7F5A46A0_50
L7F5A46A0_51:;					=>>L7F5A46A0_51:;
	
_AECA8DE46_191:;				=>>_AECA8DE46_191:;
_AECA8DE46_192:;				=>>_AECA8DE46_192:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();=>>pch	= _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E;lcall	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_53;	=>>if ZR	jmp L7F5A46A0_53
	goto	L7F5A46A0_52;			=>>jmp	L7F5A46A0_52
L7F5A46A0_53:;					=>>L7F5A46A0_53:;
	
_AECA8DE46_193:;				=>>_AECA8DE46_193:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sDX	= 0x0000;			=>>DX	= 0x00
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_AECA8DE46_194:;				=>>_AECA8DE46_194:;
	goto L7F5A46A0_43;			=>>jmp	L7F5A46A0_43
L7F5A46A0_52:;					=>>L7F5A46A0_52:;
_AECA8DE46_195:;				=>>_AECA8DE46_195:;
_AECA8DE46_196:;				=>>_AECA8DE46_196:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x36]	= sAX;			=>>AR	= AX;io[0x36]	= AR
L7F5A46A0_50:;					=>>L7F5A46A0_50:;
_AECA8DE46_197:;				=>>_AECA8DE46_197:;
_AECA8DE46_198:;				=>>_AECA8DE46_198:;
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	sAX	= io[0x3C];			=>>AR	= io[0x3C];AX	= AR
	sfx_INT2LONG_AX();			=>>DX	= 0;test	AX.b15;if ZR jmp L7E288010_0;DX = -1;L7E288010_0:
	sCX	= POP();			=>>pop	CX
	sBX	= POP();			=>>pop	BX
	sfx_ADDLONG();				=>>AR	= CX;AX	= AX + AR;AR	= BX;DX	= DX + AR + C;
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
	sSI	= (int)&_p_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0002;			=>>AR = 0x0002//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm rm[I1] = AX + AR;			=>>rm[I1] = AX + AR//
_AECA8DE46_199:;				=>>_AECA8DE46_199:;
	goto L7F5A46A0_47;			=>>jmp	L7F5A46A0_47
L7F5A46A0_46:;					=>>L7F5A46A0_46:;
	
_AECA8DE46_200:;				=>>_AECA8DE46_200:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000C;			=>>CX	= 0x0C
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
_AECA8DE46_201:;				=>>_AECA8DE46_201:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_202:;				=>>_AECA8DE46_202:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AECA8DE46_203:;				=>>_AECA8DE46_203:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AECA8DE46_204:;				=>>_AECA8DE46_204:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AECA8DE46_205:;				=>>_AECA8DE46_205:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AECA8DE46_206:;				=>>_AECA8DE46_206:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AECA8DE46_207:;				=>>_AECA8DE46_207:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AECA8DE46_208:;				=>>_AECA8DE46_208:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AECA8DE46_209:;				=>>_AECA8DE46_209:;
	sAX	= io[0x36];			=>>AR	= io[0x36];AX	= AR
_AECA8DE46_210:;				=>>_AECA8DE46_210:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_AECA8DE46_211:;				=>>_AECA8DE46_211:;
	sAX	= io[0x3D];			=>>AR	= io[0x3D];AX	= AR
_AECA8DE46_212:;				=>>_AECA8DE46_212:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
L7F5A46A0_44:;					=>>L7F5A46A0_44:;
_AECA8DE46_213:;				=>>_AECA8DE46_213:;
L7F5A46A0_43:;					=>>L7F5A46A0_43:;
_AECA8DE46_214:;				=>>_AECA8DE46_214:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_41_end:;				=>>L7F5A46A0_41_end:;
_AECA8DE46_215:;				=>>_AECA8DE46_215:;
}

rjmp void L7F5A46A0_54()			=>>L7F5A46A0_54:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_AECA8DE46_216:;				=>>_AECA8DE46_216:;
	
_AECA8DE46_217:;				=>>_AECA8DE46_217:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
_AECA8DE46_218:;				=>>_AECA8DE46_218:;
	asm	AR = AX				=>>AR = AX
_AECA8DE46_219:;				=>>_AECA8DE46_219:;
	asm	I0 = AR				=>>I0 = AR
	
	
_AECA8DE46_220:;				=>>_AECA8DE46_220:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_AECA8DE46_221:;				=>>_AECA8DE46_221:;
	_i_1_2+0	= 0x20;			=>>I1	= rm[BP_SAVE];AX	= 0x20;rm[I1]	= AX
L7F5A46A0_58:;					=>>L7F5A46A0_58:;
_AECA8DE46_222:;				=>>_AECA8DE46_222:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_59;	=>>if NZ	jmp L7F5A46A0_59
	goto	L7F5A46A0_57;			=>>jmp	L7F5A46A0_57
L7F5A46A0_59:;					=>>L7F5A46A0_59:;
	
_AECA8DE46_223:;				=>>_AECA8DE46_223:;
_AECA8DE46_224:;				=>>_AECA8DE46_224:;
	read_I0P();				=>>AX	= rm[I0++];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
_AECA8DE46_225:;				=>>_AECA8DE46_225:;
_AECA8DE46_226:;				=>>_AECA8DE46_226:;
	read_I0M();				=>>AX	= rm[I0--];
	io[0x33]	= sAX;			=>>AR	= AX;io[0x33]	= AR
	
_AECA8DE46_227:;				=>>_AECA8DE46_227:;
	sAX	= io[0x33];			=>>AR	= io[0x33];AX	= AR
_AECA8DE46_228:;				=>>_AECA8DE46_228:;
	asm	rm[I0++2] = AX			=>>rm[I0++2] = AX
_AECA8DE46_229:;				=>>_AECA8DE46_229:;
	goto L7F5A46A0_58;			=>>jmp	L7F5A46A0_58
L7F5A46A0_57:;					=>>L7F5A46A0_57:;
_AECA8DE46_230:;				=>>_AECA8DE46_230:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm not AR.b6;				=>>not AR.b6//
	asm rm[I1] = AR;			=>>rm[I1] = AR//
L7F5A46A0_56:;					=>>L7F5A46A0_56:;
_AECA8DE46_231:;				=>>_AECA8DE46_231:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_54_end:;				=>>L7F5A46A0_54_end:;
_AECA8DE46_232:;				=>>_AECA8DE46_232:;
}

rjmp void _DoADPCM9CD0E20D()			=>>_DoADPCM9CD0E20D:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_AECA8DE46_233:;				=>>_AECA8DE46_233:;
	
_AECA8DE46_234:;				=>>_AECA8DE46_234:;
	asm I1 = inbuf+0;			=>>I1 = inbuf+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	asm I1 = outbuf+0;			=>>I1 = outbuf+0//
	asm AR = rm[I1];			=>>AR = rm[I1]//
	asm AX = AX ^ AR;			=>>AX = AX ^ AR//
	asm AR = 0x0040;			=>>AR = 0x0040//
	asm AX = AX & AR;			=>>AX = AX & AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jz__)	goto L7F5A46A0_62;	=>>if ZR	jmp L7F5A46A0_62
	goto	L7F5A46A0_61;			=>>jmp	L7F5A46A0_61
L7F5A46A0_62:;					=>>L7F5A46A0_62:;
_AECA8DE46_235:;				=>>_AECA8DE46_235:;
	goto L7F5A46A0_60;			=>>jmp	L7F5A46A0_60
L7F5A46A0_61:;					=>>L7F5A46A0_61:;
_AECA8DE46_236:;				=>>_AECA8DE46_236:;
_AECA8DE46_237:;				=>>_AECA8DE46_237:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_AECA8DE46_238:;				=>>_AECA8DE46_238:;
_AECA8DE46_239:;				=>>_AECA8DE46_239:;
	L7F5A46A0_35();				=>>pch	= L7F5A46A0_35;lcall	L7F5A46A0_35
_AECA8DE46_240:;				=>>_AECA8DE46_240:;
	asm AX = _adpFLTG0FBE3CB5+0;		=>>AX = _adpFLTG0FBE3CB5+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_AECA8DE46_241:;				=>>_AECA8DE46_241:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_AECA8DE46_242:;				=>>_AECA8DE46_242:;
	_i_1_2+0	= 0x02;			=>>I1	= rm[BP_SAVE];AX	= 0x02;rm[I1]	= AX
L7F5A46A0_64:;					=>>L7F5A46A0_64:;
_AECA8DE46_243:;				=>>_AECA8DE46_243:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_65;	=>>if NZ	jmp L7F5A46A0_65
	goto	L7F5A46A0_63;			=>>jmp	L7F5A46A0_63
L7F5A46A0_65:;					=>>L7F5A46A0_65:;
	
_AECA8DE46_244:;				=>>_AECA8DE46_244:;
_AECA8DE46_245:;				=>>_AECA8DE46_245:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	PUSH(sAX);				=>>push	AX
	L7F5A46A0_41(STACK[sSP + 0]);		=>>pch	= L7F5A46A0_41;lcall	L7F5A46A0_41
	RESTORESP(1);				=>>pop	AR;
_AECA8DE46_246:;				=>>_AECA8DE46_246:;
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&ADPCM_Tmpi;		=>>I1	= ADPCM_Tmpi
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm AR = 0x0012;			=>>AR = 0x0012//
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_AECA8DE46_247:;				=>>_AECA8DE46_247:;
	asm set io[0x09].b0;			=>>set io[0x09].b0//
_AECA8DE46_248:;				=>>_AECA8DE46_248:;
	goto L7F5A46A0_64;			=>>jmp	L7F5A46A0_64
L7F5A46A0_63:;					=>>L7F5A46A0_63:;
_AECA8DE46_249:;				=>>_AECA8DE46_249:;
_AECA8DE46_250:;				=>>_AECA8DE46_250:;
	L7F5A46A0_54();				=>>pch	= L7F5A46A0_54;lcall	L7F5A46A0_54
_AECA8DE46_251:;				=>>_AECA8DE46_251:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
_AECA8DE46_252:;				=>>_AECA8DE46_252:;
	asm clr io[0x09].b0;			=>>clr io[0x09].b0//
L7F5A46A0_60:;					=>>L7F5A46A0_60:;
_AECA8DE46_253:;				=>>_AECA8DE46_253:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_DoADPCM9CD0E20D_end:;				=>>_DoADPCM9CD0E20D_end:;
_AECA8DE46_254:;				=>>_AECA8DE46_254:;
}








.code



.code







.data





.code




















