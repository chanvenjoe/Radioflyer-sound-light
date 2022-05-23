

; ~~ assembly function in C form...

; ---------------------------------------------

; --------------------------------------------------------------


ChangePWMIntToDynCache:


#ifdef PRAM_BANK
	P1=		#PWM_ENTRY
	AX=		#PWM_ENTRY_END
	PCH=		sfx_DynFindPRG
	lcall		sfx_DynFindPRG
	if NZ jmp	@chpwmi_label_1757

	rets
@chpwmi_label_1757:
	PCH=		sfx_DynBooking
	lcall		sfx_DynBooking
	if ZR jmp	@chpwmi_label_1758

	rets
@chpwmi_label_1758:
	PCH=		sfx_DynCache
	lcall		sfx_DynCache


	; P0 is point to entry

	set             io[STATUS].b13
	I1=		PCMY
	
	CX=		DSP_VECT_SUPPORT - 2
@cpitm_loop_1836:
	AR=		io[IntVect]                      ;
	rm[I1++]=	AR                           ;	; Int5~0
	AR=		PCB
	rm[I1++]=	AR                           ;	; Int5~0 PCB
	loop            @cpitm_loop_1836


	AR=		P0
	AR++
	rm[I1++]=	AR
	AR=		P0.hh
	rm[I1++]=	AR

	clr		io[STATUS].b13

	
	; ~~ write new vector table

	set             io[STATUS].b13
	I1=		PCMY

	CX=		DSP_VECT_SUPPORT - 1
@cpitm_loop_1837:
	AX=		rm[I1++]
	AR=		rm[I1++]
	PCB=		AR
	AR=		AX
	io[IntVect]=	AR
	PCB=		0
	loop		@cpitm_loop_1837

	; Dis-int-vector table access
	clr		io[STATUS].b13
	P0.hh=		0
#endif

	rets


