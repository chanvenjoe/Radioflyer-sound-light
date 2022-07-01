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
_AE3845712_104:;
	////////////////////////////
_AE3845712_105:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AE3845712_106:;
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
_AE3845712_107:;
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
_AE3845712_108:;
_AE3845712_109:;
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
_AE3845712_110:;
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
_AE3845712_111:;
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
_AE3845712_112:;
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
_AE3845712_113:;
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
_AE3845712_114:;
	sAX	= 0x0001;
	goto L7F5A46A0_25;
L7F5A46A0_31:;
_AE3845712_115:;
_AE3845712_116:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_AE3845712_117:;
	goto L7F5A46A0_29;
L7F5A46A0_28:;
_AE3845712_118:;
	sAX	= 0x0000;
	goto L7F5A46A0_25;
L7F5A46A0_25:;
_AE3845712_119:;
	return;
_playADPCMBACD5AFD_end:;
_AE3845712_120:;
}

rjmp void ADPCM_CHX_Init()
{
_AE3845712_121:;
	////////////////////////////
_AE3845712_122:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_AE3845712_123:;
_AE3845712_124:;
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
_AE3845712_125:;
	return;
ADPCM_CHX_Init_end:;
_AE3845712_126:;
}

rjmp void ADPCM_CHXGetBts()
{
_AE3845712_127:;
_AE3845712_128:;
	asm	push AX
_AE3845712_129:;
	asm	push BX
_AE3845712_130:;
	asm	push CX
_AE3845712_131:;
	asm	push DX
_AE3845712_132:;
	asm	push I1
_AE3845712_133:;
	asm	push P0
_AE3845712_134:;
	asm	AR = P0.hh
_AE3845712_135:;
	asm	push AR
	////////////////////////////
_AE3845712_136:;
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
_AE3845712_137:;
	asm	AR = AX
_AE3845712_138:;
	asm	P0 = AR
_AE3845712_139:;
	asm	AR = DX
_AE3845712_140:;
	asm	P0.hh = AR
	////////////////////////////
_AE3845712_141:;
_AE3845712_142:;
	read_P0();
_AE3845712_143:;
	asm	pop AR
_AE3845712_144:;
	asm	P0.hh = AR
_AE3845712_145:;
	asm	pop P0
_AE3845712_146:;
	asm	pop I1
_AE3845712_147:;
	asm	pop DX
_AE3845712_148:;
	asm	pop CX
_AE3845712_149:;
	asm	pop BX
	////////////////////////////
_AE3845712_150:;
_AE3845712_151:;
	asintax();
_AE3845712_152:;
	asm	AR = AX
_AE3845712_153:;
	asm	pop AX
L7F5A46A0_34:;
_AE3845712_154:;
	return;
ADPCM_CHXGetBts_end:;
_AE3845712_155:;
}

rjmp void L7F5A46A0_35()
{
	__int16 _i_1_2;
	////////////////////////////
_AE3845712_156:;
	////////////////////////////
_AE3845712_157:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AE3845712_158:;
	asm	AR = AX
_AE3845712_159:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AE3845712_160:;
	_i_1_2+0	= 0x40;
L7F5A46A0_39:;
_AE3845712_161:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_40;
	goto	L7F5A46A0_38;
L7F5A46A0_40:;
	////////////////////////////
_AE3845712_162:;
	sAX	= 0x0000;
_AE3845712_163:;
	asm	rm[I0++] = AX
	////////////////////////////
_AE3845712_164:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_AE3845712_165:;
	goto L7F5A46A0_39;
L7F5A46A0_38:;
L7F5A46A0_37:;
_AE3845712_166:;
	return;
L7F5A46A0_35_end:;
_AE3845712_167:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)
{
	__int16 _p_1_2;
	__int16 _i_1_4;
	////////////////////////////
_AE3845712_168:;
	////////////////////////////
_AE3845712_169:;
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
_AE3845712_170:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AE3845712_171:;
	asm	AR = AX
_AE3845712_172:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AE3845712_173:;
_AE3845712_174:;
	read_I0P();
	io[0x36]	= sAX;
_AE3845712_175:;
_AE3845712_176:;
	read_I0P();
	io[0x36]	= sAX;
_AE3845712_177:;
_AE3845712_178:;
	read_I0P();
	io[0x36]	= sAX;
_AE3845712_179:;
_AE3845712_180:;
	read_I0P();
	io[0x36]	= sAX;
_AE3845712_181:;
_AE3845712_182:;
	read_I0P();
	io[0x3D]	= sAX;
_AE3845712_183:;
_AE3845712_184:;
	read_I0P();
	io[0x3E]	= sAX;
_AE3845712_185:;
	sSI	= (int)&_vol_0_4;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AE3845712_186:;
	sAX	= io[0x3C];
_AE3845712_187:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_2;
	*(__int16*)sSI	= sAX;
_AE3845712_188:;
	_i_1_4+0	= 0x20;
L7F5A46A0_47:;
_AE3845712_189:;
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
_AE3845712_190:;
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
_AE3845712_191:;
_AE3845712_192:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_53;
	goto	L7F5A46A0_52;
L7F5A46A0_53:;
	////////////////////////////
_AE3845712_193:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_AE3845712_194:;
	goto L7F5A46A0_43;
L7F5A46A0_52:;
_AE3845712_195:;
_AE3845712_196:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	io[0x36]	= sAX;
L7F5A46A0_50:;
_AE3845712_197:;
_AE3845712_198:;
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
_AE3845712_199:;
	goto L7F5A46A0_47;
L7F5A46A0_46:;
	////////////////////////////
_AE3845712_200:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AE3845712_201:;
	asm	AR = AX
_AE3845712_202:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AE3845712_203:;
	sAX	= io[0x36];
_AE3845712_204:;
	asm	rm[I0++] = AX
	////////////////////////////
_AE3845712_205:;
	sAX	= io[0x36];
_AE3845712_206:;
	asm	rm[I0++] = AX
	////////////////////////////
_AE3845712_207:;
	sAX	= io[0x36];
_AE3845712_208:;
	asm	rm[I0++] = AX
	////////////////////////////
_AE3845712_209:;
	sAX	= io[0x36];
_AE3845712_210:;
	asm	rm[I0++] = AX
	////////////////////////////
_AE3845712_211:;
	sAX	= io[0x3D];
_AE3845712_212:;
	asm	rm[I0++] = AX
L7F5A46A0_44:;
_AE3845712_213:;
L7F5A46A0_43:;
_AE3845712_214:;
	return;
L7F5A46A0_41_end:;
_AE3845712_215:;
}

rjmp void L7F5A46A0_54()
{
	__int16 _i_1_2;
	////////////////////////////
_AE3845712_216:;
	////////////////////////////
_AE3845712_217:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AE3845712_218:;
	asm	AR = AX
_AE3845712_219:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AE3845712_220:;
	sAX	= io[0x33];
_AE3845712_221:;
	_i_1_2+0	= 0x20;
L7F5A46A0_58:;
_AE3845712_222:;
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
_AE3845712_223:;
_AE3845712_224:;
	read_I0P();
	io[0x33]	= sAX;
_AE3845712_225:;
_AE3845712_226:;
	read_I0M();
	io[0x33]	= sAX;
	////////////////////////////
_AE3845712_227:;
	sAX	= io[0x33];
_AE3845712_228:;
	asm	rm[I0++2] = AX
_AE3845712_229:;
	goto L7F5A46A0_58;
L7F5A46A0_57:;
_AE3845712_230:;
	asm I1 = inbuf+0;
	asm AR = rm[I1];
	asm not AR.b6;
	asm rm[I1] = AR;
L7F5A46A0_56:;
_AE3845712_231:;
	return;
L7F5A46A0_54_end:;
_AE3845712_232:;
}

rjmp void _DoADPCM9CD0E20D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_AE3845712_233:;
	////////////////////////////
_AE3845712_234:;
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
_AE3845712_235:;
	goto L7F5A46A0_60;
L7F5A46A0_61:;
_AE3845712_236:;
_AE3845712_237:;
	asm set io[0x09].b0;
_AE3845712_238:;
_AE3845712_239:;
	L7F5A46A0_35();
_AE3845712_240:;
	asm AX = _adpFLTG0FBE3CB5+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AE3845712_241:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_AE3845712_242:;
	_i_1_2+0	= 0x02;
L7F5A46A0_64:;
_AE3845712_243:;
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
_AE3845712_244:;
_AE3845712_245:;
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
_AE3845712_246:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
_AE3845712_247:;
	goto L7F5A46A0_64;
L7F5A46A0_63:;
_AE3845712_248:;
_AE3845712_249:;
	L7F5A46A0_54();
_AE3845712_250:;
	asm clr io[0x09].b0;
L7F5A46A0_60:;
_AE3845712_251:;
	return;
_DoADPCM9CD0E20D_end:;
_AE3845712_252:;
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
