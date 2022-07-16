// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _iADPCCACC469;
__int16 _adpch30670376[36];
__int16 _adpFLTG0FBE3CB5[2];

// .bss ends _bss

// CODE segment

.code


rjmp void _playADPCMBACD5AFD(__int16 _index_0_4);
rjmp void ADPCM_CHX_Init();
rjmp void ADPCM_CHXGetBts();
rjmp void _DoADPCM9CD0E20D();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata

// .code segment _text
.code
rjmp void _playADPCMBACD5AFD(__int16 _index_0_4)
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	__int16 _q_1_6;
	////////////////////////////
_AECA8DE46_104:;
	////////////////////////////
_AECA8DE46_105:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AECA8DE46_106:;
	_i_1_2+0	= 0x00;
L7F5A46A0_26:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JL();
	if(__je__)	goto L7F5A46A0_30;
	goto	L7F5A46A0_28;
L7F5A46A0_30:;
	goto L7F5A46A0_27;
L7F5A46A0_29:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto L7F5A46A0_26;
L7F5A46A0_27:;
	////////////////////////////
_AECA8DE46_107:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sfx_CHECKZEROLONG();
	if(__jz__)	goto L7F5A46A0_32;
	goto	L7F5A46A0_31;
L7F5A46A0_32:;
	////////////////////////////
_AECA8DE46_108:;
_AECA8DE46_109:;
	sAX	= 0x0012;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sDX	= 0;
	PUSH(sDX);
	PUSH(sAX);
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	RESTORESP(4);
_AECA8DE46_110:;
	asm AX = #_adpdata32993E3B+0;
	PUSH(sAX);
	sSI	= (int)&_index_0_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0004;
	sfx_IMUL_AX_CX();
	sCX	= POP();
	sAX	= sAX + sCX;
	sSI	= (int)&_q_1_6;
	*(__int16*)sSI	= sAX;
_AECA8DE46_111:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI++;
	sDX	= *(__int16*)sDI--;
	sSI	= POP();
	sfx_STORSILONG();
_AECA8DE46_112:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0011;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AECA8DE46_113:;
	asm AX = _adpFLTG0FBE3CB5+0;
	PUSH(sAX);
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	// mark sAX = sAX << 1;
	sCX	= POP();
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_q_1_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sSI	= POP();
	*(__int16*)sSI	= sAX;
_AECA8DE46_114:;
	sAX	= 0x0001;
	goto L7F5A46A0_25;
L7F5A46A0_31:;
_AECA8DE46_115:;
_AECA8DE46_116:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_AECA8DE46_117:;
	goto L7F5A46A0_29;
L7F5A46A0_28:;
_AECA8DE46_118:;
	sAX	= 0x0000;
	goto L7F5A46A0_25;
L7F5A46A0_25:;
_AECA8DE46_119:;
	return;
_playADPCMBACD5AFD_end:;
_AECA8DE46_120:;
}

rjmp void ADPCM_CHX_Init()
{
_AECA8DE46_121:;
	////////////////////////////
_AECA8DE46_122:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_AECA8DE46_123:;
_AECA8DE46_124:;
	sAX	= 0x0024;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	asm AX = _adpch30670376+0;
	sDX	= 0;
	PUSH(sDX);
	PUSH(sAX);
	_memset5A9D755A(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2], STACK[sSP + 3]);
	RESTORESP(4);
L7F5A46A0_33:;
_AECA8DE46_125:;
	return;
ADPCM_CHX_Init_end:;
_AECA8DE46_126:;
}

rjmp void ADPCM_CHXGetBts()
{
_AECA8DE46_127:;
_AECA8DE46_128:;
	asm	push AX
_AECA8DE46_129:;
	asm	push BX
_AECA8DE46_130:;
	asm	push CX
_AECA8DE46_131:;
	asm	push DX
_AECA8DE46_132:;
	asm	push I1
_AECA8DE46_133:;
	asm	push P0
_AECA8DE46_134:;
	asm	AR = P0.hh
_AECA8DE46_135:;
	asm	push AR
	////////////////////////////
_AECA8DE46_136:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	PUSH(sAX);
	PUSH(sDX);
	sCX	= 0x0001;
	sBX	= 0x0000;
	sfx_ADDLONG();
	sfx_STORSILONG();
	sDX	= POP();
	sAX	= POP();
_AECA8DE46_137:;
	asm	AR = AX
_AECA8DE46_138:;
	asm	P0 = AR
_AECA8DE46_139:;
	asm	AR = DX
_AECA8DE46_140:;
	asm	P0.hh = AR
	////////////////////////////
_AECA8DE46_141:;
_AECA8DE46_142:;
	read_P0();
_AECA8DE46_143:;
	asm	pop AR
_AECA8DE46_144:;
	asm	P0.hh = AR
_AECA8DE46_145:;
	asm	pop P0
_AECA8DE46_146:;
	asm	pop I1
_AECA8DE46_147:;
	asm	pop DX
_AECA8DE46_148:;
	asm	pop CX
_AECA8DE46_149:;
	asm	pop BX
	////////////////////////////
_AECA8DE46_150:;
_AECA8DE46_151:;
	asintax();
_AECA8DE46_152:;
	asm	AR = AX
_AECA8DE46_153:;
	asm	pop AX
L7F5A46A0_34:;
_AECA8DE46_154:;
	return;
ADPCM_CHXGetBts_end:;
_AECA8DE46_155:;
}

rjmp void L7F5A46A0_35()
{
	__int16 _i_1_2;
	////////////////////////////
_AECA8DE46_156:;
	////////////////////////////
_AECA8DE46_157:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AECA8DE46_158:;
	asm	AR = AX
_AECA8DE46_159:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AECA8DE46_160:;
	_i_1_2+0	= 0x40;
L7F5A46A0_39:;
_AECA8DE46_161:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_40;
	goto	L7F5A46A0_38;
L7F5A46A0_40:;
	////////////////////////////
_AECA8DE46_162:;
	sAX	= 0x0000;
_AECA8DE46_163:;
	asm	rm[I0++] = AX
	////////////////////////////
_AECA8DE46_164:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_AECA8DE46_165:;
	goto L7F5A46A0_39;
L7F5A46A0_38:;
L7F5A46A0_37:;
_AECA8DE46_166:;
	return;
L7F5A46A0_35_end:;
_AECA8DE46_167:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)
{
	__int16 _p_1_2;
	__int16 _i_1_4;
	////////////////////////////
_AECA8DE46_168:;
	////////////////////////////
_AECA8DE46_169:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	sfx_CHECKZEROLONG();
	if(__jnz__)	goto L7F5A46A0_45;
	goto	L7F5A46A0_44;
L7F5A46A0_45:;
	////////////////////////////
_AECA8DE46_170:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AECA8DE46_171:;
	asm	AR = AX
_AECA8DE46_172:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AECA8DE46_173:;
_AECA8DE46_174:;
	read_I0P();
	io[0x36]	= sAX;
_AECA8DE46_175:;
_AECA8DE46_176:;
	read_I0P();
	io[0x36]	= sAX;
_AECA8DE46_177:;
_AECA8DE46_178:;
	read_I0P();
	io[0x36]	= sAX;
_AECA8DE46_179:;
_AECA8DE46_180:;
	read_I0P();
	io[0x36]	= sAX;
_AECA8DE46_181:;
_AECA8DE46_182:;
	read_I0P();
	io[0x3D]	= sAX;
_AECA8DE46_183:;
_AECA8DE46_184:;
	read_I0P();
	io[0x3E]	= sAX;
_AECA8DE46_185:;
	sSI	= (int)&_vol_0_4;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AECA8DE46_186:;
	sAX	= io[0x3C];
_AECA8DE46_187:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_2;
	*(__int16*)sSI	= sAX;
_AECA8DE46_188:;
	_i_1_4+0	= 0x20;
L7F5A46A0_47:;
_AECA8DE46_189:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_48;
	goto	L7F5A46A0_46;
L7F5A46A0_48:;
	////////////////////////////
_AECA8DE46_190:;
	sAX	= 0;
	asm test io[0x00].b14;
	if(__jz__) goto L7F5A46A0_49;
	sAX	= 1;
L7F5A46A0_49:;
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_51;
	goto	L7F5A46A0_50;
L7F5A46A0_51:;
	////////////////////////////
_AECA8DE46_191:;
_AECA8DE46_192:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_53;
	goto	L7F5A46A0_52;
L7F5A46A0_53:;
	////////////////////////////
_AECA8DE46_193:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_AECA8DE46_194:;
	goto L7F5A46A0_43;
L7F5A46A0_52:;
_AECA8DE46_195:;
_AECA8DE46_196:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	io[0x36]	= sAX;
L7F5A46A0_50:;
_AECA8DE46_197:;
_AECA8DE46_198:;
	sSI	= (int)&_p_1_2;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	sSI	= (int)&_p_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	PUSH(sDX);
	PUSH(sAX);
	sAX	= io[0x3C];
	sfx_INT2LONG_AX();
	sCX	= POP();
	sBX	= POP();
	sfx_ADDLONG();
	sSI	= POP();
	sfx_STORSILONG();
	sSI	= (int)&_p_1_2;
	asm AR = 0x0002;
	sAX	= *(__int16*)sSI;
	asm rm[I1] = AX + AR;
_AECA8DE46_199:;
	goto L7F5A46A0_47;
L7F5A46A0_46:;
	////////////////////////////
_AECA8DE46_200:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AECA8DE46_201:;
	asm	AR = AX
_AECA8DE46_202:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AECA8DE46_203:;
	sAX	= io[0x36];
_AECA8DE46_204:;
	asm	rm[I0++] = AX
	////////////////////////////
_AECA8DE46_205:;
	sAX	= io[0x36];
_AECA8DE46_206:;
	asm	rm[I0++] = AX
	////////////////////////////
_AECA8DE46_207:;
	sAX	= io[0x36];
_AECA8DE46_208:;
	asm	rm[I0++] = AX
	////////////////////////////
_AECA8DE46_209:;
	sAX	= io[0x36];
_AECA8DE46_210:;
	asm	rm[I0++] = AX
	////////////////////////////
_AECA8DE46_211:;
	sAX	= io[0x3D];
_AECA8DE46_212:;
	asm	rm[I0++] = AX
L7F5A46A0_44:;
_AECA8DE46_213:;
L7F5A46A0_43:;
_AECA8DE46_214:;
	return;
L7F5A46A0_41_end:;
_AECA8DE46_215:;
}

rjmp void L7F5A46A0_54()
{
	__int16 _i_1_2;
	////////////////////////////
_AECA8DE46_216:;
	////////////////////////////
_AECA8DE46_217:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AECA8DE46_218:;
	asm	AR = AX
_AECA8DE46_219:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AECA8DE46_220:;
	sAX	= io[0x33];
_AECA8DE46_221:;
	_i_1_2+0	= 0x20;
L7F5A46A0_58:;
_AECA8DE46_222:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_59;
	goto	L7F5A46A0_57;
L7F5A46A0_59:;
	////////////////////////////
_AECA8DE46_223:;
_AECA8DE46_224:;
	read_I0P();
	io[0x33]	= sAX;
_AECA8DE46_225:;
_AECA8DE46_226:;
	read_I0M();
	io[0x33]	= sAX;
	////////////////////////////
_AECA8DE46_227:;
	sAX	= io[0x33];
_AECA8DE46_228:;
	asm	rm[I0++2] = AX
_AECA8DE46_229:;
	goto L7F5A46A0_58;
L7F5A46A0_57:;
_AECA8DE46_230:;
	asm I1 = inbuf+0;
	asm AR = rm[I1];
	asm not AR.b6;
	asm rm[I1] = AR;
L7F5A46A0_56:;
_AECA8DE46_231:;
	return;
L7F5A46A0_54_end:;
_AECA8DE46_232:;
}

rjmp void _DoADPCM9CD0E20D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_AECA8DE46_233:;
	////////////////////////////
_AECA8DE46_234:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	asm I1 = outbuf+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	asm AR = 0x0040;
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_62;
	goto	L7F5A46A0_61;
L7F5A46A0_62:;
_AECA8DE46_235:;
	goto L7F5A46A0_60;
L7F5A46A0_61:;
_AECA8DE46_236:;
_AECA8DE46_237:;
	asm set io[0x09].b0;
_AECA8DE46_238:;
_AECA8DE46_239:;
	L7F5A46A0_35();
_AECA8DE46_240:;
	asm AX = _adpFLTG0FBE3CB5+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AECA8DE46_241:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_AECA8DE46_242:;
	_i_1_2+0	= 0x02;
L7F5A46A0_64:;
_AECA8DE46_243:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_65;
	goto	L7F5A46A0_63;
L7F5A46A0_65:;
	////////////////////////////
_AECA8DE46_244:;
_AECA8DE46_245:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	L7F5A46A0_41(STACK[sSP + 0]);
	RESTORESP(1);
_AECA8DE46_246:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
_AECA8DE46_247:;
	asm set io[0x09].b0;
_AECA8DE46_248:;
	goto L7F5A46A0_64;
L7F5A46A0_63:;
_AECA8DE46_249:;
_AECA8DE46_250:;
	L7F5A46A0_54();
_AECA8DE46_251:;
	asm clr io[0x09].b0;
_AECA8DE46_252:;
	asm clr io[0x09].b0;
L7F5A46A0_60:;
_AECA8DE46_253:;
	return;
_DoADPCM9CD0E20D_end:;
_AECA8DE46_254:;
}

// .code ends _text


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// extern read_I0P:proc
// extern read_I0M:proc
// extern read_P0:proc
// extern _memset5A9D755A:proc
// extern ADPCM_Tmpi:word
// extern _SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E:proc
// extern asintax:proc
// extern inbuf:word
// extern outbuf:word
// extern PCMY:word
// public _DoADPCM9CD0E20D
// public _iADPCCACC469
// extern _adpdata32993E3B:proc
// public _adpch30670376
// public ADPCM_CHX_Init
// public _playADPCMBACD5AFD
// public _adpFLTG0FBE3CB5
// public ADPCM_CHXGetBts
