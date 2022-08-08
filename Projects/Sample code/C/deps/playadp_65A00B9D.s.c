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
_A1748455A_103:;
	////////////////////////////
_A1748455A_104:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_A1748455A_105:;
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
_A1748455A_106:;
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
_A1748455A_107:;
_A1748455A_108:;
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
_A1748455A_109:;
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
_A1748455A_110:;
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
_A1748455A_111:;
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
_A1748455A_112:;
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
_A1748455A_113:;
	sAX	= 0x0001;
	goto L7F5A46A0_25;
L7F5A46A0_31:;
_A1748455A_114:;
_A1748455A_115:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A1748455A_116:;
	goto L7F5A46A0_29;
L7F5A46A0_28:;
_A1748455A_117:;
	sAX	= 0x0000;
	goto L7F5A46A0_25;
L7F5A46A0_25:;
_A1748455A_118:;
	return;
_playADPCMBACD5AFD_end:;
_A1748455A_119:;
}

rjmp void ADPCM_CHX_Init()
{
_A1748455A_120:;
	////////////////////////////
_A1748455A_121:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_A1748455A_122:;
_A1748455A_123:;
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
_A1748455A_124:;
	return;
ADPCM_CHX_Init_end:;
_A1748455A_125:;
}

rjmp void ADPCM_CHXGetBts()
{
_A1748455A_126:;
_A1748455A_127:;
	asm	push AX
_A1748455A_128:;
	asm	push BX
_A1748455A_129:;
	asm	push CX
_A1748455A_130:;
	asm	push DX
_A1748455A_131:;
	asm	push I1
_A1748455A_132:;
	asm	push P0
_A1748455A_133:;
	asm	AR = P0.hh
_A1748455A_134:;
	asm	push AR
	////////////////////////////
_A1748455A_135:;
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
_A1748455A_136:;
	asm	AR = AX
_A1748455A_137:;
	asm	P0 = AR
_A1748455A_138:;
	asm	AR = DX
_A1748455A_139:;
	asm	P0.hh = AR
	////////////////////////////
_A1748455A_140:;
_A1748455A_141:;
	read_P0();
_A1748455A_142:;
	asm	pop AR
_A1748455A_143:;
	asm	P0.hh = AR
_A1748455A_144:;
	asm	pop P0
_A1748455A_145:;
	asm	pop I1
_A1748455A_146:;
	asm	pop DX
_A1748455A_147:;
	asm	pop CX
_A1748455A_148:;
	asm	pop BX
	////////////////////////////
_A1748455A_149:;
_A1748455A_150:;
	asintax();
_A1748455A_151:;
	asm	AR = AX
_A1748455A_152:;
	asm	pop AX
L7F5A46A0_34:;
_A1748455A_153:;
	return;
ADPCM_CHXGetBts_end:;
_A1748455A_154:;
}

rjmp void L7F5A46A0_35()
{
	__int16 _i_1_2;
	////////////////////////////
_A1748455A_155:;
	////////////////////////////
_A1748455A_156:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_A1748455A_157:;
	asm	AR = AX
_A1748455A_158:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A1748455A_159:;
	_i_1_2+0	= 0x40;
L7F5A46A0_39:;
_A1748455A_160:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_40;
	goto	L7F5A46A0_38;
L7F5A46A0_40:;
	////////////////////////////
_A1748455A_161:;
	sAX	= 0x0000;
_A1748455A_162:;
	asm	rm[I0++] = AX
	////////////////////////////
_A1748455A_163:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_A1748455A_164:;
	goto L7F5A46A0_39;
L7F5A46A0_38:;
L7F5A46A0_37:;
_A1748455A_165:;
	return;
L7F5A46A0_35_end:;
_A1748455A_166:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)
{
	__int16 _p_1_2;
	__int16 _i_1_4;
	////////////////////////////
_A1748455A_167:;
	////////////////////////////
_A1748455A_168:;
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
_A1748455A_169:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_A1748455A_170:;
	asm	AR = AX
_A1748455A_171:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A1748455A_172:;
_A1748455A_173:;
	read_I0P();
	io[0x36]	= sAX;
_A1748455A_174:;
_A1748455A_175:;
	read_I0P();
	io[0x36]	= sAX;
_A1748455A_176:;
_A1748455A_177:;
	read_I0P();
	io[0x36]	= sAX;
_A1748455A_178:;
_A1748455A_179:;
	read_I0P();
	io[0x36]	= sAX;
_A1748455A_180:;
_A1748455A_181:;
	read_I0P();
	io[0x3D]	= sAX;
_A1748455A_182:;
_A1748455A_183:;
	read_I0P();
	io[0x3E]	= sAX;
_A1748455A_184:;
	sSI	= (int)&_vol_0_4;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_A1748455A_185:;
	sAX	= io[0x3C];
_A1748455A_186:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_2;
	*(__int16*)sSI	= sAX;
_A1748455A_187:;
	_i_1_4+0	= 0x20;
L7F5A46A0_47:;
_A1748455A_188:;
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
_A1748455A_189:;
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
_A1748455A_190:;
_A1748455A_191:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_53;
	goto	L7F5A46A0_52;
L7F5A46A0_53:;
	////////////////////////////
_A1748455A_192:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_A1748455A_193:;
	goto L7F5A46A0_43;
L7F5A46A0_52:;
_A1748455A_194:;
_A1748455A_195:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	io[0x36]	= sAX;
L7F5A46A0_50:;
_A1748455A_196:;
_A1748455A_197:;
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
_A1748455A_198:;
	goto L7F5A46A0_47;
L7F5A46A0_46:;
	////////////////////////////
_A1748455A_199:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_A1748455A_200:;
	asm	AR = AX
_A1748455A_201:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A1748455A_202:;
	sAX	= io[0x36];
_A1748455A_203:;
	asm	rm[I0++] = AX
	////////////////////////////
_A1748455A_204:;
	sAX	= io[0x36];
_A1748455A_205:;
	asm	rm[I0++] = AX
	////////////////////////////
_A1748455A_206:;
	sAX	= io[0x36];
_A1748455A_207:;
	asm	rm[I0++] = AX
	////////////////////////////
_A1748455A_208:;
	sAX	= io[0x36];
_A1748455A_209:;
	asm	rm[I0++] = AX
	////////////////////////////
_A1748455A_210:;
	sAX	= io[0x3D];
_A1748455A_211:;
	asm	rm[I0++] = AX
L7F5A46A0_44:;
_A1748455A_212:;
L7F5A46A0_43:;
_A1748455A_213:;
	return;
L7F5A46A0_41_end:;
_A1748455A_214:;
}

rjmp void L7F5A46A0_54()
{
	__int16 _i_1_2;
	////////////////////////////
_A1748455A_215:;
	////////////////////////////
_A1748455A_216:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_A1748455A_217:;
	asm	AR = AX
_A1748455A_218:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_A1748455A_219:;
	sAX	= io[0x33];
_A1748455A_220:;
	_i_1_2+0	= 0x20;
L7F5A46A0_58:;
_A1748455A_221:;
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
_A1748455A_222:;
_A1748455A_223:;
	read_I0P();
	io[0x33]	= sAX;
_A1748455A_224:;
_A1748455A_225:;
	read_I0M();
	io[0x33]	= sAX;
	////////////////////////////
_A1748455A_226:;
	sAX	= io[0x33];
_A1748455A_227:;
	asm	rm[I0++2] = AX
_A1748455A_228:;
	goto L7F5A46A0_58;
L7F5A46A0_57:;
_A1748455A_229:;
	asm I1 = inbuf+0;
	asm AR = rm[I1];
	asm not AR.b6;
	asm rm[I1] = AR;
L7F5A46A0_56:;
_A1748455A_230:;
	return;
L7F5A46A0_54_end:;
_A1748455A_231:;
}

rjmp void _DoADPCM9CD0E20D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_A1748455A_232:;
	////////////////////////////
_A1748455A_233:;
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
_A1748455A_234:;
	goto L7F5A46A0_60;
L7F5A46A0_61:;
_A1748455A_235:;
_A1748455A_236:;
	asm set io[0x09].b0;
_A1748455A_237:;
_A1748455A_238:;
	L7F5A46A0_35();
_A1748455A_239:;
	asm AX = _adpFLTG0FBE3CB5+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_A1748455A_240:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_A1748455A_241:;
	_i_1_2+0	= 0x02;
L7F5A46A0_64:;
_A1748455A_242:;
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
_A1748455A_243:;
_A1748455A_244:;
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
_A1748455A_245:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
_A1748455A_246:;
	asm set io[0x09].b0;
_A1748455A_247:;
	goto L7F5A46A0_64;
L7F5A46A0_63:;
_A1748455A_248:;
_A1748455A_249:;
	L7F5A46A0_54();
_A1748455A_250:;
	asm clr io[0x09].b0;
_A1748455A_251:;
	asm clr io[0x09].b0;
L7F5A46A0_60:;
_A1748455A_252:;
	return;
_DoADPCM9CD0E20D_end:;
_A1748455A_253:;
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
