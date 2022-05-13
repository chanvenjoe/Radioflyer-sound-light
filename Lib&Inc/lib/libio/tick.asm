

_ClearTickCount5DDE4003:
#ifdef _MFDSP_
	set		io[MISC].b8
#else
	set		io[MISC].b7
#endif
	set		io[MISC].b15
	
	io[REAL_T]=	AR
	AR=		io[REAL_T]
	AR=		io[REAL_T]
	io[REAL_T]=	AR
	rets

; -----------------------------------------------

_GetTickCount18DC070C:
	AX=		0xFFF0
@gettickcount_loop_1000:
	io[ClrWDT]=	AR
	AR=		io[REAL_T]
	AR=		AR & AX
	SF=		AR - AX
	if ZR jmp	@gettickcount_loop_1000
	AX=		AR
	AR=		io[REAL_T]
	DX=		AR
	rets

	
; -----------------------------------------------
; void delay(int ms)
;
; in:
;     BP + 1 - int ms
;
; -----------------------------------------------
_delay6F9F34ED:
; {
	AR=		BP
	AR=		AR + 1		; ~~ port
	I1=		AR

	; unsigned long tick;
	; unsigned long msr;

	; ~~ 1ms = 32768 ticks

	; msr = (unsigned long)ms << 15;
		R0=		0
		R1=		rm[I1]
		clr		C
		src		R1, 1
		src		R0, 1
	
	; tick = GetTickCount();
		call		_GetTickCount18DC070C
		AR=		AX
		CX=		AR
		AR=		DX
		BX=		AR
	
	; while((GetTickCount() - tick) < msr);
	@delay_loop_1024:
		call		_GetTickCount18DC070C
		AR=		CX
		AX=		AX - AR
		AR=		BX
		DX=		DX - AR + C - 1
		AR=		R0
		AX=		AX - AR
		AR=		R1
		DX=		DX - AR + C - 1
		AR=		0
		AR=		AR - 0 + C - 1
		if AN jmp	@delay_loop_1024

	rets
; }



