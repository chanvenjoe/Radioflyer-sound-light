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
_AA01D89BC_103:;
	////////////////////////////
_AA01D89BC_104:;
	asm AX = _adpch30670376+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AA01D89BC_105:;
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
_AA01D89BC_106:;
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
_AA01D89BC_107:;
_AA01D89BC_108:;
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
_AA01D89BC_109:;
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
_AA01D89BC_110:;
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
_AA01D89BC_111:;
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
_AA01D89BC_112:;
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
_AA01D89BC_113:;
	sAX	= 0x0001;
	goto L7F5A46A0_25;
L7F5A46A0_31:;
_AA01D89BC_114:;
_AA01D89BC_115:;
	sSI	= (int)&_p_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_4;
	asm AR = 0x0012;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_AA01D89BC_116:;
	goto L7F5A46A0_29;
L7F5A46A0_28:;
_AA01D89BC_117:;
	sAX	= 0x0000;
	goto L7F5A46A0_25;
L7F5A46A0_25:;
_AA01D89BC_118:;
	return;
_playADPCMBACD5AFD_end:;
_AA01D89BC_119:;
}

rjmp void ADPCM_CHX_Init()
{
_AA01D89BC_120:;
	////////////////////////////
_AA01D89BC_121:;
	sAX	= 0x0000;
	asm I1 = _iADPCCACC469+0;
	*(__int16*)sSI	= sAX
_AA01D89BC_122:;
_AA01D89BC_123:;
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
_AA01D89BC_124:;
	return;
ADPCM_CHX_Init_end:;
_AA01D89BC_125:;
}

rjmp void ADPCM_CHXGetBts()
{
_AA01D89BC_126:;
_AA01D89BC_127:;
	asm	push AX
_AA01D89BC_128:;
	asm	push BX
_AA01D89BC_129:;
	asm	push CX
_AA01D89BC_130:;
	asm	push DX
_AA01D89BC_131:;
	asm	push I1
_AA01D89BC_132:;
	asm	push P0
_AA01D89BC_133:;
	asm	AR = P0.hh
_AA01D89BC_134:;
	asm	push AR
	////////////////////////////
_AA01D89BC_135:;
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
_AA01D89BC_136:;
	asm	AR = AX
_AA01D89BC_137:;
	asm	P0 = AR
_AA01D89BC_138:;
	asm	AR = DX
_AA01D89BC_139:;
	asm	P0.hh = AR
	////////////////////////////
_AA01D89BC_140:;
_AA01D89BC_141:;
	read_P0();
_AA01D89BC_142:;
	asm	pop AR
_AA01D89BC_143:;
	asm	P0.hh = AR
_AA01D89BC_144:;
	asm	pop P0
_AA01D89BC_145:;
	asm	pop I1
_AA01D89BC_146:;
	asm	pop DX
_AA01D89BC_147:;
	asm	pop CX
_AA01D89BC_148:;
	asm	pop BX
	////////////////////////////
_AA01D89BC_149:;
_AA01D89BC_150:;
	asintax();
_AA01D89BC_151:;
	asm	AR = AX
_AA01D89BC_152:;
	asm	pop AX
L7F5A46A0_34:;
_AA01D89BC_153:;
	return;
ADPCM_CHXGetBts_end:;
_AA01D89BC_154:;
}

rjmp void L7F5A46A0_35()
{
	__int16 _i_1_2;
	////////////////////////////
_AA01D89BC_155:;
	////////////////////////////
_AA01D89BC_156:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AA01D89BC_157:;
	asm	AR = AX
_AA01D89BC_158:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AA01D89BC_159:;
	_i_1_2+0	= 0x40;
L7F5A46A0_39:;
_AA01D89BC_160:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L7F5A46A0_40;
	goto	L7F5A46A0_38;
L7F5A46A0_40:;
	////////////////////////////
_AA01D89BC_161:;
	sAX	= 0x0000;
_AA01D89BC_162:;
	asm	rm[I0++] = AX
	////////////////////////////
_AA01D89BC_163:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
_AA01D89BC_164:;
	goto L7F5A46A0_39;
L7F5A46A0_38:;
L7F5A46A0_37:;
_AA01D89BC_165:;
	return;
L7F5A46A0_35_end:;
_AA01D89BC_166:;
}

rjmp void L7F5A46A0_41(__int16 _vol_0_4)
{
	__int16 _p_1_2;
	__int16 _i_1_4;
	////////////////////////////
_AA01D89BC_167:;
	////////////////////////////
_AA01D89BC_168:;
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
_AA01D89BC_169:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AA01D89BC_170:;
	asm	AR = AX
_AA01D89BC_171:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AA01D89BC_172:;
_AA01D89BC_173:;
	read_I0P();
	io[0x36]	= sAX;
_AA01D89BC_174:;
_AA01D89BC_175:;
	read_I0P();
	io[0x36]	= sAX;
_AA01D89BC_176:;
_AA01D89BC_177:;
	read_I0P();
	io[0x36]	= sAX;
_AA01D89BC_178:;
_AA01D89BC_179:;
	read_I0P();
	io[0x36]	= sAX;
_AA01D89BC_180:;
_AA01D89BC_181:;
	read_I0P();
	io[0x3D]	= sAX;
_AA01D89BC_182:;
_AA01D89BC_183:;
	read_I0P();
	io[0x3E]	= sAX;
_AA01D89BC_184:;
	sSI	= (int)&_vol_0_4;
	sAX	= *(__int16*)sSI;
	io[0x3C]	= sAX;
_AA01D89BC_185:;
	sAX	= io[0x3C];
_AA01D89BC_186:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_p_1_2;
	*(__int16*)sSI	= sAX;
_AA01D89BC_187:;
	_i_1_4+0	= 0x20;
L7F5A46A0_47:;
_AA01D89BC_188:;
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
_AA01D89BC_189:;
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
_AA01D89BC_190:;
_AA01D89BC_191:;
	_SDSP_ADPCM_4Bit_SingleCH_decoder94C4563E();
	sfx_CHECKZERO();
	if(__jz__)	goto L7F5A46A0_53;
	goto	L7F5A46A0_52;
L7F5A46A0_53:;
	////////////////////////////
_AA01D89BC_192:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000A;
	sAX	= sAX + sCX;
	PUSH(sAX);
	sAX	= 0x0000;
	sDX	= 0x0000;
	sSI	= POP();
	sfx_STORSILONG();
_AA01D89BC_193:;
	goto L7F5A46A0_43;
L7F5A46A0_52:;
_AA01D89BC_194:;
_AA01D89BC_195:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= sAX;
	sAX	= *(__int16*)sSI;
	io[0x36]	= sAX;
L7F5A46A0_50:;
_AA01D89BC_196:;
_AA01D89BC_197:;
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
_AA01D89BC_198:;
	goto L7F5A46A0_47;
L7F5A46A0_46:;
	////////////////////////////
_AA01D89BC_199:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x000C;
	sAX	= sAX + sCX;
_AA01D89BC_200:;
	asm	AR = AX
_AA01D89BC_201:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AA01D89BC_202:;
	sAX	= io[0x36];
_AA01D89BC_203:;
	asm	rm[I0++] = AX
	////////////////////////////
_AA01D89BC_204:;
	sAX	= io[0x36];
_AA01D89BC_205:;
	asm	rm[I0++] = AX
	////////////////////////////
_AA01D89BC_206:;
	sAX	= io[0x36];
_AA01D89BC_207:;
	asm	rm[I0++] = AX
	////////////////////////////
_AA01D89BC_208:;
	sAX	= io[0x36];
_AA01D89BC_209:;
	asm	rm[I0++] = AX
	////////////////////////////
_AA01D89BC_210:;
	sAX	= io[0x3D];
_AA01D89BC_211:;
	asm	rm[I0++] = AX
L7F5A46A0_44:;
_AA01D89BC_212:;
L7F5A46A0_43:;
_AA01D89BC_213:;
	return;
L7F5A46A0_41_end:;
_AA01D89BC_214:;
}

rjmp void L7F5A46A0_54()
{
	__int16 _i_1_2;
	////////////////////////////
_AA01D89BC_215:;
	////////////////////////////
_AA01D89BC_216:;
	asm I1 = inbuf+0;
	sAX	= *(__int16*)sSI;
_AA01D89BC_217:;
	asm	AR = AX
_AA01D89BC_218:;
	asm	I0 = AR
	////////////////////////////
	////////////////////////////
_AA01D89BC_219:;
	sAX	= io[0x33];
_AA01D89BC_220:;
	_i_1_2+0	= 0x20;
L7F5A46A0_58:;
_AA01D89BC_221:;
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
_AA01D89BC_222:;
_AA01D89BC_223:;
	read_I0P();
	io[0x33]	= sAX;
_AA01D89BC_224:;
_AA01D89BC_225:;
	read_I0M();
	io[0x33]	= sAX;
	////////////////////////////
_AA01D89BC_226:;
	sAX	= io[0x33];
_AA01D89BC_227:;
	asm	rm[I0++2] = AX
_AA01D89BC_228:;
	goto L7F5A46A0_58;
L7F5A46A0_57:;
_AA01D89BC_229:;
	asm I1 = inbuf+0;
	asm AR = rm[I1];
	asm not AR.b6;
	asm rm[I1] = AR;
L7F5A46A0_56:;
_AA01D89BC_230:;
	return;
L7F5A46A0_54_end:;
_AA01D89BC_231:;
}

rjmp void _DoADPCM9CD0E20D()
{
	__int16 _i_1_2;
	__int16 _p_1_4;
	////////////////////////////
_AA01D89BC_232:;
	////////////////////////////
_AA01D89BC_233:;
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
_AA01D89BC_234:;
	goto L7F5A46A0_60;
L7F5A46A0_61:;
_AA01D89BC_235:;
_AA01D89BC_236:;
	asm set io[0x09].b0;
_AA01D89BC_237:;
_AA01D89BC_238:;
	L7F5A46A0_35();
_AA01D89BC_239:;
	asm AX = _adpFLTG0FBE3CB5+0;
	sSI	= (int)&_p_1_4;
	*(__int16*)sSI	= sAX;
_AA01D89BC_240:;
	asm AX = _adpch30670376+0;
	asm I1 = ADPCM_Tmpi+0;
	*(__int16*)sSI	= sAX
_AA01D89BC_241:;
	_i_1_2+0	= 0x02;
L7F5A46A0_64:;
_AA01D89BC_242:;
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
_AA01D89BC_243:;
_AA01D89BC_244:;
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
_AA01D89BC_245:;
	asm I1 = ADPCM_Tmpi+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&ADPCM_Tmpi;
	sCX	= *(__int16*)sSI;
	asm AR = 0x0012;
	asm rm[I1] = CX + AR;
_AA01D89BC_246:;
	asm set io[0x09].b0;
_AA01D89BC_247:;
	goto L7F5A46A0_64;
L7F5A46A0_63:;
_AA01D89BC_248:;
_AA01D89BC_249:;
	L7F5A46A0_54();
_AA01D89BC_250:;
	asm clr io[0x09].b0;
_AA01D89BC_251:;
	asm clr io[0x09].b0;
L7F5A46A0_60:;
_AA01D89BC_252:;
	return;
_DoADPCM9CD0E20D_end:;
_AA01D89BC_253:;
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
