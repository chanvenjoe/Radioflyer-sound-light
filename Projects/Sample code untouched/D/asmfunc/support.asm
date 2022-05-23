

; ~~ assembly function in C form...

; ---------------------------------------------

; --------------------------------------------------------------

; -----------------------------------------------------------------



#define ADPDEC_BUFFER_COUNT	4


///////////////////////////////////////////////////////////////////////////////////////////////
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; --------------------------

ClearAudioBuffer:
; {
	CX=		ADPDEC_BUFFER_COUNT
	I1=		ADPCMY
	AR=		0
@clrbuf_loop_1659:
	rm[I1++]=	AR
	rm[I1++]=	AR
	loop		@clrbuf_loop_1659

	rets
; }


; ------------------------------------------------


; ADPCM structure

; typedef struct _ADPSTRU {
	; int PCMData;
	; int ADPDEC[9];
	; lptr_t adpptr;
	; int FLTI[4];
	; int FLTA;
	; int FLTP;
; }ADPSTRU;


; ------------------------------------------------

ADPCM_ChxGetBts:
; {
	push		I1
	push		AX
	push		P1
	AR=		P1.hh
	push		AR

	; LoadAR(_lptr_read(ADPCM_Tmpi->adpptr++));
		I1=		rm[ADPCM_Tmpi]
		AR=		10
		I1=		I1 + AR
		P1=		rm[I1++]	; low
		AR=		rm[I1]		; high
		P1.hh=		AR

		AX=		pm[P1++]

		AR=		P1.hh		; high
		set		AR.b11
		rm[I1--]=	AR
		rm[I1]=		P1		; low

	pop		AR
	P1.hh=		AR
	pop		P1
	AR=		AX
	pop		AX
	pop		I1
	rets
; }


; --------------------------------------------------

ADPDEC_PRAM_START:

#ifdef ADPCM_USE_PRAM
__DecodeChannel:
#else
DecodeChannel:
#endif
; {
	; if(ADPCM_Tmpi->adpptr)
		I1=		rm[ADPCM_Tmpi]
		AR=		10
		I1=		I1 + AR
		AR=		rm[I1++]
		AX=		rm[I1]
		AR=		AR | AX
		if ZR jmp	@decodech_label_1654
	; {
		; BackupFilter();
		
		#ifdef _MSPEECHDSP_
		
		#else
			MACOP=		0
		#endif
			I1=		rm[ADPCM_Tmpi]
			AR=		12
			I1=		I1 + AR
			FLTI=		rm[I1++]
			FLTI=		rm[I1++]
			FLTI=		rm[I1++]
			FLTI=		rm[I1++]
			FLTA=		rm[I1++]
			FLTP=		rm[I1]
			AR=		0x3F
			FLTG=		AR
			AR=		FLTO

		; set_I0(PCMYIN_PTR);
			I0=		ADPCMY

		; for(i = 0; i < 32; i++)
			CX=		ADPDEC_BUFFER_COUNT - 1
		@decodech_loop_1408:
		; {
			; if(!FA())
				if FA jmp	@decodech_label_1408
			; {
				; if(ADPCM_decoder())
					push		CX
					push		I0
					PCH=            SDSP_ADPCM_4Bit_SingleCH_decoder
					lcall           SDSP_ADPCM_4Bit_SingleCH_decoder
					AX=		0
					if NZ jmp	@decodech_label_1614
					AX=		1
				@decodech_label_1614:
					pop		I0
					pop		CX
					AR=		AX
					if ZR jmp	@decodech_label_1658
				; {
					; ADPCM_Tmpi->adpptr = 0;
						I1=		rm[ADPCM_Tmpi]
						AR=		10
						I1=		I1 + AR
						AR=		0
						rm[I1++]=	AR
						rm[I1++]=	AR

					; return;
						P1.hh=		0
						rets
				; }
				@decodech_label_1658:

				; FLTI = ADPCM_Tmpi->PCMData;
					I1=		rm[ADPCM_Tmpi]
					AR=		rm[I1]
					FLTI=		AR
			; }
			@decodech_label_1408:


			; MixToBuf();
				MX=		1
				AR=		FLTO
			#ifdef _MSPEECHDSP_
				MULSS
			#else
				MR=		MX * AR
			#endif
				AX=		rm[I0]
				AR=		MR0
				rm[I0++]=	AR + AX
				AX=		rm[I0]
				AR=		MR1
				rm[I0++]=	AR + AX + C
			loop		@decodech_loop_1408
		; }

		; BackupFilter();
			I1=		rm[ADPCM_Tmpi]
			AR=		12
			I1=		I1 + AR
			rm[I1++]=	FLTI
			rm[I1++]=	FLTI
			rm[I1++]=	FLTI
			rm[I1++]=	FLTI
			rm[I1++]=	FLTA

	; }
	@decodech_label_1654:

	P1.hh=		0
	rets
; }

__DecodeChannel_end:

; --------------------------------------------------
; --------------------------------------------------

ADPDEC_PRAM_START_END:

; ---------------------------------------------------


#ifdef ADPCM_USE_PRAM

DecodeChannel:

#ifdef PRAM_BANK
		P1=		#__DecodeChannel
		AX=		#__DecodeChannel_end
		PCH=		sfx_DynFindPRG
		lcall		sfx_DynFindPRG
		if NZ jmp	@decoch_label_1431
		
		fjmp		pm[P0]
	@decoch_label_1431:
		PCH=		sfx_DynBooking
		lcall		sfx_DynBooking
		if ZR jmp	@decoch_label_1432

		P0.hh=		0
		jmp		__DecodeChannel
	@decoch_label_1432:
		PCH=		sfx_DynCache
		lcall		sfx_DynCache
		fjmp		pm[P0]
#else
	jmp		__DecodeChannel
#endif


#endif

; ----------------------------------------------------


; ---------------------------------------------------

