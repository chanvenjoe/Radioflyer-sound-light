
sfContReadByte:
; {
	AR=		P1.hh
	sra		AR, 1
	P1.hh=		AR
	src		P1, 1
	AR=		pm[P1]
	if NC jmp	@sfcrw_label_1736
	push		AR
	AR=		P1.hh
	slc		P1, 1
	slc		AR, 1
	P1.hh=		AR
	AR=		pm[P1++]
	pop		AR
	xchg		AR
	jmp		@sfcrw_label_1813
@sfcrw_label_1736:
	push		AR
	AR=		P1.hh
	slc		P1, 1
	slc		AR, 1
	P1.hh=		AR
	AR=		pm[P1++]
	pop		AR
@sfcrw_label_1813:
	AH=		0
	rets
; }


; ~~~~~~ no word align !!

SfContReadWord:
; {
	AR=		P1.hh
	sra		AR, 1
	P1.hh=		AR
	src		P1, 1
	AR=		pm[P1++]
	
	push		AR
	AR=		P1.hh
	slc		P1, 1
	slc		AR, 1
	P1.hh=		AR
	pop		AR
	rets
; }


; --------------------------------------------

macro	mSfContReadStart
	AR=		rm[I1--]
	P1=		rm[I1]
	P1.hh=		AR
endm


macro	mSfContReadWord
	PCH=		SfContReadWord
	lcall		SfContReadWord
endm


macro	mSfContReadByte
	PCH=		SfContReadByte
	lcall		SfContReadByte
endm


macro mSfContReadStop
	P1.hh=		0
endm



















































