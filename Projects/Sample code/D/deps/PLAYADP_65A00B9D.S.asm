
#include "crt0.h"













__int16 _iADPCCACC469;
__int16 _adpch30670376[18];
__int16 _adpFLTG0FBE3CB5;
__int16 ADPCMY[8];



// CODE segment					=>>VarRM[0:4095]={
 _iADPCCACC469,_adpch30670376[18],_adpFLTG0FBE3CB5,ADPCMY[8] 
};

.code


rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
rjmp void ADPCM_CHX_Init();
rjmp void DoADPCM();
rjmp void _StopAllADPCM9255018D();




.code



.data



.code
rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)=>>_playADPCMBACD5AFD:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	__int16 _q_1_6;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -3;BP	+= AR
_A0432E234_102:;				=>>_A0432E234_102:;
	
_A0432E234_103:;				=>>_A0432E234_103:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
_A0432E234_104:;				=>>_A0432E234_104:;
	_i_1_2+0	= 0x00;			=>>I1	= rm[BP_SAVE];AX	= 0x00;rm[I1]	= AX
L7F5A46A0_33:;					=>>L7F5A46A0_33:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x0001;			=>>CX	= 0x01
	sfx_CMP_AX_CX_JL();			=>>pch	= sfx_CMP_AX_CX_JL;lcall	sfx_CMP_AX_CX_JL
	if(__je__)	goto L7F5A46A0_37;	=>>if ZR	jmp L7F5A46A0_37
	goto	L7F5A46A0_35;			=>>jmp	L7F5A46A0_35
L7F5A46A0_37:;					=>>L7F5A46A0_37:;
	goto L7F5A46A0_34;			=>>jmp	L7F5A46A0_34
L7F5A46A0_36:;					=>>L7F5A46A0_36:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
	goto L7F5A46A0_33;			=>>jmp	L7F5A46A0_33
L7F5A46A0_34:;					=>>L7F5A46A0_34:;
	
_A0432E234_105:;				=>>_A0432E234_105:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	sSI	= sAX;				=>>AR	= AX;I1	= AR
	sAX	= *(__int16*)sSI++;		=>>AX	= rm[I1++]
	sDX	= *(__int16*)sSI--;		=>>DX	= rm[I1--]
	sfx_CHECKZEROLONG();			=>>AR	= AX;AR	|= DX;
	if(__jz__)	goto L7F5A46A0_39;	=>>if ZR	jmp L7F5A46A0_39
	goto	L7F5A46A0_38;			=>>jmp	L7F5A46A0_38
L7F5A46A0_39:;					=>>L7F5A46A0_39:;
	
_A0432E234_106:;				=>>_A0432E234_106:;
_A0432E234_107:;				=>>_A0432E234_107:;
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
_A0432E234_108:;				=>>_A0432E234_108:;
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
_A0432E234_109:;				=>>_A0432E234_109:;
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
_A0432E234_110:;				=>>_A0432E234_110:;
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
_A0432E234_111:;				=>>_A0432E234_111:;
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
_A0432E234_112:;				=>>_A0432E234_112:;
	sAX	= 0x0001;			=>>AX	= 0x01
	goto L7F5A46A0_32;			=>>jmp	L7F5A46A0_32
L7F5A46A0_38:;					=>>L7F5A46A0_38:;
_A0432E234_113:;				=>>_A0432E234_113:;
_A0432E234_114:;				=>>_A0432E234_114:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0012;			=>>AR = 0x0012//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_A0432E234_115:;				=>>_A0432E234_115:;
	goto L7F5A46A0_36;			=>>jmp	L7F5A46A0_36
L7F5A46A0_35:;					=>>L7F5A46A0_35:;
_A0432E234_116:;				=>>_A0432E234_116:;
	sAX	= 0x0000;			=>>AX	= 0x00
	goto L7F5A46A0_32;			=>>jmp	L7F5A46A0_32
L7F5A46A0_32:;					=>>L7F5A46A0_32:;
_A0432E234_117:;				=>>_A0432E234_117:;
	return;					=>>AR	= 3;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_playADPCMBACD5AFD_end:;			=>>_playADPCMBACD5AFD_end:;
_A0432E234_118:;				=>>_A0432E234_118:;
}

rjmp void ADPCM_CHX_Init()			=>>ADPCM_CHX_Init:
{
_A0432E234_119:;				=>>_A0432E234_119:;
	
_A0432E234_120:;				=>>_A0432E234_120:;
	sAX	= 0x0000;			=>>AX	= 0x00
	asm I1 = _iADPCCACC469+0;		=>>I1 = _iADPCCACC469+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_121:;				=>>_A0432E234_121:;
_A0432E234_122:;				=>>_A0432E234_122:;
	sAX	= 0x0012;			=>>AX	= 0x12
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	PUSH(sAX);				=>>push	AX
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sDX	= 0;				=>>DX	= 0x00
	PUSH(sDX);				=>>push	DX
	PUSH(sAX);				=>>push	AX
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);=>>pch	= _memset5A9D755A;lcall	_memset5A9D755A
	RESTORESP(4);				=>>AR	= 4;BP	+= AR;
L7F5A46A0_40:;					=>>L7F5A46A0_40:;
_A0432E234_123:;				=>>_A0432E234_123:;
	return;					=>>rets
ADPCM_CHX_Init_end:;				=>>ADPCM_CHX_Init_end:;
_A0432E234_124:;				=>>_A0432E234_124:;
}

rjmp void L7F5A46A0_41()			=>>L7F5A46A0_41:
{
	__int16 _i_1_2;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -1;BP	+= AR
_A0432E234_125:;				=>>_A0432E234_125:;
	
_A0432E234_126:;				=>>_A0432E234_126:;
	asm AX = ADPCMY+0;			=>>AX = ADPCMY+0//
_A0432E234_127:;				=>>_A0432E234_127:;
	asm	AR = AX				=>>AR = AX
_A0432E234_128:;				=>>_A0432E234_128:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A0432E234_129:;				=>>_A0432E234_129:;
	_i_1_2+0	= 0x08;			=>>I1	= rm[BP_SAVE];AX	= 0x08;rm[I1]	= AX
L7F5A46A0_45:;					=>>L7F5A46A0_45:;
_A0432E234_130:;				=>>_A0432E234_130:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_46;	=>>if NZ	jmp L7F5A46A0_46
	goto	L7F5A46A0_44;			=>>jmp	L7F5A46A0_44
L7F5A46A0_46:;					=>>L7F5A46A0_46:;
	
_A0432E234_131:;				=>>_A0432E234_131:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_132:;				=>>_A0432E234_132:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_133:;				=>>_A0432E234_133:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
_A0432E234_134:;				=>>_A0432E234_134:;
	goto L7F5A46A0_45;			=>>jmp	L7F5A46A0_45
L7F5A46A0_44:;					=>>L7F5A46A0_44:;
L7F5A46A0_43:;					=>>L7F5A46A0_43:;
_A0432E234_135:;				=>>_A0432E234_135:;
	return;					=>>AR	= 1;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
L7F5A46A0_41_end:;				=>>L7F5A46A0_41_end:;
_A0432E234_136:;				=>>_A0432E234_136:;
}

rjmp void DoADPCM()				=>>DoADPCM:
{
_A0432E234_137:;				=>>_A0432E234_137:;
	
_A0432E234_138:;				=>>_A0432E234_138:;
	asm AX = ADPCMY+0;			=>>AX = ADPCMY+0//
_A0432E234_139:;				=>>_A0432E234_139:;
	asm	AR = AX				=>>AR = AX
_A0432E234_140:;				=>>_A0432E234_140:;
	asm	I0 = AR				=>>I0 = AR
	
	
_A0432E234_141:;				=>>_A0432E234_141:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_142:;				=>>_A0432E234_142:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_143:;				=>>_A0432E234_143:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_144:;				=>>_A0432E234_144:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_145:;				=>>_A0432E234_145:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_146:;				=>>_A0432E234_146:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_147:;				=>>_A0432E234_147:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_148:;				=>>_A0432E234_148:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_149:;				=>>_A0432E234_149:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_150:;				=>>_A0432E234_150:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_151:;				=>>_A0432E234_151:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_152:;				=>>_A0432E234_152:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_153:;				=>>_A0432E234_153:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_154:;				=>>_A0432E234_154:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_155:;				=>>_A0432E234_155:;
	sAX	= 0x0000;			=>>AX	= 0x00
_A0432E234_156:;				=>>_A0432E234_156:;
	asm	rm[I0++] = AX			=>>rm[I0++] = AX
	
_A0432E234_157:;				=>>_A0432E234_157:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	asm I1 = ADPCM_Tmpi+0;			=>>I1 = ADPCM_Tmpi+0//
	*(__int16*)sSI	= sAX			=>>rm[I1]	= AX
_A0432E234_158:;				=>>_A0432E234_158:;
	asm I1 = _adpFLTG0FBE3CB5+0;		=>>I1 = _adpFLTG0FBE3CB5+0//
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	io[0x3C]	= sAX;			=>>AR	= AX;io[0x3C]	= AR
_A0432E234_159:;				=>>_A0432E234_159:;
_A0432E234_160:;				=>>_A0432E234_160:;
	DecodeChannel();			=>>pch	= DecodeChannel;lcall	DecodeChannel
L7F5A46A0_47:;					=>>L7F5A46A0_47:;
_A0432E234_161:;				=>>_A0432E234_161:;
	return;					=>>rets
DoADPCM_end:;					=>>DoADPCM_end:;
_A0432E234_162:;				=>>_A0432E234_162:;
}

rjmp void _StopAllADPCM9255018D()		=>>_StopAllADPCM9255018D:
{
	__int16 _i_1_2;
	__int16 _p_1_4;
						=>>AR	= rm[BP_SAVE];push	AR;AR	= BP;rm[BP_SAVE]	= AR;AR	 = -2;BP	+= AR
_A0432E234_163:;				=>>_A0432E234_163:;
	
_A0432E234_164:;				=>>_A0432E234_164:;
	_i_1_2+0	= 0x01;			=>>I1	= rm[BP_SAVE];AX	= 0x01;rm[I1]	= AX
_A0432E234_165:;				=>>_A0432E234_165:;
	asm AX = _adpch30670376+0;		=>>AX = _adpch30670376+0//
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	*(__int16*)sSI	= sAX;			=>>rm[I1]	= AX
L7F5A46A0_50:;					=>>L7F5A46A0_50:;
_A0432E234_166:;				=>>_A0432E234_166:;
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_i_1_2;			=>>I1	= rm[BP_SAVE]
	asm AR = 0x0001;			=>>AR = 0x0001//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX - AR;			=>>rm[I1] = CX - AR//
	sfx_CHECKZERO();			=>>AR	= AX;
	if(__jnz__)	goto L7F5A46A0_51;	=>>if NZ	jmp L7F5A46A0_51
	goto	L7F5A46A0_49;			=>>jmp	L7F5A46A0_49
L7F5A46A0_51:;					=>>L7F5A46A0_51:;
	
_A0432E234_167:;				=>>_A0432E234_167:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sCX	= 0x000A;			=>>CX	= 0x0A
	sAX	= sAX + sCX;			=>>AR	= CX;AX	+= AR
	PUSH(sAX);				=>>push	AX
	sAX	= 0x0000;			=>>AX	= 0x00
	sDX	= 0x0000;			=>>DX	= 0x00
	sSI	= POP();			=>>pop	I1
	sfx_STORSILONG();			=>>rm[I1++]	= AX;rm[I1--]	= DX;
_A0432E234_168:;				=>>_A0432E234_168:;
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	sAX	= *(__int16*)sSI;		=>>AX	= rm[I1]
	sSI	= (int)&_p_1_4;			=>>AR	= -1;I1	= rm[BP_SAVE];I1	+= AR
	asm AR = 0x0012;			=>>AR = 0x0012//
	sCX	= *(__int16*)sSI;		=>>CX	= rm[I1]
	asm rm[I1] = CX + AR;			=>>rm[I1] = CX + AR//
_A0432E234_169:;				=>>_A0432E234_169:;
	goto L7F5A46A0_50;			=>>jmp	L7F5A46A0_50
L7F5A46A0_49:;					=>>L7F5A46A0_49:;
L7F5A46A0_48:;					=>>L7F5A46A0_48:;
_A0432E234_170:;				=>>_A0432E234_170:;
	return;					=>>AR	= 2;BP	+= AR;pop	AR;rm[BP_SAVE]	= AR;rets
_StopAllADPCM9255018D_end:;			=>>_StopAllADPCM9255018D_end:;
_A0432E234_171:;				=>>_A0432E234_171:;
}








.code



.code







.data





.code














