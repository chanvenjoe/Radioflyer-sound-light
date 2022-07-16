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
__int16 L5589D4CE_53;
__int16 L5589D4CE_54;
__int16 L5589D4CE_55;

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
_A0432E234_172:;
	////////////////////////////
_A0432E234_173:;
	asm clr io[0x04].b0;
_A0432E234_174:;
	asm clr io[0x04].b1;
_A0432E234_175:;
	asm clr io[0x04].b2;
_A0432E234_176:;
	asm clr io[0x04].b3;
_A0432E234_177:;
	io[0x1E]	= 0x0005;
_A0432E234_178:;
	sAX	= 0x000F;
	sAX	= sAX | io[0x1F];
	io[0x1F]	= sAX;
_A0432E234_179:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_53;
	*(__int16*)sSI	= sAX
_A0432E234_180:;
	sAX	= 0x0000;
	sSI	= (int)&L5589D4CE_54;
	*(__int16*)sSI	= sAX
_A0432E234_181:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_55;
	*(__int16*)sSI	= sAX
L5589D4CE_56:;
_A0432E234_182:;
	return;
_InitKey3C587B6D_end:;
_A0432E234_183:;
}

rjmp void L5589D4CE_57()
{
	__int16 _btn_1_2;
	////////////////////////////
_A0432E234_184:;
	////////////////////////////
_A0432E234_185:;
	sAX	= 0x000F;
	sAX	= sAX & io[0x07];
	sSI	= (int)&_btn_1_2;
	*(__int16*)sSI	= sAX;
_A0432E234_186:;
	sSI	= (int)&_btn_1_2;
	sAX	= *(__int16*)sSI;
	goto L5589D4CE_59;
L5589D4CE_59:;
_A0432E234_187:;
	return;
L5589D4CE_57_end:;
_A0432E234_188:;
}

rjmp void _PollingKey3B90E3B1()
{
	__int16 _keynow_1_2;
	__int16 _i_1_4;
	__int16 _bits_1_6;
	__int16 _bitp_1_8;
	__int16 _pkey_1_10;
	////////////////////////////
_A0432E234_189:;
	////////////////////////////
_A0432E234_190:;
_A0432E234_191:;
	NEARCALL(L5589D4CE_57);
	sSI	= (int)&_keynow_1_2;
	*(__int16*)sSI	= sAX;
_A0432E234_192:;
	asm I1 = L5589D4CE_53+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_keynow_1_2;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JNE();
	if(__je__)	goto L5589D4CE_62;
	goto	L5589D4CE_61;
L5589D4CE_62:;
	////////////////////////////
_A0432E234_193:;
	sSI	= (int)&_keynow_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_53;
	*(__int16*)sSI	= sAX
_A0432E234_194:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_55;
	*(__int16*)sSI	= sAX
_A0432E234_195:;
	goto L5589D4CE_60;
L5589D4CE_61:;
_A0432E234_196:;
_A0432E234_197:;
	asm I1 = L5589D4CE_55+0;
	sAX	= *(__int16*)sSI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_64;
	goto	L5589D4CE_63;
L5589D4CE_64:;
	////////////////////////////
_A0432E234_198:;
	asm I1 = L5589D4CE_55+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX - sCX;
	sSI	= (int)&L5589D4CE_55;
	*(__int16*)sSI	= sAX
_A0432E234_199:;
	goto L5589D4CE_60;
L5589D4CE_63:;
_A0432E234_200:;
_A0432E234_201:;
	asm AX = #_keyfuncF06F3D55+0;
	sSI	= (int)&_pkey_1_10;
	*(__int16*)sSI	= sAX;
_A0432E234_202:;
	sAX	= 0x0200;
	sSI	= (int)&L5589D4CE_55;
	*(__int16*)sSI	= sAX
_A0432E234_203:;
	asm I1 = L5589D4CE_54+0;
	sAX	= *(__int16*)sSI;
	asm I1 = L5589D4CE_53+0;
	asm AR = rm[I1];
	asm AX = AX ^ AR;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A0432E234_204:;
	asm I1 = L5589D4CE_54+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A0432E234_205:;
	asm I1 = L5589D4CE_53+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&L5589D4CE_54;
	*(__int16*)sSI	= sAX
_A0432E234_206:;
	_i_1_4+0	= 0x05;
L5589D4CE_66:;
_A0432E234_207:;
	sSI	= (int)&_i_1_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_4;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX - AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_67;
	goto	L5589D4CE_65;
L5589D4CE_67:;
	////////////////////////////
_A0432E234_208:;
	sAX	= 0;
	sSI	= (int)&_bits_1_6+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_69;
	sAX	= 1;
L5589D4CE_69:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_70;
	goto	L5589D4CE_68;
L5589D4CE_70:;
	////////////////////////////
_A0432E234_209:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_72;
	sAX	= 1;
L5589D4CE_72:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_73;
	goto	L5589D4CE_71;
L5589D4CE_73:;
	////////////////////////////
_A0432E234_210:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_75;
	goto	L5589D4CE_74;
L5589D4CE_75:;
_A0432E234_211:;
_A0432E234_212:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_74:;
_A0432E234_213:;
	goto L5589D4CE_76;
L5589D4CE_71:;
	////////////////////////////
_A0432E234_214:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_78;
	goto	L5589D4CE_77;
L5589D4CE_78:;
_A0432E234_215:;
_A0432E234_216:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_77:;
_A0432E234_217:;
L5589D4CE_76:;
_A0432E234_218:;
	goto L5589D4CE_79;
L5589D4CE_68:;
	////////////////////////////
_A0432E234_219:;
	sAX	= 0;
	sSI	= (int)&_bitp_1_8+0;
	asm AR = rm[I1];
	asm test AR.b0;
	if(__jz__) goto L5589D4CE_81;
	sAX	= 1;
L5589D4CE_81:;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_82;
	goto	L5589D4CE_80;
L5589D4CE_82:;
	////////////////////////////
_A0432E234_220:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CHECKZERO();
	if(__jnz__)	goto L5589D4CE_84;
	goto	L5589D4CE_83;
L5589D4CE_84:;
_A0432E234_221:;
_A0432E234_222:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0001;
	sAX	= sAX + sCX;
	sDI	= sAX;
	sAX	= *(__int16*)sDI;
	sfx_CALL_BY_AX();
L5589D4CE_83:;
_A0432E234_223:;
L5589D4CE_80:;
_A0432E234_224:;
L5589D4CE_79:;
_A0432E234_225:;
_A0432E234_226:;
	sSI	= (int)&_bits_1_6;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bits_1_6;
	*(__int16*)sSI	= sAX;
_A0432E234_227:;
	sSI	= (int)&_bitp_1_8;
	sAX	= *(__int16*)sSI;
	asm sra AX, 1;
	sSI	= (int)&_bitp_1_8;
	*(__int16*)sSI	= sAX;
_A0432E234_228:;
	sSI	= (int)&_pkey_1_10;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_pkey_1_10;
	asm AR = 0x0003;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
_A0432E234_229:;
	goto L5589D4CE_66;
L5589D4CE_65:;
L5589D4CE_60:;
_A0432E234_230:;
	return;
_PollingKey3B90E3B1_end:;
_A0432E234_231:;
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
