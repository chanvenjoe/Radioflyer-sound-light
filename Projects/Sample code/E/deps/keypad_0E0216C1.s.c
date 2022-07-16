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
__int16 L5589D4CE_61;
__int16 L5589D4CE_62;
__int16 L5589D4CE_63;

// .bss ends _bss

// CODE segment

.code


rjmp void _InitKey3C587B6D();
rjmp void _PollingKey3B90E3B1();
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
rjmp void _InitKey3C587B6D()
{
_A2C562ABC_188:;
	////////////////////////////
_A2C562ABC_189:;
	asm clr io[0x04].b0;
_A2C562ABC_190:;
	asm clr io[0x04].b1;
_A2C562ABC_191:;
	asm clr io[0x04].b2;
_A2C562ABC_192:;
	asm clr io[0x04].b3;
_A2C562ABC_193:;
	io[0x1E]	= 0x0005;
_A2C562ABC_194:;
	sAX	= 0x000F;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_A2C562ABC_195:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_61;
	*(__int16*)sSI	= sAX
_A2C562ABC_196:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_62;
	*(__int16*)sSI	= sAX
_A2C562ABC_197:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
L5589D4CE_64:;
_A2C562ABC_198:;
	return;
_InitKey3C587B6D_end:;
_A2C562ABC_199:;
}

rjmp void L5589D4CE_65()
{
	__int16 _btn_1_2;
	////////////////////////////
_A2C562ABC_200:;
	////////////////////////////
_A2C562ABC_201:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_A2C562ABC_202:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_67;
L5589D4CE_67:;
_A2C562ABC_203:;
	return;
L5589D4CE_65_end:;
_A2C562ABC_204:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_A2C562ABC_205:;
	////////////////////////////
_A2C562ABC_206:;
_A2C562ABC_207:;
	NEARCALL(L5589D4CE_65);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_A2C562ABC_208:;
	asm I1 = L5589D4CE_61+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_70;
	goto	L5589D4CE_69;
L5589D4CE_70:;
	////////////////////////////
_A2C562ABC_209:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_61;
	*(__int16*)sSI	= sAX
_A2C562ABC_210:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
_A2C562ABC_211:;
	goto L5589D4CE_68;
L5589D4CE_69:;
_A2C562ABC_212:;
_A2C562ABC_213:;
	asm I1 = L5589D4CE_63+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_72;
	goto	L5589D4CE_71;
L5589D4CE_72:;
	////////////////////////////
_A2C562ABC_214:;
	asm I1 = L5589D4CE_63+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
_A2C562ABC_215:;
	goto L5589D4CE_68;
L5589D4CE_71:;
_A2C562ABC_216:;
_A2C562ABC_217:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_A2C562ABC_218:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_63;
	*(__int16*)sSI	= sAX
_A2C562ABC_219:;
	asm I1 = L5589D4CE_62+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_61+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A2C562ABC_220:;
	asm I1 = L5589D4CE_62+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A2C562ABC_221:;
	asm I1 = L5589D4CE_61+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_62;
	*(__int16*)sSI	= sAX
_A2C562ABC_222:;
	_i_1_4+0	= 0x05;
L5589D4CE_74:;
_A2C562ABC_223:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_75;
	goto	L5589D4CE_73;
L5589D4CE_75:;
	////////////////////////////
_A2C562ABC_224:;
	sAX	= 0;
	sSI	= (int)&_bits_1_6+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_77;
	sAX	= 1;
L5589D4CE_77:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_78;
	goto	L5589D4CE_76;
L5589D4CE_78:;
	////////////////////////////
_A2C562ABC_225:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_80;
	sAX	= 1;
L5589D4CE_80:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_81;
	goto	L5589D4CE_79;
L5589D4CE_81:;
	////////////////////////////
_A2C562ABC_226:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_83;
	goto	L5589D4CE_82;
L5589D4CE_83:;
_A2C562ABC_227:;
_A2C562ABC_228:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_82:;
_A2C562ABC_229:;
	goto L5589D4CE_84;
L5589D4CE_79:;
	////////////////////////////
_A2C562ABC_230:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_86;
	goto	L5589D4CE_85;
L5589D4CE_86:;
_A2C562ABC_231:;
_A2C562ABC_232:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_85:;
_A2C562ABC_233:;
L5589D4CE_84:;
_A2C562ABC_234:;
	goto L5589D4CE_87;
L5589D4CE_76:;
	////////////////////////////
_A2C562ABC_235:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_89;
	sAX	= 1;
L5589D4CE_89:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_90;
	goto	L5589D4CE_88;
L5589D4CE_90:;
	////////////////////////////
_A2C562ABC_236:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_92;
	goto	L5589D4CE_91;
L5589D4CE_92:;
_A2C562ABC_237:;
_A2C562ABC_238:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_91:;
_A2C562ABC_239:;
L5589D4CE_88:;
_A2C562ABC_240:;
L5589D4CE_87:;
_A2C562ABC_241:;
_A2C562ABC_242:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A2C562ABC_243:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A2C562ABC_244:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A2C562ABC_245:;
	goto L5589D4CE_74;
L5589D4CE_73:;
L5589D4CE_68:;
_A2C562ABC_246:;
	return;
_PollingKey3B90E3B1_end:;
_A2C562ABC_247:;
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

// public _InitKey3C587B6D
// public _PollingKey3B90E3B1
// extern _keyfuncF06F3D55:proc
