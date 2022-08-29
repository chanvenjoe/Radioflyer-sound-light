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
_A569F39CC_103:;
	////////////////////////////
_A569F39CC_104:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_A569F39CC_105:;
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
_A569F39CC_106:;
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
_A569F39CC_107:;
_A569F39CC_108:;
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
_A569F39CC_109:;
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
_A569F39CC_110:;
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
_A569F39CC_111:;
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
_A569F39CC_112:;
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
_A569F39CC_113:;
	sAX	= 0x0001;
	goto L7F5A46A0_25;
L7F5A46A0_31:;
_A569F39CC_114:;
_A569F39CC_115:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A569F39CC_116:;
	goto L7F5A46A0_29;
L7F5A46A0_28:;
_A569F39CC_117:;
	sAX	= 0x0000;
	goto L7F5A46A0_25;
L7F5A46A0_25:;
_A569F39CC_118:;
	return;
_playADPCMBACD5AFD_end:;
_A569F39CC_119:;
}

rjmp void ADPCM_CHX_Init()
{
_A569F39CC_120:;
	////////////////////////////
_A569F39CC_121:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A569F39CC_122:;
_A569F39CC_123:;
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
_A569F39CC_124:;
	return;
ADPCM_CHX_Init_end:;
_A569F39CC_125:;
}

rjmp void ADPCM_CHXGetBts()
{
_A569F39CC_126:;
_A569F39CC_127:;
	asm	push AX
_A569F39CC_128:;
	asm	push BX
_A569F39CC_129:;
	asm	push CX
_A569F39CC_130:;
	asm	push DX
_A569F39CC_131:;
	asm	push I1
_A569F39CC_132:;
	asm	push P0
_A569F39CC_133:;
	asm	AR = P0.hh
_A569F39CC_134:;
	asm	push AR
	////////////////////////////
_A569F39CC_135:;
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
_A569F39CC_136:;
	asm	AR = AX
_A569F39CC_137:;
	asm	P0 = AR
_A569F39CC_138:;
	asm	AR = DX
_A569F39CC_139:;
	asm	P0.hh = AR
	////////////////////////////
_A569F39CC_140:;
_A569F39CC_141:;
	read_P0();
_A569F39CC_142:;
	asm	pop AR
_A569F39CC_143:;
	asm	P0.hh = AR
_A569F39CC_144:;
	asm	pop P0
_A569F39CC_145:;
	asm	pop I1
_A569F39CC_146:;
	asm	pop DX
_A569F39CC_147:;
	asm	pop CX
_A569F39CC_148:;
	asm	pop BX
	////////////////////////////
_A569F39CC_149:;
_A569F39CC_150:;
	asintax();
_A569F39CC_151:;
	asm	AR = AX
_A569F39CC_152:;
	asm	pop AX
L7F5A46A0_34:;
_A569F39CC_153:;
	return;
ADPCM_CHXGetBts_end:;
_A569F39CC_154:;
}

rjmp void L7F5A46A0_35()
{
	__int16 _i_1_2;
	////////////////////////////
_A569F39CC_155:;
	////////////////////////////
_A569F39CC_156:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_A569F39CC_157:;
	asm	AR = AX
_A569F39CC_158:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A569F39CC_159:;
	_i_1_2+0	= 0x40;
L7F5A46A0_39:;
_A569F39CC_160:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_40;
	goto	L7F5A46A0_38;
L7F5A46A0_40:;
	////////////////////////////
_A569F39CC_161:;
	sAX	= 0x0000;
_A569F39CC_162:;
	asm	rm[I0++] = AX
	////////////////////////////
_A569F39CC_163:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_A569F39CC_164:;
	goto L7F5A46A0_39;
L7F5A46A0_38:;
L7F5A46A0_37:;
_A569F39CC_165:;
	return;
L7F5A46A0_35_end:;
_A569F39CC_166:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)
{
	__int16 _p_1_2;
	__int16 _i_1_4;
	////////////////////////////
_A569F39CC_167:;
	////////////////////////////
_A569F39CC_168:;
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
_A569F39CC_169:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_A569F39CC_170:;
	asm	AR = AX
_A569F39CC_171:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A569F39CC_172:;
_A569F39CC_173:;
	read_I0P();
	io[0x36]	= sAX;
_A569F39CC_174:;
_A569F39CC_175:;
	read_I0P();
	io[0x36]	= sAX;
_A569F39CC_176:;
_A569F39CC_177:;
	read_I0P();
	io[0x36]	= sAX;
_A569F39CC_178:;
_A569F39CC_179:;
	read_I0P();
	io[0x36]	= sAX;
_A569F39CC_180:;
_A569F39CC_181:;
	read_I0P();
	io[0x3D]	= sAX;
_A569F39CC_182:;
_A569F39CC_183:;
	read_I0P();
	io[0x3E]	= sAX;
_A569F39CC_184:;
	sSI	= (int)&_vol_0_4;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A569F39CC_185:;
	sAX	= io[0x3C];
_A569F39CC_186:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_2;
	*(__int16*)sSI	= sAX;
_A569F39CC_187:;
	_i_1_4+0	= 0x20;
L7F5A46A0_47:;
_A569F39CC_188:;
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
_A569F39CC_189:;
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
_A569F39CC_190:;
_A569F39CC_191:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_53;
	goto	L7F5A46A0_52;
L7F5A46A0_53:;
	////////////////////////////
_A569F39CC_192:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_A569F39CC_193:;
	goto L7F5A46A0_43;
L7F5A46A0_52:;
_A569F39CC_194:;
_A569F39CC_195:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	io[0x36]	= sAX;
L7F5A46A0_50:;
_A569F39CC_196:;
_A569F39CC_197:;
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
_A569F39CC_198:;
	goto L7F5A46A0_47;
L7F5A46A0_46:;
	////////////////////////////
_A569F39CC_199:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_A569F39CC_200:;
	asm	AR = AX
_A569F39CC_201:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A569F39CC_202:;
	sAX	= io[0x36];
_A569F39CC_203:;
	asm	rm[I0++] = AX
	////////////////////////////
_A569F39CC_204:;
	sAX	= io[0x36];
_A569F39CC_205:;
	asm	rm[I0++] = AX
	////////////////////////////
_A569F39CC_206:;
	sAX	= io[0x36];
_A569F39CC_207:;
	asm	rm[I0++] = AX
	////////////////////////////
_A569F39CC_208:;
	sAX	= io[0x36];
_A569F39CC_209:;
	asm	rm[I0++] = AX
	////////////////////////////
_A569F39CC_210:;
	sAX	= io[0x3D];
_A569F39CC_211:;
	asm	rm[I0++] = AX
L7F5A46A0_44:;
_A569F39CC_212:;
L7F5A46A0_43:;
_A569F39CC_213:;
	return;
L7F5A46A0_41_end:;
_A569F39CC_214:;
}

rjmp void L7F5A46A0_54()
{
	__int16 _i_1_2;
	////////////////////////////
_A569F39CC_215:;
	////////////////////////////
_A569F39CC_216:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_A569F39CC_217:;
	asm	AR = AX
_A569F39CC_218:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A569F39CC_219:;
	sAX	= io[0x33];
_A569F39CC_220:;
	_i_1_2+0	= 0x20;
L7F5A46A0_58:;
_A569F39CC_221:;
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
_A569F39CC_222:;
_A569F39CC_223:;
	read_I0P();
	io[0x33]	= sAX;
_A569F39CC_224:;
_A569F39CC_225:;
	read_I0M();
	io[0x33]	= sAX;
	////////////////////////////
_A569F39CC_226:;
	sAX	= io[0x33];
_A569F39CC_227:;
	asm	rm[I0++2] = AX
_A569F39CC_228:;
	goto L7F5A46A0_58;
L7F5A46A0_57:;
_A569F39CC_229:;
	asm I1 = inbuf+0;
	asm AR = rm[I1];
	asm not AR.b6;
	asm rm[I1] = AR;
L7F5A46A0_56:;
_A569F39CC_230:;
	return;
L7F5A46A0_54_end:;
_A569F39CC_231:;
}

rjmp void _DoADPCM9CD0E20D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_A569F39CC_232:;
	////////////////////////////
_A569F39CC_233:;
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
_A569F39CC_234:;
	goto L7F5A46A0_60;
L7F5A46A0_61:;
_A569F39CC_235:;
_A569F39CC_236:;
	asm set io[0x09].b0;
_A569F39CC_237:;
_A569F39CC_238:;
	L7F5A46A0_35();
_A569F39CC_239:;
	asm AX = _adpFLTG0FBE3CB5+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_A569F39CC_240:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_A569F39CC_241:;
	_i_1_2+0	= 0x02;
L7F5A46A0_64:;
_A569F39CC_242:;
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
_A569F39CC_243:;
_A569F39CC_244:;
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
_A569F39CC_245:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
_A569F39CC_246:;
	asm set io[0x09].b0;
_A569F39CC_247:;
	goto L7F5A46A0_64;
L7F5A46A0_63:;
_A569F39CC_248:;
_A569F39CC_249:;
	L7F5A46A0_54();
_A569F39CC_250:;
	asm clr io[0x09].b0;
_A569F39CC_251:;
	asm clr io[0x09].b0;
L7F5A46A0_60:;
_A569F39CC_252:;
	return;
_DoADPCM9CD0E20D_end:;
_A569F39CC_253:;
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
