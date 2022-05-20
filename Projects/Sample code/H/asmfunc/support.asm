

; ~~ assembly function in C form...

; ---------------------------------------------

GetKey:

#ifdef _MSPEECHDSP_
	AR=		io[PortCI]
	xchg		AR
	AR=		AR & 0x0F
	
	test		io[PortB].b4
	if ZR jmp	@getkey_label_1502
	set		AR.b3
@getkey_label_1502:

	test		io[PortA].b0
	if ZR jmp	@getkey_label_1502_1
	set		AR.b4
@getkey_label_1502_1:
	
#endif


#ifdef _MSPEECHDSP2_
	AR=		io[PortA]
	AR=		AR & 0x0F
#endif

	
	AX=		AR
	rets

; ---------------------------------------------

isWideBandFilterOn:
	test		io[MISC].b8
	if ZR jmp	@iwbf_label_1725
	AX=		1
	rets
@iwbf_label_1725:
	AX=		0
	rets










