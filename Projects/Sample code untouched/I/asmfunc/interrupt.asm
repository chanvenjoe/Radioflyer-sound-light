
; ~.~------------------------------------------
; void PWM_ENTRY(void) interrupt 0
; ---------------------------------------------
PWM_ENTRY:
; {
	clr 		io[INTREQ].b0	; Clear Int0 Request!!

	push		CBL
	push		I0

	; CBL = I0_CIRCLE_ALIGN_512;
	#ifdef _PWM_64K_
		AR=		10
	#else
		AR=		9
	#endif
		CBL=		AR

		I0=		_mp_outbufE6EABE1D
		AR=		rm[I0]
		I0=		AR

		AR=		rm[I0++2]
		io[DACL]=	AR
		AR=		rm[I0++2]
		io[DACL]=	AR
		AR=		rm[I0++2]
		io[DACL]=	AR
		AR=		rm[I0++2]
		io[DACL]=	AR

	; mp.outbuf += 4;
		AR=		I0
		I0=		_mp_outbufE6EABE1D
		rm[I0]=		AR


	pop		I0
	pop		CBL

	reti
; }


