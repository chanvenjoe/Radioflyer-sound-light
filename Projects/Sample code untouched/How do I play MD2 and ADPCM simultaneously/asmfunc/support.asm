

#define ADPDEC_PRAM_START_ADR	0x0200

#define ADPDEC_BUFFER_COUNT	15


///////////////////////////////////////////////////////////////////////////////////////////////
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ADPCM_decoder:
	push		I0
	PCH=            SDSP_ADPCM_4Bit_SingleCH_decoder
        lcall           SDSP_ADPCM_4Bit_SingleCH_decoder
        AX=		0
        if NZ jmp	ADPCM_4Bit_decoder_A
        AX=		1
ADPCM_4Bit_decoder_A:
	pop		I0
	rets


; --------------------------

ClearAudioBuffer:
; {
	CX=		ADPDEC_BUFFER_COUNT
	I1=		PCMY
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
			I0=		PCMY

		; for(i = 0; i < 32; i++)
			CX=		ADPDEC_BUFFER_COUNT
		@decodech_loop_1408:
		; {
			; if(!FA())
				if FA jmp	@decodech_label_1408
			; {
				; if(ADPCM_decoder())
					push		CX
					PCH=		ADPCM_decoder
					lcall		ADPCM_decoder
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


; --------------------------------------------------


; --------------------------------------------------


; ---------------------------------------------------
; Mix mp@tinyrender to PCMY with satv
; ---------------------------------------------------

#ifdef ADPCM_USE_PRAM
__MixAll:
#else
MixAll:
#endif
	CX=		ADPDEC_BUFFER_COUNT
	I1=		rm[mp_inbuf]
	I0=		PCMY
	AR=		SATV
@Do_Satv_lp:
	AR=		rm[I0++]
	AX=		rm[I1++]
	AR=		AR + AX
	SATV=		AR

	AR=		rm[I0++]
	AX=		rm[I1--]
	AR=		AR + AX + C

	SATV=		AR
	AR=		SATV
	rm[I1++2]=	AR
	loop		@Do_Satv_lp

	AR=		rm[mp_inbuf]
	not		AR.b5
	rm[mp_inbuf]=AR
	P1.hh=		0
	rets

ADPDEC_PRAM_START_END:

; ---------------------------------------------------


#ifdef ADPCM_USE_PRAM

DecodeChannel:
	AR=		#__DecodeChannel
	P1=		#ADPDEC_PRAM_START
	P1=		AR - P1
	AR=		ADPDEC_PRAM_START_ADR
	P1=		P1 + AR
	P1.hh=		RAMBANK
	fjmp		pm[P1]


MixAll:
	AR=		#__MixAll
	P1=		#ADPDEC_PRAM_START
	P1=		AR - P1
	AR=		ADPDEC_PRAM_START_ADR
	P1=		P1 + AR
	P1.hh=		RAMBANK
	fjmp		pm[P1]

#endif

; ----------------------------------------------------

; ---------------------------------------------------

SyncNow:
; {
	AX=		rm[mp_inbuf]
	AR=		rm[mp_outbuf]
	AR=		AR ^ AX
	test		AR.b5		; ~~ long address
	if ZR jmp	@syncnow_label_1503

	AX=		1
	rets
@syncnow_label_1503:
	AX=		0
	rets
; }




; ---------------------------------------------------



ADPCM_ChX_init:

#ifdef ADPCM_USE_PRAM

	P1=		ADPDEC_PRAM_START_ADR
	P1.hh=		RAMBANK
	CX=		#ADPDEC_PRAM_START_END
	AR=		#ADPDEC_PRAM_START
	CX=		CX - AR
	P0=		#ADPDEC_PRAM_START
	jmp		@adpcm_init_label_1122
@adpcm_init_loop_1122:
	AR=		pm[P0++]
	pm[P1++]=	AR
@adpcm_init_label_1122:
	loop		@adpcm_init_loop_1122

#endif

	P1.hh=		0
	P0.hh=		0
	rets
