// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 LD63FD439_15;
__int16 LD63FD439_72;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _LED_Buf98A4A35A[20];
__int16 _sum6BC8EB73;
__int16 LD63FD439_28;

// .bss ends _bss

// CODE segment

.code


void _WS_Send24bits851C5C55(__int16 _color_0_4);
void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6);
void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8);
void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6);
void _WS_RefreshAD7B99B1();
void _WS_Key_RGBC5B96B6D();
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
void _WS_Send24bits851C5C55(__int16 _color_0_4)
{
	__int16 _i_1_2;
	////////////////////////////
_A30BB6F62_57:;
_A30BB6F62_58:;
	_i_1_2+0	= 0x00;
LD63FD439_18:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0018;
	sfx_CMP_AX_CX_JB();
	if(__je__)	goto LD63FD439_22;
	goto	LD63FD439_20;
LD63FD439_22:;
	goto LD63FD439_19;
LD63FD439_21:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_18;
LD63FD439_19:;
	////////////////////////////
_A30BB6F62_59:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	asm AR = 0x0000;
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD63FD439_24;
	goto	LD63FD439_23;
LD63FD439_24:;
	////////////////////////////
_A30BB6F62_60:;
	asm set io[0x09].b14;
_A30BB6F62_61:;
	asm	nop
_A30BB6F62_62:;
	asm	nop
_A30BB6F62_63:;
	asm	nop
_A30BB6F62_64:;
	asm	nop
_A30BB6F62_65:;
	asm	nop
_A30BB6F62_66:;
	asm	nop
_A30BB6F62_67:;
	asm	nop
_A30BB6F62_68:;
	asm	nop
_A30BB6F62_69:;
	asm	nop
_A30BB6F62_70:;
	asm	nop
_A30BB6F62_71:;
	asm	nop
_A30BB6F62_72:;
	asm	nop
_A30BB6F62_73:;
	asm clr io[0x09].b14;
_A30BB6F62_74:;
	asm	nop
_A30BB6F62_75:;
	asm	nop
_A30BB6F62_76:;
	asm	nop
	goto LD63FD439_25;
LD63FD439_23:;
_A30BB6F62_77:;
	asm set io[0x09].b14;
LD63FD439_25:;
_A30BB6F62_78:;
_A30BB6F62_79:;
	asm	nop
_A30BB6F62_80:;
	asm	nop
_A30BB6F62_81:;
	asm	nop
_A30BB6F62_82:;
	asm clr io[0x09].b14;
_A30BB6F62_83:;
	asm	nop
_A30BB6F62_84:;
	asm	nop
_A30BB6F62_85:;
	asm	nop
_A30BB6F62_86:;
	asm	nop
_A30BB6F62_87:;
	asm	nop
_A30BB6F62_88:;
	asm	nop
_A30BB6F62_89:;
	asm	nop
_A30BB6F62_90:;
	asm	nop
_A30BB6F62_91:;
	asm	nop
_A30BB6F62_92:;
	asm	nop
_A30BB6F62_93:;
	asm	nop
_A30BB6F62_94:;
	asm	nop
_A30BB6F62_95:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	asm slz AX, 1;
	sSI	= (int)&_color_0_4;
	*(__int16*)sSI	= sAX;
	goto LD63FD439_21;
LD63FD439_20:;
_A30BB6F62_96:;
LD63FD439_17:;
_A30BB6F62_97:;
	return;
_WS_Send24bits851C5C55_end:;
_A30BB6F62_98:;
}

void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6)
{
_A30BB6F62_99:;
	////////////////////////////
_A30BB6F62_100:;
	asm AX = _LED_Buf98A4A35A+0;
	PUSH(sAX);
	sSI	= (int)&_No_0_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0005;
	sfx_IMUL_AX_CX();
	sCX	= POP();
	sAX	= sAX + sCX;
	PUSH(sAX);
	sSI	= (int)&_color_0_6;
	sAX	= *(__int16*)sSI;
	sfx_UINT2ULONG_AX();
	sSI	= POP();
	sfx_STORSILONG();
LD63FD439_26:;
_A30BB6F62_101:;
	return;
_WS_Color_copyADB1DFED_end:;
_A30BB6F62_102:;
}

void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8)
{
_A30BB6F62_103:;
	////////////////////////////
_A30BB6F62_104:;
	sSI	= (int)&_to_0_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sfx_CMP_AX_CX_JBE();
	if(__je__)	goto LD63FD439_30;
	sAX	= 1;
	goto	LD63FD439_31;
LD63FD439_30:;
	sAX	= 0;
LD63FD439_31:;
	sfx_CHECKZERO();
	if(__jz__)	goto LD63FD439_32;
	goto	LD63FD439_29;
LD63FD439_32:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JAE();
	if(__je__)	goto LD63FD439_33;
	sAX	= 1;
	goto	LD63FD439_34;
LD63FD439_33:;
	sAX	= 0;
LD63FD439_34:;
LD63FD439_29:;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD63FD439_36;
	goto	LD63FD439_35;
LD63FD439_36:;
	////////////////////////////
_A30BB6F62_105:;
	_to_0_6+0	= 0x03;
_A30BB6F62_106:;
	_from_0_4+0	= 0x00;
LD63FD439_35:;
_A30BB6F62_107:;
_A30BB6F62_108:;
	sAX	= 0xFFFF;
	sSI	= (int)&_color_0_8;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_color_0_8;
	*(__int16*)sSI	= sAX;
_A30BB6F62_109:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LD63FD439_38;
	goto	LD63FD439_37;
LD63FD439_38:;
	////////////////////////////
_A30BB6F62_110:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_28;
	*(__int16*)sSI	= sAX
_A30BB6F62_111:;
	sSI	= (int)&_to_0_6;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_from_0_4;
	*(__int16*)sSI	= sAX;
_A30BB6F62_112:;
	asm I1 = LD63FD439_28+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	*(__int16*)sSI	= sAX;
LD63FD439_37:;
_A30BB6F62_113:;
_A30BB6F62_114:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_28;
	*(__int16*)sSI	= sAX
LD63FD439_39:;
	asm I1 = LD63FD439_28+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JLE();
	if(__je__)	goto LD63FD439_43;
	goto	LD63FD439_41;
LD63FD439_43:;
	goto LD63FD439_40;
LD63FD439_42:;
	asm I1 = LD63FD439_28+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_28;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
	goto LD63FD439_39;
LD63FD439_40:;
	////////////////////////////
_A30BB6F62_115:;
_A30BB6F62_116:;
	sSI	= (int)&_color_0_8;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	asm I1 = LD63FD439_28+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_WS_Color_copyADB1DFED(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	goto LD63FD439_42;
LD63FD439_41:;
_A30BB6F62_117:;
LD63FD439_27:;
_A30BB6F62_118:;
	return;
_WS_ColorSet_LEDCA3DEB8C_end:;
_A30BB6F62_119:;
}

void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6)
{
	__int16 _i_1_2;
	////////////////////////////
_A30BB6F62_120:;
_A30BB6F62_121:;
	_i_1_2+0	= 0x00;
LD63FD439_45:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_Led_num_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JB();
	if(__je__)	goto LD63FD439_49;
	goto	LD63FD439_47;
LD63FD439_49:;
	goto LD63FD439_46;
LD63FD439_48:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_45;
LD63FD439_46:;
	////////////////////////////
_A30BB6F62_122:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	goto LD63FD439_51;
LD63FD439_52:;
_A30BB6F62_123:;
	asm set io[0x09].b14;
_A30BB6F62_124:;
	asm	nop
_A30BB6F62_125:;
	asm	nop
_A30BB6F62_126:;
	asm	nop
_A30BB6F62_127:;
	asm	nop
_A30BB6F62_128:;
	asm	nop
_A30BB6F62_129:;
	asm	nop
_A30BB6F62_130:;
	asm	nop
_A30BB6F62_131:;
	asm	nop
_A30BB6F62_132:;
	asm	nop
_A30BB6F62_133:;
	asm	nop
_A30BB6F62_134:;
	asm	nop
_A30BB6F62_135:;
	asm	nop
_A30BB6F62_136:;
	asm clr io[0x09].b14;
_A30BB6F62_137:;
	asm	nop
_A30BB6F62_138:;
	asm	nop
_A30BB6F62_139:;
	asm	nop
_A30BB6F62_140:;
	asm set io[0x09].b14;
_A30BB6F62_141:;
	asm	nop
_A30BB6F62_142:;
	asm	nop
_A30BB6F62_143:;
	asm	nop
_A30BB6F62_144:;
	asm	nop
_A30BB6F62_145:;
	asm	nop
_A30BB6F62_146:;
	asm	nop
_A30BB6F62_147:;
	asm	nop
_A30BB6F62_148:;
	asm	nop
_A30BB6F62_149:;
	asm	nop
_A30BB6F62_150:;
	asm	nop
_A30BB6F62_151:;
	asm	nop
_A30BB6F62_152:;
	asm	nop
_A30BB6F62_153:;
	asm clr io[0x09].b14;
_A30BB6F62_154:;
	asm	nop
_A30BB6F62_155:;
	asm	nop
_A30BB6F62_156:;
	asm	nop
_A30BB6F62_157:;
	asm set io[0x09].b14;
_A30BB6F62_158:;
	asm	nop
_A30BB6F62_159:;
	asm	nop
_A30BB6F62_160:;
	asm	nop
_A30BB6F62_161:;
	asm	nop
_A30BB6F62_162:;
	asm	nop
_A30BB6F62_163:;
	asm	nop
_A30BB6F62_164:;
	asm	nop
_A30BB6F62_165:;
	asm	nop
_A30BB6F62_166:;
	asm	nop
_A30BB6F62_167:;
	asm	nop
_A30BB6F62_168:;
	asm	nop
_A30BB6F62_169:;
	asm	nop
_A30BB6F62_170:;
	asm clr io[0x09].b14;
_A30BB6F62_171:;
	asm	nop
_A30BB6F62_172:;
	asm	nop
_A30BB6F62_173:;
	asm	nop
_A30BB6F62_174:;
	asm set io[0x09].b14;
_A30BB6F62_175:;
	asm	nop
_A30BB6F62_176:;
	asm	nop
_A30BB6F62_177:;
	asm	nop
_A30BB6F62_178:;
	asm	nop
_A30BB6F62_179:;
	asm	nop
_A30BB6F62_180:;
	asm	nop
_A30BB6F62_181:;
	asm	nop
_A30BB6F62_182:;
	asm	nop
_A30BB6F62_183:;
	asm	nop
_A30BB6F62_184:;
	asm	nop
_A30BB6F62_185:;
	asm	nop
_A30BB6F62_186:;
	asm	nop
_A30BB6F62_187:;
	asm clr io[0x09].b14;
_A30BB6F62_188:;
	asm	nop
_A30BB6F62_189:;
	asm	nop
_A30BB6F62_190:;
	asm	nop
_A30BB6F62_191:;
	asm set io[0x09].b14;
_A30BB6F62_192:;
	asm	nop
_A30BB6F62_193:;
	asm	nop
_A30BB6F62_194:;
	asm	nop
_A30BB6F62_195:;
	asm	nop
_A30BB6F62_196:;
	asm	nop
_A30BB6F62_197:;
	asm	nop
_A30BB6F62_198:;
	asm	nop
_A30BB6F62_199:;
	asm	nop
_A30BB6F62_200:;
	asm	nop
_A30BB6F62_201:;
	asm	nop
_A30BB6F62_202:;
	asm	nop
_A30BB6F62_203:;
	asm	nop
_A30BB6F62_204:;
	asm clr io[0x09].b14;
_A30BB6F62_205:;
	asm	nop
_A30BB6F62_206:;
	asm	nop
_A30BB6F62_207:;
	asm	nop
_A30BB6F62_208:;
	asm set io[0x09].b14;
_A30BB6F62_209:;
	asm	nop
_A30BB6F62_210:;
	asm	nop
_A30BB6F62_211:;
	asm	nop
_A30BB6F62_212:;
	asm	nop
_A30BB6F62_213:;
	asm	nop
_A30BB6F62_214:;
	asm	nop
_A30BB6F62_215:;
	asm	nop
_A30BB6F62_216:;
	asm	nop
_A30BB6F62_217:;
	asm	nop
_A30BB6F62_218:;
	asm	nop
_A30BB6F62_219:;
	asm	nop
_A30BB6F62_220:;
	asm	nop
_A30BB6F62_221:;
	asm clr io[0x09].b14;
_A30BB6F62_222:;
	asm	nop
_A30BB6F62_223:;
	asm	nop
_A30BB6F62_224:;
	asm	nop
_A30BB6F62_225:;
	asm set io[0x09].b14;
_A30BB6F62_226:;
	asm	nop
_A30BB6F62_227:;
	asm	nop
_A30BB6F62_228:;
	asm	nop
_A30BB6F62_229:;
	asm	nop
_A30BB6F62_230:;
	asm	nop
_A30BB6F62_231:;
	asm	nop
_A30BB6F62_232:;
	asm	nop
_A30BB6F62_233:;
	asm	nop
_A30BB6F62_234:;
	asm	nop
_A30BB6F62_235:;
	asm	nop
_A30BB6F62_236:;
	asm	nop
_A30BB6F62_237:;
	asm	nop
_A30BB6F62_238:;
	asm clr io[0x09].b14;
_A30BB6F62_239:;
	asm	nop
_A30BB6F62_240:;
	asm	nop
_A30BB6F62_241:;
	asm	nop
_A30BB6F62_242:;
	asm set io[0x09].b14;
_A30BB6F62_243:;
	asm	nop
_A30BB6F62_244:;
	asm	nop
_A30BB6F62_245:;
	asm	nop
_A30BB6F62_246:;
	asm	nop
_A30BB6F62_247:;
	asm	nop
_A30BB6F62_248:;
	asm	nop
_A30BB6F62_249:;
	asm	nop
_A30BB6F62_250:;
	asm	nop
_A30BB6F62_251:;
	asm	nop
_A30BB6F62_252:;
	asm	nop
_A30BB6F62_253:;
	asm	nop
_A30BB6F62_254:;
	asm	nop
_A30BB6F62_255:;
	asm clr io[0x09].b14;
_A30BB6F62_256:;
	asm	nop
_A30BB6F62_257:;
	asm	nop
_A30BB6F62_258:;
	asm	nop
_A30BB6F62_259:;
	asm set io[0x09].b14;
_A30BB6F62_260:;
	asm	nop
_A30BB6F62_261:;
	asm	nop
_A30BB6F62_262:;
	asm	nop
_A30BB6F62_263:;
	asm	nop
_A30BB6F62_264:;
	asm	nop
_A30BB6F62_265:;
	asm	nop
_A30BB6F62_266:;
	asm	nop
_A30BB6F62_267:;
	asm	nop
_A30BB6F62_268:;
	asm	nop
_A30BB6F62_269:;
	asm	nop
_A30BB6F62_270:;
	asm	nop
_A30BB6F62_271:;
	asm	nop
_A30BB6F62_272:;
	asm clr io[0x09].b14;
_A30BB6F62_273:;
	asm	nop
_A30BB6F62_274:;
	asm	nop
_A30BB6F62_275:;
	asm	nop
_A30BB6F62_276:;
	asm set io[0x09].b14;
_A30BB6F62_277:;
	asm	nop
_A30BB6F62_278:;
	asm	nop
_A30BB6F62_279:;
	asm	nop
_A30BB6F62_280:;
	asm	nop
_A30BB6F62_281:;
	asm	nop
_A30BB6F62_282:;
	asm	nop
_A30BB6F62_283:;
	asm	nop
_A30BB6F62_284:;
	asm	nop
_A30BB6F62_285:;
	asm	nop
_A30BB6F62_286:;
	asm	nop
_A30BB6F62_287:;
	asm	nop
_A30BB6F62_288:;
	asm	nop
_A30BB6F62_289:;
	asm clr io[0x09].b14;
_A30BB6F62_290:;
	asm	nop
_A30BB6F62_291:;
	asm	nop
_A30BB6F62_292:;
	asm	nop
_A30BB6F62_293:;
	asm set io[0x09].b14;
_A30BB6F62_294:;
	asm	nop
_A30BB6F62_295:;
	asm	nop
_A30BB6F62_296:;
	asm	nop
_A30BB6F62_297:;
	asm	nop
_A30BB6F62_298:;
	asm	nop
_A30BB6F62_299:;
	asm	nop
_A30BB6F62_300:;
	asm	nop
_A30BB6F62_301:;
	asm	nop
_A30BB6F62_302:;
	asm	nop
_A30BB6F62_303:;
	asm	nop
_A30BB6F62_304:;
	asm	nop
_A30BB6F62_305:;
	asm	nop
_A30BB6F62_306:;
	asm clr io[0x09].b14;
_A30BB6F62_307:;
	asm	nop
_A30BB6F62_308:;
	asm	nop
_A30BB6F62_309:;
	asm	nop
_A30BB6F62_310:;
	asm set io[0x09].b14;
_A30BB6F62_311:;
	asm	nop
_A30BB6F62_312:;
	asm	nop
_A30BB6F62_313:;
	asm	nop
_A30BB6F62_314:;
	asm	nop
_A30BB6F62_315:;
	asm	nop
_A30BB6F62_316:;
	asm	nop
_A30BB6F62_317:;
	asm	nop
_A30BB6F62_318:;
	asm	nop
_A30BB6F62_319:;
	asm	nop
_A30BB6F62_320:;
	asm	nop
_A30BB6F62_321:;
	asm	nop
_A30BB6F62_322:;
	asm	nop
_A30BB6F62_323:;
	asm clr io[0x09].b14;
_A30BB6F62_324:;
	asm	nop
_A30BB6F62_325:;
	asm	nop
_A30BB6F62_326:;
	asm	nop
_A30BB6F62_327:;
	asm set io[0x09].b14;
_A30BB6F62_328:;
	asm	nop
_A30BB6F62_329:;
	asm	nop
_A30BB6F62_330:;
	asm	nop
_A30BB6F62_331:;
	asm	nop
_A30BB6F62_332:;
	asm	nop
_A30BB6F62_333:;
	asm	nop
_A30BB6F62_334:;
	asm	nop
_A30BB6F62_335:;
	asm	nop
_A30BB6F62_336:;
	asm	nop
_A30BB6F62_337:;
	asm	nop
_A30BB6F62_338:;
	asm	nop
_A30BB6F62_339:;
	asm	nop
_A30BB6F62_340:;
	asm clr io[0x09].b14;
_A30BB6F62_341:;
	asm	nop
_A30BB6F62_342:;
	asm	nop
_A30BB6F62_343:;
	asm	nop
_A30BB6F62_344:;
	asm set io[0x09].b14;
_A30BB6F62_345:;
	asm	nop
_A30BB6F62_346:;
	asm	nop
_A30BB6F62_347:;
	asm	nop
_A30BB6F62_348:;
	asm	nop
_A30BB6F62_349:;
	asm	nop
_A30BB6F62_350:;
	asm	nop
_A30BB6F62_351:;
	asm	nop
_A30BB6F62_352:;
	asm	nop
_A30BB6F62_353:;
	asm	nop
_A30BB6F62_354:;
	asm	nop
_A30BB6F62_355:;
	asm	nop
_A30BB6F62_356:;
	asm	nop
_A30BB6F62_357:;
	asm clr io[0x09].b14;
_A30BB6F62_358:;
	asm	nop
_A30BB6F62_359:;
	asm	nop
_A30BB6F62_360:;
	asm	nop
_A30BB6F62_361:;
	asm set io[0x09].b14;
_A30BB6F62_362:;
	asm	nop
_A30BB6F62_363:;
	asm	nop
_A30BB6F62_364:;
	asm	nop
_A30BB6F62_365:;
	asm	nop
_A30BB6F62_366:;
	asm	nop
_A30BB6F62_367:;
	asm	nop
_A30BB6F62_368:;
	asm	nop
_A30BB6F62_369:;
	asm	nop
_A30BB6F62_370:;
	asm	nop
_A30BB6F62_371:;
	asm	nop
_A30BB6F62_372:;
	asm	nop
_A30BB6F62_373:;
	asm	nop
_A30BB6F62_374:;
	asm clr io[0x09].b14;
_A30BB6F62_375:;
	asm	nop
_A30BB6F62_376:;
	asm	nop
_A30BB6F62_377:;
	asm	nop
_A30BB6F62_378:;
	asm set io[0x09].b14;
_A30BB6F62_379:;
	asm	nop
_A30BB6F62_380:;
	asm	nop
_A30BB6F62_381:;
	asm	nop
_A30BB6F62_382:;
	asm	nop
_A30BB6F62_383:;
	asm	nop
_A30BB6F62_384:;
	asm	nop
_A30BB6F62_385:;
	asm	nop
_A30BB6F62_386:;
	asm	nop
_A30BB6F62_387:;
	asm	nop
_A30BB6F62_388:;
	asm	nop
_A30BB6F62_389:;
	asm	nop
_A30BB6F62_390:;
	asm	nop
_A30BB6F62_391:;
	asm clr io[0x09].b14;
_A30BB6F62_392:;
	asm	nop
_A30BB6F62_393:;
	asm	nop
_A30BB6F62_394:;
	asm	nop
_A30BB6F62_395:;
	asm set io[0x09].b14;
_A30BB6F62_396:;
	asm	nop
_A30BB6F62_397:;
	asm	nop
_A30BB6F62_398:;
	asm	nop
_A30BB6F62_399:;
	asm	nop
_A30BB6F62_400:;
	asm	nop
_A30BB6F62_401:;
	asm	nop
_A30BB6F62_402:;
	asm	nop
_A30BB6F62_403:;
	asm	nop
_A30BB6F62_404:;
	asm	nop
_A30BB6F62_405:;
	asm	nop
_A30BB6F62_406:;
	asm	nop
_A30BB6F62_407:;
	asm	nop
_A30BB6F62_408:;
	asm clr io[0x09].b14;
_A30BB6F62_409:;
	asm	nop
_A30BB6F62_410:;
	asm	nop
_A30BB6F62_411:;
	asm	nop
_A30BB6F62_412:;
	asm set io[0x09].b14;
_A30BB6F62_413:;
	asm	nop
_A30BB6F62_414:;
	asm	nop
_A30BB6F62_415:;
	asm	nop
_A30BB6F62_416:;
	asm	nop
_A30BB6F62_417:;
	asm	nop
_A30BB6F62_418:;
	asm	nop
_A30BB6F62_419:;
	asm	nop
_A30BB6F62_420:;
	asm	nop
_A30BB6F62_421:;
	asm	nop
_A30BB6F62_422:;
	asm	nop
_A30BB6F62_423:;
	asm	nop
_A30BB6F62_424:;
	asm	nop
_A30BB6F62_425:;
	asm clr io[0x09].b14;
_A30BB6F62_426:;
	asm	nop
_A30BB6F62_427:;
	asm	nop
_A30BB6F62_428:;
	asm	nop
_A30BB6F62_429:;
	asm set io[0x09].b14;
_A30BB6F62_430:;
	asm	nop
_A30BB6F62_431:;
	asm	nop
_A30BB6F62_432:;
	asm	nop
_A30BB6F62_433:;
	asm	nop
_A30BB6F62_434:;
	asm	nop
_A30BB6F62_435:;
	asm	nop
_A30BB6F62_436:;
	asm	nop
_A30BB6F62_437:;
	asm	nop
_A30BB6F62_438:;
	asm	nop
_A30BB6F62_439:;
	asm	nop
_A30BB6F62_440:;
	asm	nop
_A30BB6F62_441:;
	asm	nop
_A30BB6F62_442:;
	asm clr io[0x09].b14;
_A30BB6F62_443:;
	asm	nop
_A30BB6F62_444:;
	asm	nop
_A30BB6F62_445:;
	asm	nop
_A30BB6F62_446:;
	asm set io[0x09].b14;
_A30BB6F62_447:;
	asm	nop
_A30BB6F62_448:;
	asm	nop
_A30BB6F62_449:;
	asm	nop
_A30BB6F62_450:;
	asm	nop
_A30BB6F62_451:;
	asm	nop
_A30BB6F62_452:;
	asm	nop
_A30BB6F62_453:;
	asm	nop
_A30BB6F62_454:;
	asm	nop
_A30BB6F62_455:;
	asm	nop
_A30BB6F62_456:;
	asm	nop
_A30BB6F62_457:;
	asm	nop
_A30BB6F62_458:;
	asm	nop
_A30BB6F62_459:;
	asm clr io[0x09].b14;
_A30BB6F62_460:;
	asm	nop
_A30BB6F62_461:;
	asm	nop
_A30BB6F62_462:;
	asm	nop
_A30BB6F62_463:;
	asm set io[0x09].b14;
_A30BB6F62_464:;
	asm	nop
_A30BB6F62_465:;
	asm	nop
_A30BB6F62_466:;
	asm	nop
_A30BB6F62_467:;
	asm	nop
_A30BB6F62_468:;
	asm	nop
_A30BB6F62_469:;
	asm	nop
_A30BB6F62_470:;
	asm	nop
_A30BB6F62_471:;
	asm	nop
_A30BB6F62_472:;
	asm	nop
_A30BB6F62_473:;
	asm	nop
_A30BB6F62_474:;
	asm	nop
_A30BB6F62_475:;
	asm	nop
_A30BB6F62_476:;
	asm clr io[0x09].b14;
_A30BB6F62_477:;
	asm	nop
_A30BB6F62_478:;
	asm	nop
_A30BB6F62_479:;
	asm	nop
_A30BB6F62_480:;
	asm set io[0x09].b14;
_A30BB6F62_481:;
	asm	nop
_A30BB6F62_482:;
	asm	nop
_A30BB6F62_483:;
	asm	nop
_A30BB6F62_484:;
	asm	nop
_A30BB6F62_485:;
	asm	nop
_A30BB6F62_486:;
	asm	nop
_A30BB6F62_487:;
	asm	nop
_A30BB6F62_488:;
	asm	nop
_A30BB6F62_489:;
	asm	nop
_A30BB6F62_490:;
	asm	nop
_A30BB6F62_491:;
	asm	nop
_A30BB6F62_492:;
	asm	nop
_A30BB6F62_493:;
	asm clr io[0x09].b14;
_A30BB6F62_494:;
	asm	nop
_A30BB6F62_495:;
	asm	nop
_A30BB6F62_496:;
	asm	nop
_A30BB6F62_497:;
	asm set io[0x09].b14;
_A30BB6F62_498:;
	asm	nop
_A30BB6F62_499:;
	asm	nop
_A30BB6F62_500:;
	asm	nop
_A30BB6F62_501:;
	asm	nop
_A30BB6F62_502:;
	asm	nop
_A30BB6F62_503:;
	asm	nop
_A30BB6F62_504:;
	asm	nop
_A30BB6F62_505:;
	asm	nop
_A30BB6F62_506:;
	asm	nop
_A30BB6F62_507:;
	asm	nop
_A30BB6F62_508:;
	asm	nop
_A30BB6F62_509:;
	asm	nop
_A30BB6F62_510:;
	asm clr io[0x09].b14;
_A30BB6F62_511:;
	asm	nop
_A30BB6F62_512:;
	asm	nop
_A30BB6F62_513:;
	asm	nop
_A30BB6F62_514:;
	asm set io[0x09].b14;
_A30BB6F62_515:;
	asm	nop
_A30BB6F62_516:;
	asm	nop
_A30BB6F62_517:;
	asm	nop
_A30BB6F62_518:;
	asm	nop
_A30BB6F62_519:;
	asm	nop
_A30BB6F62_520:;
	asm	nop
_A30BB6F62_521:;
	asm	nop
_A30BB6F62_522:;
	asm	nop
_A30BB6F62_523:;
	asm	nop
_A30BB6F62_524:;
	asm	nop
_A30BB6F62_525:;
	asm	nop
_A30BB6F62_526:;
	asm	nop
_A30BB6F62_527:;
	asm clr io[0x09].b14;
_A30BB6F62_528:;
	asm	nop
_A30BB6F62_529:;
	asm	nop
_A30BB6F62_530:;
	asm	nop
_A30BB6F62_531:;
	goto LD63FD439_50;
LD63FD439_53:;
_A30BB6F62_532:;
	asm set io[0x09].b14;
_A30BB6F62_533:;
	asm	nop
_A30BB6F62_534:;
	asm	nop
_A30BB6F62_535:;
	asm	nop
_A30BB6F62_536:;
	asm clr io[0x09].b14;
_A30BB6F62_537:;
	asm	nop
_A30BB6F62_538:;
	asm	nop
_A30BB6F62_539:;
	asm	nop
_A30BB6F62_540:;
	asm	nop
_A30BB6F62_541:;
	asm	nop
_A30BB6F62_542:;
	asm	nop
_A30BB6F62_543:;
	asm	nop
_A30BB6F62_544:;
	asm	nop
_A30BB6F62_545:;
	asm	nop
_A30BB6F62_546:;
	asm	nop
_A30BB6F62_547:;
	asm	nop
_A30BB6F62_548:;
	asm	nop
_A30BB6F62_549:;
	asm set io[0x09].b14;
_A30BB6F62_550:;
	asm	nop
_A30BB6F62_551:;
	asm	nop
_A30BB6F62_552:;
	asm	nop
_A30BB6F62_553:;
	asm clr io[0x09].b14;
_A30BB6F62_554:;
	asm	nop
_A30BB6F62_555:;
	asm	nop
_A30BB6F62_556:;
	asm	nop
_A30BB6F62_557:;
	asm	nop
_A30BB6F62_558:;
	asm	nop
_A30BB6F62_559:;
	asm	nop
_A30BB6F62_560:;
	asm	nop
_A30BB6F62_561:;
	asm	nop
_A30BB6F62_562:;
	asm	nop
_A30BB6F62_563:;
	asm	nop
_A30BB6F62_564:;
	asm	nop
_A30BB6F62_565:;
	asm	nop
_A30BB6F62_566:;
	asm set io[0x09].b14;
_A30BB6F62_567:;
	asm	nop
_A30BB6F62_568:;
	asm	nop
_A30BB6F62_569:;
	asm	nop
_A30BB6F62_570:;
	asm clr io[0x09].b14;
_A30BB6F62_571:;
	asm	nop
_A30BB6F62_572:;
	asm	nop
_A30BB6F62_573:;
	asm	nop
_A30BB6F62_574:;
	asm	nop
_A30BB6F62_575:;
	asm	nop
_A30BB6F62_576:;
	asm	nop
_A30BB6F62_577:;
	asm	nop
_A30BB6F62_578:;
	asm	nop
_A30BB6F62_579:;
	asm	nop
_A30BB6F62_580:;
	asm	nop
_A30BB6F62_581:;
	asm	nop
_A30BB6F62_582:;
	asm	nop
_A30BB6F62_583:;
	asm set io[0x09].b14;
_A30BB6F62_584:;
	asm	nop
_A30BB6F62_585:;
	asm	nop
_A30BB6F62_586:;
	asm	nop
_A30BB6F62_587:;
	asm clr io[0x09].b14;
_A30BB6F62_588:;
	asm	nop
_A30BB6F62_589:;
	asm	nop
_A30BB6F62_590:;
	asm	nop
_A30BB6F62_591:;
	asm	nop
_A30BB6F62_592:;
	asm	nop
_A30BB6F62_593:;
	asm	nop
_A30BB6F62_594:;
	asm	nop
_A30BB6F62_595:;
	asm	nop
_A30BB6F62_596:;
	asm	nop
_A30BB6F62_597:;
	asm	nop
_A30BB6F62_598:;
	asm	nop
_A30BB6F62_599:;
	asm	nop
_A30BB6F62_600:;
	asm set io[0x09].b14;
_A30BB6F62_601:;
	asm	nop
_A30BB6F62_602:;
	asm	nop
_A30BB6F62_603:;
	asm	nop
_A30BB6F62_604:;
	asm clr io[0x09].b14;
_A30BB6F62_605:;
	asm	nop
_A30BB6F62_606:;
	asm	nop
_A30BB6F62_607:;
	asm	nop
_A30BB6F62_608:;
	asm	nop
_A30BB6F62_609:;
	asm	nop
_A30BB6F62_610:;
	asm	nop
_A30BB6F62_611:;
	asm	nop
_A30BB6F62_612:;
	asm	nop
_A30BB6F62_613:;
	asm	nop
_A30BB6F62_614:;
	asm	nop
_A30BB6F62_615:;
	asm	nop
_A30BB6F62_616:;
	asm	nop
_A30BB6F62_617:;
	asm set io[0x09].b14;
_A30BB6F62_618:;
	asm	nop
_A30BB6F62_619:;
	asm	nop
_A30BB6F62_620:;
	asm	nop
_A30BB6F62_621:;
	asm clr io[0x09].b14;
_A30BB6F62_622:;
	asm	nop
_A30BB6F62_623:;
	asm	nop
_A30BB6F62_624:;
	asm	nop
_A30BB6F62_625:;
	asm	nop
_A30BB6F62_626:;
	asm	nop
_A30BB6F62_627:;
	asm	nop
_A30BB6F62_628:;
	asm	nop
_A30BB6F62_629:;
	asm	nop
_A30BB6F62_630:;
	asm	nop
_A30BB6F62_631:;
	asm	nop
_A30BB6F62_632:;
	asm	nop
_A30BB6F62_633:;
	asm	nop
_A30BB6F62_634:;
	asm set io[0x09].b14;
_A30BB6F62_635:;
	asm	nop
_A30BB6F62_636:;
	asm	nop
_A30BB6F62_637:;
	asm	nop
_A30BB6F62_638:;
	asm clr io[0x09].b14;
_A30BB6F62_639:;
	asm	nop
_A30BB6F62_640:;
	asm	nop
_A30BB6F62_641:;
	asm	nop
_A30BB6F62_642:;
	asm	nop
_A30BB6F62_643:;
	asm	nop
_A30BB6F62_644:;
	asm	nop
_A30BB6F62_645:;
	asm	nop
_A30BB6F62_646:;
	asm	nop
_A30BB6F62_647:;
	asm	nop
_A30BB6F62_648:;
	asm	nop
_A30BB6F62_649:;
	asm	nop
_A30BB6F62_650:;
	asm	nop
_A30BB6F62_651:;
	asm set io[0x09].b14;
_A30BB6F62_652:;
	asm	nop
_A30BB6F62_653:;
	asm	nop
_A30BB6F62_654:;
	asm	nop
_A30BB6F62_655:;
	asm clr io[0x09].b14;
_A30BB6F62_656:;
	asm	nop
_A30BB6F62_657:;
	asm	nop
_A30BB6F62_658:;
	asm	nop
_A30BB6F62_659:;
	asm	nop
_A30BB6F62_660:;
	asm	nop
_A30BB6F62_661:;
	asm	nop
_A30BB6F62_662:;
	asm	nop
_A30BB6F62_663:;
	asm	nop
_A30BB6F62_664:;
	asm	nop
_A30BB6F62_665:;
	asm	nop
_A30BB6F62_666:;
	asm	nop
_A30BB6F62_667:;
	asm	nop
_A30BB6F62_668:;
	asm set io[0x09].b14;
_A30BB6F62_669:;
	asm	nop
_A30BB6F62_670:;
	asm	nop
_A30BB6F62_671:;
	asm	nop
_A30BB6F62_672:;
	asm clr io[0x09].b14;
_A30BB6F62_673:;
	asm	nop
_A30BB6F62_674:;
	asm	nop
_A30BB6F62_675:;
	asm	nop
_A30BB6F62_676:;
	asm	nop
_A30BB6F62_677:;
	asm	nop
_A30BB6F62_678:;
	asm	nop
_A30BB6F62_679:;
	asm	nop
_A30BB6F62_680:;
	asm	nop
_A30BB6F62_681:;
	asm	nop
_A30BB6F62_682:;
	asm	nop
_A30BB6F62_683:;
	asm	nop
_A30BB6F62_684:;
	asm	nop
_A30BB6F62_685:;
	asm set io[0x09].b14;
_A30BB6F62_686:;
	asm	nop
_A30BB6F62_687:;
	asm	nop
_A30BB6F62_688:;
	asm	nop
_A30BB6F62_689:;
	asm clr io[0x09].b14;
_A30BB6F62_690:;
	asm	nop
_A30BB6F62_691:;
	asm	nop
_A30BB6F62_692:;
	asm	nop
_A30BB6F62_693:;
	asm	nop
_A30BB6F62_694:;
	asm	nop
_A30BB6F62_695:;
	asm	nop
_A30BB6F62_696:;
	asm	nop
_A30BB6F62_697:;
	asm	nop
_A30BB6F62_698:;
	asm	nop
_A30BB6F62_699:;
	asm	nop
_A30BB6F62_700:;
	asm	nop
_A30BB6F62_701:;
	asm	nop
_A30BB6F62_702:;
	asm set io[0x09].b14;
_A30BB6F62_703:;
	asm	nop
_A30BB6F62_704:;
	asm	nop
_A30BB6F62_705:;
	asm	nop
_A30BB6F62_706:;
	asm clr io[0x09].b14;
_A30BB6F62_707:;
	asm	nop
_A30BB6F62_708:;
	asm	nop
_A30BB6F62_709:;
	asm	nop
_A30BB6F62_710:;
	asm	nop
_A30BB6F62_711:;
	asm	nop
_A30BB6F62_712:;
	asm	nop
_A30BB6F62_713:;
	asm	nop
_A30BB6F62_714:;
	asm	nop
_A30BB6F62_715:;
	asm	nop
_A30BB6F62_716:;
	asm	nop
_A30BB6F62_717:;
	asm	nop
_A30BB6F62_718:;
	asm	nop
_A30BB6F62_719:;
	asm set io[0x09].b14;
_A30BB6F62_720:;
	asm	nop
_A30BB6F62_721:;
	asm	nop
_A30BB6F62_722:;
	asm	nop
_A30BB6F62_723:;
	asm clr io[0x09].b14;
_A30BB6F62_724:;
	asm	nop
_A30BB6F62_725:;
	asm	nop
_A30BB6F62_726:;
	asm	nop
_A30BB6F62_727:;
	asm	nop
_A30BB6F62_728:;
	asm	nop
_A30BB6F62_729:;
	asm	nop
_A30BB6F62_730:;
	asm	nop
_A30BB6F62_731:;
	asm	nop
_A30BB6F62_732:;
	asm	nop
_A30BB6F62_733:;
	asm	nop
_A30BB6F62_734:;
	asm	nop
_A30BB6F62_735:;
	asm	nop
_A30BB6F62_736:;
	asm set io[0x09].b14;
_A30BB6F62_737:;
	asm	nop
_A30BB6F62_738:;
	asm	nop
_A30BB6F62_739:;
	asm	nop
_A30BB6F62_740:;
	asm clr io[0x09].b14;
_A30BB6F62_741:;
	asm	nop
_A30BB6F62_742:;
	asm	nop
_A30BB6F62_743:;
	asm	nop
_A30BB6F62_744:;
	asm	nop
_A30BB6F62_745:;
	asm	nop
_A30BB6F62_746:;
	asm	nop
_A30BB6F62_747:;
	asm	nop
_A30BB6F62_748:;
	asm	nop
_A30BB6F62_749:;
	asm	nop
_A30BB6F62_750:;
	asm	nop
_A30BB6F62_751:;
	asm	nop
_A30BB6F62_752:;
	asm	nop
_A30BB6F62_753:;
	asm set io[0x09].b14;
_A30BB6F62_754:;
	asm	nop
_A30BB6F62_755:;
	asm	nop
_A30BB6F62_756:;
	asm	nop
_A30BB6F62_757:;
	asm clr io[0x09].b14;
_A30BB6F62_758:;
	asm	nop
_A30BB6F62_759:;
	asm	nop
_A30BB6F62_760:;
	asm	nop
_A30BB6F62_761:;
	asm	nop
_A30BB6F62_762:;
	asm	nop
_A30BB6F62_763:;
	asm	nop
_A30BB6F62_764:;
	asm	nop
_A30BB6F62_765:;
	asm	nop
_A30BB6F62_766:;
	asm	nop
_A30BB6F62_767:;
	asm	nop
_A30BB6F62_768:;
	asm	nop
_A30BB6F62_769:;
	asm	nop
_A30BB6F62_770:;
	asm set io[0x09].b14;
_A30BB6F62_771:;
	asm	nop
_A30BB6F62_772:;
	asm	nop
_A30BB6F62_773:;
	asm	nop
_A30BB6F62_774:;
	asm clr io[0x09].b14;
_A30BB6F62_775:;
	asm	nop
_A30BB6F62_776:;
	asm	nop
_A30BB6F62_777:;
	asm	nop
_A30BB6F62_778:;
	asm	nop
_A30BB6F62_779:;
	asm	nop
_A30BB6F62_780:;
	asm	nop
_A30BB6F62_781:;
	asm	nop
_A30BB6F62_782:;
	asm	nop
_A30BB6F62_783:;
	asm	nop
_A30BB6F62_784:;
	asm	nop
_A30BB6F62_785:;
	asm	nop
_A30BB6F62_786:;
	asm	nop
_A30BB6F62_787:;
	asm set io[0x09].b14;
_A30BB6F62_788:;
	asm	nop
_A30BB6F62_789:;
	asm	nop
_A30BB6F62_790:;
	asm	nop
_A30BB6F62_791:;
	asm clr io[0x09].b14;
_A30BB6F62_792:;
	asm	nop
_A30BB6F62_793:;
	asm	nop
_A30BB6F62_794:;
	asm	nop
_A30BB6F62_795:;
	asm	nop
_A30BB6F62_796:;
	asm	nop
_A30BB6F62_797:;
	asm	nop
_A30BB6F62_798:;
	asm	nop
_A30BB6F62_799:;
	asm	nop
_A30BB6F62_800:;
	asm	nop
_A30BB6F62_801:;
	asm	nop
_A30BB6F62_802:;
	asm	nop
_A30BB6F62_803:;
	asm	nop
_A30BB6F62_804:;
	asm set io[0x09].b14;
_A30BB6F62_805:;
	asm	nop
_A30BB6F62_806:;
	asm	nop
_A30BB6F62_807:;
	asm	nop
_A30BB6F62_808:;
	asm clr io[0x09].b14;
_A30BB6F62_809:;
	asm	nop
_A30BB6F62_810:;
	asm	nop
_A30BB6F62_811:;
	asm	nop
_A30BB6F62_812:;
	asm	nop
_A30BB6F62_813:;
	asm	nop
_A30BB6F62_814:;
	asm	nop
_A30BB6F62_815:;
	asm	nop
_A30BB6F62_816:;
	asm	nop
_A30BB6F62_817:;
	asm	nop
_A30BB6F62_818:;
	asm	nop
_A30BB6F62_819:;
	asm	nop
_A30BB6F62_820:;
	asm	nop
_A30BB6F62_821:;
	asm set io[0x09].b14;
_A30BB6F62_822:;
	asm	nop
_A30BB6F62_823:;
	asm	nop
_A30BB6F62_824:;
	asm	nop
_A30BB6F62_825:;
	asm clr io[0x09].b14;
_A30BB6F62_826:;
	asm	nop
_A30BB6F62_827:;
	asm	nop
_A30BB6F62_828:;
	asm	nop
_A30BB6F62_829:;
	asm	nop
_A30BB6F62_830:;
	asm	nop
_A30BB6F62_831:;
	asm	nop
_A30BB6F62_832:;
	asm	nop
_A30BB6F62_833:;
	asm	nop
_A30BB6F62_834:;
	asm	nop
_A30BB6F62_835:;
	asm	nop
_A30BB6F62_836:;
	asm	nop
_A30BB6F62_837:;
	asm	nop
_A30BB6F62_838:;
	asm set io[0x09].b14;
_A30BB6F62_839:;
	asm	nop
_A30BB6F62_840:;
	asm	nop
_A30BB6F62_841:;
	asm	nop
_A30BB6F62_842:;
	asm clr io[0x09].b14;
_A30BB6F62_843:;
	asm	nop
_A30BB6F62_844:;
	asm	nop
_A30BB6F62_845:;
	asm	nop
_A30BB6F62_846:;
	asm	nop
_A30BB6F62_847:;
	asm	nop
_A30BB6F62_848:;
	asm	nop
_A30BB6F62_849:;
	asm	nop
_A30BB6F62_850:;
	asm	nop
_A30BB6F62_851:;
	asm	nop
_A30BB6F62_852:;
	asm	nop
_A30BB6F62_853:;
	asm	nop
_A30BB6F62_854:;
	asm	nop
_A30BB6F62_855:;
	asm set io[0x09].b14;
_A30BB6F62_856:;
	asm	nop
_A30BB6F62_857:;
	asm	nop
_A30BB6F62_858:;
	asm	nop
_A30BB6F62_859:;
	asm clr io[0x09].b14;
_A30BB6F62_860:;
	asm	nop
_A30BB6F62_861:;
	asm	nop
_A30BB6F62_862:;
	asm	nop
_A30BB6F62_863:;
	asm	nop
_A30BB6F62_864:;
	asm	nop
_A30BB6F62_865:;
	asm	nop
_A30BB6F62_866:;
	asm	nop
_A30BB6F62_867:;
	asm	nop
_A30BB6F62_868:;
	asm	nop
_A30BB6F62_869:;
	asm	nop
_A30BB6F62_870:;
	asm	nop
_A30BB6F62_871:;
	asm	nop
_A30BB6F62_872:;
	asm set io[0x09].b14;
_A30BB6F62_873:;
	asm	nop
_A30BB6F62_874:;
	asm	nop
_A30BB6F62_875:;
	asm	nop
_A30BB6F62_876:;
	asm clr io[0x09].b14;
_A30BB6F62_877:;
	asm	nop
_A30BB6F62_878:;
	asm	nop
_A30BB6F62_879:;
	asm	nop
_A30BB6F62_880:;
	asm	nop
_A30BB6F62_881:;
	asm	nop
_A30BB6F62_882:;
	asm	nop
_A30BB6F62_883:;
	asm	nop
_A30BB6F62_884:;
	asm	nop
_A30BB6F62_885:;
	asm	nop
_A30BB6F62_886:;
	asm	nop
_A30BB6F62_887:;
	asm	nop
_A30BB6F62_888:;
	asm	nop
_A30BB6F62_889:;
	asm set io[0x09].b14;
_A30BB6F62_890:;
	asm	nop
_A30BB6F62_891:;
	asm	nop
_A30BB6F62_892:;
	asm	nop
_A30BB6F62_893:;
	asm clr io[0x09].b14;
_A30BB6F62_894:;
	asm	nop
_A30BB6F62_895:;
	asm	nop
_A30BB6F62_896:;
	asm	nop
_A30BB6F62_897:;
	asm	nop
_A30BB6F62_898:;
	asm	nop
_A30BB6F62_899:;
	asm	nop
_A30BB6F62_900:;
	asm	nop
_A30BB6F62_901:;
	asm	nop
_A30BB6F62_902:;
	asm	nop
_A30BB6F62_903:;
	asm	nop
_A30BB6F62_904:;
	asm	nop
_A30BB6F62_905:;
	asm	nop
_A30BB6F62_906:;
	asm set io[0x09].b14;
_A30BB6F62_907:;
	asm	nop
_A30BB6F62_908:;
	asm	nop
_A30BB6F62_909:;
	asm	nop
_A30BB6F62_910:;
	asm clr io[0x09].b14;
_A30BB6F62_911:;
	asm	nop
_A30BB6F62_912:;
	asm	nop
_A30BB6F62_913:;
	asm	nop
_A30BB6F62_914:;
	asm	nop
_A30BB6F62_915:;
	asm	nop
_A30BB6F62_916:;
	asm	nop
_A30BB6F62_917:;
	asm	nop
_A30BB6F62_918:;
	asm	nop
_A30BB6F62_919:;
	asm	nop
_A30BB6F62_920:;
	asm	nop
_A30BB6F62_921:;
	asm	nop
_A30BB6F62_922:;
	asm	nop
_A30BB6F62_923:;
	asm set io[0x09].b14;
_A30BB6F62_924:;
	asm	nop
_A30BB6F62_925:;
	asm	nop
_A30BB6F62_926:;
	asm	nop
_A30BB6F62_927:;
	asm clr io[0x09].b14;
_A30BB6F62_928:;
	asm	nop
_A30BB6F62_929:;
	asm	nop
_A30BB6F62_930:;
	asm	nop
_A30BB6F62_931:;
	asm	nop
_A30BB6F62_932:;
	asm	nop
_A30BB6F62_933:;
	asm	nop
_A30BB6F62_934:;
	asm	nop
_A30BB6F62_935:;
	asm	nop
_A30BB6F62_936:;
	asm	nop
_A30BB6F62_937:;
	asm	nop
_A30BB6F62_938:;
	asm	nop
_A30BB6F62_939:;
	asm	nop
_A30BB6F62_940:;
	goto LD63FD439_50;
LD63FD439_54:;
_A30BB6F62_941:;
	asm set io[0x09].b14;
_A30BB6F62_942:;
	asm	nop
_A30BB6F62_943:;
	asm	nop
_A30BB6F62_944:;
	asm	nop
_A30BB6F62_945:;
	asm clr io[0x09].b14;
_A30BB6F62_946:;
	asm	nop
_A30BB6F62_947:;
	asm	nop
_A30BB6F62_948:;
	asm	nop
_A30BB6F62_949:;
	asm	nop
_A30BB6F62_950:;
	asm	nop
_A30BB6F62_951:;
	asm	nop
_A30BB6F62_952:;
	asm	nop
_A30BB6F62_953:;
	asm	nop
_A30BB6F62_954:;
	asm	nop
_A30BB6F62_955:;
	asm	nop
_A30BB6F62_956:;
	asm	nop
_A30BB6F62_957:;
	asm	nop
_A30BB6F62_958:;
	asm set io[0x09].b14;
_A30BB6F62_959:;
	asm	nop
_A30BB6F62_960:;
	asm	nop
_A30BB6F62_961:;
	asm	nop
_A30BB6F62_962:;
	asm clr io[0x09].b14;
_A30BB6F62_963:;
	asm	nop
_A30BB6F62_964:;
	asm	nop
_A30BB6F62_965:;
	asm	nop
_A30BB6F62_966:;
	asm	nop
_A30BB6F62_967:;
	asm	nop
_A30BB6F62_968:;
	asm	nop
_A30BB6F62_969:;
	asm	nop
_A30BB6F62_970:;
	asm	nop
_A30BB6F62_971:;
	asm	nop
_A30BB6F62_972:;
	asm	nop
_A30BB6F62_973:;
	asm	nop
_A30BB6F62_974:;
	asm	nop
_A30BB6F62_975:;
	asm set io[0x09].b14;
_A30BB6F62_976:;
	asm	nop
_A30BB6F62_977:;
	asm	nop
_A30BB6F62_978:;
	asm	nop
_A30BB6F62_979:;
	asm clr io[0x09].b14;
_A30BB6F62_980:;
	asm	nop
_A30BB6F62_981:;
	asm	nop
_A30BB6F62_982:;
	asm	nop
_A30BB6F62_983:;
	asm	nop
_A30BB6F62_984:;
	asm	nop
_A30BB6F62_985:;
	asm	nop
_A30BB6F62_986:;
	asm	nop
_A30BB6F62_987:;
	asm	nop
_A30BB6F62_988:;
	asm	nop
_A30BB6F62_989:;
	asm	nop
_A30BB6F62_990:;
	asm	nop
_A30BB6F62_991:;
	asm	nop
_A30BB6F62_992:;
	asm set io[0x09].b14;
_A30BB6F62_993:;
	asm	nop
_A30BB6F62_994:;
	asm	nop
_A30BB6F62_995:;
	asm	nop
_A30BB6F62_996:;
	asm clr io[0x09].b14;
_A30BB6F62_997:;
	asm	nop
_A30BB6F62_998:;
	asm	nop
_A30BB6F62_999:;
	asm	nop
_A30BB6F62_1000:;
	asm	nop
_A30BB6F62_1001:;
	asm	nop
_A30BB6F62_1002:;
	asm	nop
_A30BB6F62_1003:;
	asm	nop
_A30BB6F62_1004:;
	asm	nop
_A30BB6F62_1005:;
	asm	nop
_A30BB6F62_1006:;
	asm	nop
_A30BB6F62_1007:;
	asm	nop
_A30BB6F62_1008:;
	asm	nop
_A30BB6F62_1009:;
	asm set io[0x09].b14;
_A30BB6F62_1010:;
	asm	nop
_A30BB6F62_1011:;
	asm	nop
_A30BB6F62_1012:;
	asm	nop
_A30BB6F62_1013:;
	asm clr io[0x09].b14;
_A30BB6F62_1014:;
	asm	nop
_A30BB6F62_1015:;
	asm	nop
_A30BB6F62_1016:;
	asm	nop
_A30BB6F62_1017:;
	asm	nop
_A30BB6F62_1018:;
	asm	nop
_A30BB6F62_1019:;
	asm	nop
_A30BB6F62_1020:;
	asm	nop
_A30BB6F62_1021:;
	asm	nop
_A30BB6F62_1022:;
	asm	nop
_A30BB6F62_1023:;
	asm	nop
_A30BB6F62_1024:;
	asm	nop
_A30BB6F62_1025:;
	asm	nop
_A30BB6F62_1026:;
	asm set io[0x09].b14;
_A30BB6F62_1027:;
	asm	nop
_A30BB6F62_1028:;
	asm	nop
_A30BB6F62_1029:;
	asm	nop
_A30BB6F62_1030:;
	asm clr io[0x09].b14;
_A30BB6F62_1031:;
	asm	nop
_A30BB6F62_1032:;
	asm	nop
_A30BB6F62_1033:;
	asm	nop
_A30BB6F62_1034:;
	asm	nop
_A30BB6F62_1035:;
	asm	nop
_A30BB6F62_1036:;
	asm	nop
_A30BB6F62_1037:;
	asm	nop
_A30BB6F62_1038:;
	asm	nop
_A30BB6F62_1039:;
	asm	nop
_A30BB6F62_1040:;
	asm	nop
_A30BB6F62_1041:;
	asm	nop
_A30BB6F62_1042:;
	asm	nop
_A30BB6F62_1043:;
	asm set io[0x09].b14;
_A30BB6F62_1044:;
	asm	nop
_A30BB6F62_1045:;
	asm	nop
_A30BB6F62_1046:;
	asm	nop
_A30BB6F62_1047:;
	asm clr io[0x09].b14;
_A30BB6F62_1048:;
	asm	nop
_A30BB6F62_1049:;
	asm	nop
_A30BB6F62_1050:;
	asm	nop
_A30BB6F62_1051:;
	asm	nop
_A30BB6F62_1052:;
	asm	nop
_A30BB6F62_1053:;
	asm	nop
_A30BB6F62_1054:;
	asm	nop
_A30BB6F62_1055:;
	asm	nop
_A30BB6F62_1056:;
	asm	nop
_A30BB6F62_1057:;
	asm	nop
_A30BB6F62_1058:;
	asm	nop
_A30BB6F62_1059:;
	asm	nop
_A30BB6F62_1060:;
	asm set io[0x09].b14;
_A30BB6F62_1061:;
	asm	nop
_A30BB6F62_1062:;
	asm	nop
_A30BB6F62_1063:;
	asm	nop
_A30BB6F62_1064:;
	asm clr io[0x09].b14;
_A30BB6F62_1065:;
	asm	nop
_A30BB6F62_1066:;
	asm	nop
_A30BB6F62_1067:;
	asm	nop
_A30BB6F62_1068:;
	asm	nop
_A30BB6F62_1069:;
	asm	nop
_A30BB6F62_1070:;
	asm	nop
_A30BB6F62_1071:;
	asm	nop
_A30BB6F62_1072:;
	asm	nop
_A30BB6F62_1073:;
	asm	nop
_A30BB6F62_1074:;
	asm	nop
_A30BB6F62_1075:;
	asm	nop
_A30BB6F62_1076:;
	asm	nop
_A30BB6F62_1077:;
	asm set io[0x09].b14;
_A30BB6F62_1078:;
	asm	nop
_A30BB6F62_1079:;
	asm	nop
_A30BB6F62_1080:;
	asm	nop
_A30BB6F62_1081:;
	asm	nop
_A30BB6F62_1082:;
	asm	nop
_A30BB6F62_1083:;
	asm	nop
_A30BB6F62_1084:;
	asm	nop
_A30BB6F62_1085:;
	asm	nop
_A30BB6F62_1086:;
	asm	nop
_A30BB6F62_1087:;
	asm	nop
_A30BB6F62_1088:;
	asm	nop
_A30BB6F62_1089:;
	asm	nop
_A30BB6F62_1090:;
	asm clr io[0x09].b14;
_A30BB6F62_1091:;
	asm	nop
_A30BB6F62_1092:;
	asm	nop
_A30BB6F62_1093:;
	asm	nop
_A30BB6F62_1094:;
	asm set io[0x09].b14;
_A30BB6F62_1095:;
	asm	nop
_A30BB6F62_1096:;
	asm	nop
_A30BB6F62_1097:;
	asm	nop
_A30BB6F62_1098:;
	asm	nop
_A30BB6F62_1099:;
	asm	nop
_A30BB6F62_1100:;
	asm	nop
_A30BB6F62_1101:;
	asm	nop
_A30BB6F62_1102:;
	asm	nop
_A30BB6F62_1103:;
	asm	nop
_A30BB6F62_1104:;
	asm	nop
_A30BB6F62_1105:;
	asm	nop
_A30BB6F62_1106:;
	asm	nop
_A30BB6F62_1107:;
	asm clr io[0x09].b14;
_A30BB6F62_1108:;
	asm	nop
_A30BB6F62_1109:;
	asm	nop
_A30BB6F62_1110:;
	asm	nop
_A30BB6F62_1111:;
	asm set io[0x09].b14;
_A30BB6F62_1112:;
	asm	nop
_A30BB6F62_1113:;
	asm	nop
_A30BB6F62_1114:;
	asm	nop
_A30BB6F62_1115:;
	asm	nop
_A30BB6F62_1116:;
	asm	nop
_A30BB6F62_1117:;
	asm	nop
_A30BB6F62_1118:;
	asm	nop
_A30BB6F62_1119:;
	asm	nop
_A30BB6F62_1120:;
	asm	nop
_A30BB6F62_1121:;
	asm	nop
_A30BB6F62_1122:;
	asm	nop
_A30BB6F62_1123:;
	asm	nop
_A30BB6F62_1124:;
	asm clr io[0x09].b14;
_A30BB6F62_1125:;
	asm	nop
_A30BB6F62_1126:;
	asm	nop
_A30BB6F62_1127:;
	asm	nop
_A30BB6F62_1128:;
	asm set io[0x09].b14;
_A30BB6F62_1129:;
	asm	nop
_A30BB6F62_1130:;
	asm	nop
_A30BB6F62_1131:;
	asm	nop
_A30BB6F62_1132:;
	asm	nop
_A30BB6F62_1133:;
	asm	nop
_A30BB6F62_1134:;
	asm	nop
_A30BB6F62_1135:;
	asm	nop
_A30BB6F62_1136:;
	asm	nop
_A30BB6F62_1137:;
	asm	nop
_A30BB6F62_1138:;
	asm	nop
_A30BB6F62_1139:;
	asm	nop
_A30BB6F62_1140:;
	asm	nop
_A30BB6F62_1141:;
	asm clr io[0x09].b14;
_A30BB6F62_1142:;
	asm	nop
_A30BB6F62_1143:;
	asm	nop
_A30BB6F62_1144:;
	asm	nop
_A30BB6F62_1145:;
	asm set io[0x09].b14;
_A30BB6F62_1146:;
	asm	nop
_A30BB6F62_1147:;
	asm	nop
_A30BB6F62_1148:;
	asm	nop
_A30BB6F62_1149:;
	asm	nop
_A30BB6F62_1150:;
	asm	nop
_A30BB6F62_1151:;
	asm	nop
_A30BB6F62_1152:;
	asm	nop
_A30BB6F62_1153:;
	asm	nop
_A30BB6F62_1154:;
	asm	nop
_A30BB6F62_1155:;
	asm	nop
_A30BB6F62_1156:;
	asm	nop
_A30BB6F62_1157:;
	asm	nop
_A30BB6F62_1158:;
	asm clr io[0x09].b14;
_A30BB6F62_1159:;
	asm	nop
_A30BB6F62_1160:;
	asm	nop
_A30BB6F62_1161:;
	asm	nop
_A30BB6F62_1162:;
	asm set io[0x09].b14;
_A30BB6F62_1163:;
	asm	nop
_A30BB6F62_1164:;
	asm	nop
_A30BB6F62_1165:;
	asm	nop
_A30BB6F62_1166:;
	asm	nop
_A30BB6F62_1167:;
	asm	nop
_A30BB6F62_1168:;
	asm	nop
_A30BB6F62_1169:;
	asm	nop
_A30BB6F62_1170:;
	asm	nop
_A30BB6F62_1171:;
	asm	nop
_A30BB6F62_1172:;
	asm	nop
_A30BB6F62_1173:;
	asm	nop
_A30BB6F62_1174:;
	asm	nop
_A30BB6F62_1175:;
	asm clr io[0x09].b14;
_A30BB6F62_1176:;
	asm	nop
_A30BB6F62_1177:;
	asm	nop
_A30BB6F62_1178:;
	asm	nop
_A30BB6F62_1179:;
	asm set io[0x09].b14;
_A30BB6F62_1180:;
	asm	nop
_A30BB6F62_1181:;
	asm	nop
_A30BB6F62_1182:;
	asm	nop
_A30BB6F62_1183:;
	asm	nop
_A30BB6F62_1184:;
	asm	nop
_A30BB6F62_1185:;
	asm	nop
_A30BB6F62_1186:;
	asm	nop
_A30BB6F62_1187:;
	asm	nop
_A30BB6F62_1188:;
	asm	nop
_A30BB6F62_1189:;
	asm	nop
_A30BB6F62_1190:;
	asm	nop
_A30BB6F62_1191:;
	asm	nop
_A30BB6F62_1192:;
	asm clr io[0x09].b14;
_A30BB6F62_1193:;
	asm	nop
_A30BB6F62_1194:;
	asm	nop
_A30BB6F62_1195:;
	asm	nop
_A30BB6F62_1196:;
	asm set io[0x09].b14;
_A30BB6F62_1197:;
	asm	nop
_A30BB6F62_1198:;
	asm	nop
_A30BB6F62_1199:;
	asm	nop
_A30BB6F62_1200:;
	asm	nop
_A30BB6F62_1201:;
	asm	nop
_A30BB6F62_1202:;
	asm	nop
_A30BB6F62_1203:;
	asm	nop
_A30BB6F62_1204:;
	asm	nop
_A30BB6F62_1205:;
	asm	nop
_A30BB6F62_1206:;
	asm	nop
_A30BB6F62_1207:;
	asm	nop
_A30BB6F62_1208:;
	asm	nop
_A30BB6F62_1209:;
	asm clr io[0x09].b14;
_A30BB6F62_1210:;
	asm	nop
_A30BB6F62_1211:;
	asm	nop
_A30BB6F62_1212:;
	asm	nop
_A30BB6F62_1213:;
	asm set io[0x09].b14;
_A30BB6F62_1214:;
	asm	nop
_A30BB6F62_1215:;
	asm	nop
_A30BB6F62_1216:;
	asm	nop
_A30BB6F62_1217:;
	asm clr io[0x09].b14;
_A30BB6F62_1218:;
	asm	nop
_A30BB6F62_1219:;
	asm	nop
_A30BB6F62_1220:;
	asm	nop
_A30BB6F62_1221:;
	asm	nop
_A30BB6F62_1222:;
	asm	nop
_A30BB6F62_1223:;
	asm	nop
_A30BB6F62_1224:;
	asm	nop
_A30BB6F62_1225:;
	asm	nop
_A30BB6F62_1226:;
	asm	nop
_A30BB6F62_1227:;
	asm	nop
_A30BB6F62_1228:;
	asm	nop
_A30BB6F62_1229:;
	asm	nop
_A30BB6F62_1230:;
	asm set io[0x09].b14;
_A30BB6F62_1231:;
	asm	nop
_A30BB6F62_1232:;
	asm	nop
_A30BB6F62_1233:;
	asm	nop
_A30BB6F62_1234:;
	asm clr io[0x09].b14;
_A30BB6F62_1235:;
	asm	nop
_A30BB6F62_1236:;
	asm	nop
_A30BB6F62_1237:;
	asm	nop
_A30BB6F62_1238:;
	asm	nop
_A30BB6F62_1239:;
	asm	nop
_A30BB6F62_1240:;
	asm	nop
_A30BB6F62_1241:;
	asm	nop
_A30BB6F62_1242:;
	asm	nop
_A30BB6F62_1243:;
	asm	nop
_A30BB6F62_1244:;
	asm	nop
_A30BB6F62_1245:;
	asm	nop
_A30BB6F62_1246:;
	asm	nop
_A30BB6F62_1247:;
	asm set io[0x09].b14;
_A30BB6F62_1248:;
	asm	nop
_A30BB6F62_1249:;
	asm	nop
_A30BB6F62_1250:;
	asm	nop
_A30BB6F62_1251:;
	asm clr io[0x09].b14;
_A30BB6F62_1252:;
	asm	nop
_A30BB6F62_1253:;
	asm	nop
_A30BB6F62_1254:;
	asm	nop
_A30BB6F62_1255:;
	asm	nop
_A30BB6F62_1256:;
	asm	nop
_A30BB6F62_1257:;
	asm	nop
_A30BB6F62_1258:;
	asm	nop
_A30BB6F62_1259:;
	asm	nop
_A30BB6F62_1260:;
	asm	nop
_A30BB6F62_1261:;
	asm	nop
_A30BB6F62_1262:;
	asm	nop
_A30BB6F62_1263:;
	asm	nop
_A30BB6F62_1264:;
	asm set io[0x09].b14;
_A30BB6F62_1265:;
	asm	nop
_A30BB6F62_1266:;
	asm	nop
_A30BB6F62_1267:;
	asm	nop
_A30BB6F62_1268:;
	asm clr io[0x09].b14;
_A30BB6F62_1269:;
	asm	nop
_A30BB6F62_1270:;
	asm	nop
_A30BB6F62_1271:;
	asm	nop
_A30BB6F62_1272:;
	asm	nop
_A30BB6F62_1273:;
	asm	nop
_A30BB6F62_1274:;
	asm	nop
_A30BB6F62_1275:;
	asm	nop
_A30BB6F62_1276:;
	asm	nop
_A30BB6F62_1277:;
	asm	nop
_A30BB6F62_1278:;
	asm	nop
_A30BB6F62_1279:;
	asm	nop
_A30BB6F62_1280:;
	asm	nop
_A30BB6F62_1281:;
	asm set io[0x09].b14;
_A30BB6F62_1282:;
	asm	nop
_A30BB6F62_1283:;
	asm	nop
_A30BB6F62_1284:;
	asm	nop
_A30BB6F62_1285:;
	asm clr io[0x09].b14;
_A30BB6F62_1286:;
	asm	nop
_A30BB6F62_1287:;
	asm	nop
_A30BB6F62_1288:;
	asm	nop
_A30BB6F62_1289:;
	asm	nop
_A30BB6F62_1290:;
	asm	nop
_A30BB6F62_1291:;
	asm	nop
_A30BB6F62_1292:;
	asm	nop
_A30BB6F62_1293:;
	asm	nop
_A30BB6F62_1294:;
	asm	nop
_A30BB6F62_1295:;
	asm	nop
_A30BB6F62_1296:;
	asm	nop
_A30BB6F62_1297:;
	asm	nop
_A30BB6F62_1298:;
	asm set io[0x09].b14;
_A30BB6F62_1299:;
	asm	nop
_A30BB6F62_1300:;
	asm	nop
_A30BB6F62_1301:;
	asm	nop
_A30BB6F62_1302:;
	asm clr io[0x09].b14;
_A30BB6F62_1303:;
	asm	nop
_A30BB6F62_1304:;
	asm	nop
_A30BB6F62_1305:;
	asm	nop
_A30BB6F62_1306:;
	asm	nop
_A30BB6F62_1307:;
	asm	nop
_A30BB6F62_1308:;
	asm	nop
_A30BB6F62_1309:;
	asm	nop
_A30BB6F62_1310:;
	asm	nop
_A30BB6F62_1311:;
	asm	nop
_A30BB6F62_1312:;
	asm	nop
_A30BB6F62_1313:;
	asm	nop
_A30BB6F62_1314:;
	asm	nop
_A30BB6F62_1315:;
	asm set io[0x09].b14;
_A30BB6F62_1316:;
	asm	nop
_A30BB6F62_1317:;
	asm	nop
_A30BB6F62_1318:;
	asm	nop
_A30BB6F62_1319:;
	asm clr io[0x09].b14;
_A30BB6F62_1320:;
	asm	nop
_A30BB6F62_1321:;
	asm	nop
_A30BB6F62_1322:;
	asm	nop
_A30BB6F62_1323:;
	asm	nop
_A30BB6F62_1324:;
	asm	nop
_A30BB6F62_1325:;
	asm	nop
_A30BB6F62_1326:;
	asm	nop
_A30BB6F62_1327:;
	asm	nop
_A30BB6F62_1328:;
	asm	nop
_A30BB6F62_1329:;
	asm	nop
_A30BB6F62_1330:;
	asm	nop
_A30BB6F62_1331:;
	asm	nop
_A30BB6F62_1332:;
	asm set io[0x09].b14;
_A30BB6F62_1333:;
	asm	nop
_A30BB6F62_1334:;
	asm	nop
_A30BB6F62_1335:;
	asm	nop
_A30BB6F62_1336:;
	asm clr io[0x09].b14;
_A30BB6F62_1337:;
	asm	nop
_A30BB6F62_1338:;
	asm	nop
_A30BB6F62_1339:;
	asm	nop
_A30BB6F62_1340:;
	asm	nop
_A30BB6F62_1341:;
	asm	nop
_A30BB6F62_1342:;
	asm	nop
_A30BB6F62_1343:;
	asm	nop
_A30BB6F62_1344:;
	asm	nop
_A30BB6F62_1345:;
	asm	nop
_A30BB6F62_1346:;
	asm	nop
_A30BB6F62_1347:;
	asm	nop
_A30BB6F62_1348:;
	asm	nop
_A30BB6F62_1349:;
	goto LD63FD439_50;
LD63FD439_55:;
_A30BB6F62_1350:;
	asm set io[0x09].b14;
_A30BB6F62_1351:;
	asm	nop
_A30BB6F62_1352:;
	asm	nop
_A30BB6F62_1353:;
	asm	nop
_A30BB6F62_1354:;
	asm	nop
_A30BB6F62_1355:;
	asm	nop
_A30BB6F62_1356:;
	asm	nop
_A30BB6F62_1357:;
	asm	nop
_A30BB6F62_1358:;
	asm	nop
_A30BB6F62_1359:;
	asm	nop
_A30BB6F62_1360:;
	asm	nop
_A30BB6F62_1361:;
	asm	nop
_A30BB6F62_1362:;
	asm	nop
_A30BB6F62_1363:;
	asm clr io[0x09].b14;
_A30BB6F62_1364:;
	asm	nop
_A30BB6F62_1365:;
	asm	nop
_A30BB6F62_1366:;
	asm	nop
_A30BB6F62_1367:;
	asm set io[0x09].b14;
_A30BB6F62_1368:;
	asm	nop
_A30BB6F62_1369:;
	asm	nop
_A30BB6F62_1370:;
	asm	nop
_A30BB6F62_1371:;
	asm	nop
_A30BB6F62_1372:;
	asm	nop
_A30BB6F62_1373:;
	asm	nop
_A30BB6F62_1374:;
	asm	nop
_A30BB6F62_1375:;
	asm	nop
_A30BB6F62_1376:;
	asm	nop
_A30BB6F62_1377:;
	asm	nop
_A30BB6F62_1378:;
	asm	nop
_A30BB6F62_1379:;
	asm	nop
_A30BB6F62_1380:;
	asm clr io[0x09].b14;
_A30BB6F62_1381:;
	asm	nop
_A30BB6F62_1382:;
	asm	nop
_A30BB6F62_1383:;
	asm	nop
_A30BB6F62_1384:;
	asm set io[0x09].b14;
_A30BB6F62_1385:;
	asm	nop
_A30BB6F62_1386:;
	asm	nop
_A30BB6F62_1387:;
	asm	nop
_A30BB6F62_1388:;
	asm	nop
_A30BB6F62_1389:;
	asm	nop
_A30BB6F62_1390:;
	asm	nop
_A30BB6F62_1391:;
	asm	nop
_A30BB6F62_1392:;
	asm	nop
_A30BB6F62_1393:;
	asm	nop
_A30BB6F62_1394:;
	asm	nop
_A30BB6F62_1395:;
	asm	nop
_A30BB6F62_1396:;
	asm	nop
_A30BB6F62_1397:;
	asm clr io[0x09].b14;
_A30BB6F62_1398:;
	asm	nop
_A30BB6F62_1399:;
	asm	nop
_A30BB6F62_1400:;
	asm	nop
_A30BB6F62_1401:;
	asm set io[0x09].b14;
_A30BB6F62_1402:;
	asm	nop
_A30BB6F62_1403:;
	asm	nop
_A30BB6F62_1404:;
	asm	nop
_A30BB6F62_1405:;
	asm	nop
_A30BB6F62_1406:;
	asm	nop
_A30BB6F62_1407:;
	asm	nop
_A30BB6F62_1408:;
	asm	nop
_A30BB6F62_1409:;
	asm	nop
_A30BB6F62_1410:;
	asm	nop
_A30BB6F62_1411:;
	asm	nop
_A30BB6F62_1412:;
	asm	nop
_A30BB6F62_1413:;
	asm	nop
_A30BB6F62_1414:;
	asm clr io[0x09].b14;
_A30BB6F62_1415:;
	asm	nop
_A30BB6F62_1416:;
	asm	nop
_A30BB6F62_1417:;
	asm	nop
_A30BB6F62_1418:;
	asm set io[0x09].b14;
_A30BB6F62_1419:;
	asm	nop
_A30BB6F62_1420:;
	asm	nop
_A30BB6F62_1421:;
	asm	nop
_A30BB6F62_1422:;
	asm	nop
_A30BB6F62_1423:;
	asm	nop
_A30BB6F62_1424:;
	asm	nop
_A30BB6F62_1425:;
	asm	nop
_A30BB6F62_1426:;
	asm	nop
_A30BB6F62_1427:;
	asm	nop
_A30BB6F62_1428:;
	asm	nop
_A30BB6F62_1429:;
	asm	nop
_A30BB6F62_1430:;
	asm	nop
_A30BB6F62_1431:;
	asm clr io[0x09].b14;
_A30BB6F62_1432:;
	asm	nop
_A30BB6F62_1433:;
	asm	nop
_A30BB6F62_1434:;
	asm	nop
_A30BB6F62_1435:;
	asm set io[0x09].b14;
_A30BB6F62_1436:;
	asm	nop
_A30BB6F62_1437:;
	asm	nop
_A30BB6F62_1438:;
	asm	nop
_A30BB6F62_1439:;
	asm	nop
_A30BB6F62_1440:;
	asm	nop
_A30BB6F62_1441:;
	asm	nop
_A30BB6F62_1442:;
	asm	nop
_A30BB6F62_1443:;
	asm	nop
_A30BB6F62_1444:;
	asm	nop
_A30BB6F62_1445:;
	asm	nop
_A30BB6F62_1446:;
	asm	nop
_A30BB6F62_1447:;
	asm	nop
_A30BB6F62_1448:;
	asm clr io[0x09].b14;
_A30BB6F62_1449:;
	asm	nop
_A30BB6F62_1450:;
	asm	nop
_A30BB6F62_1451:;
	asm	nop
_A30BB6F62_1452:;
	asm set io[0x09].b14;
_A30BB6F62_1453:;
	asm	nop
_A30BB6F62_1454:;
	asm	nop
_A30BB6F62_1455:;
	asm	nop
_A30BB6F62_1456:;
	asm	nop
_A30BB6F62_1457:;
	asm	nop
_A30BB6F62_1458:;
	asm	nop
_A30BB6F62_1459:;
	asm	nop
_A30BB6F62_1460:;
	asm	nop
_A30BB6F62_1461:;
	asm	nop
_A30BB6F62_1462:;
	asm	nop
_A30BB6F62_1463:;
	asm	nop
_A30BB6F62_1464:;
	asm	nop
_A30BB6F62_1465:;
	asm clr io[0x09].b14;
_A30BB6F62_1466:;
	asm	nop
_A30BB6F62_1467:;
	asm	nop
_A30BB6F62_1468:;
	asm	nop
_A30BB6F62_1469:;
	asm set io[0x09].b14;
_A30BB6F62_1470:;
	asm	nop
_A30BB6F62_1471:;
	asm	nop
_A30BB6F62_1472:;
	asm	nop
_A30BB6F62_1473:;
	asm	nop
_A30BB6F62_1474:;
	asm	nop
_A30BB6F62_1475:;
	asm	nop
_A30BB6F62_1476:;
	asm	nop
_A30BB6F62_1477:;
	asm	nop
_A30BB6F62_1478:;
	asm	nop
_A30BB6F62_1479:;
	asm	nop
_A30BB6F62_1480:;
	asm	nop
_A30BB6F62_1481:;
	asm	nop
_A30BB6F62_1482:;
	asm clr io[0x09].b14;
_A30BB6F62_1483:;
	asm	nop
_A30BB6F62_1484:;
	asm	nop
_A30BB6F62_1485:;
	asm	nop
_A30BB6F62_1486:;
	asm set io[0x09].b14;
_A30BB6F62_1487:;
	asm	nop
_A30BB6F62_1488:;
	asm	nop
_A30BB6F62_1489:;
	asm	nop
_A30BB6F62_1490:;
	asm clr io[0x09].b14;
_A30BB6F62_1491:;
	asm	nop
_A30BB6F62_1492:;
	asm	nop
_A30BB6F62_1493:;
	asm	nop
_A30BB6F62_1494:;
	asm	nop
_A30BB6F62_1495:;
	asm	nop
_A30BB6F62_1496:;
	asm	nop
_A30BB6F62_1497:;
	asm	nop
_A30BB6F62_1498:;
	asm	nop
_A30BB6F62_1499:;
	asm	nop
_A30BB6F62_1500:;
	asm	nop
_A30BB6F62_1501:;
	asm	nop
_A30BB6F62_1502:;
	asm	nop
_A30BB6F62_1503:;
	asm set io[0x09].b14;
_A30BB6F62_1504:;
	asm	nop
_A30BB6F62_1505:;
	asm	nop
_A30BB6F62_1506:;
	asm	nop
_A30BB6F62_1507:;
	asm clr io[0x09].b14;
_A30BB6F62_1508:;
	asm	nop
_A30BB6F62_1509:;
	asm	nop
_A30BB6F62_1510:;
	asm	nop
_A30BB6F62_1511:;
	asm	nop
_A30BB6F62_1512:;
	asm	nop
_A30BB6F62_1513:;
	asm	nop
_A30BB6F62_1514:;
	asm	nop
_A30BB6F62_1515:;
	asm	nop
_A30BB6F62_1516:;
	asm	nop
_A30BB6F62_1517:;
	asm	nop
_A30BB6F62_1518:;
	asm	nop
_A30BB6F62_1519:;
	asm	nop
_A30BB6F62_1520:;
	asm set io[0x09].b14;
_A30BB6F62_1521:;
	asm	nop
_A30BB6F62_1522:;
	asm	nop
_A30BB6F62_1523:;
	asm	nop
_A30BB6F62_1524:;
	asm clr io[0x09].b14;
_A30BB6F62_1525:;
	asm	nop
_A30BB6F62_1526:;
	asm	nop
_A30BB6F62_1527:;
	asm	nop
_A30BB6F62_1528:;
	asm	nop
_A30BB6F62_1529:;
	asm	nop
_A30BB6F62_1530:;
	asm	nop
_A30BB6F62_1531:;
	asm	nop
_A30BB6F62_1532:;
	asm	nop
_A30BB6F62_1533:;
	asm	nop
_A30BB6F62_1534:;
	asm	nop
_A30BB6F62_1535:;
	asm	nop
_A30BB6F62_1536:;
	asm	nop
_A30BB6F62_1537:;
	asm set io[0x09].b14;
_A30BB6F62_1538:;
	asm	nop
_A30BB6F62_1539:;
	asm	nop
_A30BB6F62_1540:;
	asm	nop
_A30BB6F62_1541:;
	asm clr io[0x09].b14;
_A30BB6F62_1542:;
	asm	nop
_A30BB6F62_1543:;
	asm	nop
_A30BB6F62_1544:;
	asm	nop
_A30BB6F62_1545:;
	asm	nop
_A30BB6F62_1546:;
	asm	nop
_A30BB6F62_1547:;
	asm	nop
_A30BB6F62_1548:;
	asm	nop
_A30BB6F62_1549:;
	asm	nop
_A30BB6F62_1550:;
	asm	nop
_A30BB6F62_1551:;
	asm	nop
_A30BB6F62_1552:;
	asm	nop
_A30BB6F62_1553:;
	asm	nop
_A30BB6F62_1554:;
	asm set io[0x09].b14;
_A30BB6F62_1555:;
	asm	nop
_A30BB6F62_1556:;
	asm	nop
_A30BB6F62_1557:;
	asm	nop
_A30BB6F62_1558:;
	asm clr io[0x09].b14;
_A30BB6F62_1559:;
	asm	nop
_A30BB6F62_1560:;
	asm	nop
_A30BB6F62_1561:;
	asm	nop
_A30BB6F62_1562:;
	asm	nop
_A30BB6F62_1563:;
	asm	nop
_A30BB6F62_1564:;
	asm	nop
_A30BB6F62_1565:;
	asm	nop
_A30BB6F62_1566:;
	asm	nop
_A30BB6F62_1567:;
	asm	nop
_A30BB6F62_1568:;
	asm	nop
_A30BB6F62_1569:;
	asm	nop
_A30BB6F62_1570:;
	asm	nop
_A30BB6F62_1571:;
	asm set io[0x09].b14;
_A30BB6F62_1572:;
	asm	nop
_A30BB6F62_1573:;
	asm	nop
_A30BB6F62_1574:;
	asm	nop
_A30BB6F62_1575:;
	asm clr io[0x09].b14;
_A30BB6F62_1576:;
	asm	nop
_A30BB6F62_1577:;
	asm	nop
_A30BB6F62_1578:;
	asm	nop
_A30BB6F62_1579:;
	asm	nop
_A30BB6F62_1580:;
	asm	nop
_A30BB6F62_1581:;
	asm	nop
_A30BB6F62_1582:;
	asm	nop
_A30BB6F62_1583:;
	asm	nop
_A30BB6F62_1584:;
	asm	nop
_A30BB6F62_1585:;
	asm	nop
_A30BB6F62_1586:;
	asm	nop
_A30BB6F62_1587:;
	asm	nop
_A30BB6F62_1588:;
	asm set io[0x09].b14;
_A30BB6F62_1589:;
	asm	nop
_A30BB6F62_1590:;
	asm	nop
_A30BB6F62_1591:;
	asm	nop
_A30BB6F62_1592:;
	asm clr io[0x09].b14;
_A30BB6F62_1593:;
	asm	nop
_A30BB6F62_1594:;
	asm	nop
_A30BB6F62_1595:;
	asm	nop
_A30BB6F62_1596:;
	asm	nop
_A30BB6F62_1597:;
	asm	nop
_A30BB6F62_1598:;
	asm	nop
_A30BB6F62_1599:;
	asm	nop
_A30BB6F62_1600:;
	asm	nop
_A30BB6F62_1601:;
	asm	nop
_A30BB6F62_1602:;
	asm	nop
_A30BB6F62_1603:;
	asm	nop
_A30BB6F62_1604:;
	asm	nop
_A30BB6F62_1605:;
	asm set io[0x09].b14;
_A30BB6F62_1606:;
	asm	nop
_A30BB6F62_1607:;
	asm	nop
_A30BB6F62_1608:;
	asm	nop
_A30BB6F62_1609:;
	asm clr io[0x09].b14;
_A30BB6F62_1610:;
	asm	nop
_A30BB6F62_1611:;
	asm	nop
_A30BB6F62_1612:;
	asm	nop
_A30BB6F62_1613:;
	asm	nop
_A30BB6F62_1614:;
	asm	nop
_A30BB6F62_1615:;
	asm	nop
_A30BB6F62_1616:;
	asm	nop
_A30BB6F62_1617:;
	asm	nop
_A30BB6F62_1618:;
	asm	nop
_A30BB6F62_1619:;
	asm	nop
_A30BB6F62_1620:;
	asm	nop
_A30BB6F62_1621:;
	asm	nop
_A30BB6F62_1622:;
	asm set io[0x09].b14;
_A30BB6F62_1623:;
	asm	nop
_A30BB6F62_1624:;
	asm	nop
_A30BB6F62_1625:;
	asm	nop
_A30BB6F62_1626:;
	asm clr io[0x09].b14;
_A30BB6F62_1627:;
	asm	nop
_A30BB6F62_1628:;
	asm	nop
_A30BB6F62_1629:;
	asm	nop
_A30BB6F62_1630:;
	asm	nop
_A30BB6F62_1631:;
	asm	nop
_A30BB6F62_1632:;
	asm	nop
_A30BB6F62_1633:;
	asm	nop
_A30BB6F62_1634:;
	asm	nop
_A30BB6F62_1635:;
	asm	nop
_A30BB6F62_1636:;
	asm	nop
_A30BB6F62_1637:;
	asm	nop
_A30BB6F62_1638:;
	asm	nop
_A30BB6F62_1639:;
	asm set io[0x09].b14;
_A30BB6F62_1640:;
	asm	nop
_A30BB6F62_1641:;
	asm	nop
_A30BB6F62_1642:;
	asm	nop
_A30BB6F62_1643:;
	asm clr io[0x09].b14;
_A30BB6F62_1644:;
	asm	nop
_A30BB6F62_1645:;
	asm	nop
_A30BB6F62_1646:;
	asm	nop
_A30BB6F62_1647:;
	asm	nop
_A30BB6F62_1648:;
	asm	nop
_A30BB6F62_1649:;
	asm	nop
_A30BB6F62_1650:;
	asm	nop
_A30BB6F62_1651:;
	asm	nop
_A30BB6F62_1652:;
	asm	nop
_A30BB6F62_1653:;
	asm	nop
_A30BB6F62_1654:;
	asm	nop
_A30BB6F62_1655:;
	asm	nop
_A30BB6F62_1656:;
	asm set io[0x09].b14;
_A30BB6F62_1657:;
	asm	nop
_A30BB6F62_1658:;
	asm	nop
_A30BB6F62_1659:;
	asm	nop
_A30BB6F62_1660:;
	asm clr io[0x09].b14;
_A30BB6F62_1661:;
	asm	nop
_A30BB6F62_1662:;
	asm	nop
_A30BB6F62_1663:;
	asm	nop
_A30BB6F62_1664:;
	asm	nop
_A30BB6F62_1665:;
	asm	nop
_A30BB6F62_1666:;
	asm	nop
_A30BB6F62_1667:;
	asm	nop
_A30BB6F62_1668:;
	asm	nop
_A30BB6F62_1669:;
	asm	nop
_A30BB6F62_1670:;
	asm	nop
_A30BB6F62_1671:;
	asm	nop
_A30BB6F62_1672:;
	asm	nop
_A30BB6F62_1673:;
	asm set io[0x09].b14;
_A30BB6F62_1674:;
	asm	nop
_A30BB6F62_1675:;
	asm	nop
_A30BB6F62_1676:;
	asm	nop
_A30BB6F62_1677:;
	asm clr io[0x09].b14;
_A30BB6F62_1678:;
	asm	nop
_A30BB6F62_1679:;
	asm	nop
_A30BB6F62_1680:;
	asm	nop
_A30BB6F62_1681:;
	asm	nop
_A30BB6F62_1682:;
	asm	nop
_A30BB6F62_1683:;
	asm	nop
_A30BB6F62_1684:;
	asm	nop
_A30BB6F62_1685:;
	asm	nop
_A30BB6F62_1686:;
	asm	nop
_A30BB6F62_1687:;
	asm	nop
_A30BB6F62_1688:;
	asm	nop
_A30BB6F62_1689:;
	asm	nop
_A30BB6F62_1690:;
	asm set io[0x09].b14;
_A30BB6F62_1691:;
	asm	nop
_A30BB6F62_1692:;
	asm	nop
_A30BB6F62_1693:;
	asm	nop
_A30BB6F62_1694:;
	asm clr io[0x09].b14;
_A30BB6F62_1695:;
	asm	nop
_A30BB6F62_1696:;
	asm	nop
_A30BB6F62_1697:;
	asm	nop
_A30BB6F62_1698:;
	asm	nop
_A30BB6F62_1699:;
	asm	nop
_A30BB6F62_1700:;
	asm	nop
_A30BB6F62_1701:;
	asm	nop
_A30BB6F62_1702:;
	asm	nop
_A30BB6F62_1703:;
	asm	nop
_A30BB6F62_1704:;
	asm	nop
_A30BB6F62_1705:;
	asm	nop
_A30BB6F62_1706:;
	asm	nop
_A30BB6F62_1707:;
	asm set io[0x09].b14;
_A30BB6F62_1708:;
	asm	nop
_A30BB6F62_1709:;
	asm	nop
_A30BB6F62_1710:;
	asm	nop
_A30BB6F62_1711:;
	asm clr io[0x09].b14;
_A30BB6F62_1712:;
	asm	nop
_A30BB6F62_1713:;
	asm	nop
_A30BB6F62_1714:;
	asm	nop
_A30BB6F62_1715:;
	asm	nop
_A30BB6F62_1716:;
	asm	nop
_A30BB6F62_1717:;
	asm	nop
_A30BB6F62_1718:;
	asm	nop
_A30BB6F62_1719:;
	asm	nop
_A30BB6F62_1720:;
	asm	nop
_A30BB6F62_1721:;
	asm	nop
_A30BB6F62_1722:;
	asm	nop
_A30BB6F62_1723:;
	asm	nop
_A30BB6F62_1724:;
	asm set io[0x09].b14;
_A30BB6F62_1725:;
	asm	nop
_A30BB6F62_1726:;
	asm	nop
_A30BB6F62_1727:;
	asm	nop
_A30BB6F62_1728:;
	asm clr io[0x09].b14;
_A30BB6F62_1729:;
	asm	nop
_A30BB6F62_1730:;
	asm	nop
_A30BB6F62_1731:;
	asm	nop
_A30BB6F62_1732:;
	asm	nop
_A30BB6F62_1733:;
	asm	nop
_A30BB6F62_1734:;
	asm	nop
_A30BB6F62_1735:;
	asm	nop
_A30BB6F62_1736:;
	asm	nop
_A30BB6F62_1737:;
	asm	nop
_A30BB6F62_1738:;
	asm	nop
_A30BB6F62_1739:;
	asm	nop
_A30BB6F62_1740:;
	asm	nop
_A30BB6F62_1741:;
	asm set io[0x09].b14;
_A30BB6F62_1742:;
	asm	nop
_A30BB6F62_1743:;
	asm	nop
_A30BB6F62_1744:;
	asm	nop
_A30BB6F62_1745:;
	asm clr io[0x09].b14;
_A30BB6F62_1746:;
	asm	nop
_A30BB6F62_1747:;
	asm	nop
_A30BB6F62_1748:;
	asm	nop
_A30BB6F62_1749:;
	asm	nop
_A30BB6F62_1750:;
	asm	nop
_A30BB6F62_1751:;
	asm	nop
_A30BB6F62_1752:;
	asm	nop
_A30BB6F62_1753:;
	asm	nop
_A30BB6F62_1754:;
	asm	nop
_A30BB6F62_1755:;
	asm	nop
_A30BB6F62_1756:;
	asm	nop
_A30BB6F62_1757:;
	asm	nop
_A30BB6F62_1758:;
	goto LD63FD439_50;
LD63FD439_56:;
_A30BB6F62_1759:;
	asm set io[0x09].b14;
_A30BB6F62_1760:;
	asm	nop
_A30BB6F62_1761:;
	asm	nop
_A30BB6F62_1762:;
	asm	nop
_A30BB6F62_1763:;
	asm clr io[0x09].b14;
_A30BB6F62_1764:;
	asm	nop
_A30BB6F62_1765:;
	asm	nop
_A30BB6F62_1766:;
	asm	nop
_A30BB6F62_1767:;
	asm	nop
_A30BB6F62_1768:;
	asm	nop
_A30BB6F62_1769:;
	asm	nop
_A30BB6F62_1770:;
	asm	nop
_A30BB6F62_1771:;
	asm	nop
_A30BB6F62_1772:;
	asm	nop
_A30BB6F62_1773:;
	asm	nop
_A30BB6F62_1774:;
	asm	nop
_A30BB6F62_1775:;
	asm	nop
_A30BB6F62_1776:;
	asm set io[0x09].b14;
_A30BB6F62_1777:;
	asm	nop
_A30BB6F62_1778:;
	asm	nop
_A30BB6F62_1779:;
	asm	nop
_A30BB6F62_1780:;
	asm clr io[0x09].b14;
_A30BB6F62_1781:;
	asm	nop
_A30BB6F62_1782:;
	asm	nop
_A30BB6F62_1783:;
	asm	nop
_A30BB6F62_1784:;
	asm	nop
_A30BB6F62_1785:;
	asm	nop
_A30BB6F62_1786:;
	asm	nop
_A30BB6F62_1787:;
	asm	nop
_A30BB6F62_1788:;
	asm	nop
_A30BB6F62_1789:;
	asm	nop
_A30BB6F62_1790:;
	asm	nop
_A30BB6F62_1791:;
	asm	nop
_A30BB6F62_1792:;
	asm	nop
_A30BB6F62_1793:;
	asm set io[0x09].b14;
_A30BB6F62_1794:;
	asm	nop
_A30BB6F62_1795:;
	asm	nop
_A30BB6F62_1796:;
	asm	nop
_A30BB6F62_1797:;
	asm clr io[0x09].b14;
_A30BB6F62_1798:;
	asm	nop
_A30BB6F62_1799:;
	asm	nop
_A30BB6F62_1800:;
	asm	nop
_A30BB6F62_1801:;
	asm	nop
_A30BB6F62_1802:;
	asm	nop
_A30BB6F62_1803:;
	asm	nop
_A30BB6F62_1804:;
	asm	nop
_A30BB6F62_1805:;
	asm	nop
_A30BB6F62_1806:;
	asm	nop
_A30BB6F62_1807:;
	asm	nop
_A30BB6F62_1808:;
	asm	nop
_A30BB6F62_1809:;
	asm	nop
_A30BB6F62_1810:;
	asm set io[0x09].b14;
_A30BB6F62_1811:;
	asm	nop
_A30BB6F62_1812:;
	asm	nop
_A30BB6F62_1813:;
	asm	nop
_A30BB6F62_1814:;
	asm clr io[0x09].b14;
_A30BB6F62_1815:;
	asm	nop
_A30BB6F62_1816:;
	asm	nop
_A30BB6F62_1817:;
	asm	nop
_A30BB6F62_1818:;
	asm	nop
_A30BB6F62_1819:;
	asm	nop
_A30BB6F62_1820:;
	asm	nop
_A30BB6F62_1821:;
	asm	nop
_A30BB6F62_1822:;
	asm	nop
_A30BB6F62_1823:;
	asm	nop
_A30BB6F62_1824:;
	asm	nop
_A30BB6F62_1825:;
	asm	nop
_A30BB6F62_1826:;
	asm	nop
_A30BB6F62_1827:;
	asm set io[0x09].b14;
_A30BB6F62_1828:;
	asm	nop
_A30BB6F62_1829:;
	asm	nop
_A30BB6F62_1830:;
	asm	nop
_A30BB6F62_1831:;
	asm clr io[0x09].b14;
_A30BB6F62_1832:;
	asm	nop
_A30BB6F62_1833:;
	asm	nop
_A30BB6F62_1834:;
	asm	nop
_A30BB6F62_1835:;
	asm	nop
_A30BB6F62_1836:;
	asm	nop
_A30BB6F62_1837:;
	asm	nop
_A30BB6F62_1838:;
	asm	nop
_A30BB6F62_1839:;
	asm	nop
_A30BB6F62_1840:;
	asm	nop
_A30BB6F62_1841:;
	asm	nop
_A30BB6F62_1842:;
	asm	nop
_A30BB6F62_1843:;
	asm	nop
_A30BB6F62_1844:;
	asm set io[0x09].b14;
_A30BB6F62_1845:;
	asm	nop
_A30BB6F62_1846:;
	asm	nop
_A30BB6F62_1847:;
	asm	nop
_A30BB6F62_1848:;
	asm clr io[0x09].b14;
_A30BB6F62_1849:;
	asm	nop
_A30BB6F62_1850:;
	asm	nop
_A30BB6F62_1851:;
	asm	nop
_A30BB6F62_1852:;
	asm	nop
_A30BB6F62_1853:;
	asm	nop
_A30BB6F62_1854:;
	asm	nop
_A30BB6F62_1855:;
	asm	nop
_A30BB6F62_1856:;
	asm	nop
_A30BB6F62_1857:;
	asm	nop
_A30BB6F62_1858:;
	asm	nop
_A30BB6F62_1859:;
	asm	nop
_A30BB6F62_1860:;
	asm	nop
_A30BB6F62_1861:;
	asm set io[0x09].b14;
_A30BB6F62_1862:;
	asm	nop
_A30BB6F62_1863:;
	asm	nop
_A30BB6F62_1864:;
	asm	nop
_A30BB6F62_1865:;
	asm clr io[0x09].b14;
_A30BB6F62_1866:;
	asm	nop
_A30BB6F62_1867:;
	asm	nop
_A30BB6F62_1868:;
	asm	nop
_A30BB6F62_1869:;
	asm	nop
_A30BB6F62_1870:;
	asm	nop
_A30BB6F62_1871:;
	asm	nop
_A30BB6F62_1872:;
	asm	nop
_A30BB6F62_1873:;
	asm	nop
_A30BB6F62_1874:;
	asm	nop
_A30BB6F62_1875:;
	asm	nop
_A30BB6F62_1876:;
	asm	nop
_A30BB6F62_1877:;
	asm	nop
_A30BB6F62_1878:;
	asm set io[0x09].b14;
_A30BB6F62_1879:;
	asm	nop
_A30BB6F62_1880:;
	asm	nop
_A30BB6F62_1881:;
	asm	nop
_A30BB6F62_1882:;
	asm clr io[0x09].b14;
_A30BB6F62_1883:;
	asm	nop
_A30BB6F62_1884:;
	asm	nop
_A30BB6F62_1885:;
	asm	nop
_A30BB6F62_1886:;
	asm	nop
_A30BB6F62_1887:;
	asm	nop
_A30BB6F62_1888:;
	asm	nop
_A30BB6F62_1889:;
	asm	nop
_A30BB6F62_1890:;
	asm	nop
_A30BB6F62_1891:;
	asm	nop
_A30BB6F62_1892:;
	asm	nop
_A30BB6F62_1893:;
	asm	nop
_A30BB6F62_1894:;
	asm	nop
_A30BB6F62_1895:;
	asm set io[0x09].b14;
_A30BB6F62_1896:;
	asm	nop
_A30BB6F62_1897:;
	asm	nop
_A30BB6F62_1898:;
	asm	nop
_A30BB6F62_1899:;
	asm	nop
_A30BB6F62_1900:;
	asm	nop
_A30BB6F62_1901:;
	asm	nop
_A30BB6F62_1902:;
	asm	nop
_A30BB6F62_1903:;
	asm	nop
_A30BB6F62_1904:;
	asm	nop
_A30BB6F62_1905:;
	asm	nop
_A30BB6F62_1906:;
	asm	nop
_A30BB6F62_1907:;
	asm	nop
_A30BB6F62_1908:;
	asm clr io[0x09].b14;
_A30BB6F62_1909:;
	asm	nop
_A30BB6F62_1910:;
	asm	nop
_A30BB6F62_1911:;
	asm	nop
_A30BB6F62_1912:;
	asm set io[0x09].b14;
_A30BB6F62_1913:;
	asm	nop
_A30BB6F62_1914:;
	asm	nop
_A30BB6F62_1915:;
	asm	nop
_A30BB6F62_1916:;
	asm	nop
_A30BB6F62_1917:;
	asm	nop
_A30BB6F62_1918:;
	asm	nop
_A30BB6F62_1919:;
	asm	nop
_A30BB6F62_1920:;
	asm	nop
_A30BB6F62_1921:;
	asm	nop
_A30BB6F62_1922:;
	asm	nop
_A30BB6F62_1923:;
	asm	nop
_A30BB6F62_1924:;
	asm	nop
_A30BB6F62_1925:;
	asm clr io[0x09].b14;
_A30BB6F62_1926:;
	asm	nop
_A30BB6F62_1927:;
	asm	nop
_A30BB6F62_1928:;
	asm	nop
_A30BB6F62_1929:;
	asm set io[0x09].b14;
_A30BB6F62_1930:;
	asm	nop
_A30BB6F62_1931:;
	asm	nop
_A30BB6F62_1932:;
	asm	nop
_A30BB6F62_1933:;
	asm	nop
_A30BB6F62_1934:;
	asm	nop
_A30BB6F62_1935:;
	asm	nop
_A30BB6F62_1936:;
	asm	nop
_A30BB6F62_1937:;
	asm	nop
_A30BB6F62_1938:;
	asm	nop
_A30BB6F62_1939:;
	asm	nop
_A30BB6F62_1940:;
	asm	nop
_A30BB6F62_1941:;
	asm	nop
_A30BB6F62_1942:;
	asm clr io[0x09].b14;
_A30BB6F62_1943:;
	asm	nop
_A30BB6F62_1944:;
	asm	nop
_A30BB6F62_1945:;
	asm	nop
_A30BB6F62_1946:;
	asm set io[0x09].b14;
_A30BB6F62_1947:;
	asm	nop
_A30BB6F62_1948:;
	asm	nop
_A30BB6F62_1949:;
	asm	nop
_A30BB6F62_1950:;
	asm	nop
_A30BB6F62_1951:;
	asm	nop
_A30BB6F62_1952:;
	asm	nop
_A30BB6F62_1953:;
	asm	nop
_A30BB6F62_1954:;
	asm	nop
_A30BB6F62_1955:;
	asm	nop
_A30BB6F62_1956:;
	asm	nop
_A30BB6F62_1957:;
	asm	nop
_A30BB6F62_1958:;
	asm	nop
_A30BB6F62_1959:;
	asm clr io[0x09].b14;
_A30BB6F62_1960:;
	asm	nop
_A30BB6F62_1961:;
	asm	nop
_A30BB6F62_1962:;
	asm	nop
_A30BB6F62_1963:;
	asm set io[0x09].b14;
_A30BB6F62_1964:;
	asm	nop
_A30BB6F62_1965:;
	asm	nop
_A30BB6F62_1966:;
	asm	nop
_A30BB6F62_1967:;
	asm	nop
_A30BB6F62_1968:;
	asm	nop
_A30BB6F62_1969:;
	asm	nop
_A30BB6F62_1970:;
	asm	nop
_A30BB6F62_1971:;
	asm	nop
_A30BB6F62_1972:;
	asm	nop
_A30BB6F62_1973:;
	asm	nop
_A30BB6F62_1974:;
	asm	nop
_A30BB6F62_1975:;
	asm	nop
_A30BB6F62_1976:;
	asm clr io[0x09].b14;
_A30BB6F62_1977:;
	asm	nop
_A30BB6F62_1978:;
	asm	nop
_A30BB6F62_1979:;
	asm	nop
_A30BB6F62_1980:;
	asm set io[0x09].b14;
_A30BB6F62_1981:;
	asm	nop
_A30BB6F62_1982:;
	asm	nop
_A30BB6F62_1983:;
	asm	nop
_A30BB6F62_1984:;
	asm	nop
_A30BB6F62_1985:;
	asm	nop
_A30BB6F62_1986:;
	asm	nop
_A30BB6F62_1987:;
	asm	nop
_A30BB6F62_1988:;
	asm	nop
_A30BB6F62_1989:;
	asm	nop
_A30BB6F62_1990:;
	asm	nop
_A30BB6F62_1991:;
	asm	nop
_A30BB6F62_1992:;
	asm	nop
_A30BB6F62_1993:;
	asm clr io[0x09].b14;
_A30BB6F62_1994:;
	asm	nop
_A30BB6F62_1995:;
	asm	nop
_A30BB6F62_1996:;
	asm	nop
_A30BB6F62_1997:;
	asm set io[0x09].b14;
_A30BB6F62_1998:;
	asm	nop
_A30BB6F62_1999:;
	asm	nop
_A30BB6F62_2000:;
	asm	nop
_A30BB6F62_2001:;
	asm	nop
_A30BB6F62_2002:;
	asm	nop
_A30BB6F62_2003:;
	asm	nop
_A30BB6F62_2004:;
	asm	nop
_A30BB6F62_2005:;
	asm	nop
_A30BB6F62_2006:;
	asm	nop
_A30BB6F62_2007:;
	asm	nop
_A30BB6F62_2008:;
	asm	nop
_A30BB6F62_2009:;
	asm	nop
_A30BB6F62_2010:;
	asm clr io[0x09].b14;
_A30BB6F62_2011:;
	asm	nop
_A30BB6F62_2012:;
	asm	nop
_A30BB6F62_2013:;
	asm	nop
_A30BB6F62_2014:;
	asm set io[0x09].b14;
_A30BB6F62_2015:;
	asm	nop
_A30BB6F62_2016:;
	asm	nop
_A30BB6F62_2017:;
	asm	nop
_A30BB6F62_2018:;
	asm	nop
_A30BB6F62_2019:;
	asm	nop
_A30BB6F62_2020:;
	asm	nop
_A30BB6F62_2021:;
	asm	nop
_A30BB6F62_2022:;
	asm	nop
_A30BB6F62_2023:;
	asm	nop
_A30BB6F62_2024:;
	asm	nop
_A30BB6F62_2025:;
	asm	nop
_A30BB6F62_2026:;
	asm	nop
_A30BB6F62_2027:;
	asm clr io[0x09].b14;
_A30BB6F62_2028:;
	asm	nop
_A30BB6F62_2029:;
	asm	nop
_A30BB6F62_2030:;
	asm	nop
_A30BB6F62_2031:;
	asm set io[0x09].b14;
_A30BB6F62_2032:;
	asm	nop
_A30BB6F62_2033:;
	asm	nop
_A30BB6F62_2034:;
	asm	nop
_A30BB6F62_2035:;
	asm	nop
_A30BB6F62_2036:;
	asm	nop
_A30BB6F62_2037:;
	asm	nop
_A30BB6F62_2038:;
	asm	nop
_A30BB6F62_2039:;
	asm	nop
_A30BB6F62_2040:;
	asm	nop
_A30BB6F62_2041:;
	asm	nop
_A30BB6F62_2042:;
	asm	nop
_A30BB6F62_2043:;
	asm	nop
_A30BB6F62_2044:;
	asm clr io[0x09].b14;
_A30BB6F62_2045:;
	asm	nop
_A30BB6F62_2046:;
	asm	nop
_A30BB6F62_2047:;
	asm	nop
_A30BB6F62_2048:;
	asm set io[0x09].b14;
_A30BB6F62_2049:;
	asm	nop
_A30BB6F62_2050:;
	asm	nop
_A30BB6F62_2051:;
	asm	nop
_A30BB6F62_2052:;
	asm	nop
_A30BB6F62_2053:;
	asm	nop
_A30BB6F62_2054:;
	asm	nop
_A30BB6F62_2055:;
	asm	nop
_A30BB6F62_2056:;
	asm	nop
_A30BB6F62_2057:;
	asm	nop
_A30BB6F62_2058:;
	asm	nop
_A30BB6F62_2059:;
	asm	nop
_A30BB6F62_2060:;
	asm	nop
_A30BB6F62_2061:;
	asm clr io[0x09].b14;
_A30BB6F62_2062:;
	asm	nop
_A30BB6F62_2063:;
	asm	nop
_A30BB6F62_2064:;
	asm	nop
_A30BB6F62_2065:;
	asm set io[0x09].b14;
_A30BB6F62_2066:;
	asm	nop
_A30BB6F62_2067:;
	asm	nop
_A30BB6F62_2068:;
	asm	nop
_A30BB6F62_2069:;
	asm	nop
_A30BB6F62_2070:;
	asm	nop
_A30BB6F62_2071:;
	asm	nop
_A30BB6F62_2072:;
	asm	nop
_A30BB6F62_2073:;
	asm	nop
_A30BB6F62_2074:;
	asm	nop
_A30BB6F62_2075:;
	asm	nop
_A30BB6F62_2076:;
	asm	nop
_A30BB6F62_2077:;
	asm	nop
_A30BB6F62_2078:;
	asm clr io[0x09].b14;
_A30BB6F62_2079:;
	asm	nop
_A30BB6F62_2080:;
	asm	nop
_A30BB6F62_2081:;
	asm	nop
_A30BB6F62_2082:;
	asm set io[0x09].b14;
_A30BB6F62_2083:;
	asm	nop
_A30BB6F62_2084:;
	asm	nop
_A30BB6F62_2085:;
	asm	nop
_A30BB6F62_2086:;
	asm	nop
_A30BB6F62_2087:;
	asm	nop
_A30BB6F62_2088:;
	asm	nop
_A30BB6F62_2089:;
	asm	nop
_A30BB6F62_2090:;
	asm	nop
_A30BB6F62_2091:;
	asm	nop
_A30BB6F62_2092:;
	asm	nop
_A30BB6F62_2093:;
	asm	nop
_A30BB6F62_2094:;
	asm	nop
_A30BB6F62_2095:;
	asm clr io[0x09].b14;
_A30BB6F62_2096:;
	asm	nop
_A30BB6F62_2097:;
	asm	nop
_A30BB6F62_2098:;
	asm	nop
_A30BB6F62_2099:;
	asm set io[0x09].b14;
_A30BB6F62_2100:;
	asm	nop
_A30BB6F62_2101:;
	asm	nop
_A30BB6F62_2102:;
	asm	nop
_A30BB6F62_2103:;
	asm	nop
_A30BB6F62_2104:;
	asm	nop
_A30BB6F62_2105:;
	asm	nop
_A30BB6F62_2106:;
	asm	nop
_A30BB6F62_2107:;
	asm	nop
_A30BB6F62_2108:;
	asm	nop
_A30BB6F62_2109:;
	asm	nop
_A30BB6F62_2110:;
	asm	nop
_A30BB6F62_2111:;
	asm	nop
_A30BB6F62_2112:;
	asm clr io[0x09].b14;
_A30BB6F62_2113:;
	asm	nop
_A30BB6F62_2114:;
	asm	nop
_A30BB6F62_2115:;
	asm	nop
_A30BB6F62_2116:;
	asm set io[0x09].b14;
_A30BB6F62_2117:;
	asm	nop
_A30BB6F62_2118:;
	asm	nop
_A30BB6F62_2119:;
	asm	nop
_A30BB6F62_2120:;
	asm	nop
_A30BB6F62_2121:;
	asm	nop
_A30BB6F62_2122:;
	asm	nop
_A30BB6F62_2123:;
	asm	nop
_A30BB6F62_2124:;
	asm	nop
_A30BB6F62_2125:;
	asm	nop
_A30BB6F62_2126:;
	asm	nop
_A30BB6F62_2127:;
	asm	nop
_A30BB6F62_2128:;
	asm	nop
_A30BB6F62_2129:;
	asm clr io[0x09].b14;
_A30BB6F62_2130:;
	asm	nop
_A30BB6F62_2131:;
	asm	nop
_A30BB6F62_2132:;
	asm	nop
_A30BB6F62_2133:;
	asm set io[0x09].b14;
_A30BB6F62_2134:;
	asm	nop
_A30BB6F62_2135:;
	asm	nop
_A30BB6F62_2136:;
	asm	nop
_A30BB6F62_2137:;
	asm	nop
_A30BB6F62_2138:;
	asm	nop
_A30BB6F62_2139:;
	asm	nop
_A30BB6F62_2140:;
	asm	nop
_A30BB6F62_2141:;
	asm	nop
_A30BB6F62_2142:;
	asm	nop
_A30BB6F62_2143:;
	asm	nop
_A30BB6F62_2144:;
	asm	nop
_A30BB6F62_2145:;
	asm	nop
_A30BB6F62_2146:;
	asm clr io[0x09].b14;
_A30BB6F62_2147:;
	asm	nop
_A30BB6F62_2148:;
	asm	nop
_A30BB6F62_2149:;
	asm	nop
_A30BB6F62_2150:;
	asm set io[0x09].b14;
_A30BB6F62_2151:;
	asm	nop
_A30BB6F62_2152:;
	asm	nop
_A30BB6F62_2153:;
	asm	nop
_A30BB6F62_2154:;
	asm	nop
_A30BB6F62_2155:;
	asm	nop
_A30BB6F62_2156:;
	asm	nop
_A30BB6F62_2157:;
	asm	nop
_A30BB6F62_2158:;
	asm	nop
_A30BB6F62_2159:;
	asm	nop
_A30BB6F62_2160:;
	asm	nop
_A30BB6F62_2161:;
	asm	nop
_A30BB6F62_2162:;
	asm	nop
_A30BB6F62_2163:;
	asm clr io[0x09].b14;
_A30BB6F62_2164:;
	asm	nop
_A30BB6F62_2165:;
	asm	nop
_A30BB6F62_2166:;
	asm	nop
_A30BB6F62_2167:;
	goto LD63FD439_50;
LD63FD439_57:;
_A30BB6F62_2168:;
	asm set io[0x09].b14;
_A30BB6F62_2169:;
	asm	nop
_A30BB6F62_2170:;
	asm	nop
_A30BB6F62_2171:;
	asm	nop
_A30BB6F62_2172:;
	asm clr io[0x09].b14;
_A30BB6F62_2173:;
	asm	nop
_A30BB6F62_2174:;
	asm	nop
_A30BB6F62_2175:;
	asm	nop
_A30BB6F62_2176:;
	asm	nop
_A30BB6F62_2177:;
	asm	nop
_A30BB6F62_2178:;
	asm	nop
_A30BB6F62_2179:;
	asm	nop
_A30BB6F62_2180:;
	asm	nop
_A30BB6F62_2181:;
	asm	nop
_A30BB6F62_2182:;
	asm	nop
_A30BB6F62_2183:;
	asm	nop
_A30BB6F62_2184:;
	asm	nop
_A30BB6F62_2185:;
	asm set io[0x09].b14;
_A30BB6F62_2186:;
	asm	nop
_A30BB6F62_2187:;
	asm	nop
_A30BB6F62_2188:;
	asm	nop
_A30BB6F62_2189:;
	asm clr io[0x09].b14;
_A30BB6F62_2190:;
	asm	nop
_A30BB6F62_2191:;
	asm	nop
_A30BB6F62_2192:;
	asm	nop
_A30BB6F62_2193:;
	asm	nop
_A30BB6F62_2194:;
	asm	nop
_A30BB6F62_2195:;
	asm	nop
_A30BB6F62_2196:;
	asm	nop
_A30BB6F62_2197:;
	asm	nop
_A30BB6F62_2198:;
	asm	nop
_A30BB6F62_2199:;
	asm	nop
_A30BB6F62_2200:;
	asm	nop
_A30BB6F62_2201:;
	asm	nop
_A30BB6F62_2202:;
	asm set io[0x09].b14;
_A30BB6F62_2203:;
	asm	nop
_A30BB6F62_2204:;
	asm	nop
_A30BB6F62_2205:;
	asm	nop
_A30BB6F62_2206:;
	asm clr io[0x09].b14;
_A30BB6F62_2207:;
	asm	nop
_A30BB6F62_2208:;
	asm	nop
_A30BB6F62_2209:;
	asm	nop
_A30BB6F62_2210:;
	asm	nop
_A30BB6F62_2211:;
	asm	nop
_A30BB6F62_2212:;
	asm	nop
_A30BB6F62_2213:;
	asm	nop
_A30BB6F62_2214:;
	asm	nop
_A30BB6F62_2215:;
	asm	nop
_A30BB6F62_2216:;
	asm	nop
_A30BB6F62_2217:;
	asm	nop
_A30BB6F62_2218:;
	asm	nop
_A30BB6F62_2219:;
	asm set io[0x09].b14;
_A30BB6F62_2220:;
	asm	nop
_A30BB6F62_2221:;
	asm	nop
_A30BB6F62_2222:;
	asm	nop
_A30BB6F62_2223:;
	asm clr io[0x09].b14;
_A30BB6F62_2224:;
	asm	nop
_A30BB6F62_2225:;
	asm	nop
_A30BB6F62_2226:;
	asm	nop
_A30BB6F62_2227:;
	asm	nop
_A30BB6F62_2228:;
	asm	nop
_A30BB6F62_2229:;
	asm	nop
_A30BB6F62_2230:;
	asm	nop
_A30BB6F62_2231:;
	asm	nop
_A30BB6F62_2232:;
	asm	nop
_A30BB6F62_2233:;
	asm	nop
_A30BB6F62_2234:;
	asm	nop
_A30BB6F62_2235:;
	asm	nop
_A30BB6F62_2236:;
	asm set io[0x09].b14;
_A30BB6F62_2237:;
	asm	nop
_A30BB6F62_2238:;
	asm	nop
_A30BB6F62_2239:;
	asm	nop
_A30BB6F62_2240:;
	asm clr io[0x09].b14;
_A30BB6F62_2241:;
	asm	nop
_A30BB6F62_2242:;
	asm	nop
_A30BB6F62_2243:;
	asm	nop
_A30BB6F62_2244:;
	asm	nop
_A30BB6F62_2245:;
	asm	nop
_A30BB6F62_2246:;
	asm	nop
_A30BB6F62_2247:;
	asm	nop
_A30BB6F62_2248:;
	asm	nop
_A30BB6F62_2249:;
	asm	nop
_A30BB6F62_2250:;
	asm	nop
_A30BB6F62_2251:;
	asm	nop
_A30BB6F62_2252:;
	asm	nop
_A30BB6F62_2253:;
	asm set io[0x09].b14;
_A30BB6F62_2254:;
	asm	nop
_A30BB6F62_2255:;
	asm	nop
_A30BB6F62_2256:;
	asm	nop
_A30BB6F62_2257:;
	asm clr io[0x09].b14;
_A30BB6F62_2258:;
	asm	nop
_A30BB6F62_2259:;
	asm	nop
_A30BB6F62_2260:;
	asm	nop
_A30BB6F62_2261:;
	asm	nop
_A30BB6F62_2262:;
	asm	nop
_A30BB6F62_2263:;
	asm	nop
_A30BB6F62_2264:;
	asm	nop
_A30BB6F62_2265:;
	asm	nop
_A30BB6F62_2266:;
	asm	nop
_A30BB6F62_2267:;
	asm	nop
_A30BB6F62_2268:;
	asm	nop
_A30BB6F62_2269:;
	asm	nop
_A30BB6F62_2270:;
	asm set io[0x09].b14;
_A30BB6F62_2271:;
	asm	nop
_A30BB6F62_2272:;
	asm	nop
_A30BB6F62_2273:;
	asm	nop
_A30BB6F62_2274:;
	asm clr io[0x09].b14;
_A30BB6F62_2275:;
	asm	nop
_A30BB6F62_2276:;
	asm	nop
_A30BB6F62_2277:;
	asm	nop
_A30BB6F62_2278:;
	asm	nop
_A30BB6F62_2279:;
	asm	nop
_A30BB6F62_2280:;
	asm	nop
_A30BB6F62_2281:;
	asm	nop
_A30BB6F62_2282:;
	asm	nop
_A30BB6F62_2283:;
	asm	nop
_A30BB6F62_2284:;
	asm	nop
_A30BB6F62_2285:;
	asm	nop
_A30BB6F62_2286:;
	asm	nop
_A30BB6F62_2287:;
	asm set io[0x09].b14;
_A30BB6F62_2288:;
	asm	nop
_A30BB6F62_2289:;
	asm	nop
_A30BB6F62_2290:;
	asm	nop
_A30BB6F62_2291:;
	asm clr io[0x09].b14;
_A30BB6F62_2292:;
	asm	nop
_A30BB6F62_2293:;
	asm	nop
_A30BB6F62_2294:;
	asm	nop
_A30BB6F62_2295:;
	asm	nop
_A30BB6F62_2296:;
	asm	nop
_A30BB6F62_2297:;
	asm	nop
_A30BB6F62_2298:;
	asm	nop
_A30BB6F62_2299:;
	asm	nop
_A30BB6F62_2300:;
	asm	nop
_A30BB6F62_2301:;
	asm	nop
_A30BB6F62_2302:;
	asm	nop
_A30BB6F62_2303:;
	asm	nop
_A30BB6F62_2304:;
	asm set io[0x09].b14;
_A30BB6F62_2305:;
	asm	nop
_A30BB6F62_2306:;
	asm	nop
_A30BB6F62_2307:;
	asm	nop
_A30BB6F62_2308:;
	asm clr io[0x09].b14;
_A30BB6F62_2309:;
	asm	nop
_A30BB6F62_2310:;
	asm	nop
_A30BB6F62_2311:;
	asm	nop
_A30BB6F62_2312:;
	asm	nop
_A30BB6F62_2313:;
	asm	nop
_A30BB6F62_2314:;
	asm	nop
_A30BB6F62_2315:;
	asm	nop
_A30BB6F62_2316:;
	asm	nop
_A30BB6F62_2317:;
	asm	nop
_A30BB6F62_2318:;
	asm	nop
_A30BB6F62_2319:;
	asm	nop
_A30BB6F62_2320:;
	asm	nop
_A30BB6F62_2321:;
	asm set io[0x09].b14;
_A30BB6F62_2322:;
	asm	nop
_A30BB6F62_2323:;
	asm	nop
_A30BB6F62_2324:;
	asm	nop
_A30BB6F62_2325:;
	asm clr io[0x09].b14;
_A30BB6F62_2326:;
	asm	nop
_A30BB6F62_2327:;
	asm	nop
_A30BB6F62_2328:;
	asm	nop
_A30BB6F62_2329:;
	asm	nop
_A30BB6F62_2330:;
	asm	nop
_A30BB6F62_2331:;
	asm	nop
_A30BB6F62_2332:;
	asm	nop
_A30BB6F62_2333:;
	asm	nop
_A30BB6F62_2334:;
	asm	nop
_A30BB6F62_2335:;
	asm	nop
_A30BB6F62_2336:;
	asm	nop
_A30BB6F62_2337:;
	asm	nop
_A30BB6F62_2338:;
	asm set io[0x09].b14;
_A30BB6F62_2339:;
	asm	nop
_A30BB6F62_2340:;
	asm	nop
_A30BB6F62_2341:;
	asm	nop
_A30BB6F62_2342:;
	asm clr io[0x09].b14;
_A30BB6F62_2343:;
	asm	nop
_A30BB6F62_2344:;
	asm	nop
_A30BB6F62_2345:;
	asm	nop
_A30BB6F62_2346:;
	asm	nop
_A30BB6F62_2347:;
	asm	nop
_A30BB6F62_2348:;
	asm	nop
_A30BB6F62_2349:;
	asm	nop
_A30BB6F62_2350:;
	asm	nop
_A30BB6F62_2351:;
	asm	nop
_A30BB6F62_2352:;
	asm	nop
_A30BB6F62_2353:;
	asm	nop
_A30BB6F62_2354:;
	asm	nop
_A30BB6F62_2355:;
	asm set io[0x09].b14;
_A30BB6F62_2356:;
	asm	nop
_A30BB6F62_2357:;
	asm	nop
_A30BB6F62_2358:;
	asm	nop
_A30BB6F62_2359:;
	asm clr io[0x09].b14;
_A30BB6F62_2360:;
	asm	nop
_A30BB6F62_2361:;
	asm	nop
_A30BB6F62_2362:;
	asm	nop
_A30BB6F62_2363:;
	asm	nop
_A30BB6F62_2364:;
	asm	nop
_A30BB6F62_2365:;
	asm	nop
_A30BB6F62_2366:;
	asm	nop
_A30BB6F62_2367:;
	asm	nop
_A30BB6F62_2368:;
	asm	nop
_A30BB6F62_2369:;
	asm	nop
_A30BB6F62_2370:;
	asm	nop
_A30BB6F62_2371:;
	asm	nop
_A30BB6F62_2372:;
	asm set io[0x09].b14;
_A30BB6F62_2373:;
	asm	nop
_A30BB6F62_2374:;
	asm	nop
_A30BB6F62_2375:;
	asm	nop
_A30BB6F62_2376:;
	asm clr io[0x09].b14;
_A30BB6F62_2377:;
	asm	nop
_A30BB6F62_2378:;
	asm	nop
_A30BB6F62_2379:;
	asm	nop
_A30BB6F62_2380:;
	asm	nop
_A30BB6F62_2381:;
	asm	nop
_A30BB6F62_2382:;
	asm	nop
_A30BB6F62_2383:;
	asm	nop
_A30BB6F62_2384:;
	asm	nop
_A30BB6F62_2385:;
	asm	nop
_A30BB6F62_2386:;
	asm	nop
_A30BB6F62_2387:;
	asm	nop
_A30BB6F62_2388:;
	asm	nop
_A30BB6F62_2389:;
	asm set io[0x09].b14;
_A30BB6F62_2390:;
	asm	nop
_A30BB6F62_2391:;
	asm	nop
_A30BB6F62_2392:;
	asm	nop
_A30BB6F62_2393:;
	asm clr io[0x09].b14;
_A30BB6F62_2394:;
	asm	nop
_A30BB6F62_2395:;
	asm	nop
_A30BB6F62_2396:;
	asm	nop
_A30BB6F62_2397:;
	asm	nop
_A30BB6F62_2398:;
	asm	nop
_A30BB6F62_2399:;
	asm	nop
_A30BB6F62_2400:;
	asm	nop
_A30BB6F62_2401:;
	asm	nop
_A30BB6F62_2402:;
	asm	nop
_A30BB6F62_2403:;
	asm	nop
_A30BB6F62_2404:;
	asm	nop
_A30BB6F62_2405:;
	asm	nop
_A30BB6F62_2406:;
	asm set io[0x09].b14;
_A30BB6F62_2407:;
	asm	nop
_A30BB6F62_2408:;
	asm	nop
_A30BB6F62_2409:;
	asm	nop
_A30BB6F62_2410:;
	asm clr io[0x09].b14;
_A30BB6F62_2411:;
	asm	nop
_A30BB6F62_2412:;
	asm	nop
_A30BB6F62_2413:;
	asm	nop
_A30BB6F62_2414:;
	asm	nop
_A30BB6F62_2415:;
	asm	nop
_A30BB6F62_2416:;
	asm	nop
_A30BB6F62_2417:;
	asm	nop
_A30BB6F62_2418:;
	asm	nop
_A30BB6F62_2419:;
	asm	nop
_A30BB6F62_2420:;
	asm	nop
_A30BB6F62_2421:;
	asm	nop
_A30BB6F62_2422:;
	asm	nop
_A30BB6F62_2423:;
	asm set io[0x09].b14;
_A30BB6F62_2424:;
	asm	nop
_A30BB6F62_2425:;
	asm	nop
_A30BB6F62_2426:;
	asm	nop
_A30BB6F62_2427:;
	asm clr io[0x09].b14;
_A30BB6F62_2428:;
	asm	nop
_A30BB6F62_2429:;
	asm	nop
_A30BB6F62_2430:;
	asm	nop
_A30BB6F62_2431:;
	asm	nop
_A30BB6F62_2432:;
	asm	nop
_A30BB6F62_2433:;
	asm	nop
_A30BB6F62_2434:;
	asm	nop
_A30BB6F62_2435:;
	asm	nop
_A30BB6F62_2436:;
	asm	nop
_A30BB6F62_2437:;
	asm	nop
_A30BB6F62_2438:;
	asm	nop
_A30BB6F62_2439:;
	asm	nop
_A30BB6F62_2440:;
	asm set io[0x09].b14;
_A30BB6F62_2441:;
	asm	nop
_A30BB6F62_2442:;
	asm	nop
_A30BB6F62_2443:;
	asm	nop
_A30BB6F62_2444:;
	asm	nop
_A30BB6F62_2445:;
	asm	nop
_A30BB6F62_2446:;
	asm	nop
_A30BB6F62_2447:;
	asm	nop
_A30BB6F62_2448:;
	asm	nop
_A30BB6F62_2449:;
	asm	nop
_A30BB6F62_2450:;
	asm	nop
_A30BB6F62_2451:;
	asm	nop
_A30BB6F62_2452:;
	asm	nop
_A30BB6F62_2453:;
	asm clr io[0x09].b14;
_A30BB6F62_2454:;
	asm	nop
_A30BB6F62_2455:;
	asm	nop
_A30BB6F62_2456:;
	asm	nop
_A30BB6F62_2457:;
	asm set io[0x09].b14;
_A30BB6F62_2458:;
	asm	nop
_A30BB6F62_2459:;
	asm	nop
_A30BB6F62_2460:;
	asm	nop
_A30BB6F62_2461:;
	asm	nop
_A30BB6F62_2462:;
	asm	nop
_A30BB6F62_2463:;
	asm	nop
_A30BB6F62_2464:;
	asm	nop
_A30BB6F62_2465:;
	asm	nop
_A30BB6F62_2466:;
	asm	nop
_A30BB6F62_2467:;
	asm	nop
_A30BB6F62_2468:;
	asm	nop
_A30BB6F62_2469:;
	asm	nop
_A30BB6F62_2470:;
	asm clr io[0x09].b14;
_A30BB6F62_2471:;
	asm	nop
_A30BB6F62_2472:;
	asm	nop
_A30BB6F62_2473:;
	asm	nop
_A30BB6F62_2474:;
	asm set io[0x09].b14;
_A30BB6F62_2475:;
	asm	nop
_A30BB6F62_2476:;
	asm	nop
_A30BB6F62_2477:;
	asm	nop
_A30BB6F62_2478:;
	asm	nop
_A30BB6F62_2479:;
	asm	nop
_A30BB6F62_2480:;
	asm	nop
_A30BB6F62_2481:;
	asm	nop
_A30BB6F62_2482:;
	asm	nop
_A30BB6F62_2483:;
	asm	nop
_A30BB6F62_2484:;
	asm	nop
_A30BB6F62_2485:;
	asm	nop
_A30BB6F62_2486:;
	asm	nop
_A30BB6F62_2487:;
	asm clr io[0x09].b14;
_A30BB6F62_2488:;
	asm	nop
_A30BB6F62_2489:;
	asm	nop
_A30BB6F62_2490:;
	asm	nop
_A30BB6F62_2491:;
	asm set io[0x09].b14;
_A30BB6F62_2492:;
	asm	nop
_A30BB6F62_2493:;
	asm	nop
_A30BB6F62_2494:;
	asm	nop
_A30BB6F62_2495:;
	asm	nop
_A30BB6F62_2496:;
	asm	nop
_A30BB6F62_2497:;
	asm	nop
_A30BB6F62_2498:;
	asm	nop
_A30BB6F62_2499:;
	asm	nop
_A30BB6F62_2500:;
	asm	nop
_A30BB6F62_2501:;
	asm	nop
_A30BB6F62_2502:;
	asm	nop
_A30BB6F62_2503:;
	asm	nop
_A30BB6F62_2504:;
	asm clr io[0x09].b14;
_A30BB6F62_2505:;
	asm	nop
_A30BB6F62_2506:;
	asm	nop
_A30BB6F62_2507:;
	asm	nop
_A30BB6F62_2508:;
	asm set io[0x09].b14;
_A30BB6F62_2509:;
	asm	nop
_A30BB6F62_2510:;
	asm	nop
_A30BB6F62_2511:;
	asm	nop
_A30BB6F62_2512:;
	asm	nop
_A30BB6F62_2513:;
	asm	nop
_A30BB6F62_2514:;
	asm	nop
_A30BB6F62_2515:;
	asm	nop
_A30BB6F62_2516:;
	asm	nop
_A30BB6F62_2517:;
	asm	nop
_A30BB6F62_2518:;
	asm	nop
_A30BB6F62_2519:;
	asm	nop
_A30BB6F62_2520:;
	asm	nop
_A30BB6F62_2521:;
	asm clr io[0x09].b14;
_A30BB6F62_2522:;
	asm	nop
_A30BB6F62_2523:;
	asm	nop
_A30BB6F62_2524:;
	asm	nop
_A30BB6F62_2525:;
	asm set io[0x09].b14;
_A30BB6F62_2526:;
	asm	nop
_A30BB6F62_2527:;
	asm	nop
_A30BB6F62_2528:;
	asm	nop
_A30BB6F62_2529:;
	asm	nop
_A30BB6F62_2530:;
	asm	nop
_A30BB6F62_2531:;
	asm	nop
_A30BB6F62_2532:;
	asm	nop
_A30BB6F62_2533:;
	asm	nop
_A30BB6F62_2534:;
	asm	nop
_A30BB6F62_2535:;
	asm	nop
_A30BB6F62_2536:;
	asm	nop
_A30BB6F62_2537:;
	asm	nop
_A30BB6F62_2538:;
	asm clr io[0x09].b14;
_A30BB6F62_2539:;
	asm	nop
_A30BB6F62_2540:;
	asm	nop
_A30BB6F62_2541:;
	asm	nop
_A30BB6F62_2542:;
	asm set io[0x09].b14;
_A30BB6F62_2543:;
	asm	nop
_A30BB6F62_2544:;
	asm	nop
_A30BB6F62_2545:;
	asm	nop
_A30BB6F62_2546:;
	asm	nop
_A30BB6F62_2547:;
	asm	nop
_A30BB6F62_2548:;
	asm	nop
_A30BB6F62_2549:;
	asm	nop
_A30BB6F62_2550:;
	asm	nop
_A30BB6F62_2551:;
	asm	nop
_A30BB6F62_2552:;
	asm	nop
_A30BB6F62_2553:;
	asm	nop
_A30BB6F62_2554:;
	asm	nop
_A30BB6F62_2555:;
	asm clr io[0x09].b14;
_A30BB6F62_2556:;
	asm	nop
_A30BB6F62_2557:;
	asm	nop
_A30BB6F62_2558:;
	asm	nop
_A30BB6F62_2559:;
	asm set io[0x09].b14;
_A30BB6F62_2560:;
	asm	nop
_A30BB6F62_2561:;
	asm	nop
_A30BB6F62_2562:;
	asm	nop
_A30BB6F62_2563:;
	asm	nop
_A30BB6F62_2564:;
	asm	nop
_A30BB6F62_2565:;
	asm	nop
_A30BB6F62_2566:;
	asm	nop
_A30BB6F62_2567:;
	asm	nop
_A30BB6F62_2568:;
	asm	nop
_A30BB6F62_2569:;
	asm	nop
_A30BB6F62_2570:;
	asm	nop
_A30BB6F62_2571:;
	asm	nop
_A30BB6F62_2572:;
	asm clr io[0x09].b14;
_A30BB6F62_2573:;
	asm	nop
_A30BB6F62_2574:;
	asm	nop
_A30BB6F62_2575:;
	asm	nop
_A30BB6F62_2576:;
	goto LD63FD439_50;
LD63FD439_58:;
_A30BB6F62_2577:;
	goto LD63FD439_50;
	goto LD63FD439_50;
LD63FD439_51:;
	sCX	= sAX;
	sAX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_59;
	goto LD63FD439_52;
LD63FD439_59:;
	sAX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_60;
	goto LD63FD439_53;
LD63FD439_60:;
	sAX	= 0x0003;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_61;
	goto LD63FD439_54;
LD63FD439_61:;
	sAX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_62;
	goto LD63FD439_55;
LD63FD439_62:;
	sAX	= 0x0005;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_63;
	goto LD63FD439_56;
LD63FD439_63:;
	sAX	= 0x0004;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_64;
	goto LD63FD439_57;
LD63FD439_64:;
	goto	LD63FD439_58;
LD63FD439_50:;
	goto LD63FD439_48;
LD63FD439_47:;
_A30BB6F62_2578:;
LD63FD439_44:;
_A30BB6F62_2579:;
	return;
_WS_TRSF_color_setE1CC300C_end:;
_A30BB6F62_2580:;
}

void _WS_RefreshAD7B99B1()
{
	__int16 _i_1_2;
	////////////////////////////
_A30BB6F62_2581:;
_A30BB6F62_2582:;
	_i_1_2+0	= 0x00;
LD63FD439_66:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sfx_CMP_AX_CX_JBE();
	if(__je__)	goto LD63FD439_70;
	goto	LD63FD439_68;
LD63FD439_70:;
	goto LD63FD439_67;
LD63FD439_69:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_66;
LD63FD439_67:;
	////////////////////////////
_A30BB6F62_2583:;
_A30BB6F62_2584:;
	asm AX = _LED_Buf98A4A35A+0;
	PUSH(sAX);
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0005;
	sfx_IMUL_AX_CX();
	sCX	= POP();
	sAX	= sAX + sCX;
	sSI	= sAX;
	sAX	= *(__int16*)sSI++;
	sDX	= *(__int16*)sSI--;
	PUSH(sAX);
	_WS_Send24bits851C5C55(STACK[sSP + 0]);
	RESTORESP(1);
	goto LD63FD439_69;
LD63FD439_68:;
_A30BB6F62_2585:;
_A30BB6F62_2586:;
	asm clr io[0x09].b14;
LD63FD439_65:;
_A30BB6F62_2587:;
	return;
_WS_RefreshAD7B99B1_end:;
_A30BB6F62_2588:;
}

void _WS_Key_RGBC5B96B6D()
{
_A30BB6F62_2589:;
	////////////////////////////
_A30BB6F62_2590:;
	asm I1 = LD63FD439_72+0;
	sAX	= *(__int16*)sSI;
	goto LD63FD439_74;
LD63FD439_75:;
_A30BB6F62_2591:;
_A30BB6F62_2592:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2593:;
_A30BB6F62_2594:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2595:;
_A30BB6F62_2596:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2597:;
_A30BB6F62_2598:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2599:;
	goto LD63FD439_73;
LD63FD439_76:;
_A30BB6F62_2600:;
_A30BB6F62_2601:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2602:;
_A30BB6F62_2603:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2604:;
_A30BB6F62_2605:;
	sAX	= 0x001F;
	PUSH(sAX);
	sAX	= 0x0006;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2606:;
_A30BB6F62_2607:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2608:;
	goto LD63FD439_73;
LD63FD439_77:;
_A30BB6F62_2609:;
_A30BB6F62_2610:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2611:;
_A30BB6F62_2612:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2613:;
_A30BB6F62_2614:;
	sAX	= 0xFF00;
	PUSH(sAX);
	sAX	= 0x000A;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A30BB6F62_2615:;
_A30BB6F62_2616:;
	_WS_RefreshAD7B99B1();
_A30BB6F62_2617:;
	goto LD63FD439_73;
	goto LD63FD439_73;
LD63FD439_74:;
	sCX	= sAX;
	sAX	= 0x0000;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_78;
	goto LD63FD439_75;
LD63FD439_78:;
	sAX	= 0x0001;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_79;
	goto LD63FD439_76;
LD63FD439_79:;
	sAX	= 0x0002;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_80;
	goto LD63FD439_77;
LD63FD439_80:;
	goto	LD63FD439_73;
LD63FD439_73:;
_A30BB6F62_2618:;
	asm I1 = LD63FD439_72+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_72;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A30BB6F62_2619:;
	asm I1 = LD63FD439_72+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LD63FD439_82;
	goto	LD63FD439_81;
LD63FD439_82:;
_A30BB6F62_2620:;
	LD63FD439_72+0	= 0x00;
LD63FD439_81:;
_A30BB6F62_2621:;
_A30BB6F62_2622:;
_A30BB6F62_2623:;
	sAX	= 0x0032;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
LD63FD439_71:;
_A30BB6F62_2624:;
	return;
_WS_Key_RGBC5B96B6D_end:;
_A30BB6F62_2625:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_WS2811_02F950F9_s(void)
{
	asm P1 = #ginit_seg_WS2811_02F950F9_s+0;
	asm I1 = LD63FD439_15;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_WS2811_02F950F9_s+1;
	asm I1 = LD63FD439_72;
	sCX = 1;
	sfx_GLOBALINIT();

	return;
}

// .code ends _ginit


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

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// global init segment

__int16 ginit_seg_WS2811_02F950F9_s[2] = {
	// LD63FD439_15
	0x0000,
	// LD63FD439_72
	0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment

// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// public _WS_Send24bits851C5C55
// public _WS_ColorSet_LEDCA3DEB8C
// public _WS_Color_copyADB1DFED
// public _WS_RefreshAD7B99B1
// public _WS_Key_RGBC5B96B6D
// extern _WS_Hue_change433A3E3B:proc
// extern _WS_voice_Pik5A718B9D:proc
// extern _Get_RGB_Max5738F55A:proc
// extern _Get_RGB_Min13C4962A:proc
// extern _Get_Hue_Val458A4EED:proc
// extern _HSV_RGBE39B83AE:proc
// public _WS_TRSF_color_setE1CC300C
// extern inp:proc
// extern outp:proc
// extern get_SATV:proc
// extern get_CBL:proc
// extern get_FLTO:proc
// extern get_FLTA:proc
// extern get_FLTP:proc
// extern get_FLTI:proc
// extern read_I0:proc
// extern read_I0P:proc
// extern read_I0P2:proc
// extern read_I0M:proc
// extern get_I0:proc
// extern read_P0:proc
// extern read_P0P:proc
// extern read_P0M:proc
// extern get_P0:proc
// extern set_IntVWR:proc
// extern clr_IntVWR:proc
// extern set_IntPrWR:proc
// extern clr_IntPrWR:proc
// extern set_INTENA:proc
// extern get_INTENA:proc
// extern set_INTREQ:proc
// extern get_INTREQ:proc
// extern set_IntVect:proc
// extern get_IntVect:proc
// extern get_IOC_PA:proc
// extern get_IOC_PB:proc
// extern get_IOC_PC:proc
// extern get_PortA:proc
// extern get_PortB:proc
// extern get_PortC:proc
// extern set_MISC:proc
// extern get_MISC:proc
// extern get_MACOP:proc
// extern vXCHG:proc
// extern cpuHalt:proc
// extern FA:proc
// extern _ClearTickCount5DDE4003:proc
// extern _GetTickCount18DC070C:proc
// extern _delay6F9F34ED:proc
// public _LED_Buf98A4A35A
// public _sum6BC8EB73
// public ginit_code_WS2811_02F950F9_s
