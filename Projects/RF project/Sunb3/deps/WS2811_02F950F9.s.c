// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)
__int16 LD63FD439_73;
__int16 LD63FD439_130;

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)
__int16 _LED_Buf98A4A35A[20];
__int16 _sum6BC8EB73;
__int16 LD63FD439_86;

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
_A89F084ED_210:;
_A89F084ED_211:;
	_i_1_2+0	= 0x00;
LD63FD439_76:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0018;
	sfx_CMP_AX_CX_JB();
	if(__je__)	goto LD63FD439_80;
	goto	LD63FD439_78;
LD63FD439_80:;
	goto LD63FD439_77;
LD63FD439_79:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_76;
LD63FD439_77:;
	////////////////////////////
_A89F084ED_212:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	asm AR = 0x0000;
	asm AX = AX & AR;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD63FD439_82;
	goto	LD63FD439_81;
LD63FD439_82:;
	////////////////////////////
_A89F084ED_213:;
	asm set io[0x09].b14;
_A89F084ED_214:;
	asm	nop
_A89F084ED_215:;
	asm	nop
_A89F084ED_216:;
	asm	nop
_A89F084ED_217:;
	asm	nop
_A89F084ED_218:;
	asm	nop
_A89F084ED_219:;
	asm	nop
_A89F084ED_220:;
	asm	nop
_A89F084ED_221:;
	asm	nop
_A89F084ED_222:;
	asm	nop
_A89F084ED_223:;
	asm	nop
_A89F084ED_224:;
	asm	nop
_A89F084ED_225:;
	asm	nop
_A89F084ED_226:;
	asm clr io[0x09].b14;
_A89F084ED_227:;
	asm	nop
_A89F084ED_228:;
	asm	nop
_A89F084ED_229:;
	asm	nop
	goto LD63FD439_83;
LD63FD439_81:;
_A89F084ED_230:;
	asm set io[0x09].b14;
LD63FD439_83:;
_A89F084ED_231:;
_A89F084ED_232:;
	asm	nop
_A89F084ED_233:;
	asm	nop
_A89F084ED_234:;
	asm	nop
_A89F084ED_235:;
	asm clr io[0x09].b14;
_A89F084ED_236:;
	asm	nop
_A89F084ED_237:;
	asm	nop
_A89F084ED_238:;
	asm	nop
_A89F084ED_239:;
	asm	nop
_A89F084ED_240:;
	asm	nop
_A89F084ED_241:;
	asm	nop
_A89F084ED_242:;
	asm	nop
_A89F084ED_243:;
	asm	nop
_A89F084ED_244:;
	asm	nop
_A89F084ED_245:;
	asm	nop
_A89F084ED_246:;
	asm	nop
_A89F084ED_247:;
	asm	nop
_A89F084ED_248:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	asm slz AX, 1;
	sSI	= (int)&_color_0_4;
	*(__int16*)sSI	= sAX;
	goto LD63FD439_79;
LD63FD439_78:;
_A89F084ED_249:;
LD63FD439_75:;
_A89F084ED_250:;
	return;
_WS_Send24bits851C5C55_end:;
_A89F084ED_251:;
}

void _WS_Color_copyADB1DFED(__int16 _No_0_4, __int16 _color_0_6)
{
_A89F084ED_252:;
	////////////////////////////
_A89F084ED_253:;
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
LD63FD439_84:;
_A89F084ED_254:;
	return;
_WS_Color_copyADB1DFED_end:;
_A89F084ED_255:;
}

void _WS_ColorSet_LEDCA3DEB8C(__int16 _from_0_4, __int16 _to_0_6, __int16 _color_0_8)
{
_A89F084ED_256:;
	////////////////////////////
_A89F084ED_257:;
	sSI	= (int)&_to_0_6;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sfx_CMP_AX_CX_JBE();
	if(__je__)	goto LD63FD439_88;
	sAX	= 1;
	goto	LD63FD439_89;
LD63FD439_88:;
	sAX	= 0;
LD63FD439_89:;
	sfx_CHECKZERO();
	if(__jz__)	goto LD63FD439_90;
	goto	LD63FD439_87;
LD63FD439_90:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0000;
	sfx_CMP_AX_CX_JAE();
	if(__je__)	goto LD63FD439_91;
	sAX	= 1;
	goto	LD63FD439_92;
LD63FD439_91:;
	sAX	= 0;
LD63FD439_92:;
LD63FD439_87:;
	sfx_CHECKZERO();
	if(__jnz__)	goto LD63FD439_94;
	goto	LD63FD439_93;
LD63FD439_94:;
	////////////////////////////
_A89F084ED_258:;
	_to_0_6+0	= 0x03;
_A89F084ED_259:;
	_from_0_4+0	= 0x00;
LD63FD439_93:;
_A89F084ED_260:;
_A89F084ED_261:;
	sAX	= 0xFFFF;
	sSI	= (int)&_color_0_8;
	sCX	= *(__int16*)sSI;
	sAX	= sAX & sCX;
	sSI	= (int)&_color_0_8;
	*(__int16*)sSI	= sAX;
_A89F084ED_262:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LD63FD439_96;
	goto	LD63FD439_95;
LD63FD439_96:;
	////////////////////////////
_A89F084ED_263:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_86;
	*(__int16*)sSI	= sAX
_A89F084ED_264:;
	sSI	= (int)&_to_0_6;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_from_0_4;
	*(__int16*)sSI	= sAX;
_A89F084ED_265:;
	asm I1 = LD63FD439_86+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	*(__int16*)sSI	= sAX;
LD63FD439_95:;
_A89F084ED_266:;
_A89F084ED_267:;
	sSI	= (int)&_from_0_4;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_86;
	*(__int16*)sSI	= sAX
LD63FD439_97:;
	asm I1 = LD63FD439_86+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_to_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JLE();
	if(__je__)	goto LD63FD439_101;
	goto	LD63FD439_99;
LD63FD439_101:;
	goto LD63FD439_98;
LD63FD439_100:;
	asm I1 = LD63FD439_86+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_86;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
	goto LD63FD439_97;
LD63FD439_98:;
	////////////////////////////
_A89F084ED_268:;
_A89F084ED_269:;
	sSI	= (int)&_color_0_8;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	asm I1 = LD63FD439_86+0;
	sAX	= *(__int16*)sSI;
	PUSH(sAX);
	_WS_Color_copyADB1DFED(STACK[sSP + 0], STACK[sSP + 1]);
	RESTORESP(2);
	goto LD63FD439_100;
LD63FD439_99:;
_A89F084ED_270:;
LD63FD439_85:;
_A89F084ED_271:;
	return;
_WS_ColorSet_LEDCA3DEB8C_end:;
_A89F084ED_272:;
}

void _WS_TRSF_color_setE1CC300C(__int16 _color_0_4, __int16 _Led_num_0_6)
{
	__int16 _i_1_2;
	////////////////////////////
_A89F084ED_273:;
_A89F084ED_274:;
	_i_1_2+0	= 0x00;
LD63FD439_103:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_Led_num_0_6;
	sCX	= *(__int16*)sSI;
	sfx_CMP_AX_CX_JB();
	if(__je__)	goto LD63FD439_107;
	goto	LD63FD439_105;
LD63FD439_107:;
	goto LD63FD439_104;
LD63FD439_106:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_103;
LD63FD439_104:;
	////////////////////////////
_A89F084ED_275:;
	sSI	= (int)&_color_0_4;
	sAX	= *(__int16*)sSI;
	goto LD63FD439_109;
LD63FD439_110:;
_A89F084ED_276:;
	asm set io[0x09].b14;
_A89F084ED_277:;
	asm	nop
_A89F084ED_278:;
	asm	nop
_A89F084ED_279:;
	asm	nop
_A89F084ED_280:;
	asm	nop
_A89F084ED_281:;
	asm	nop
_A89F084ED_282:;
	asm	nop
_A89F084ED_283:;
	asm	nop
_A89F084ED_284:;
	asm	nop
_A89F084ED_285:;
	asm	nop
_A89F084ED_286:;
	asm	nop
_A89F084ED_287:;
	asm	nop
_A89F084ED_288:;
	asm	nop
_A89F084ED_289:;
	asm clr io[0x09].b14;
_A89F084ED_290:;
	asm	nop
_A89F084ED_291:;
	asm	nop
_A89F084ED_292:;
	asm	nop
_A89F084ED_293:;
	asm set io[0x09].b14;
_A89F084ED_294:;
	asm	nop
_A89F084ED_295:;
	asm	nop
_A89F084ED_296:;
	asm	nop
_A89F084ED_297:;
	asm	nop
_A89F084ED_298:;
	asm	nop
_A89F084ED_299:;
	asm	nop
_A89F084ED_300:;
	asm	nop
_A89F084ED_301:;
	asm	nop
_A89F084ED_302:;
	asm	nop
_A89F084ED_303:;
	asm	nop
_A89F084ED_304:;
	asm	nop
_A89F084ED_305:;
	asm	nop
_A89F084ED_306:;
	asm clr io[0x09].b14;
_A89F084ED_307:;
	asm	nop
_A89F084ED_308:;
	asm	nop
_A89F084ED_309:;
	asm	nop
_A89F084ED_310:;
	asm set io[0x09].b14;
_A89F084ED_311:;
	asm	nop
_A89F084ED_312:;
	asm	nop
_A89F084ED_313:;
	asm	nop
_A89F084ED_314:;
	asm	nop
_A89F084ED_315:;
	asm	nop
_A89F084ED_316:;
	asm	nop
_A89F084ED_317:;
	asm	nop
_A89F084ED_318:;
	asm	nop
_A89F084ED_319:;
	asm	nop
_A89F084ED_320:;
	asm	nop
_A89F084ED_321:;
	asm	nop
_A89F084ED_322:;
	asm	nop
_A89F084ED_323:;
	asm clr io[0x09].b14;
_A89F084ED_324:;
	asm	nop
_A89F084ED_325:;
	asm	nop
_A89F084ED_326:;
	asm	nop
_A89F084ED_327:;
	asm set io[0x09].b14;
_A89F084ED_328:;
	asm	nop
_A89F084ED_329:;
	asm	nop
_A89F084ED_330:;
	asm	nop
_A89F084ED_331:;
	asm	nop
_A89F084ED_332:;
	asm	nop
_A89F084ED_333:;
	asm	nop
_A89F084ED_334:;
	asm	nop
_A89F084ED_335:;
	asm	nop
_A89F084ED_336:;
	asm	nop
_A89F084ED_337:;
	asm	nop
_A89F084ED_338:;
	asm	nop
_A89F084ED_339:;
	asm	nop
_A89F084ED_340:;
	asm clr io[0x09].b14;
_A89F084ED_341:;
	asm	nop
_A89F084ED_342:;
	asm	nop
_A89F084ED_343:;
	asm	nop
_A89F084ED_344:;
	asm set io[0x09].b14;
_A89F084ED_345:;
	asm	nop
_A89F084ED_346:;
	asm	nop
_A89F084ED_347:;
	asm	nop
_A89F084ED_348:;
	asm	nop
_A89F084ED_349:;
	asm	nop
_A89F084ED_350:;
	asm	nop
_A89F084ED_351:;
	asm	nop
_A89F084ED_352:;
	asm	nop
_A89F084ED_353:;
	asm	nop
_A89F084ED_354:;
	asm	nop
_A89F084ED_355:;
	asm	nop
_A89F084ED_356:;
	asm	nop
_A89F084ED_357:;
	asm clr io[0x09].b14;
_A89F084ED_358:;
	asm	nop
_A89F084ED_359:;
	asm	nop
_A89F084ED_360:;
	asm	nop
_A89F084ED_361:;
	asm set io[0x09].b14;
_A89F084ED_362:;
	asm	nop
_A89F084ED_363:;
	asm	nop
_A89F084ED_364:;
	asm	nop
_A89F084ED_365:;
	asm	nop
_A89F084ED_366:;
	asm	nop
_A89F084ED_367:;
	asm	nop
_A89F084ED_368:;
	asm	nop
_A89F084ED_369:;
	asm	nop
_A89F084ED_370:;
	asm	nop
_A89F084ED_371:;
	asm	nop
_A89F084ED_372:;
	asm	nop
_A89F084ED_373:;
	asm	nop
_A89F084ED_374:;
	asm clr io[0x09].b14;
_A89F084ED_375:;
	asm	nop
_A89F084ED_376:;
	asm	nop
_A89F084ED_377:;
	asm	nop
_A89F084ED_378:;
	asm set io[0x09].b14;
_A89F084ED_379:;
	asm	nop
_A89F084ED_380:;
	asm	nop
_A89F084ED_381:;
	asm	nop
_A89F084ED_382:;
	asm	nop
_A89F084ED_383:;
	asm	nop
_A89F084ED_384:;
	asm	nop
_A89F084ED_385:;
	asm	nop
_A89F084ED_386:;
	asm	nop
_A89F084ED_387:;
	asm	nop
_A89F084ED_388:;
	asm	nop
_A89F084ED_389:;
	asm	nop
_A89F084ED_390:;
	asm	nop
_A89F084ED_391:;
	asm clr io[0x09].b14;
_A89F084ED_392:;
	asm	nop
_A89F084ED_393:;
	asm	nop
_A89F084ED_394:;
	asm	nop
_A89F084ED_395:;
	asm set io[0x09].b14;
_A89F084ED_396:;
	asm	nop
_A89F084ED_397:;
	asm	nop
_A89F084ED_398:;
	asm	nop
_A89F084ED_399:;
	asm	nop
_A89F084ED_400:;
	asm	nop
_A89F084ED_401:;
	asm	nop
_A89F084ED_402:;
	asm	nop
_A89F084ED_403:;
	asm	nop
_A89F084ED_404:;
	asm	nop
_A89F084ED_405:;
	asm	nop
_A89F084ED_406:;
	asm	nop
_A89F084ED_407:;
	asm	nop
_A89F084ED_408:;
	asm clr io[0x09].b14;
_A89F084ED_409:;
	asm	nop
_A89F084ED_410:;
	asm	nop
_A89F084ED_411:;
	asm	nop
_A89F084ED_412:;
	asm set io[0x09].b14;
_A89F084ED_413:;
	asm	nop
_A89F084ED_414:;
	asm	nop
_A89F084ED_415:;
	asm	nop
_A89F084ED_416:;
	asm	nop
_A89F084ED_417:;
	asm	nop
_A89F084ED_418:;
	asm	nop
_A89F084ED_419:;
	asm	nop
_A89F084ED_420:;
	asm	nop
_A89F084ED_421:;
	asm	nop
_A89F084ED_422:;
	asm	nop
_A89F084ED_423:;
	asm	nop
_A89F084ED_424:;
	asm	nop
_A89F084ED_425:;
	asm clr io[0x09].b14;
_A89F084ED_426:;
	asm	nop
_A89F084ED_427:;
	asm	nop
_A89F084ED_428:;
	asm	nop
_A89F084ED_429:;
	asm set io[0x09].b14;
_A89F084ED_430:;
	asm	nop
_A89F084ED_431:;
	asm	nop
_A89F084ED_432:;
	asm	nop
_A89F084ED_433:;
	asm	nop
_A89F084ED_434:;
	asm	nop
_A89F084ED_435:;
	asm	nop
_A89F084ED_436:;
	asm	nop
_A89F084ED_437:;
	asm	nop
_A89F084ED_438:;
	asm	nop
_A89F084ED_439:;
	asm	nop
_A89F084ED_440:;
	asm	nop
_A89F084ED_441:;
	asm	nop
_A89F084ED_442:;
	asm clr io[0x09].b14;
_A89F084ED_443:;
	asm	nop
_A89F084ED_444:;
	asm	nop
_A89F084ED_445:;
	asm	nop
_A89F084ED_446:;
	asm set io[0x09].b14;
_A89F084ED_447:;
	asm	nop
_A89F084ED_448:;
	asm	nop
_A89F084ED_449:;
	asm	nop
_A89F084ED_450:;
	asm	nop
_A89F084ED_451:;
	asm	nop
_A89F084ED_452:;
	asm	nop
_A89F084ED_453:;
	asm	nop
_A89F084ED_454:;
	asm	nop
_A89F084ED_455:;
	asm	nop
_A89F084ED_456:;
	asm	nop
_A89F084ED_457:;
	asm	nop
_A89F084ED_458:;
	asm	nop
_A89F084ED_459:;
	asm clr io[0x09].b14;
_A89F084ED_460:;
	asm	nop
_A89F084ED_461:;
	asm	nop
_A89F084ED_462:;
	asm	nop
_A89F084ED_463:;
	asm set io[0x09].b14;
_A89F084ED_464:;
	asm	nop
_A89F084ED_465:;
	asm	nop
_A89F084ED_466:;
	asm	nop
_A89F084ED_467:;
	asm	nop
_A89F084ED_468:;
	asm	nop
_A89F084ED_469:;
	asm	nop
_A89F084ED_470:;
	asm	nop
_A89F084ED_471:;
	asm	nop
_A89F084ED_472:;
	asm	nop
_A89F084ED_473:;
	asm	nop
_A89F084ED_474:;
	asm	nop
_A89F084ED_475:;
	asm	nop
_A89F084ED_476:;
	asm clr io[0x09].b14;
_A89F084ED_477:;
	asm	nop
_A89F084ED_478:;
	asm	nop
_A89F084ED_479:;
	asm	nop
_A89F084ED_480:;
	asm set io[0x09].b14;
_A89F084ED_481:;
	asm	nop
_A89F084ED_482:;
	asm	nop
_A89F084ED_483:;
	asm	nop
_A89F084ED_484:;
	asm	nop
_A89F084ED_485:;
	asm	nop
_A89F084ED_486:;
	asm	nop
_A89F084ED_487:;
	asm	nop
_A89F084ED_488:;
	asm	nop
_A89F084ED_489:;
	asm	nop
_A89F084ED_490:;
	asm	nop
_A89F084ED_491:;
	asm	nop
_A89F084ED_492:;
	asm	nop
_A89F084ED_493:;
	asm clr io[0x09].b14;
_A89F084ED_494:;
	asm	nop
_A89F084ED_495:;
	asm	nop
_A89F084ED_496:;
	asm	nop
_A89F084ED_497:;
	asm set io[0x09].b14;
_A89F084ED_498:;
	asm	nop
_A89F084ED_499:;
	asm	nop
_A89F084ED_500:;
	asm	nop
_A89F084ED_501:;
	asm	nop
_A89F084ED_502:;
	asm	nop
_A89F084ED_503:;
	asm	nop
_A89F084ED_504:;
	asm	nop
_A89F084ED_505:;
	asm	nop
_A89F084ED_506:;
	asm	nop
_A89F084ED_507:;
	asm	nop
_A89F084ED_508:;
	asm	nop
_A89F084ED_509:;
	asm	nop
_A89F084ED_510:;
	asm clr io[0x09].b14;
_A89F084ED_511:;
	asm	nop
_A89F084ED_512:;
	asm	nop
_A89F084ED_513:;
	asm	nop
_A89F084ED_514:;
	asm set io[0x09].b14;
_A89F084ED_515:;
	asm	nop
_A89F084ED_516:;
	asm	nop
_A89F084ED_517:;
	asm	nop
_A89F084ED_518:;
	asm	nop
_A89F084ED_519:;
	asm	nop
_A89F084ED_520:;
	asm	nop
_A89F084ED_521:;
	asm	nop
_A89F084ED_522:;
	asm	nop
_A89F084ED_523:;
	asm	nop
_A89F084ED_524:;
	asm	nop
_A89F084ED_525:;
	asm	nop
_A89F084ED_526:;
	asm	nop
_A89F084ED_527:;
	asm clr io[0x09].b14;
_A89F084ED_528:;
	asm	nop
_A89F084ED_529:;
	asm	nop
_A89F084ED_530:;
	asm	nop
_A89F084ED_531:;
	asm set io[0x09].b14;
_A89F084ED_532:;
	asm	nop
_A89F084ED_533:;
	asm	nop
_A89F084ED_534:;
	asm	nop
_A89F084ED_535:;
	asm	nop
_A89F084ED_536:;
	asm	nop
_A89F084ED_537:;
	asm	nop
_A89F084ED_538:;
	asm	nop
_A89F084ED_539:;
	asm	nop
_A89F084ED_540:;
	asm	nop
_A89F084ED_541:;
	asm	nop
_A89F084ED_542:;
	asm	nop
_A89F084ED_543:;
	asm	nop
_A89F084ED_544:;
	asm clr io[0x09].b14;
_A89F084ED_545:;
	asm	nop
_A89F084ED_546:;
	asm	nop
_A89F084ED_547:;
	asm	nop
_A89F084ED_548:;
	asm set io[0x09].b14;
_A89F084ED_549:;
	asm	nop
_A89F084ED_550:;
	asm	nop
_A89F084ED_551:;
	asm	nop
_A89F084ED_552:;
	asm	nop
_A89F084ED_553:;
	asm	nop
_A89F084ED_554:;
	asm	nop
_A89F084ED_555:;
	asm	nop
_A89F084ED_556:;
	asm	nop
_A89F084ED_557:;
	asm	nop
_A89F084ED_558:;
	asm	nop
_A89F084ED_559:;
	asm	nop
_A89F084ED_560:;
	asm	nop
_A89F084ED_561:;
	asm clr io[0x09].b14;
_A89F084ED_562:;
	asm	nop
_A89F084ED_563:;
	asm	nop
_A89F084ED_564:;
	asm	nop
_A89F084ED_565:;
	asm set io[0x09].b14;
_A89F084ED_566:;
	asm	nop
_A89F084ED_567:;
	asm	nop
_A89F084ED_568:;
	asm	nop
_A89F084ED_569:;
	asm	nop
_A89F084ED_570:;
	asm	nop
_A89F084ED_571:;
	asm	nop
_A89F084ED_572:;
	asm	nop
_A89F084ED_573:;
	asm	nop
_A89F084ED_574:;
	asm	nop
_A89F084ED_575:;
	asm	nop
_A89F084ED_576:;
	asm	nop
_A89F084ED_577:;
	asm	nop
_A89F084ED_578:;
	asm clr io[0x09].b14;
_A89F084ED_579:;
	asm	nop
_A89F084ED_580:;
	asm	nop
_A89F084ED_581:;
	asm	nop
_A89F084ED_582:;
	asm set io[0x09].b14;
_A89F084ED_583:;
	asm	nop
_A89F084ED_584:;
	asm	nop
_A89F084ED_585:;
	asm	nop
_A89F084ED_586:;
	asm	nop
_A89F084ED_587:;
	asm	nop
_A89F084ED_588:;
	asm	nop
_A89F084ED_589:;
	asm	nop
_A89F084ED_590:;
	asm	nop
_A89F084ED_591:;
	asm	nop
_A89F084ED_592:;
	asm	nop
_A89F084ED_593:;
	asm	nop
_A89F084ED_594:;
	asm	nop
_A89F084ED_595:;
	asm clr io[0x09].b14;
_A89F084ED_596:;
	asm	nop
_A89F084ED_597:;
	asm	nop
_A89F084ED_598:;
	asm	nop
_A89F084ED_599:;
	asm set io[0x09].b14;
_A89F084ED_600:;
	asm	nop
_A89F084ED_601:;
	asm	nop
_A89F084ED_602:;
	asm	nop
_A89F084ED_603:;
	asm	nop
_A89F084ED_604:;
	asm	nop
_A89F084ED_605:;
	asm	nop
_A89F084ED_606:;
	asm	nop
_A89F084ED_607:;
	asm	nop
_A89F084ED_608:;
	asm	nop
_A89F084ED_609:;
	asm	nop
_A89F084ED_610:;
	asm	nop
_A89F084ED_611:;
	asm	nop
_A89F084ED_612:;
	asm clr io[0x09].b14;
_A89F084ED_613:;
	asm	nop
_A89F084ED_614:;
	asm	nop
_A89F084ED_615:;
	asm	nop
_A89F084ED_616:;
	asm set io[0x09].b14;
_A89F084ED_617:;
	asm	nop
_A89F084ED_618:;
	asm	nop
_A89F084ED_619:;
	asm	nop
_A89F084ED_620:;
	asm	nop
_A89F084ED_621:;
	asm	nop
_A89F084ED_622:;
	asm	nop
_A89F084ED_623:;
	asm	nop
_A89F084ED_624:;
	asm	nop
_A89F084ED_625:;
	asm	nop
_A89F084ED_626:;
	asm	nop
_A89F084ED_627:;
	asm	nop
_A89F084ED_628:;
	asm	nop
_A89F084ED_629:;
	asm clr io[0x09].b14;
_A89F084ED_630:;
	asm	nop
_A89F084ED_631:;
	asm	nop
_A89F084ED_632:;
	asm	nop
_A89F084ED_633:;
	asm set io[0x09].b14;
_A89F084ED_634:;
	asm	nop
_A89F084ED_635:;
	asm	nop
_A89F084ED_636:;
	asm	nop
_A89F084ED_637:;
	asm	nop
_A89F084ED_638:;
	asm	nop
_A89F084ED_639:;
	asm	nop
_A89F084ED_640:;
	asm	nop
_A89F084ED_641:;
	asm	nop
_A89F084ED_642:;
	asm	nop
_A89F084ED_643:;
	asm	nop
_A89F084ED_644:;
	asm	nop
_A89F084ED_645:;
	asm	nop
_A89F084ED_646:;
	asm clr io[0x09].b14;
_A89F084ED_647:;
	asm	nop
_A89F084ED_648:;
	asm	nop
_A89F084ED_649:;
	asm	nop
_A89F084ED_650:;
	asm set io[0x09].b14;
_A89F084ED_651:;
	asm	nop
_A89F084ED_652:;
	asm	nop
_A89F084ED_653:;
	asm	nop
_A89F084ED_654:;
	asm	nop
_A89F084ED_655:;
	asm	nop
_A89F084ED_656:;
	asm	nop
_A89F084ED_657:;
	asm	nop
_A89F084ED_658:;
	asm	nop
_A89F084ED_659:;
	asm	nop
_A89F084ED_660:;
	asm	nop
_A89F084ED_661:;
	asm	nop
_A89F084ED_662:;
	asm	nop
_A89F084ED_663:;
	asm clr io[0x09].b14;
_A89F084ED_664:;
	asm	nop
_A89F084ED_665:;
	asm	nop
_A89F084ED_666:;
	asm	nop
_A89F084ED_667:;
	asm set io[0x09].b14;
_A89F084ED_668:;
	asm	nop
_A89F084ED_669:;
	asm	nop
_A89F084ED_670:;
	asm	nop
_A89F084ED_671:;
	asm	nop
_A89F084ED_672:;
	asm	nop
_A89F084ED_673:;
	asm	nop
_A89F084ED_674:;
	asm	nop
_A89F084ED_675:;
	asm	nop
_A89F084ED_676:;
	asm	nop
_A89F084ED_677:;
	asm	nop
_A89F084ED_678:;
	asm	nop
_A89F084ED_679:;
	asm	nop
_A89F084ED_680:;
	asm clr io[0x09].b14;
_A89F084ED_681:;
	asm	nop
_A89F084ED_682:;
	asm	nop
_A89F084ED_683:;
	asm	nop
_A89F084ED_684:;
	goto LD63FD439_108;
LD63FD439_111:;
_A89F084ED_685:;
	asm set io[0x09].b14;
_A89F084ED_686:;
	asm	nop
_A89F084ED_687:;
	asm	nop
_A89F084ED_688:;
	asm	nop
_A89F084ED_689:;
	asm clr io[0x09].b14;
_A89F084ED_690:;
	asm	nop
_A89F084ED_691:;
	asm	nop
_A89F084ED_692:;
	asm	nop
_A89F084ED_693:;
	asm	nop
_A89F084ED_694:;
	asm	nop
_A89F084ED_695:;
	asm	nop
_A89F084ED_696:;
	asm	nop
_A89F084ED_697:;
	asm	nop
_A89F084ED_698:;
	asm	nop
_A89F084ED_699:;
	asm	nop
_A89F084ED_700:;
	asm	nop
_A89F084ED_701:;
	asm	nop
_A89F084ED_702:;
	asm set io[0x09].b14;
_A89F084ED_703:;
	asm	nop
_A89F084ED_704:;
	asm	nop
_A89F084ED_705:;
	asm	nop
_A89F084ED_706:;
	asm clr io[0x09].b14;
_A89F084ED_707:;
	asm	nop
_A89F084ED_708:;
	asm	nop
_A89F084ED_709:;
	asm	nop
_A89F084ED_710:;
	asm	nop
_A89F084ED_711:;
	asm	nop
_A89F084ED_712:;
	asm	nop
_A89F084ED_713:;
	asm	nop
_A89F084ED_714:;
	asm	nop
_A89F084ED_715:;
	asm	nop
_A89F084ED_716:;
	asm	nop
_A89F084ED_717:;
	asm	nop
_A89F084ED_718:;
	asm	nop
_A89F084ED_719:;
	asm set io[0x09].b14;
_A89F084ED_720:;
	asm	nop
_A89F084ED_721:;
	asm	nop
_A89F084ED_722:;
	asm	nop
_A89F084ED_723:;
	asm clr io[0x09].b14;
_A89F084ED_724:;
	asm	nop
_A89F084ED_725:;
	asm	nop
_A89F084ED_726:;
	asm	nop
_A89F084ED_727:;
	asm	nop
_A89F084ED_728:;
	asm	nop
_A89F084ED_729:;
	asm	nop
_A89F084ED_730:;
	asm	nop
_A89F084ED_731:;
	asm	nop
_A89F084ED_732:;
	asm	nop
_A89F084ED_733:;
	asm	nop
_A89F084ED_734:;
	asm	nop
_A89F084ED_735:;
	asm	nop
_A89F084ED_736:;
	asm set io[0x09].b14;
_A89F084ED_737:;
	asm	nop
_A89F084ED_738:;
	asm	nop
_A89F084ED_739:;
	asm	nop
_A89F084ED_740:;
	asm clr io[0x09].b14;
_A89F084ED_741:;
	asm	nop
_A89F084ED_742:;
	asm	nop
_A89F084ED_743:;
	asm	nop
_A89F084ED_744:;
	asm	nop
_A89F084ED_745:;
	asm	nop
_A89F084ED_746:;
	asm	nop
_A89F084ED_747:;
	asm	nop
_A89F084ED_748:;
	asm	nop
_A89F084ED_749:;
	asm	nop
_A89F084ED_750:;
	asm	nop
_A89F084ED_751:;
	asm	nop
_A89F084ED_752:;
	asm	nop
_A89F084ED_753:;
	asm set io[0x09].b14;
_A89F084ED_754:;
	asm	nop
_A89F084ED_755:;
	asm	nop
_A89F084ED_756:;
	asm	nop
_A89F084ED_757:;
	asm clr io[0x09].b14;
_A89F084ED_758:;
	asm	nop
_A89F084ED_759:;
	asm	nop
_A89F084ED_760:;
	asm	nop
_A89F084ED_761:;
	asm	nop
_A89F084ED_762:;
	asm	nop
_A89F084ED_763:;
	asm	nop
_A89F084ED_764:;
	asm	nop
_A89F084ED_765:;
	asm	nop
_A89F084ED_766:;
	asm	nop
_A89F084ED_767:;
	asm	nop
_A89F084ED_768:;
	asm	nop
_A89F084ED_769:;
	asm	nop
_A89F084ED_770:;
	asm set io[0x09].b14;
_A89F084ED_771:;
	asm	nop
_A89F084ED_772:;
	asm	nop
_A89F084ED_773:;
	asm	nop
_A89F084ED_774:;
	asm clr io[0x09].b14;
_A89F084ED_775:;
	asm	nop
_A89F084ED_776:;
	asm	nop
_A89F084ED_777:;
	asm	nop
_A89F084ED_778:;
	asm	nop
_A89F084ED_779:;
	asm	nop
_A89F084ED_780:;
	asm	nop
_A89F084ED_781:;
	asm	nop
_A89F084ED_782:;
	asm	nop
_A89F084ED_783:;
	asm	nop
_A89F084ED_784:;
	asm	nop
_A89F084ED_785:;
	asm	nop
_A89F084ED_786:;
	asm	nop
_A89F084ED_787:;
	asm set io[0x09].b14;
_A89F084ED_788:;
	asm	nop
_A89F084ED_789:;
	asm	nop
_A89F084ED_790:;
	asm	nop
_A89F084ED_791:;
	asm clr io[0x09].b14;
_A89F084ED_792:;
	asm	nop
_A89F084ED_793:;
	asm	nop
_A89F084ED_794:;
	asm	nop
_A89F084ED_795:;
	asm	nop
_A89F084ED_796:;
	asm	nop
_A89F084ED_797:;
	asm	nop
_A89F084ED_798:;
	asm	nop
_A89F084ED_799:;
	asm	nop
_A89F084ED_800:;
	asm	nop
_A89F084ED_801:;
	asm	nop
_A89F084ED_802:;
	asm	nop
_A89F084ED_803:;
	asm	nop
_A89F084ED_804:;
	asm set io[0x09].b14;
_A89F084ED_805:;
	asm	nop
_A89F084ED_806:;
	asm	nop
_A89F084ED_807:;
	asm	nop
_A89F084ED_808:;
	asm clr io[0x09].b14;
_A89F084ED_809:;
	asm	nop
_A89F084ED_810:;
	asm	nop
_A89F084ED_811:;
	asm	nop
_A89F084ED_812:;
	asm	nop
_A89F084ED_813:;
	asm	nop
_A89F084ED_814:;
	asm	nop
_A89F084ED_815:;
	asm	nop
_A89F084ED_816:;
	asm	nop
_A89F084ED_817:;
	asm	nop
_A89F084ED_818:;
	asm	nop
_A89F084ED_819:;
	asm	nop
_A89F084ED_820:;
	asm	nop
_A89F084ED_821:;
	asm set io[0x09].b14;
_A89F084ED_822:;
	asm	nop
_A89F084ED_823:;
	asm	nop
_A89F084ED_824:;
	asm	nop
_A89F084ED_825:;
	asm clr io[0x09].b14;
_A89F084ED_826:;
	asm	nop
_A89F084ED_827:;
	asm	nop
_A89F084ED_828:;
	asm	nop
_A89F084ED_829:;
	asm	nop
_A89F084ED_830:;
	asm	nop
_A89F084ED_831:;
	asm	nop
_A89F084ED_832:;
	asm	nop
_A89F084ED_833:;
	asm	nop
_A89F084ED_834:;
	asm	nop
_A89F084ED_835:;
	asm	nop
_A89F084ED_836:;
	asm	nop
_A89F084ED_837:;
	asm	nop
_A89F084ED_838:;
	asm set io[0x09].b14;
_A89F084ED_839:;
	asm	nop
_A89F084ED_840:;
	asm	nop
_A89F084ED_841:;
	asm	nop
_A89F084ED_842:;
	asm clr io[0x09].b14;
_A89F084ED_843:;
	asm	nop
_A89F084ED_844:;
	asm	nop
_A89F084ED_845:;
	asm	nop
_A89F084ED_846:;
	asm	nop
_A89F084ED_847:;
	asm	nop
_A89F084ED_848:;
	asm	nop
_A89F084ED_849:;
	asm	nop
_A89F084ED_850:;
	asm	nop
_A89F084ED_851:;
	asm	nop
_A89F084ED_852:;
	asm	nop
_A89F084ED_853:;
	asm	nop
_A89F084ED_854:;
	asm	nop
_A89F084ED_855:;
	asm set io[0x09].b14;
_A89F084ED_856:;
	asm	nop
_A89F084ED_857:;
	asm	nop
_A89F084ED_858:;
	asm	nop
_A89F084ED_859:;
	asm clr io[0x09].b14;
_A89F084ED_860:;
	asm	nop
_A89F084ED_861:;
	asm	nop
_A89F084ED_862:;
	asm	nop
_A89F084ED_863:;
	asm	nop
_A89F084ED_864:;
	asm	nop
_A89F084ED_865:;
	asm	nop
_A89F084ED_866:;
	asm	nop
_A89F084ED_867:;
	asm	nop
_A89F084ED_868:;
	asm	nop
_A89F084ED_869:;
	asm	nop
_A89F084ED_870:;
	asm	nop
_A89F084ED_871:;
	asm	nop
_A89F084ED_872:;
	asm set io[0x09].b14;
_A89F084ED_873:;
	asm	nop
_A89F084ED_874:;
	asm	nop
_A89F084ED_875:;
	asm	nop
_A89F084ED_876:;
	asm clr io[0x09].b14;
_A89F084ED_877:;
	asm	nop
_A89F084ED_878:;
	asm	nop
_A89F084ED_879:;
	asm	nop
_A89F084ED_880:;
	asm	nop
_A89F084ED_881:;
	asm	nop
_A89F084ED_882:;
	asm	nop
_A89F084ED_883:;
	asm	nop
_A89F084ED_884:;
	asm	nop
_A89F084ED_885:;
	asm	nop
_A89F084ED_886:;
	asm	nop
_A89F084ED_887:;
	asm	nop
_A89F084ED_888:;
	asm	nop
_A89F084ED_889:;
	asm set io[0x09].b14;
_A89F084ED_890:;
	asm	nop
_A89F084ED_891:;
	asm	nop
_A89F084ED_892:;
	asm	nop
_A89F084ED_893:;
	asm clr io[0x09].b14;
_A89F084ED_894:;
	asm	nop
_A89F084ED_895:;
	asm	nop
_A89F084ED_896:;
	asm	nop
_A89F084ED_897:;
	asm	nop
_A89F084ED_898:;
	asm	nop
_A89F084ED_899:;
	asm	nop
_A89F084ED_900:;
	asm	nop
_A89F084ED_901:;
	asm	nop
_A89F084ED_902:;
	asm	nop
_A89F084ED_903:;
	asm	nop
_A89F084ED_904:;
	asm	nop
_A89F084ED_905:;
	asm	nop
_A89F084ED_906:;
	asm set io[0x09].b14;
_A89F084ED_907:;
	asm	nop
_A89F084ED_908:;
	asm	nop
_A89F084ED_909:;
	asm	nop
_A89F084ED_910:;
	asm clr io[0x09].b14;
_A89F084ED_911:;
	asm	nop
_A89F084ED_912:;
	asm	nop
_A89F084ED_913:;
	asm	nop
_A89F084ED_914:;
	asm	nop
_A89F084ED_915:;
	asm	nop
_A89F084ED_916:;
	asm	nop
_A89F084ED_917:;
	asm	nop
_A89F084ED_918:;
	asm	nop
_A89F084ED_919:;
	asm	nop
_A89F084ED_920:;
	asm	nop
_A89F084ED_921:;
	asm	nop
_A89F084ED_922:;
	asm	nop
_A89F084ED_923:;
	asm set io[0x09].b14;
_A89F084ED_924:;
	asm	nop
_A89F084ED_925:;
	asm	nop
_A89F084ED_926:;
	asm	nop
_A89F084ED_927:;
	asm clr io[0x09].b14;
_A89F084ED_928:;
	asm	nop
_A89F084ED_929:;
	asm	nop
_A89F084ED_930:;
	asm	nop
_A89F084ED_931:;
	asm	nop
_A89F084ED_932:;
	asm	nop
_A89F084ED_933:;
	asm	nop
_A89F084ED_934:;
	asm	nop
_A89F084ED_935:;
	asm	nop
_A89F084ED_936:;
	asm	nop
_A89F084ED_937:;
	asm	nop
_A89F084ED_938:;
	asm	nop
_A89F084ED_939:;
	asm	nop
_A89F084ED_940:;
	asm set io[0x09].b14;
_A89F084ED_941:;
	asm	nop
_A89F084ED_942:;
	asm	nop
_A89F084ED_943:;
	asm	nop
_A89F084ED_944:;
	asm clr io[0x09].b14;
_A89F084ED_945:;
	asm	nop
_A89F084ED_946:;
	asm	nop
_A89F084ED_947:;
	asm	nop
_A89F084ED_948:;
	asm	nop
_A89F084ED_949:;
	asm	nop
_A89F084ED_950:;
	asm	nop
_A89F084ED_951:;
	asm	nop
_A89F084ED_952:;
	asm	nop
_A89F084ED_953:;
	asm	nop
_A89F084ED_954:;
	asm	nop
_A89F084ED_955:;
	asm	nop
_A89F084ED_956:;
	asm	nop
_A89F084ED_957:;
	asm set io[0x09].b14;
_A89F084ED_958:;
	asm	nop
_A89F084ED_959:;
	asm	nop
_A89F084ED_960:;
	asm	nop
_A89F084ED_961:;
	asm clr io[0x09].b14;
_A89F084ED_962:;
	asm	nop
_A89F084ED_963:;
	asm	nop
_A89F084ED_964:;
	asm	nop
_A89F084ED_965:;
	asm	nop
_A89F084ED_966:;
	asm	nop
_A89F084ED_967:;
	asm	nop
_A89F084ED_968:;
	asm	nop
_A89F084ED_969:;
	asm	nop
_A89F084ED_970:;
	asm	nop
_A89F084ED_971:;
	asm	nop
_A89F084ED_972:;
	asm	nop
_A89F084ED_973:;
	asm	nop
_A89F084ED_974:;
	asm set io[0x09].b14;
_A89F084ED_975:;
	asm	nop
_A89F084ED_976:;
	asm	nop
_A89F084ED_977:;
	asm	nop
_A89F084ED_978:;
	asm clr io[0x09].b14;
_A89F084ED_979:;
	asm	nop
_A89F084ED_980:;
	asm	nop
_A89F084ED_981:;
	asm	nop
_A89F084ED_982:;
	asm	nop
_A89F084ED_983:;
	asm	nop
_A89F084ED_984:;
	asm	nop
_A89F084ED_985:;
	asm	nop
_A89F084ED_986:;
	asm	nop
_A89F084ED_987:;
	asm	nop
_A89F084ED_988:;
	asm	nop
_A89F084ED_989:;
	asm	nop
_A89F084ED_990:;
	asm	nop
_A89F084ED_991:;
	asm set io[0x09].b14;
_A89F084ED_992:;
	asm	nop
_A89F084ED_993:;
	asm	nop
_A89F084ED_994:;
	asm	nop
_A89F084ED_995:;
	asm clr io[0x09].b14;
_A89F084ED_996:;
	asm	nop
_A89F084ED_997:;
	asm	nop
_A89F084ED_998:;
	asm	nop
_A89F084ED_999:;
	asm	nop
_A89F084ED_1000:;
	asm	nop
_A89F084ED_1001:;
	asm	nop
_A89F084ED_1002:;
	asm	nop
_A89F084ED_1003:;
	asm	nop
_A89F084ED_1004:;
	asm	nop
_A89F084ED_1005:;
	asm	nop
_A89F084ED_1006:;
	asm	nop
_A89F084ED_1007:;
	asm	nop
_A89F084ED_1008:;
	asm set io[0x09].b14;
_A89F084ED_1009:;
	asm	nop
_A89F084ED_1010:;
	asm	nop
_A89F084ED_1011:;
	asm	nop
_A89F084ED_1012:;
	asm clr io[0x09].b14;
_A89F084ED_1013:;
	asm	nop
_A89F084ED_1014:;
	asm	nop
_A89F084ED_1015:;
	asm	nop
_A89F084ED_1016:;
	asm	nop
_A89F084ED_1017:;
	asm	nop
_A89F084ED_1018:;
	asm	nop
_A89F084ED_1019:;
	asm	nop
_A89F084ED_1020:;
	asm	nop
_A89F084ED_1021:;
	asm	nop
_A89F084ED_1022:;
	asm	nop
_A89F084ED_1023:;
	asm	nop
_A89F084ED_1024:;
	asm	nop
_A89F084ED_1025:;
	asm set io[0x09].b14;
_A89F084ED_1026:;
	asm	nop
_A89F084ED_1027:;
	asm	nop
_A89F084ED_1028:;
	asm	nop
_A89F084ED_1029:;
	asm clr io[0x09].b14;
_A89F084ED_1030:;
	asm	nop
_A89F084ED_1031:;
	asm	nop
_A89F084ED_1032:;
	asm	nop
_A89F084ED_1033:;
	asm	nop
_A89F084ED_1034:;
	asm	nop
_A89F084ED_1035:;
	asm	nop
_A89F084ED_1036:;
	asm	nop
_A89F084ED_1037:;
	asm	nop
_A89F084ED_1038:;
	asm	nop
_A89F084ED_1039:;
	asm	nop
_A89F084ED_1040:;
	asm	nop
_A89F084ED_1041:;
	asm	nop
_A89F084ED_1042:;
	asm set io[0x09].b14;
_A89F084ED_1043:;
	asm	nop
_A89F084ED_1044:;
	asm	nop
_A89F084ED_1045:;
	asm	nop
_A89F084ED_1046:;
	asm clr io[0x09].b14;
_A89F084ED_1047:;
	asm	nop
_A89F084ED_1048:;
	asm	nop
_A89F084ED_1049:;
	asm	nop
_A89F084ED_1050:;
	asm	nop
_A89F084ED_1051:;
	asm	nop
_A89F084ED_1052:;
	asm	nop
_A89F084ED_1053:;
	asm	nop
_A89F084ED_1054:;
	asm	nop
_A89F084ED_1055:;
	asm	nop
_A89F084ED_1056:;
	asm	nop
_A89F084ED_1057:;
	asm	nop
_A89F084ED_1058:;
	asm	nop
_A89F084ED_1059:;
	asm set io[0x09].b14;
_A89F084ED_1060:;
	asm	nop
_A89F084ED_1061:;
	asm	nop
_A89F084ED_1062:;
	asm	nop
_A89F084ED_1063:;
	asm clr io[0x09].b14;
_A89F084ED_1064:;
	asm	nop
_A89F084ED_1065:;
	asm	nop
_A89F084ED_1066:;
	asm	nop
_A89F084ED_1067:;
	asm	nop
_A89F084ED_1068:;
	asm	nop
_A89F084ED_1069:;
	asm	nop
_A89F084ED_1070:;
	asm	nop
_A89F084ED_1071:;
	asm	nop
_A89F084ED_1072:;
	asm	nop
_A89F084ED_1073:;
	asm	nop
_A89F084ED_1074:;
	asm	nop
_A89F084ED_1075:;
	asm	nop
_A89F084ED_1076:;
	asm set io[0x09].b14;
_A89F084ED_1077:;
	asm	nop
_A89F084ED_1078:;
	asm	nop
_A89F084ED_1079:;
	asm	nop
_A89F084ED_1080:;
	asm clr io[0x09].b14;
_A89F084ED_1081:;
	asm	nop
_A89F084ED_1082:;
	asm	nop
_A89F084ED_1083:;
	asm	nop
_A89F084ED_1084:;
	asm	nop
_A89F084ED_1085:;
	asm	nop
_A89F084ED_1086:;
	asm	nop
_A89F084ED_1087:;
	asm	nop
_A89F084ED_1088:;
	asm	nop
_A89F084ED_1089:;
	asm	nop
_A89F084ED_1090:;
	asm	nop
_A89F084ED_1091:;
	asm	nop
_A89F084ED_1092:;
	asm	nop
_A89F084ED_1093:;
	goto LD63FD439_108;
LD63FD439_112:;
_A89F084ED_1094:;
	asm set io[0x09].b14;
_A89F084ED_1095:;
	asm	nop
_A89F084ED_1096:;
	asm	nop
_A89F084ED_1097:;
	asm	nop
_A89F084ED_1098:;
	asm clr io[0x09].b14;
_A89F084ED_1099:;
	asm	nop
_A89F084ED_1100:;
	asm	nop
_A89F084ED_1101:;
	asm	nop
_A89F084ED_1102:;
	asm	nop
_A89F084ED_1103:;
	asm	nop
_A89F084ED_1104:;
	asm	nop
_A89F084ED_1105:;
	asm	nop
_A89F084ED_1106:;
	asm	nop
_A89F084ED_1107:;
	asm	nop
_A89F084ED_1108:;
	asm	nop
_A89F084ED_1109:;
	asm	nop
_A89F084ED_1110:;
	asm	nop
_A89F084ED_1111:;
	asm set io[0x09].b14;
_A89F084ED_1112:;
	asm	nop
_A89F084ED_1113:;
	asm	nop
_A89F084ED_1114:;
	asm	nop
_A89F084ED_1115:;
	asm clr io[0x09].b14;
_A89F084ED_1116:;
	asm	nop
_A89F084ED_1117:;
	asm	nop
_A89F084ED_1118:;
	asm	nop
_A89F084ED_1119:;
	asm	nop
_A89F084ED_1120:;
	asm	nop
_A89F084ED_1121:;
	asm	nop
_A89F084ED_1122:;
	asm	nop
_A89F084ED_1123:;
	asm	nop
_A89F084ED_1124:;
	asm	nop
_A89F084ED_1125:;
	asm	nop
_A89F084ED_1126:;
	asm	nop
_A89F084ED_1127:;
	asm	nop
_A89F084ED_1128:;
	asm set io[0x09].b14;
_A89F084ED_1129:;
	asm	nop
_A89F084ED_1130:;
	asm	nop
_A89F084ED_1131:;
	asm	nop
_A89F084ED_1132:;
	asm clr io[0x09].b14;
_A89F084ED_1133:;
	asm	nop
_A89F084ED_1134:;
	asm	nop
_A89F084ED_1135:;
	asm	nop
_A89F084ED_1136:;
	asm	nop
_A89F084ED_1137:;
	asm	nop
_A89F084ED_1138:;
	asm	nop
_A89F084ED_1139:;
	asm	nop
_A89F084ED_1140:;
	asm	nop
_A89F084ED_1141:;
	asm	nop
_A89F084ED_1142:;
	asm	nop
_A89F084ED_1143:;
	asm	nop
_A89F084ED_1144:;
	asm	nop
_A89F084ED_1145:;
	asm set io[0x09].b14;
_A89F084ED_1146:;
	asm	nop
_A89F084ED_1147:;
	asm	nop
_A89F084ED_1148:;
	asm	nop
_A89F084ED_1149:;
	asm clr io[0x09].b14;
_A89F084ED_1150:;
	asm	nop
_A89F084ED_1151:;
	asm	nop
_A89F084ED_1152:;
	asm	nop
_A89F084ED_1153:;
	asm	nop
_A89F084ED_1154:;
	asm	nop
_A89F084ED_1155:;
	asm	nop
_A89F084ED_1156:;
	asm	nop
_A89F084ED_1157:;
	asm	nop
_A89F084ED_1158:;
	asm	nop
_A89F084ED_1159:;
	asm	nop
_A89F084ED_1160:;
	asm	nop
_A89F084ED_1161:;
	asm	nop
_A89F084ED_1162:;
	asm set io[0x09].b14;
_A89F084ED_1163:;
	asm	nop
_A89F084ED_1164:;
	asm	nop
_A89F084ED_1165:;
	asm	nop
_A89F084ED_1166:;
	asm clr io[0x09].b14;
_A89F084ED_1167:;
	asm	nop
_A89F084ED_1168:;
	asm	nop
_A89F084ED_1169:;
	asm	nop
_A89F084ED_1170:;
	asm	nop
_A89F084ED_1171:;
	asm	nop
_A89F084ED_1172:;
	asm	nop
_A89F084ED_1173:;
	asm	nop
_A89F084ED_1174:;
	asm	nop
_A89F084ED_1175:;
	asm	nop
_A89F084ED_1176:;
	asm	nop
_A89F084ED_1177:;
	asm	nop
_A89F084ED_1178:;
	asm	nop
_A89F084ED_1179:;
	asm set io[0x09].b14;
_A89F084ED_1180:;
	asm	nop
_A89F084ED_1181:;
	asm	nop
_A89F084ED_1182:;
	asm	nop
_A89F084ED_1183:;
	asm clr io[0x09].b14;
_A89F084ED_1184:;
	asm	nop
_A89F084ED_1185:;
	asm	nop
_A89F084ED_1186:;
	asm	nop
_A89F084ED_1187:;
	asm	nop
_A89F084ED_1188:;
	asm	nop
_A89F084ED_1189:;
	asm	nop
_A89F084ED_1190:;
	asm	nop
_A89F084ED_1191:;
	asm	nop
_A89F084ED_1192:;
	asm	nop
_A89F084ED_1193:;
	asm	nop
_A89F084ED_1194:;
	asm	nop
_A89F084ED_1195:;
	asm	nop
_A89F084ED_1196:;
	asm set io[0x09].b14;
_A89F084ED_1197:;
	asm	nop
_A89F084ED_1198:;
	asm	nop
_A89F084ED_1199:;
	asm	nop
_A89F084ED_1200:;
	asm clr io[0x09].b14;
_A89F084ED_1201:;
	asm	nop
_A89F084ED_1202:;
	asm	nop
_A89F084ED_1203:;
	asm	nop
_A89F084ED_1204:;
	asm	nop
_A89F084ED_1205:;
	asm	nop
_A89F084ED_1206:;
	asm	nop
_A89F084ED_1207:;
	asm	nop
_A89F084ED_1208:;
	asm	nop
_A89F084ED_1209:;
	asm	nop
_A89F084ED_1210:;
	asm	nop
_A89F084ED_1211:;
	asm	nop
_A89F084ED_1212:;
	asm	nop
_A89F084ED_1213:;
	asm set io[0x09].b14;
_A89F084ED_1214:;
	asm	nop
_A89F084ED_1215:;
	asm	nop
_A89F084ED_1216:;
	asm	nop
_A89F084ED_1217:;
	asm clr io[0x09].b14;
_A89F084ED_1218:;
	asm	nop
_A89F084ED_1219:;
	asm	nop
_A89F084ED_1220:;
	asm	nop
_A89F084ED_1221:;
	asm	nop
_A89F084ED_1222:;
	asm	nop
_A89F084ED_1223:;
	asm	nop
_A89F084ED_1224:;
	asm	nop
_A89F084ED_1225:;
	asm	nop
_A89F084ED_1226:;
	asm	nop
_A89F084ED_1227:;
	asm	nop
_A89F084ED_1228:;
	asm	nop
_A89F084ED_1229:;
	asm	nop
_A89F084ED_1230:;
	asm set io[0x09].b14;
_A89F084ED_1231:;
	asm	nop
_A89F084ED_1232:;
	asm	nop
_A89F084ED_1233:;
	asm	nop
_A89F084ED_1234:;
	asm	nop
_A89F084ED_1235:;
	asm	nop
_A89F084ED_1236:;
	asm	nop
_A89F084ED_1237:;
	asm	nop
_A89F084ED_1238:;
	asm	nop
_A89F084ED_1239:;
	asm	nop
_A89F084ED_1240:;
	asm	nop
_A89F084ED_1241:;
	asm	nop
_A89F084ED_1242:;
	asm	nop
_A89F084ED_1243:;
	asm clr io[0x09].b14;
_A89F084ED_1244:;
	asm	nop
_A89F084ED_1245:;
	asm	nop
_A89F084ED_1246:;
	asm	nop
_A89F084ED_1247:;
	asm set io[0x09].b14;
_A89F084ED_1248:;
	asm	nop
_A89F084ED_1249:;
	asm	nop
_A89F084ED_1250:;
	asm	nop
_A89F084ED_1251:;
	asm	nop
_A89F084ED_1252:;
	asm	nop
_A89F084ED_1253:;
	asm	nop
_A89F084ED_1254:;
	asm	nop
_A89F084ED_1255:;
	asm	nop
_A89F084ED_1256:;
	asm	nop
_A89F084ED_1257:;
	asm	nop
_A89F084ED_1258:;
	asm	nop
_A89F084ED_1259:;
	asm	nop
_A89F084ED_1260:;
	asm clr io[0x09].b14;
_A89F084ED_1261:;
	asm	nop
_A89F084ED_1262:;
	asm	nop
_A89F084ED_1263:;
	asm	nop
_A89F084ED_1264:;
	asm set io[0x09].b14;
_A89F084ED_1265:;
	asm	nop
_A89F084ED_1266:;
	asm	nop
_A89F084ED_1267:;
	asm	nop
_A89F084ED_1268:;
	asm	nop
_A89F084ED_1269:;
	asm	nop
_A89F084ED_1270:;
	asm	nop
_A89F084ED_1271:;
	asm	nop
_A89F084ED_1272:;
	asm	nop
_A89F084ED_1273:;
	asm	nop
_A89F084ED_1274:;
	asm	nop
_A89F084ED_1275:;
	asm	nop
_A89F084ED_1276:;
	asm	nop
_A89F084ED_1277:;
	asm clr io[0x09].b14;
_A89F084ED_1278:;
	asm	nop
_A89F084ED_1279:;
	asm	nop
_A89F084ED_1280:;
	asm	nop
_A89F084ED_1281:;
	asm set io[0x09].b14;
_A89F084ED_1282:;
	asm	nop
_A89F084ED_1283:;
	asm	nop
_A89F084ED_1284:;
	asm	nop
_A89F084ED_1285:;
	asm	nop
_A89F084ED_1286:;
	asm	nop
_A89F084ED_1287:;
	asm	nop
_A89F084ED_1288:;
	asm	nop
_A89F084ED_1289:;
	asm	nop
_A89F084ED_1290:;
	asm	nop
_A89F084ED_1291:;
	asm	nop
_A89F084ED_1292:;
	asm	nop
_A89F084ED_1293:;
	asm	nop
_A89F084ED_1294:;
	asm clr io[0x09].b14;
_A89F084ED_1295:;
	asm	nop
_A89F084ED_1296:;
	asm	nop
_A89F084ED_1297:;
	asm	nop
_A89F084ED_1298:;
	asm set io[0x09].b14;
_A89F084ED_1299:;
	asm	nop
_A89F084ED_1300:;
	asm	nop
_A89F084ED_1301:;
	asm	nop
_A89F084ED_1302:;
	asm	nop
_A89F084ED_1303:;
	asm	nop
_A89F084ED_1304:;
	asm	nop
_A89F084ED_1305:;
	asm	nop
_A89F084ED_1306:;
	asm	nop
_A89F084ED_1307:;
	asm	nop
_A89F084ED_1308:;
	asm	nop
_A89F084ED_1309:;
	asm	nop
_A89F084ED_1310:;
	asm	nop
_A89F084ED_1311:;
	asm clr io[0x09].b14;
_A89F084ED_1312:;
	asm	nop
_A89F084ED_1313:;
	asm	nop
_A89F084ED_1314:;
	asm	nop
_A89F084ED_1315:;
	asm set io[0x09].b14;
_A89F084ED_1316:;
	asm	nop
_A89F084ED_1317:;
	asm	nop
_A89F084ED_1318:;
	asm	nop
_A89F084ED_1319:;
	asm	nop
_A89F084ED_1320:;
	asm	nop
_A89F084ED_1321:;
	asm	nop
_A89F084ED_1322:;
	asm	nop
_A89F084ED_1323:;
	asm	nop
_A89F084ED_1324:;
	asm	nop
_A89F084ED_1325:;
	asm	nop
_A89F084ED_1326:;
	asm	nop
_A89F084ED_1327:;
	asm	nop
_A89F084ED_1328:;
	asm clr io[0x09].b14;
_A89F084ED_1329:;
	asm	nop
_A89F084ED_1330:;
	asm	nop
_A89F084ED_1331:;
	asm	nop
_A89F084ED_1332:;
	asm set io[0x09].b14;
_A89F084ED_1333:;
	asm	nop
_A89F084ED_1334:;
	asm	nop
_A89F084ED_1335:;
	asm	nop
_A89F084ED_1336:;
	asm	nop
_A89F084ED_1337:;
	asm	nop
_A89F084ED_1338:;
	asm	nop
_A89F084ED_1339:;
	asm	nop
_A89F084ED_1340:;
	asm	nop
_A89F084ED_1341:;
	asm	nop
_A89F084ED_1342:;
	asm	nop
_A89F084ED_1343:;
	asm	nop
_A89F084ED_1344:;
	asm	nop
_A89F084ED_1345:;
	asm clr io[0x09].b14;
_A89F084ED_1346:;
	asm	nop
_A89F084ED_1347:;
	asm	nop
_A89F084ED_1348:;
	asm	nop
_A89F084ED_1349:;
	asm set io[0x09].b14;
_A89F084ED_1350:;
	asm	nop
_A89F084ED_1351:;
	asm	nop
_A89F084ED_1352:;
	asm	nop
_A89F084ED_1353:;
	asm	nop
_A89F084ED_1354:;
	asm	nop
_A89F084ED_1355:;
	asm	nop
_A89F084ED_1356:;
	asm	nop
_A89F084ED_1357:;
	asm	nop
_A89F084ED_1358:;
	asm	nop
_A89F084ED_1359:;
	asm	nop
_A89F084ED_1360:;
	asm	nop
_A89F084ED_1361:;
	asm	nop
_A89F084ED_1362:;
	asm clr io[0x09].b14;
_A89F084ED_1363:;
	asm	nop
_A89F084ED_1364:;
	asm	nop
_A89F084ED_1365:;
	asm	nop
_A89F084ED_1366:;
	asm set io[0x09].b14;
_A89F084ED_1367:;
	asm	nop
_A89F084ED_1368:;
	asm	nop
_A89F084ED_1369:;
	asm	nop
_A89F084ED_1370:;
	asm clr io[0x09].b14;
_A89F084ED_1371:;
	asm	nop
_A89F084ED_1372:;
	asm	nop
_A89F084ED_1373:;
	asm	nop
_A89F084ED_1374:;
	asm	nop
_A89F084ED_1375:;
	asm	nop
_A89F084ED_1376:;
	asm	nop
_A89F084ED_1377:;
	asm	nop
_A89F084ED_1378:;
	asm	nop
_A89F084ED_1379:;
	asm	nop
_A89F084ED_1380:;
	asm	nop
_A89F084ED_1381:;
	asm	nop
_A89F084ED_1382:;
	asm	nop
_A89F084ED_1383:;
	asm set io[0x09].b14;
_A89F084ED_1384:;
	asm	nop
_A89F084ED_1385:;
	asm	nop
_A89F084ED_1386:;
	asm	nop
_A89F084ED_1387:;
	asm clr io[0x09].b14;
_A89F084ED_1388:;
	asm	nop
_A89F084ED_1389:;
	asm	nop
_A89F084ED_1390:;
	asm	nop
_A89F084ED_1391:;
	asm	nop
_A89F084ED_1392:;
	asm	nop
_A89F084ED_1393:;
	asm	nop
_A89F084ED_1394:;
	asm	nop
_A89F084ED_1395:;
	asm	nop
_A89F084ED_1396:;
	asm	nop
_A89F084ED_1397:;
	asm	nop
_A89F084ED_1398:;
	asm	nop
_A89F084ED_1399:;
	asm	nop
_A89F084ED_1400:;
	asm set io[0x09].b14;
_A89F084ED_1401:;
	asm	nop
_A89F084ED_1402:;
	asm	nop
_A89F084ED_1403:;
	asm	nop
_A89F084ED_1404:;
	asm clr io[0x09].b14;
_A89F084ED_1405:;
	asm	nop
_A89F084ED_1406:;
	asm	nop
_A89F084ED_1407:;
	asm	nop
_A89F084ED_1408:;
	asm	nop
_A89F084ED_1409:;
	asm	nop
_A89F084ED_1410:;
	asm	nop
_A89F084ED_1411:;
	asm	nop
_A89F084ED_1412:;
	asm	nop
_A89F084ED_1413:;
	asm	nop
_A89F084ED_1414:;
	asm	nop
_A89F084ED_1415:;
	asm	nop
_A89F084ED_1416:;
	asm	nop
_A89F084ED_1417:;
	asm set io[0x09].b14;
_A89F084ED_1418:;
	asm	nop
_A89F084ED_1419:;
	asm	nop
_A89F084ED_1420:;
	asm	nop
_A89F084ED_1421:;
	asm clr io[0x09].b14;
_A89F084ED_1422:;
	asm	nop
_A89F084ED_1423:;
	asm	nop
_A89F084ED_1424:;
	asm	nop
_A89F084ED_1425:;
	asm	nop
_A89F084ED_1426:;
	asm	nop
_A89F084ED_1427:;
	asm	nop
_A89F084ED_1428:;
	asm	nop
_A89F084ED_1429:;
	asm	nop
_A89F084ED_1430:;
	asm	nop
_A89F084ED_1431:;
	asm	nop
_A89F084ED_1432:;
	asm	nop
_A89F084ED_1433:;
	asm	nop
_A89F084ED_1434:;
	asm set io[0x09].b14;
_A89F084ED_1435:;
	asm	nop
_A89F084ED_1436:;
	asm	nop
_A89F084ED_1437:;
	asm	nop
_A89F084ED_1438:;
	asm clr io[0x09].b14;
_A89F084ED_1439:;
	asm	nop
_A89F084ED_1440:;
	asm	nop
_A89F084ED_1441:;
	asm	nop
_A89F084ED_1442:;
	asm	nop
_A89F084ED_1443:;
	asm	nop
_A89F084ED_1444:;
	asm	nop
_A89F084ED_1445:;
	asm	nop
_A89F084ED_1446:;
	asm	nop
_A89F084ED_1447:;
	asm	nop
_A89F084ED_1448:;
	asm	nop
_A89F084ED_1449:;
	asm	nop
_A89F084ED_1450:;
	asm	nop
_A89F084ED_1451:;
	asm set io[0x09].b14;
_A89F084ED_1452:;
	asm	nop
_A89F084ED_1453:;
	asm	nop
_A89F084ED_1454:;
	asm	nop
_A89F084ED_1455:;
	asm clr io[0x09].b14;
_A89F084ED_1456:;
	asm	nop
_A89F084ED_1457:;
	asm	nop
_A89F084ED_1458:;
	asm	nop
_A89F084ED_1459:;
	asm	nop
_A89F084ED_1460:;
	asm	nop
_A89F084ED_1461:;
	asm	nop
_A89F084ED_1462:;
	asm	nop
_A89F084ED_1463:;
	asm	nop
_A89F084ED_1464:;
	asm	nop
_A89F084ED_1465:;
	asm	nop
_A89F084ED_1466:;
	asm	nop
_A89F084ED_1467:;
	asm	nop
_A89F084ED_1468:;
	asm set io[0x09].b14;
_A89F084ED_1469:;
	asm	nop
_A89F084ED_1470:;
	asm	nop
_A89F084ED_1471:;
	asm	nop
_A89F084ED_1472:;
	asm clr io[0x09].b14;
_A89F084ED_1473:;
	asm	nop
_A89F084ED_1474:;
	asm	nop
_A89F084ED_1475:;
	asm	nop
_A89F084ED_1476:;
	asm	nop
_A89F084ED_1477:;
	asm	nop
_A89F084ED_1478:;
	asm	nop
_A89F084ED_1479:;
	asm	nop
_A89F084ED_1480:;
	asm	nop
_A89F084ED_1481:;
	asm	nop
_A89F084ED_1482:;
	asm	nop
_A89F084ED_1483:;
	asm	nop
_A89F084ED_1484:;
	asm	nop
_A89F084ED_1485:;
	asm set io[0x09].b14;
_A89F084ED_1486:;
	asm	nop
_A89F084ED_1487:;
	asm	nop
_A89F084ED_1488:;
	asm	nop
_A89F084ED_1489:;
	asm clr io[0x09].b14;
_A89F084ED_1490:;
	asm	nop
_A89F084ED_1491:;
	asm	nop
_A89F084ED_1492:;
	asm	nop
_A89F084ED_1493:;
	asm	nop
_A89F084ED_1494:;
	asm	nop
_A89F084ED_1495:;
	asm	nop
_A89F084ED_1496:;
	asm	nop
_A89F084ED_1497:;
	asm	nop
_A89F084ED_1498:;
	asm	nop
_A89F084ED_1499:;
	asm	nop
_A89F084ED_1500:;
	asm	nop
_A89F084ED_1501:;
	asm	nop
_A89F084ED_1502:;
	goto LD63FD439_108;
LD63FD439_113:;
_A89F084ED_1503:;
	asm set io[0x09].b14;
_A89F084ED_1504:;
	asm	nop
_A89F084ED_1505:;
	asm	nop
_A89F084ED_1506:;
	asm	nop
_A89F084ED_1507:;
	asm	nop
_A89F084ED_1508:;
	asm	nop
_A89F084ED_1509:;
	asm	nop
_A89F084ED_1510:;
	asm	nop
_A89F084ED_1511:;
	asm	nop
_A89F084ED_1512:;
	asm	nop
_A89F084ED_1513:;
	asm	nop
_A89F084ED_1514:;
	asm	nop
_A89F084ED_1515:;
	asm	nop
_A89F084ED_1516:;
	asm clr io[0x09].b14;
_A89F084ED_1517:;
	asm	nop
_A89F084ED_1518:;
	asm	nop
_A89F084ED_1519:;
	asm	nop
_A89F084ED_1520:;
	asm set io[0x09].b14;
_A89F084ED_1521:;
	asm	nop
_A89F084ED_1522:;
	asm	nop
_A89F084ED_1523:;
	asm	nop
_A89F084ED_1524:;
	asm	nop
_A89F084ED_1525:;
	asm	nop
_A89F084ED_1526:;
	asm	nop
_A89F084ED_1527:;
	asm	nop
_A89F084ED_1528:;
	asm	nop
_A89F084ED_1529:;
	asm	nop
_A89F084ED_1530:;
	asm	nop
_A89F084ED_1531:;
	asm	nop
_A89F084ED_1532:;
	asm	nop
_A89F084ED_1533:;
	asm clr io[0x09].b14;
_A89F084ED_1534:;
	asm	nop
_A89F084ED_1535:;
	asm	nop
_A89F084ED_1536:;
	asm	nop
_A89F084ED_1537:;
	asm set io[0x09].b14;
_A89F084ED_1538:;
	asm	nop
_A89F084ED_1539:;
	asm	nop
_A89F084ED_1540:;
	asm	nop
_A89F084ED_1541:;
	asm	nop
_A89F084ED_1542:;
	asm	nop
_A89F084ED_1543:;
	asm	nop
_A89F084ED_1544:;
	asm	nop
_A89F084ED_1545:;
	asm	nop
_A89F084ED_1546:;
	asm	nop
_A89F084ED_1547:;
	asm	nop
_A89F084ED_1548:;
	asm	nop
_A89F084ED_1549:;
	asm	nop
_A89F084ED_1550:;
	asm clr io[0x09].b14;
_A89F084ED_1551:;
	asm	nop
_A89F084ED_1552:;
	asm	nop
_A89F084ED_1553:;
	asm	nop
_A89F084ED_1554:;
	asm set io[0x09].b14;
_A89F084ED_1555:;
	asm	nop
_A89F084ED_1556:;
	asm	nop
_A89F084ED_1557:;
	asm	nop
_A89F084ED_1558:;
	asm	nop
_A89F084ED_1559:;
	asm	nop
_A89F084ED_1560:;
	asm	nop
_A89F084ED_1561:;
	asm	nop
_A89F084ED_1562:;
	asm	nop
_A89F084ED_1563:;
	asm	nop
_A89F084ED_1564:;
	asm	nop
_A89F084ED_1565:;
	asm	nop
_A89F084ED_1566:;
	asm	nop
_A89F084ED_1567:;
	asm clr io[0x09].b14;
_A89F084ED_1568:;
	asm	nop
_A89F084ED_1569:;
	asm	nop
_A89F084ED_1570:;
	asm	nop
_A89F084ED_1571:;
	asm set io[0x09].b14;
_A89F084ED_1572:;
	asm	nop
_A89F084ED_1573:;
	asm	nop
_A89F084ED_1574:;
	asm	nop
_A89F084ED_1575:;
	asm	nop
_A89F084ED_1576:;
	asm	nop
_A89F084ED_1577:;
	asm	nop
_A89F084ED_1578:;
	asm	nop
_A89F084ED_1579:;
	asm	nop
_A89F084ED_1580:;
	asm	nop
_A89F084ED_1581:;
	asm	nop
_A89F084ED_1582:;
	asm	nop
_A89F084ED_1583:;
	asm	nop
_A89F084ED_1584:;
	asm clr io[0x09].b14;
_A89F084ED_1585:;
	asm	nop
_A89F084ED_1586:;
	asm	nop
_A89F084ED_1587:;
	asm	nop
_A89F084ED_1588:;
	asm set io[0x09].b14;
_A89F084ED_1589:;
	asm	nop
_A89F084ED_1590:;
	asm	nop
_A89F084ED_1591:;
	asm	nop
_A89F084ED_1592:;
	asm	nop
_A89F084ED_1593:;
	asm	nop
_A89F084ED_1594:;
	asm	nop
_A89F084ED_1595:;
	asm	nop
_A89F084ED_1596:;
	asm	nop
_A89F084ED_1597:;
	asm	nop
_A89F084ED_1598:;
	asm	nop
_A89F084ED_1599:;
	asm	nop
_A89F084ED_1600:;
	asm	nop
_A89F084ED_1601:;
	asm clr io[0x09].b14;
_A89F084ED_1602:;
	asm	nop
_A89F084ED_1603:;
	asm	nop
_A89F084ED_1604:;
	asm	nop
_A89F084ED_1605:;
	asm set io[0x09].b14;
_A89F084ED_1606:;
	asm	nop
_A89F084ED_1607:;
	asm	nop
_A89F084ED_1608:;
	asm	nop
_A89F084ED_1609:;
	asm	nop
_A89F084ED_1610:;
	asm	nop
_A89F084ED_1611:;
	asm	nop
_A89F084ED_1612:;
	asm	nop
_A89F084ED_1613:;
	asm	nop
_A89F084ED_1614:;
	asm	nop
_A89F084ED_1615:;
	asm	nop
_A89F084ED_1616:;
	asm	nop
_A89F084ED_1617:;
	asm	nop
_A89F084ED_1618:;
	asm clr io[0x09].b14;
_A89F084ED_1619:;
	asm	nop
_A89F084ED_1620:;
	asm	nop
_A89F084ED_1621:;
	asm	nop
_A89F084ED_1622:;
	asm set io[0x09].b14;
_A89F084ED_1623:;
	asm	nop
_A89F084ED_1624:;
	asm	nop
_A89F084ED_1625:;
	asm	nop
_A89F084ED_1626:;
	asm	nop
_A89F084ED_1627:;
	asm	nop
_A89F084ED_1628:;
	asm	nop
_A89F084ED_1629:;
	asm	nop
_A89F084ED_1630:;
	asm	nop
_A89F084ED_1631:;
	asm	nop
_A89F084ED_1632:;
	asm	nop
_A89F084ED_1633:;
	asm	nop
_A89F084ED_1634:;
	asm	nop
_A89F084ED_1635:;
	asm clr io[0x09].b14;
_A89F084ED_1636:;
	asm	nop
_A89F084ED_1637:;
	asm	nop
_A89F084ED_1638:;
	asm	nop
_A89F084ED_1639:;
	asm set io[0x09].b14;
_A89F084ED_1640:;
	asm	nop
_A89F084ED_1641:;
	asm	nop
_A89F084ED_1642:;
	asm	nop
_A89F084ED_1643:;
	asm clr io[0x09].b14;
_A89F084ED_1644:;
	asm	nop
_A89F084ED_1645:;
	asm	nop
_A89F084ED_1646:;
	asm	nop
_A89F084ED_1647:;
	asm	nop
_A89F084ED_1648:;
	asm	nop
_A89F084ED_1649:;
	asm	nop
_A89F084ED_1650:;
	asm	nop
_A89F084ED_1651:;
	asm	nop
_A89F084ED_1652:;
	asm	nop
_A89F084ED_1653:;
	asm	nop
_A89F084ED_1654:;
	asm	nop
_A89F084ED_1655:;
	asm	nop
_A89F084ED_1656:;
	asm set io[0x09].b14;
_A89F084ED_1657:;
	asm	nop
_A89F084ED_1658:;
	asm	nop
_A89F084ED_1659:;
	asm	nop
_A89F084ED_1660:;
	asm clr io[0x09].b14;
_A89F084ED_1661:;
	asm	nop
_A89F084ED_1662:;
	asm	nop
_A89F084ED_1663:;
	asm	nop
_A89F084ED_1664:;
	asm	nop
_A89F084ED_1665:;
	asm	nop
_A89F084ED_1666:;
	asm	nop
_A89F084ED_1667:;
	asm	nop
_A89F084ED_1668:;
	asm	nop
_A89F084ED_1669:;
	asm	nop
_A89F084ED_1670:;
	asm	nop
_A89F084ED_1671:;
	asm	nop
_A89F084ED_1672:;
	asm	nop
_A89F084ED_1673:;
	asm set io[0x09].b14;
_A89F084ED_1674:;
	asm	nop
_A89F084ED_1675:;
	asm	nop
_A89F084ED_1676:;
	asm	nop
_A89F084ED_1677:;
	asm clr io[0x09].b14;
_A89F084ED_1678:;
	asm	nop
_A89F084ED_1679:;
	asm	nop
_A89F084ED_1680:;
	asm	nop
_A89F084ED_1681:;
	asm	nop
_A89F084ED_1682:;
	asm	nop
_A89F084ED_1683:;
	asm	nop
_A89F084ED_1684:;
	asm	nop
_A89F084ED_1685:;
	asm	nop
_A89F084ED_1686:;
	asm	nop
_A89F084ED_1687:;
	asm	nop
_A89F084ED_1688:;
	asm	nop
_A89F084ED_1689:;
	asm	nop
_A89F084ED_1690:;
	asm set io[0x09].b14;
_A89F084ED_1691:;
	asm	nop
_A89F084ED_1692:;
	asm	nop
_A89F084ED_1693:;
	asm	nop
_A89F084ED_1694:;
	asm clr io[0x09].b14;
_A89F084ED_1695:;
	asm	nop
_A89F084ED_1696:;
	asm	nop
_A89F084ED_1697:;
	asm	nop
_A89F084ED_1698:;
	asm	nop
_A89F084ED_1699:;
	asm	nop
_A89F084ED_1700:;
	asm	nop
_A89F084ED_1701:;
	asm	nop
_A89F084ED_1702:;
	asm	nop
_A89F084ED_1703:;
	asm	nop
_A89F084ED_1704:;
	asm	nop
_A89F084ED_1705:;
	asm	nop
_A89F084ED_1706:;
	asm	nop
_A89F084ED_1707:;
	asm set io[0x09].b14;
_A89F084ED_1708:;
	asm	nop
_A89F084ED_1709:;
	asm	nop
_A89F084ED_1710:;
	asm	nop
_A89F084ED_1711:;
	asm clr io[0x09].b14;
_A89F084ED_1712:;
	asm	nop
_A89F084ED_1713:;
	asm	nop
_A89F084ED_1714:;
	asm	nop
_A89F084ED_1715:;
	asm	nop
_A89F084ED_1716:;
	asm	nop
_A89F084ED_1717:;
	asm	nop
_A89F084ED_1718:;
	asm	nop
_A89F084ED_1719:;
	asm	nop
_A89F084ED_1720:;
	asm	nop
_A89F084ED_1721:;
	asm	nop
_A89F084ED_1722:;
	asm	nop
_A89F084ED_1723:;
	asm	nop
_A89F084ED_1724:;
	asm set io[0x09].b14;
_A89F084ED_1725:;
	asm	nop
_A89F084ED_1726:;
	asm	nop
_A89F084ED_1727:;
	asm	nop
_A89F084ED_1728:;
	asm clr io[0x09].b14;
_A89F084ED_1729:;
	asm	nop
_A89F084ED_1730:;
	asm	nop
_A89F084ED_1731:;
	asm	nop
_A89F084ED_1732:;
	asm	nop
_A89F084ED_1733:;
	asm	nop
_A89F084ED_1734:;
	asm	nop
_A89F084ED_1735:;
	asm	nop
_A89F084ED_1736:;
	asm	nop
_A89F084ED_1737:;
	asm	nop
_A89F084ED_1738:;
	asm	nop
_A89F084ED_1739:;
	asm	nop
_A89F084ED_1740:;
	asm	nop
_A89F084ED_1741:;
	asm set io[0x09].b14;
_A89F084ED_1742:;
	asm	nop
_A89F084ED_1743:;
	asm	nop
_A89F084ED_1744:;
	asm	nop
_A89F084ED_1745:;
	asm clr io[0x09].b14;
_A89F084ED_1746:;
	asm	nop
_A89F084ED_1747:;
	asm	nop
_A89F084ED_1748:;
	asm	nop
_A89F084ED_1749:;
	asm	nop
_A89F084ED_1750:;
	asm	nop
_A89F084ED_1751:;
	asm	nop
_A89F084ED_1752:;
	asm	nop
_A89F084ED_1753:;
	asm	nop
_A89F084ED_1754:;
	asm	nop
_A89F084ED_1755:;
	asm	nop
_A89F084ED_1756:;
	asm	nop
_A89F084ED_1757:;
	asm	nop
_A89F084ED_1758:;
	asm set io[0x09].b14;
_A89F084ED_1759:;
	asm	nop
_A89F084ED_1760:;
	asm	nop
_A89F084ED_1761:;
	asm	nop
_A89F084ED_1762:;
	asm clr io[0x09].b14;
_A89F084ED_1763:;
	asm	nop
_A89F084ED_1764:;
	asm	nop
_A89F084ED_1765:;
	asm	nop
_A89F084ED_1766:;
	asm	nop
_A89F084ED_1767:;
	asm	nop
_A89F084ED_1768:;
	asm	nop
_A89F084ED_1769:;
	asm	nop
_A89F084ED_1770:;
	asm	nop
_A89F084ED_1771:;
	asm	nop
_A89F084ED_1772:;
	asm	nop
_A89F084ED_1773:;
	asm	nop
_A89F084ED_1774:;
	asm	nop
_A89F084ED_1775:;
	asm set io[0x09].b14;
_A89F084ED_1776:;
	asm	nop
_A89F084ED_1777:;
	asm	nop
_A89F084ED_1778:;
	asm	nop
_A89F084ED_1779:;
	asm clr io[0x09].b14;
_A89F084ED_1780:;
	asm	nop
_A89F084ED_1781:;
	asm	nop
_A89F084ED_1782:;
	asm	nop
_A89F084ED_1783:;
	asm	nop
_A89F084ED_1784:;
	asm	nop
_A89F084ED_1785:;
	asm	nop
_A89F084ED_1786:;
	asm	nop
_A89F084ED_1787:;
	asm	nop
_A89F084ED_1788:;
	asm	nop
_A89F084ED_1789:;
	asm	nop
_A89F084ED_1790:;
	asm	nop
_A89F084ED_1791:;
	asm	nop
_A89F084ED_1792:;
	asm set io[0x09].b14;
_A89F084ED_1793:;
	asm	nop
_A89F084ED_1794:;
	asm	nop
_A89F084ED_1795:;
	asm	nop
_A89F084ED_1796:;
	asm clr io[0x09].b14;
_A89F084ED_1797:;
	asm	nop
_A89F084ED_1798:;
	asm	nop
_A89F084ED_1799:;
	asm	nop
_A89F084ED_1800:;
	asm	nop
_A89F084ED_1801:;
	asm	nop
_A89F084ED_1802:;
	asm	nop
_A89F084ED_1803:;
	asm	nop
_A89F084ED_1804:;
	asm	nop
_A89F084ED_1805:;
	asm	nop
_A89F084ED_1806:;
	asm	nop
_A89F084ED_1807:;
	asm	nop
_A89F084ED_1808:;
	asm	nop
_A89F084ED_1809:;
	asm set io[0x09].b14;
_A89F084ED_1810:;
	asm	nop
_A89F084ED_1811:;
	asm	nop
_A89F084ED_1812:;
	asm	nop
_A89F084ED_1813:;
	asm clr io[0x09].b14;
_A89F084ED_1814:;
	asm	nop
_A89F084ED_1815:;
	asm	nop
_A89F084ED_1816:;
	asm	nop
_A89F084ED_1817:;
	asm	nop
_A89F084ED_1818:;
	asm	nop
_A89F084ED_1819:;
	asm	nop
_A89F084ED_1820:;
	asm	nop
_A89F084ED_1821:;
	asm	nop
_A89F084ED_1822:;
	asm	nop
_A89F084ED_1823:;
	asm	nop
_A89F084ED_1824:;
	asm	nop
_A89F084ED_1825:;
	asm	nop
_A89F084ED_1826:;
	asm set io[0x09].b14;
_A89F084ED_1827:;
	asm	nop
_A89F084ED_1828:;
	asm	nop
_A89F084ED_1829:;
	asm	nop
_A89F084ED_1830:;
	asm clr io[0x09].b14;
_A89F084ED_1831:;
	asm	nop
_A89F084ED_1832:;
	asm	nop
_A89F084ED_1833:;
	asm	nop
_A89F084ED_1834:;
	asm	nop
_A89F084ED_1835:;
	asm	nop
_A89F084ED_1836:;
	asm	nop
_A89F084ED_1837:;
	asm	nop
_A89F084ED_1838:;
	asm	nop
_A89F084ED_1839:;
	asm	nop
_A89F084ED_1840:;
	asm	nop
_A89F084ED_1841:;
	asm	nop
_A89F084ED_1842:;
	asm	nop
_A89F084ED_1843:;
	asm set io[0x09].b14;
_A89F084ED_1844:;
	asm	nop
_A89F084ED_1845:;
	asm	nop
_A89F084ED_1846:;
	asm	nop
_A89F084ED_1847:;
	asm clr io[0x09].b14;
_A89F084ED_1848:;
	asm	nop
_A89F084ED_1849:;
	asm	nop
_A89F084ED_1850:;
	asm	nop
_A89F084ED_1851:;
	asm	nop
_A89F084ED_1852:;
	asm	nop
_A89F084ED_1853:;
	asm	nop
_A89F084ED_1854:;
	asm	nop
_A89F084ED_1855:;
	asm	nop
_A89F084ED_1856:;
	asm	nop
_A89F084ED_1857:;
	asm	nop
_A89F084ED_1858:;
	asm	nop
_A89F084ED_1859:;
	asm	nop
_A89F084ED_1860:;
	asm set io[0x09].b14;
_A89F084ED_1861:;
	asm	nop
_A89F084ED_1862:;
	asm	nop
_A89F084ED_1863:;
	asm	nop
_A89F084ED_1864:;
	asm clr io[0x09].b14;
_A89F084ED_1865:;
	asm	nop
_A89F084ED_1866:;
	asm	nop
_A89F084ED_1867:;
	asm	nop
_A89F084ED_1868:;
	asm	nop
_A89F084ED_1869:;
	asm	nop
_A89F084ED_1870:;
	asm	nop
_A89F084ED_1871:;
	asm	nop
_A89F084ED_1872:;
	asm	nop
_A89F084ED_1873:;
	asm	nop
_A89F084ED_1874:;
	asm	nop
_A89F084ED_1875:;
	asm	nop
_A89F084ED_1876:;
	asm	nop
_A89F084ED_1877:;
	asm set io[0x09].b14;
_A89F084ED_1878:;
	asm	nop
_A89F084ED_1879:;
	asm	nop
_A89F084ED_1880:;
	asm	nop
_A89F084ED_1881:;
	asm clr io[0x09].b14;
_A89F084ED_1882:;
	asm	nop
_A89F084ED_1883:;
	asm	nop
_A89F084ED_1884:;
	asm	nop
_A89F084ED_1885:;
	asm	nop
_A89F084ED_1886:;
	asm	nop
_A89F084ED_1887:;
	asm	nop
_A89F084ED_1888:;
	asm	nop
_A89F084ED_1889:;
	asm	nop
_A89F084ED_1890:;
	asm	nop
_A89F084ED_1891:;
	asm	nop
_A89F084ED_1892:;
	asm	nop
_A89F084ED_1893:;
	asm	nop
_A89F084ED_1894:;
	asm set io[0x09].b14;
_A89F084ED_1895:;
	asm	nop
_A89F084ED_1896:;
	asm	nop
_A89F084ED_1897:;
	asm	nop
_A89F084ED_1898:;
	asm clr io[0x09].b14;
_A89F084ED_1899:;
	asm	nop
_A89F084ED_1900:;
	asm	nop
_A89F084ED_1901:;
	asm	nop
_A89F084ED_1902:;
	asm	nop
_A89F084ED_1903:;
	asm	nop
_A89F084ED_1904:;
	asm	nop
_A89F084ED_1905:;
	asm	nop
_A89F084ED_1906:;
	asm	nop
_A89F084ED_1907:;
	asm	nop
_A89F084ED_1908:;
	asm	nop
_A89F084ED_1909:;
	asm	nop
_A89F084ED_1910:;
	asm	nop
_A89F084ED_1911:;
	goto LD63FD439_108;
LD63FD439_114:;
_A89F084ED_1912:;
	asm set io[0x09].b14;
_A89F084ED_1913:;
	asm	nop
_A89F084ED_1914:;
	asm	nop
_A89F084ED_1915:;
	asm	nop
_A89F084ED_1916:;
	asm clr io[0x09].b14;
_A89F084ED_1917:;
	asm	nop
_A89F084ED_1918:;
	asm	nop
_A89F084ED_1919:;
	asm	nop
_A89F084ED_1920:;
	asm	nop
_A89F084ED_1921:;
	asm	nop
_A89F084ED_1922:;
	asm	nop
_A89F084ED_1923:;
	asm	nop
_A89F084ED_1924:;
	asm	nop
_A89F084ED_1925:;
	asm	nop
_A89F084ED_1926:;
	asm	nop
_A89F084ED_1927:;
	asm	nop
_A89F084ED_1928:;
	asm	nop
_A89F084ED_1929:;
	asm set io[0x09].b14;
_A89F084ED_1930:;
	asm	nop
_A89F084ED_1931:;
	asm	nop
_A89F084ED_1932:;
	asm	nop
_A89F084ED_1933:;
	asm clr io[0x09].b14;
_A89F084ED_1934:;
	asm	nop
_A89F084ED_1935:;
	asm	nop
_A89F084ED_1936:;
	asm	nop
_A89F084ED_1937:;
	asm	nop
_A89F084ED_1938:;
	asm	nop
_A89F084ED_1939:;
	asm	nop
_A89F084ED_1940:;
	asm	nop
_A89F084ED_1941:;
	asm	nop
_A89F084ED_1942:;
	asm	nop
_A89F084ED_1943:;
	asm	nop
_A89F084ED_1944:;
	asm	nop
_A89F084ED_1945:;
	asm	nop
_A89F084ED_1946:;
	asm set io[0x09].b14;
_A89F084ED_1947:;
	asm	nop
_A89F084ED_1948:;
	asm	nop
_A89F084ED_1949:;
	asm	nop
_A89F084ED_1950:;
	asm clr io[0x09].b14;
_A89F084ED_1951:;
	asm	nop
_A89F084ED_1952:;
	asm	nop
_A89F084ED_1953:;
	asm	nop
_A89F084ED_1954:;
	asm	nop
_A89F084ED_1955:;
	asm	nop
_A89F084ED_1956:;
	asm	nop
_A89F084ED_1957:;
	asm	nop
_A89F084ED_1958:;
	asm	nop
_A89F084ED_1959:;
	asm	nop
_A89F084ED_1960:;
	asm	nop
_A89F084ED_1961:;
	asm	nop
_A89F084ED_1962:;
	asm	nop
_A89F084ED_1963:;
	asm set io[0x09].b14;
_A89F084ED_1964:;
	asm	nop
_A89F084ED_1965:;
	asm	nop
_A89F084ED_1966:;
	asm	nop
_A89F084ED_1967:;
	asm clr io[0x09].b14;
_A89F084ED_1968:;
	asm	nop
_A89F084ED_1969:;
	asm	nop
_A89F084ED_1970:;
	asm	nop
_A89F084ED_1971:;
	asm	nop
_A89F084ED_1972:;
	asm	nop
_A89F084ED_1973:;
	asm	nop
_A89F084ED_1974:;
	asm	nop
_A89F084ED_1975:;
	asm	nop
_A89F084ED_1976:;
	asm	nop
_A89F084ED_1977:;
	asm	nop
_A89F084ED_1978:;
	asm	nop
_A89F084ED_1979:;
	asm	nop
_A89F084ED_1980:;
	asm set io[0x09].b14;
_A89F084ED_1981:;
	asm	nop
_A89F084ED_1982:;
	asm	nop
_A89F084ED_1983:;
	asm	nop
_A89F084ED_1984:;
	asm clr io[0x09].b14;
_A89F084ED_1985:;
	asm	nop
_A89F084ED_1986:;
	asm	nop
_A89F084ED_1987:;
	asm	nop
_A89F084ED_1988:;
	asm	nop
_A89F084ED_1989:;
	asm	nop
_A89F084ED_1990:;
	asm	nop
_A89F084ED_1991:;
	asm	nop
_A89F084ED_1992:;
	asm	nop
_A89F084ED_1993:;
	asm	nop
_A89F084ED_1994:;
	asm	nop
_A89F084ED_1995:;
	asm	nop
_A89F084ED_1996:;
	asm	nop
_A89F084ED_1997:;
	asm set io[0x09].b14;
_A89F084ED_1998:;
	asm	nop
_A89F084ED_1999:;
	asm	nop
_A89F084ED_2000:;
	asm	nop
_A89F084ED_2001:;
	asm clr io[0x09].b14;
_A89F084ED_2002:;
	asm	nop
_A89F084ED_2003:;
	asm	nop
_A89F084ED_2004:;
	asm	nop
_A89F084ED_2005:;
	asm	nop
_A89F084ED_2006:;
	asm	nop
_A89F084ED_2007:;
	asm	nop
_A89F084ED_2008:;
	asm	nop
_A89F084ED_2009:;
	asm	nop
_A89F084ED_2010:;
	asm	nop
_A89F084ED_2011:;
	asm	nop
_A89F084ED_2012:;
	asm	nop
_A89F084ED_2013:;
	asm	nop
_A89F084ED_2014:;
	asm set io[0x09].b14;
_A89F084ED_2015:;
	asm	nop
_A89F084ED_2016:;
	asm	nop
_A89F084ED_2017:;
	asm	nop
_A89F084ED_2018:;
	asm clr io[0x09].b14;
_A89F084ED_2019:;
	asm	nop
_A89F084ED_2020:;
	asm	nop
_A89F084ED_2021:;
	asm	nop
_A89F084ED_2022:;
	asm	nop
_A89F084ED_2023:;
	asm	nop
_A89F084ED_2024:;
	asm	nop
_A89F084ED_2025:;
	asm	nop
_A89F084ED_2026:;
	asm	nop
_A89F084ED_2027:;
	asm	nop
_A89F084ED_2028:;
	asm	nop
_A89F084ED_2029:;
	asm	nop
_A89F084ED_2030:;
	asm	nop
_A89F084ED_2031:;
	asm set io[0x09].b14;
_A89F084ED_2032:;
	asm	nop
_A89F084ED_2033:;
	asm	nop
_A89F084ED_2034:;
	asm	nop
_A89F084ED_2035:;
	asm clr io[0x09].b14;
_A89F084ED_2036:;
	asm	nop
_A89F084ED_2037:;
	asm	nop
_A89F084ED_2038:;
	asm	nop
_A89F084ED_2039:;
	asm	nop
_A89F084ED_2040:;
	asm	nop
_A89F084ED_2041:;
	asm	nop
_A89F084ED_2042:;
	asm	nop
_A89F084ED_2043:;
	asm	nop
_A89F084ED_2044:;
	asm	nop
_A89F084ED_2045:;
	asm	nop
_A89F084ED_2046:;
	asm	nop
_A89F084ED_2047:;
	asm	nop
_A89F084ED_2048:;
	asm set io[0x09].b14;
_A89F084ED_2049:;
	asm	nop
_A89F084ED_2050:;
	asm	nop
_A89F084ED_2051:;
	asm	nop
_A89F084ED_2052:;
	asm	nop
_A89F084ED_2053:;
	asm	nop
_A89F084ED_2054:;
	asm	nop
_A89F084ED_2055:;
	asm	nop
_A89F084ED_2056:;
	asm	nop
_A89F084ED_2057:;
	asm	nop
_A89F084ED_2058:;
	asm	nop
_A89F084ED_2059:;
	asm	nop
_A89F084ED_2060:;
	asm	nop
_A89F084ED_2061:;
	asm clr io[0x09].b14;
_A89F084ED_2062:;
	asm	nop
_A89F084ED_2063:;
	asm	nop
_A89F084ED_2064:;
	asm	nop
_A89F084ED_2065:;
	asm set io[0x09].b14;
_A89F084ED_2066:;
	asm	nop
_A89F084ED_2067:;
	asm	nop
_A89F084ED_2068:;
	asm	nop
_A89F084ED_2069:;
	asm	nop
_A89F084ED_2070:;
	asm	nop
_A89F084ED_2071:;
	asm	nop
_A89F084ED_2072:;
	asm	nop
_A89F084ED_2073:;
	asm	nop
_A89F084ED_2074:;
	asm	nop
_A89F084ED_2075:;
	asm	nop
_A89F084ED_2076:;
	asm	nop
_A89F084ED_2077:;
	asm	nop
_A89F084ED_2078:;
	asm clr io[0x09].b14;
_A89F084ED_2079:;
	asm	nop
_A89F084ED_2080:;
	asm	nop
_A89F084ED_2081:;
	asm	nop
_A89F084ED_2082:;
	asm set io[0x09].b14;
_A89F084ED_2083:;
	asm	nop
_A89F084ED_2084:;
	asm	nop
_A89F084ED_2085:;
	asm	nop
_A89F084ED_2086:;
	asm	nop
_A89F084ED_2087:;
	asm	nop
_A89F084ED_2088:;
	asm	nop
_A89F084ED_2089:;
	asm	nop
_A89F084ED_2090:;
	asm	nop
_A89F084ED_2091:;
	asm	nop
_A89F084ED_2092:;
	asm	nop
_A89F084ED_2093:;
	asm	nop
_A89F084ED_2094:;
	asm	nop
_A89F084ED_2095:;
	asm clr io[0x09].b14;
_A89F084ED_2096:;
	asm	nop
_A89F084ED_2097:;
	asm	nop
_A89F084ED_2098:;
	asm	nop
_A89F084ED_2099:;
	asm set io[0x09].b14;
_A89F084ED_2100:;
	asm	nop
_A89F084ED_2101:;
	asm	nop
_A89F084ED_2102:;
	asm	nop
_A89F084ED_2103:;
	asm	nop
_A89F084ED_2104:;
	asm	nop
_A89F084ED_2105:;
	asm	nop
_A89F084ED_2106:;
	asm	nop
_A89F084ED_2107:;
	asm	nop
_A89F084ED_2108:;
	asm	nop
_A89F084ED_2109:;
	asm	nop
_A89F084ED_2110:;
	asm	nop
_A89F084ED_2111:;
	asm	nop
_A89F084ED_2112:;
	asm clr io[0x09].b14;
_A89F084ED_2113:;
	asm	nop
_A89F084ED_2114:;
	asm	nop
_A89F084ED_2115:;
	asm	nop
_A89F084ED_2116:;
	asm set io[0x09].b14;
_A89F084ED_2117:;
	asm	nop
_A89F084ED_2118:;
	asm	nop
_A89F084ED_2119:;
	asm	nop
_A89F084ED_2120:;
	asm	nop
_A89F084ED_2121:;
	asm	nop
_A89F084ED_2122:;
	asm	nop
_A89F084ED_2123:;
	asm	nop
_A89F084ED_2124:;
	asm	nop
_A89F084ED_2125:;
	asm	nop
_A89F084ED_2126:;
	asm	nop
_A89F084ED_2127:;
	asm	nop
_A89F084ED_2128:;
	asm	nop
_A89F084ED_2129:;
	asm clr io[0x09].b14;
_A89F084ED_2130:;
	asm	nop
_A89F084ED_2131:;
	asm	nop
_A89F084ED_2132:;
	asm	nop
_A89F084ED_2133:;
	asm set io[0x09].b14;
_A89F084ED_2134:;
	asm	nop
_A89F084ED_2135:;
	asm	nop
_A89F084ED_2136:;
	asm	nop
_A89F084ED_2137:;
	asm	nop
_A89F084ED_2138:;
	asm	nop
_A89F084ED_2139:;
	asm	nop
_A89F084ED_2140:;
	asm	nop
_A89F084ED_2141:;
	asm	nop
_A89F084ED_2142:;
	asm	nop
_A89F084ED_2143:;
	asm	nop
_A89F084ED_2144:;
	asm	nop
_A89F084ED_2145:;
	asm	nop
_A89F084ED_2146:;
	asm clr io[0x09].b14;
_A89F084ED_2147:;
	asm	nop
_A89F084ED_2148:;
	asm	nop
_A89F084ED_2149:;
	asm	nop
_A89F084ED_2150:;
	asm set io[0x09].b14;
_A89F084ED_2151:;
	asm	nop
_A89F084ED_2152:;
	asm	nop
_A89F084ED_2153:;
	asm	nop
_A89F084ED_2154:;
	asm	nop
_A89F084ED_2155:;
	asm	nop
_A89F084ED_2156:;
	asm	nop
_A89F084ED_2157:;
	asm	nop
_A89F084ED_2158:;
	asm	nop
_A89F084ED_2159:;
	asm	nop
_A89F084ED_2160:;
	asm	nop
_A89F084ED_2161:;
	asm	nop
_A89F084ED_2162:;
	asm	nop
_A89F084ED_2163:;
	asm clr io[0x09].b14;
_A89F084ED_2164:;
	asm	nop
_A89F084ED_2165:;
	asm	nop
_A89F084ED_2166:;
	asm	nop
_A89F084ED_2167:;
	asm set io[0x09].b14;
_A89F084ED_2168:;
	asm	nop
_A89F084ED_2169:;
	asm	nop
_A89F084ED_2170:;
	asm	nop
_A89F084ED_2171:;
	asm	nop
_A89F084ED_2172:;
	asm	nop
_A89F084ED_2173:;
	asm	nop
_A89F084ED_2174:;
	asm	nop
_A89F084ED_2175:;
	asm	nop
_A89F084ED_2176:;
	asm	nop
_A89F084ED_2177:;
	asm	nop
_A89F084ED_2178:;
	asm	nop
_A89F084ED_2179:;
	asm	nop
_A89F084ED_2180:;
	asm clr io[0x09].b14;
_A89F084ED_2181:;
	asm	nop
_A89F084ED_2182:;
	asm	nop
_A89F084ED_2183:;
	asm	nop
_A89F084ED_2184:;
	asm set io[0x09].b14;
_A89F084ED_2185:;
	asm	nop
_A89F084ED_2186:;
	asm	nop
_A89F084ED_2187:;
	asm	nop
_A89F084ED_2188:;
	asm	nop
_A89F084ED_2189:;
	asm	nop
_A89F084ED_2190:;
	asm	nop
_A89F084ED_2191:;
	asm	nop
_A89F084ED_2192:;
	asm	nop
_A89F084ED_2193:;
	asm	nop
_A89F084ED_2194:;
	asm	nop
_A89F084ED_2195:;
	asm	nop
_A89F084ED_2196:;
	asm	nop
_A89F084ED_2197:;
	asm clr io[0x09].b14;
_A89F084ED_2198:;
	asm	nop
_A89F084ED_2199:;
	asm	nop
_A89F084ED_2200:;
	asm	nop
_A89F084ED_2201:;
	asm set io[0x09].b14;
_A89F084ED_2202:;
	asm	nop
_A89F084ED_2203:;
	asm	nop
_A89F084ED_2204:;
	asm	nop
_A89F084ED_2205:;
	asm	nop
_A89F084ED_2206:;
	asm	nop
_A89F084ED_2207:;
	asm	nop
_A89F084ED_2208:;
	asm	nop
_A89F084ED_2209:;
	asm	nop
_A89F084ED_2210:;
	asm	nop
_A89F084ED_2211:;
	asm	nop
_A89F084ED_2212:;
	asm	nop
_A89F084ED_2213:;
	asm	nop
_A89F084ED_2214:;
	asm clr io[0x09].b14;
_A89F084ED_2215:;
	asm	nop
_A89F084ED_2216:;
	asm	nop
_A89F084ED_2217:;
	asm	nop
_A89F084ED_2218:;
	asm set io[0x09].b14;
_A89F084ED_2219:;
	asm	nop
_A89F084ED_2220:;
	asm	nop
_A89F084ED_2221:;
	asm	nop
_A89F084ED_2222:;
	asm	nop
_A89F084ED_2223:;
	asm	nop
_A89F084ED_2224:;
	asm	nop
_A89F084ED_2225:;
	asm	nop
_A89F084ED_2226:;
	asm	nop
_A89F084ED_2227:;
	asm	nop
_A89F084ED_2228:;
	asm	nop
_A89F084ED_2229:;
	asm	nop
_A89F084ED_2230:;
	asm	nop
_A89F084ED_2231:;
	asm clr io[0x09].b14;
_A89F084ED_2232:;
	asm	nop
_A89F084ED_2233:;
	asm	nop
_A89F084ED_2234:;
	asm	nop
_A89F084ED_2235:;
	asm set io[0x09].b14;
_A89F084ED_2236:;
	asm	nop
_A89F084ED_2237:;
	asm	nop
_A89F084ED_2238:;
	asm	nop
_A89F084ED_2239:;
	asm	nop
_A89F084ED_2240:;
	asm	nop
_A89F084ED_2241:;
	asm	nop
_A89F084ED_2242:;
	asm	nop
_A89F084ED_2243:;
	asm	nop
_A89F084ED_2244:;
	asm	nop
_A89F084ED_2245:;
	asm	nop
_A89F084ED_2246:;
	asm	nop
_A89F084ED_2247:;
	asm	nop
_A89F084ED_2248:;
	asm clr io[0x09].b14;
_A89F084ED_2249:;
	asm	nop
_A89F084ED_2250:;
	asm	nop
_A89F084ED_2251:;
	asm	nop
_A89F084ED_2252:;
	asm set io[0x09].b14;
_A89F084ED_2253:;
	asm	nop
_A89F084ED_2254:;
	asm	nop
_A89F084ED_2255:;
	asm	nop
_A89F084ED_2256:;
	asm	nop
_A89F084ED_2257:;
	asm	nop
_A89F084ED_2258:;
	asm	nop
_A89F084ED_2259:;
	asm	nop
_A89F084ED_2260:;
	asm	nop
_A89F084ED_2261:;
	asm	nop
_A89F084ED_2262:;
	asm	nop
_A89F084ED_2263:;
	asm	nop
_A89F084ED_2264:;
	asm	nop
_A89F084ED_2265:;
	asm clr io[0x09].b14;
_A89F084ED_2266:;
	asm	nop
_A89F084ED_2267:;
	asm	nop
_A89F084ED_2268:;
	asm	nop
_A89F084ED_2269:;
	asm set io[0x09].b14;
_A89F084ED_2270:;
	asm	nop
_A89F084ED_2271:;
	asm	nop
_A89F084ED_2272:;
	asm	nop
_A89F084ED_2273:;
	asm	nop
_A89F084ED_2274:;
	asm	nop
_A89F084ED_2275:;
	asm	nop
_A89F084ED_2276:;
	asm	nop
_A89F084ED_2277:;
	asm	nop
_A89F084ED_2278:;
	asm	nop
_A89F084ED_2279:;
	asm	nop
_A89F084ED_2280:;
	asm	nop
_A89F084ED_2281:;
	asm	nop
_A89F084ED_2282:;
	asm clr io[0x09].b14;
_A89F084ED_2283:;
	asm	nop
_A89F084ED_2284:;
	asm	nop
_A89F084ED_2285:;
	asm	nop
_A89F084ED_2286:;
	asm set io[0x09].b14;
_A89F084ED_2287:;
	asm	nop
_A89F084ED_2288:;
	asm	nop
_A89F084ED_2289:;
	asm	nop
_A89F084ED_2290:;
	asm	nop
_A89F084ED_2291:;
	asm	nop
_A89F084ED_2292:;
	asm	nop
_A89F084ED_2293:;
	asm	nop
_A89F084ED_2294:;
	asm	nop
_A89F084ED_2295:;
	asm	nop
_A89F084ED_2296:;
	asm	nop
_A89F084ED_2297:;
	asm	nop
_A89F084ED_2298:;
	asm	nop
_A89F084ED_2299:;
	asm clr io[0x09].b14;
_A89F084ED_2300:;
	asm	nop
_A89F084ED_2301:;
	asm	nop
_A89F084ED_2302:;
	asm	nop
_A89F084ED_2303:;
	asm set io[0x09].b14;
_A89F084ED_2304:;
	asm	nop
_A89F084ED_2305:;
	asm	nop
_A89F084ED_2306:;
	asm	nop
_A89F084ED_2307:;
	asm	nop
_A89F084ED_2308:;
	asm	nop
_A89F084ED_2309:;
	asm	nop
_A89F084ED_2310:;
	asm	nop
_A89F084ED_2311:;
	asm	nop
_A89F084ED_2312:;
	asm	nop
_A89F084ED_2313:;
	asm	nop
_A89F084ED_2314:;
	asm	nop
_A89F084ED_2315:;
	asm	nop
_A89F084ED_2316:;
	asm clr io[0x09].b14;
_A89F084ED_2317:;
	asm	nop
_A89F084ED_2318:;
	asm	nop
_A89F084ED_2319:;
	asm	nop
_A89F084ED_2320:;
	goto LD63FD439_108;
LD63FD439_115:;
_A89F084ED_2321:;
	asm set io[0x09].b14;
_A89F084ED_2322:;
	asm	nop
_A89F084ED_2323:;
	asm	nop
_A89F084ED_2324:;
	asm	nop
_A89F084ED_2325:;
	asm clr io[0x09].b14;
_A89F084ED_2326:;
	asm	nop
_A89F084ED_2327:;
	asm	nop
_A89F084ED_2328:;
	asm	nop
_A89F084ED_2329:;
	asm	nop
_A89F084ED_2330:;
	asm	nop
_A89F084ED_2331:;
	asm	nop
_A89F084ED_2332:;
	asm	nop
_A89F084ED_2333:;
	asm	nop
_A89F084ED_2334:;
	asm	nop
_A89F084ED_2335:;
	asm	nop
_A89F084ED_2336:;
	asm	nop
_A89F084ED_2337:;
	asm	nop
_A89F084ED_2338:;
	asm set io[0x09].b14;
_A89F084ED_2339:;
	asm	nop
_A89F084ED_2340:;
	asm	nop
_A89F084ED_2341:;
	asm	nop
_A89F084ED_2342:;
	asm clr io[0x09].b14;
_A89F084ED_2343:;
	asm	nop
_A89F084ED_2344:;
	asm	nop
_A89F084ED_2345:;
	asm	nop
_A89F084ED_2346:;
	asm	nop
_A89F084ED_2347:;
	asm	nop
_A89F084ED_2348:;
	asm	nop
_A89F084ED_2349:;
	asm	nop
_A89F084ED_2350:;
	asm	nop
_A89F084ED_2351:;
	asm	nop
_A89F084ED_2352:;
	asm	nop
_A89F084ED_2353:;
	asm	nop
_A89F084ED_2354:;
	asm	nop
_A89F084ED_2355:;
	asm set io[0x09].b14;
_A89F084ED_2356:;
	asm	nop
_A89F084ED_2357:;
	asm	nop
_A89F084ED_2358:;
	asm	nop
_A89F084ED_2359:;
	asm clr io[0x09].b14;
_A89F084ED_2360:;
	asm	nop
_A89F084ED_2361:;
	asm	nop
_A89F084ED_2362:;
	asm	nop
_A89F084ED_2363:;
	asm	nop
_A89F084ED_2364:;
	asm	nop
_A89F084ED_2365:;
	asm	nop
_A89F084ED_2366:;
	asm	nop
_A89F084ED_2367:;
	asm	nop
_A89F084ED_2368:;
	asm	nop
_A89F084ED_2369:;
	asm	nop
_A89F084ED_2370:;
	asm	nop
_A89F084ED_2371:;
	asm	nop
_A89F084ED_2372:;
	asm set io[0x09].b14;
_A89F084ED_2373:;
	asm	nop
_A89F084ED_2374:;
	asm	nop
_A89F084ED_2375:;
	asm	nop
_A89F084ED_2376:;
	asm clr io[0x09].b14;
_A89F084ED_2377:;
	asm	nop
_A89F084ED_2378:;
	asm	nop
_A89F084ED_2379:;
	asm	nop
_A89F084ED_2380:;
	asm	nop
_A89F084ED_2381:;
	asm	nop
_A89F084ED_2382:;
	asm	nop
_A89F084ED_2383:;
	asm	nop
_A89F084ED_2384:;
	asm	nop
_A89F084ED_2385:;
	asm	nop
_A89F084ED_2386:;
	asm	nop
_A89F084ED_2387:;
	asm	nop
_A89F084ED_2388:;
	asm	nop
_A89F084ED_2389:;
	asm set io[0x09].b14;
_A89F084ED_2390:;
	asm	nop
_A89F084ED_2391:;
	asm	nop
_A89F084ED_2392:;
	asm	nop
_A89F084ED_2393:;
	asm clr io[0x09].b14;
_A89F084ED_2394:;
	asm	nop
_A89F084ED_2395:;
	asm	nop
_A89F084ED_2396:;
	asm	nop
_A89F084ED_2397:;
	asm	nop
_A89F084ED_2398:;
	asm	nop
_A89F084ED_2399:;
	asm	nop
_A89F084ED_2400:;
	asm	nop
_A89F084ED_2401:;
	asm	nop
_A89F084ED_2402:;
	asm	nop
_A89F084ED_2403:;
	asm	nop
_A89F084ED_2404:;
	asm	nop
_A89F084ED_2405:;
	asm	nop
_A89F084ED_2406:;
	asm set io[0x09].b14;
_A89F084ED_2407:;
	asm	nop
_A89F084ED_2408:;
	asm	nop
_A89F084ED_2409:;
	asm	nop
_A89F084ED_2410:;
	asm clr io[0x09].b14;
_A89F084ED_2411:;
	asm	nop
_A89F084ED_2412:;
	asm	nop
_A89F084ED_2413:;
	asm	nop
_A89F084ED_2414:;
	asm	nop
_A89F084ED_2415:;
	asm	nop
_A89F084ED_2416:;
	asm	nop
_A89F084ED_2417:;
	asm	nop
_A89F084ED_2418:;
	asm	nop
_A89F084ED_2419:;
	asm	nop
_A89F084ED_2420:;
	asm	nop
_A89F084ED_2421:;
	asm	nop
_A89F084ED_2422:;
	asm	nop
_A89F084ED_2423:;
	asm set io[0x09].b14;
_A89F084ED_2424:;
	asm	nop
_A89F084ED_2425:;
	asm	nop
_A89F084ED_2426:;
	asm	nop
_A89F084ED_2427:;
	asm clr io[0x09].b14;
_A89F084ED_2428:;
	asm	nop
_A89F084ED_2429:;
	asm	nop
_A89F084ED_2430:;
	asm	nop
_A89F084ED_2431:;
	asm	nop
_A89F084ED_2432:;
	asm	nop
_A89F084ED_2433:;
	asm	nop
_A89F084ED_2434:;
	asm	nop
_A89F084ED_2435:;
	asm	nop
_A89F084ED_2436:;
	asm	nop
_A89F084ED_2437:;
	asm	nop
_A89F084ED_2438:;
	asm	nop
_A89F084ED_2439:;
	asm	nop
_A89F084ED_2440:;
	asm set io[0x09].b14;
_A89F084ED_2441:;
	asm	nop
_A89F084ED_2442:;
	asm	nop
_A89F084ED_2443:;
	asm	nop
_A89F084ED_2444:;
	asm clr io[0x09].b14;
_A89F084ED_2445:;
	asm	nop
_A89F084ED_2446:;
	asm	nop
_A89F084ED_2447:;
	asm	nop
_A89F084ED_2448:;
	asm	nop
_A89F084ED_2449:;
	asm	nop
_A89F084ED_2450:;
	asm	nop
_A89F084ED_2451:;
	asm	nop
_A89F084ED_2452:;
	asm	nop
_A89F084ED_2453:;
	asm	nop
_A89F084ED_2454:;
	asm	nop
_A89F084ED_2455:;
	asm	nop
_A89F084ED_2456:;
	asm	nop
_A89F084ED_2457:;
	asm set io[0x09].b14;
_A89F084ED_2458:;
	asm	nop
_A89F084ED_2459:;
	asm	nop
_A89F084ED_2460:;
	asm	nop
_A89F084ED_2461:;
	asm clr io[0x09].b14;
_A89F084ED_2462:;
	asm	nop
_A89F084ED_2463:;
	asm	nop
_A89F084ED_2464:;
	asm	nop
_A89F084ED_2465:;
	asm	nop
_A89F084ED_2466:;
	asm	nop
_A89F084ED_2467:;
	asm	nop
_A89F084ED_2468:;
	asm	nop
_A89F084ED_2469:;
	asm	nop
_A89F084ED_2470:;
	asm	nop
_A89F084ED_2471:;
	asm	nop
_A89F084ED_2472:;
	asm	nop
_A89F084ED_2473:;
	asm	nop
_A89F084ED_2474:;
	asm set io[0x09].b14;
_A89F084ED_2475:;
	asm	nop
_A89F084ED_2476:;
	asm	nop
_A89F084ED_2477:;
	asm	nop
_A89F084ED_2478:;
	asm clr io[0x09].b14;
_A89F084ED_2479:;
	asm	nop
_A89F084ED_2480:;
	asm	nop
_A89F084ED_2481:;
	asm	nop
_A89F084ED_2482:;
	asm	nop
_A89F084ED_2483:;
	asm	nop
_A89F084ED_2484:;
	asm	nop
_A89F084ED_2485:;
	asm	nop
_A89F084ED_2486:;
	asm	nop
_A89F084ED_2487:;
	asm	nop
_A89F084ED_2488:;
	asm	nop
_A89F084ED_2489:;
	asm	nop
_A89F084ED_2490:;
	asm	nop
_A89F084ED_2491:;
	asm set io[0x09].b14;
_A89F084ED_2492:;
	asm	nop
_A89F084ED_2493:;
	asm	nop
_A89F084ED_2494:;
	asm	nop
_A89F084ED_2495:;
	asm clr io[0x09].b14;
_A89F084ED_2496:;
	asm	nop
_A89F084ED_2497:;
	asm	nop
_A89F084ED_2498:;
	asm	nop
_A89F084ED_2499:;
	asm	nop
_A89F084ED_2500:;
	asm	nop
_A89F084ED_2501:;
	asm	nop
_A89F084ED_2502:;
	asm	nop
_A89F084ED_2503:;
	asm	nop
_A89F084ED_2504:;
	asm	nop
_A89F084ED_2505:;
	asm	nop
_A89F084ED_2506:;
	asm	nop
_A89F084ED_2507:;
	asm	nop
_A89F084ED_2508:;
	asm set io[0x09].b14;
_A89F084ED_2509:;
	asm	nop
_A89F084ED_2510:;
	asm	nop
_A89F084ED_2511:;
	asm	nop
_A89F084ED_2512:;
	asm clr io[0x09].b14;
_A89F084ED_2513:;
	asm	nop
_A89F084ED_2514:;
	asm	nop
_A89F084ED_2515:;
	asm	nop
_A89F084ED_2516:;
	asm	nop
_A89F084ED_2517:;
	asm	nop
_A89F084ED_2518:;
	asm	nop
_A89F084ED_2519:;
	asm	nop
_A89F084ED_2520:;
	asm	nop
_A89F084ED_2521:;
	asm	nop
_A89F084ED_2522:;
	asm	nop
_A89F084ED_2523:;
	asm	nop
_A89F084ED_2524:;
	asm	nop
_A89F084ED_2525:;
	asm set io[0x09].b14;
_A89F084ED_2526:;
	asm	nop
_A89F084ED_2527:;
	asm	nop
_A89F084ED_2528:;
	asm	nop
_A89F084ED_2529:;
	asm clr io[0x09].b14;
_A89F084ED_2530:;
	asm	nop
_A89F084ED_2531:;
	asm	nop
_A89F084ED_2532:;
	asm	nop
_A89F084ED_2533:;
	asm	nop
_A89F084ED_2534:;
	asm	nop
_A89F084ED_2535:;
	asm	nop
_A89F084ED_2536:;
	asm	nop
_A89F084ED_2537:;
	asm	nop
_A89F084ED_2538:;
	asm	nop
_A89F084ED_2539:;
	asm	nop
_A89F084ED_2540:;
	asm	nop
_A89F084ED_2541:;
	asm	nop
_A89F084ED_2542:;
	asm set io[0x09].b14;
_A89F084ED_2543:;
	asm	nop
_A89F084ED_2544:;
	asm	nop
_A89F084ED_2545:;
	asm	nop
_A89F084ED_2546:;
	asm clr io[0x09].b14;
_A89F084ED_2547:;
	asm	nop
_A89F084ED_2548:;
	asm	nop
_A89F084ED_2549:;
	asm	nop
_A89F084ED_2550:;
	asm	nop
_A89F084ED_2551:;
	asm	nop
_A89F084ED_2552:;
	asm	nop
_A89F084ED_2553:;
	asm	nop
_A89F084ED_2554:;
	asm	nop
_A89F084ED_2555:;
	asm	nop
_A89F084ED_2556:;
	asm	nop
_A89F084ED_2557:;
	asm	nop
_A89F084ED_2558:;
	asm	nop
_A89F084ED_2559:;
	asm set io[0x09].b14;
_A89F084ED_2560:;
	asm	nop
_A89F084ED_2561:;
	asm	nop
_A89F084ED_2562:;
	asm	nop
_A89F084ED_2563:;
	asm clr io[0x09].b14;
_A89F084ED_2564:;
	asm	nop
_A89F084ED_2565:;
	asm	nop
_A89F084ED_2566:;
	asm	nop
_A89F084ED_2567:;
	asm	nop
_A89F084ED_2568:;
	asm	nop
_A89F084ED_2569:;
	asm	nop
_A89F084ED_2570:;
	asm	nop
_A89F084ED_2571:;
	asm	nop
_A89F084ED_2572:;
	asm	nop
_A89F084ED_2573:;
	asm	nop
_A89F084ED_2574:;
	asm	nop
_A89F084ED_2575:;
	asm	nop
_A89F084ED_2576:;
	asm set io[0x09].b14;
_A89F084ED_2577:;
	asm	nop
_A89F084ED_2578:;
	asm	nop
_A89F084ED_2579:;
	asm	nop
_A89F084ED_2580:;
	asm clr io[0x09].b14;
_A89F084ED_2581:;
	asm	nop
_A89F084ED_2582:;
	asm	nop
_A89F084ED_2583:;
	asm	nop
_A89F084ED_2584:;
	asm	nop
_A89F084ED_2585:;
	asm	nop
_A89F084ED_2586:;
	asm	nop
_A89F084ED_2587:;
	asm	nop
_A89F084ED_2588:;
	asm	nop
_A89F084ED_2589:;
	asm	nop
_A89F084ED_2590:;
	asm	nop
_A89F084ED_2591:;
	asm	nop
_A89F084ED_2592:;
	asm	nop
_A89F084ED_2593:;
	asm set io[0x09].b14;
_A89F084ED_2594:;
	asm	nop
_A89F084ED_2595:;
	asm	nop
_A89F084ED_2596:;
	asm	nop
_A89F084ED_2597:;
	asm	nop
_A89F084ED_2598:;
	asm	nop
_A89F084ED_2599:;
	asm	nop
_A89F084ED_2600:;
	asm	nop
_A89F084ED_2601:;
	asm	nop
_A89F084ED_2602:;
	asm	nop
_A89F084ED_2603:;
	asm	nop
_A89F084ED_2604:;
	asm	nop
_A89F084ED_2605:;
	asm	nop
_A89F084ED_2606:;
	asm clr io[0x09].b14;
_A89F084ED_2607:;
	asm	nop
_A89F084ED_2608:;
	asm	nop
_A89F084ED_2609:;
	asm	nop
_A89F084ED_2610:;
	asm set io[0x09].b14;
_A89F084ED_2611:;
	asm	nop
_A89F084ED_2612:;
	asm	nop
_A89F084ED_2613:;
	asm	nop
_A89F084ED_2614:;
	asm	nop
_A89F084ED_2615:;
	asm	nop
_A89F084ED_2616:;
	asm	nop
_A89F084ED_2617:;
	asm	nop
_A89F084ED_2618:;
	asm	nop
_A89F084ED_2619:;
	asm	nop
_A89F084ED_2620:;
	asm	nop
_A89F084ED_2621:;
	asm	nop
_A89F084ED_2622:;
	asm	nop
_A89F084ED_2623:;
	asm clr io[0x09].b14;
_A89F084ED_2624:;
	asm	nop
_A89F084ED_2625:;
	asm	nop
_A89F084ED_2626:;
	asm	nop
_A89F084ED_2627:;
	asm set io[0x09].b14;
_A89F084ED_2628:;
	asm	nop
_A89F084ED_2629:;
	asm	nop
_A89F084ED_2630:;
	asm	nop
_A89F084ED_2631:;
	asm	nop
_A89F084ED_2632:;
	asm	nop
_A89F084ED_2633:;
	asm	nop
_A89F084ED_2634:;
	asm	nop
_A89F084ED_2635:;
	asm	nop
_A89F084ED_2636:;
	asm	nop
_A89F084ED_2637:;
	asm	nop
_A89F084ED_2638:;
	asm	nop
_A89F084ED_2639:;
	asm	nop
_A89F084ED_2640:;
	asm clr io[0x09].b14;
_A89F084ED_2641:;
	asm	nop
_A89F084ED_2642:;
	asm	nop
_A89F084ED_2643:;
	asm	nop
_A89F084ED_2644:;
	asm set io[0x09].b14;
_A89F084ED_2645:;
	asm	nop
_A89F084ED_2646:;
	asm	nop
_A89F084ED_2647:;
	asm	nop
_A89F084ED_2648:;
	asm	nop
_A89F084ED_2649:;
	asm	nop
_A89F084ED_2650:;
	asm	nop
_A89F084ED_2651:;
	asm	nop
_A89F084ED_2652:;
	asm	nop
_A89F084ED_2653:;
	asm	nop
_A89F084ED_2654:;
	asm	nop
_A89F084ED_2655:;
	asm	nop
_A89F084ED_2656:;
	asm	nop
_A89F084ED_2657:;
	asm clr io[0x09].b14;
_A89F084ED_2658:;
	asm	nop
_A89F084ED_2659:;
	asm	nop
_A89F084ED_2660:;
	asm	nop
_A89F084ED_2661:;
	asm set io[0x09].b14;
_A89F084ED_2662:;
	asm	nop
_A89F084ED_2663:;
	asm	nop
_A89F084ED_2664:;
	asm	nop
_A89F084ED_2665:;
	asm	nop
_A89F084ED_2666:;
	asm	nop
_A89F084ED_2667:;
	asm	nop
_A89F084ED_2668:;
	asm	nop
_A89F084ED_2669:;
	asm	nop
_A89F084ED_2670:;
	asm	nop
_A89F084ED_2671:;
	asm	nop
_A89F084ED_2672:;
	asm	nop
_A89F084ED_2673:;
	asm	nop
_A89F084ED_2674:;
	asm clr io[0x09].b14;
_A89F084ED_2675:;
	asm	nop
_A89F084ED_2676:;
	asm	nop
_A89F084ED_2677:;
	asm	nop
_A89F084ED_2678:;
	asm set io[0x09].b14;
_A89F084ED_2679:;
	asm	nop
_A89F084ED_2680:;
	asm	nop
_A89F084ED_2681:;
	asm	nop
_A89F084ED_2682:;
	asm	nop
_A89F084ED_2683:;
	asm	nop
_A89F084ED_2684:;
	asm	nop
_A89F084ED_2685:;
	asm	nop
_A89F084ED_2686:;
	asm	nop
_A89F084ED_2687:;
	asm	nop
_A89F084ED_2688:;
	asm	nop
_A89F084ED_2689:;
	asm	nop
_A89F084ED_2690:;
	asm	nop
_A89F084ED_2691:;
	asm clr io[0x09].b14;
_A89F084ED_2692:;
	asm	nop
_A89F084ED_2693:;
	asm	nop
_A89F084ED_2694:;
	asm	nop
_A89F084ED_2695:;
	asm set io[0x09].b14;
_A89F084ED_2696:;
	asm	nop
_A89F084ED_2697:;
	asm	nop
_A89F084ED_2698:;
	asm	nop
_A89F084ED_2699:;
	asm	nop
_A89F084ED_2700:;
	asm	nop
_A89F084ED_2701:;
	asm	nop
_A89F084ED_2702:;
	asm	nop
_A89F084ED_2703:;
	asm	nop
_A89F084ED_2704:;
	asm	nop
_A89F084ED_2705:;
	asm	nop
_A89F084ED_2706:;
	asm	nop
_A89F084ED_2707:;
	asm	nop
_A89F084ED_2708:;
	asm clr io[0x09].b14;
_A89F084ED_2709:;
	asm	nop
_A89F084ED_2710:;
	asm	nop
_A89F084ED_2711:;
	asm	nop
_A89F084ED_2712:;
	asm set io[0x09].b14;
_A89F084ED_2713:;
	asm	nop
_A89F084ED_2714:;
	asm	nop
_A89F084ED_2715:;
	asm	nop
_A89F084ED_2716:;
	asm	nop
_A89F084ED_2717:;
	asm	nop
_A89F084ED_2718:;
	asm	nop
_A89F084ED_2719:;
	asm	nop
_A89F084ED_2720:;
	asm	nop
_A89F084ED_2721:;
	asm	nop
_A89F084ED_2722:;
	asm	nop
_A89F084ED_2723:;
	asm	nop
_A89F084ED_2724:;
	asm	nop
_A89F084ED_2725:;
	asm clr io[0x09].b14;
_A89F084ED_2726:;
	asm	nop
_A89F084ED_2727:;
	asm	nop
_A89F084ED_2728:;
	asm	nop
_A89F084ED_2729:;
	goto LD63FD439_108;
LD63FD439_116:;
_A89F084ED_2730:;
	goto LD63FD439_108;
	goto LD63FD439_108;
LD63FD439_109:;
	sCX	= sAX;
	sAX	= 0x0000;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_117;
	goto LD63FD439_110;
LD63FD439_117:;
	sAX	= 0x0001;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_118;
	goto LD63FD439_111;
LD63FD439_118:;
	sAX	= 0x0003;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_119;
	goto LD63FD439_112;
LD63FD439_119:;
	sAX	= 0x0002;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_120;
	goto LD63FD439_113;
LD63FD439_120:;
	sAX	= 0x0005;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_121;
	goto LD63FD439_114;
LD63FD439_121:;
	sAX	= 0x0004;
	sfx_CMP_AX_CX_JE();
	if(__jne__)	goto LD63FD439_122;
	goto LD63FD439_115;
LD63FD439_122:;
	goto	LD63FD439_116;
LD63FD439_108:;
	goto LD63FD439_106;
LD63FD439_105:;
_A89F084ED_2731:;
LD63FD439_102:;
_A89F084ED_2732:;
	return;
_WS_TRSF_color_setE1CC300C_end:;
_A89F084ED_2733:;
}

void _WS_RefreshAD7B99B1()
{
	__int16 _i_1_2;
	////////////////////////////
_A89F084ED_2734:;
_A89F084ED_2735:;
	_i_1_2+0	= 0x00;
LD63FD439_124:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0003;
	sfx_CMP_AX_CX_JBE();
	if(__je__)	goto LD63FD439_128;
	goto	LD63FD439_126;
LD63FD439_128:;
	goto LD63FD439_125;
LD63FD439_127:;
	sSI	= (int)&_i_1_2;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&_i_1_2;
	asm AR = 0x0001;
	sCX	= *(__int16*)sSI;
	asm rm[I1] = CX + AR;
	goto LD63FD439_124;
LD63FD439_125:;
	////////////////////////////
_A89F084ED_2736:;
_A89F084ED_2737:;
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
	goto LD63FD439_127;
LD63FD439_126:;
_A89F084ED_2738:;
_A89F084ED_2739:;
	asm clr io[0x09].b14;
LD63FD439_123:;
_A89F084ED_2740:;
	return;
_WS_RefreshAD7B99B1_end:;
_A89F084ED_2741:;
}

void _WS_Key_RGBC5B96B6D()
{
_A89F084ED_2742:;
	////////////////////////////
_A89F084ED_2743:;
	asm I1 = LD63FD439_130+0;
	sAX	= *(__int16*)sSI;
	goto LD63FD439_132;
LD63FD439_133:;
_A89F084ED_2744:;
_A89F084ED_2745:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2746:;
_A89F084ED_2747:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2748:;
_A89F084ED_2749:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2750:;
_A89F084ED_2751:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2752:;
	goto LD63FD439_131;
LD63FD439_134:;
_A89F084ED_2753:;
_A89F084ED_2754:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2755:;
_A89F084ED_2756:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2757:;
_A89F084ED_2758:;
	sAX	= 0x001F;
	PUSH(sAX);
	sAX	= 0x0006;
	PUSH(sAX);
	sAX	= 0x0004;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2759:;
_A89F084ED_2760:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2761:;
	goto LD63FD439_131;
LD63FD439_135:;
_A89F084ED_2762:;
_A89F084ED_2763:;
	sAX	= 0x0000;
	PUSH(sAX);
	sAX	= 0x0003;
	PUSH(sAX);
	sAX	= 0x0000;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2764:;
_A89F084ED_2765:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2766:;
_A89F084ED_2767:;
	sAX	= 0xFF00;
	PUSH(sAX);
	sAX	= 0x000A;
	PUSH(sAX);
	sAX	= 0x0007;
	PUSH(sAX);
	_WS_ColorSet_LEDCA3DEB8C(STACK[sSP + 0], STACK[sSP + 1], STACK[sSP + 2]);
	RESTORESP(3);
_A89F084ED_2768:;
_A89F084ED_2769:;
	_WS_RefreshAD7B99B1();
_A89F084ED_2770:;
	goto LD63FD439_131;
	goto LD63FD439_131;
LD63FD439_132:;
	sCX	= sAX;
	sAX	= 0x0000;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_136;
	goto LD63FD439_133;
LD63FD439_136:;
	sAX	= 0x0001;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_137;
	goto LD63FD439_134;
LD63FD439_137:;
	sAX	= 0x0002;
	sfx_CMP_AX_CX_U_JE();
	if(__jne__)	goto LD63FD439_138;
	goto LD63FD439_135;
LD63FD439_138:;
	goto	LD63FD439_131;
LD63FD439_131:;
_A89F084ED_2771:;
	asm I1 = LD63FD439_130+0;
	sAX	= *(__int16*)sSI;
	sSI	= (int)&LD63FD439_130;
	PUSH(sAX);
	sAX	= 0x0001;
	sCX	= *(__int16*)sSI;
	sCX	= sCX + sAX;
	*(__int16*)sSI	= sCX;
	sAX	= POP();
_A89F084ED_2772:;
	asm I1 = LD63FD439_130+0;
	sAX	= *(__int16*)sSI;
	sCX	= 0x0002;
	sfx_CMP_AX_CX_JA();
	if(__je__)	goto LD63FD439_140;
	goto	LD63FD439_139;
LD63FD439_140:;
_A89F084ED_2773:;
	LD63FD439_130+0	= 0x00;
LD63FD439_139:;
_A89F084ED_2774:;
_A89F084ED_2775:;
_A89F084ED_2776:;
	sAX	= 0x0032;
	PUSH(sAX);
	_delay6F9F34ED(STACK[sSP + 0]);
	RESTORESP(1);
LD63FD439_129:;
_A89F084ED_2777:;
	return;
_WS_Key_RGBC5B96B6D_end:;
_A89F084ED_2778:;
}

// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_WS2811_02F950F9_s(void)
{
	asm P1 = #ginit_seg_WS2811_02F950F9_s+0;
	asm I1 = LD63FD439_73;
	sCX = 1;
	sfx_GLOBALINIT();

	asm P1 = #ginit_seg_WS2811_02F950F9_s+1;
	asm I1 = LD63FD439_130;
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
	// LD63FD439_73
	0x0000,
	// LD63FD439_130
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
