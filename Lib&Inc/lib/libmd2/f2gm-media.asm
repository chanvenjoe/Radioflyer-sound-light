
.code

; ~~ hardware SPI for MX25L3205D / KH25L2405D / MX25L25635E




; ~.~

#define SFCMD_READ		0x0003
#define SFCMD_WRITE_ENABLE	0x0006
#define SFCMD_WRITE_DISABLE	0x0004
#define SFCMD_READ_STATUS	0x0005
#define SFCMD_WRITE_STATUS	0x0001
#define SFCMD_SECTOR_ERASE	0x0020
#define SFCMD_PAGE_PROGRAM	0x0002
#define SFCMD_CONT_PROGRAM	0x00AD


#ifdef MD2_USE_SPI




#ifdef _SPIFLASH_STD_SF16128_

  #define SF_SPEED		0x13

#else

  #define SF_SPEED		0x10

#endif




#ifdef _SPIFLASH_STD_SF16128_

; ~.~------------------------------------------------------------
; void sfContReadStart(WORD *pAdrHL)
;
; in:
;    I1			- pAdrHL (flash address point to high address)
;
; out:
;
;
; affect registers:
;    AR, I1
;
; meaning registers:
;
;
; ---------------------------------------------------------------
sfContReadStart:
; {
	; PIN_SFLASH_CS(low);
		PIN_SFLASH_CS	clr

	; SPI_ICS = LOW;
		SPI_ICS		clr

	; SPI_DAT = SFCMD_READ | ((*(pAdrHL--) & 0x00FF) << 8);
		AR=		rm[I1--]
		xchg		AR
		AL=		SFCMD_READ
		io[SPI_DAT]=	AR

	; SPI_CTL = 2;
		AH=		SF_SPEED
		AL=		0x12
		io[SPI_CTL]=	AR

	; sfWaitSPIOK();
		call		sfWaitSPIOK

	; ADR = *(pAdrHL);
	; SPI_DAT = (ADR << 8) | (ADR >> 8);
		AR=		rm[I1]
		xchg		AR
		io[SPI_DAT]=	AR

	; SPI_CTL = 2;
		AH=		SF_SPEED
		AL=		0x12
		io[SPI_CTL]=	AR

	; sfWaitSPIOK();
		jmp		sfWaitSPIOK

	; rets
; }




macro	mSfContReadStart
	PCH=		sfContReadStart
	lcall		sfContReadStart
endm


macro	mSfContRead	count
	; SPI_CTL = count | SEND | SF_SPEED;
		AH=		SF_SPEED
		AL=		count
		io[SPI_CTL]=	AR
endm


macro	mSfContReadWord
	PCH=		sfContReadWord
	lcall		sfContReadWord
endm


macro mSfContReadStop
	set		io[PortB].b5		; ~~ SPI_CS
	AR=		io[SPI_CTL]
	set		AR.b11
	io[SPI_CTL]=	AR
endm



#endif


; ~.~------------------------------------------------------------
; WORD sfContReadWord(void)
;
; in:
;    none
;
; out:
;    AR
;
; affect registers:
;    AR
;
; affect RAM:
;
;
; meaning registers:
;
;
; ---------------------------------------------------------------
sfContReadWord:
; {
#ifdef _SPIFLASH_STD_SF16128_

	mSfContRead		0x22

#else

	mSfContRead		2

#endif

	; sfWaitSPIOK();
		call		sfWaitSPIOK

	; return SPI_DAT;
		AR=		io[SPI_DAT]
		rets
; }



; ~.~-----------------------------------------------------------
; sfWaitSPIOK(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;    none
;
; meaning registers:
;    none
;
; special request:
;    none
;
; -------------------------------------------------------------
sfWaitSPIOK:
; {
	; while(!SPI_CTL.DATOK);
	@swso_loop_0954:
		AR=		io[SPI_CTL]
		test		AR.b7
		if ZR jmp	@swso_loop_0954

#ifdef _SPIFLASH_STD_SF16128_


#else
	; SPI_CTL.CLR = 1;
		set		io[SPI_CTL].b6
	; SPI_CTL.CLR = 0;
		clr		io[SPI_CTL].b6
#endif

	rets
; }



#endif




#ifdef MD2_USE_PROM


macro	mSfContReadStart
	AR=		rm[I1--]
	P1=		rm[I1]
	sra		AR, 1
	src		P1, 1
	P1.hh=		AR
endm


macro	mSfContReadWord
	AR=		pm[P1++]
endm


macro mSfContReadStop
	P1.hh=		0
endm



#endif

















