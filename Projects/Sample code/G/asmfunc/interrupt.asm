
Pwm_process:
	clr             io[INTREQ].b0

	push		CBL
	push		I0

	; CBL = I0_CIRCLE_ALIGN_64;
		AR=		6
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
Pwm_process_end:



