

; ~~ IO for DSP


; ~~ --------------------------
; void ClrWatchDog(void)
;~ ClrWatchDog:
	;~ io[0x1D]=	AR
	;~ rets


; ~~ --------------------------
; void dsi(void)
;~ dsi:
	;~ clr		io[STATUS].b7
	;~ nop
	;~ rets


; ~~ --------------------------
; void eni(void)
;~ eni:
	;~ set		io[STATUS].b7
	;~ rets


; ~~ --------------------------
; int get_SATV(long value)
get_SATV:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		SATV
	AR=		rm[I1++]
	SATV=		AR
	AR=		rm[I1++]
	SATV=		AR
	AR=		SATV
	AX=		AR
	rets

#ifdef _MSPEECHDSP_

set_ADPHD:
get_ADPHD:
set_ADPDAT:
get_ADPDAT:
	AX=		0
	rets

#else


; ~~ --------------------------
; void set_ADPHD(int value)
set_ADPHD:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	ADPHD=		rm[I1]
	rets


; ~~ --------------------------
; int get_ADPHD(void)
get_ADPHD:
	AR=		ADPHD
	AX=		AR
	rets


; ~~ --------------------------
; void set_ADPDAT(int value)
set_ADPDAT:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	ADPDAT=		rm[I1]
	rets


; ~~ --------------------------
; int get_ADPDAT(void)
get_ADPDAT:
	AR=		ADPDAT
	AX=		AR
	rets

#endif



; ~~ --------------------------
; int get_ADPPCM(void)
get_FLTI:
get_ADPPCM:
	AR=		ADPPCM
	AX=		AR
	rets


; ~~ --------------------------
; int get_CBL(void)
get_CBL:
	AR=		CBL
	AX=		AR
	rets


; ~~ --------------------------
; int get_FLTO(void)
get_FLTO:
	AR=		FLTO
	AX=		AR
	rets


; ~~ --------------------------
; int get_FLTA(void)
get_FLTA:
	AR=		FLTA
	AX=		AR
	rets


; ~~ --------------------------
; int get_FLTP(void)
get_FLTP:
	AR=		FLTP
	AX=		AR
	rets

; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////

; ~~ --------------------------
; void set_UART(void)
set_UART:
	set		io[STATUS].b5
	rets

; ~~ --------------------------
; void clr_UART(void)
clr_UART:
	clr		io[STATUS].b5
	rets

; ~~ --------------------------
; void set_SPIM(void)
set_SPIM:
	set		io[STATUS].b8
	rets

; ~~ --------------------------
; void clr_SPIM(void)
clr_SPIM:
	clr		io[STATUS].b8
	rets

; ~~ --------------------------
; void set_SPIS(void)
set_SPIS:
	set		io[STATUS].b9
	rets

; ~~ --------------------------
; void clr_SPIS(void)
clr_SPIS:
	clr		io[STATUS].b9
	rets

; ~~ --------------------------
; void set_IntPrWR(void)
set_IntPrWR:
	set		io[STATUS].b11
	rets

; ~~ --------------------------
; void clr_IntPrWR(void)
clr_IntPrWR:
	clr		io[STATUS].b11
	rets

; ~~ --------------------------
; void set_IntPrWR(void)
set_SD:
	set		io[STATUS].b12
	rets

; ~~ --------------------------
; void clr_IntPrWR(void)
clr_SD:
	clr		io[STATUS].b12
	rets

; ~~ --------------------------
; void set_IntVWR(void)
set_IntVWR:
	set		io[STATUS].b13
	rets

; ~~ --------------------------
; void clr_IntVWR(void)
clr_IntVWR:
	clr		io[STATUS].b13
	rets

; ~~ --------------------------
; void set_INTENA(int value)
set_INTENA:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[INTENA]=	AR
	rets

; ~~ --------------------------
; int get_INTENA(int value)
get_INTENA:
	AR=		io[INTENA]
	AX=		AR
	rets

; ~~ --------------------------
; void set_INTREQ(int value)
set_INTREQ:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[INTREQ]	=AR
	rets

; ~~ --------------------------
; int get_INTREQ(int value)
get_INTREQ:
	AR=		io[INTREQ]
	AX=		AR
	rets

; ~~ --------------------------
; void set_IntVect(int value)
set_IntVect:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[IntVect]	=AR
	rets

; ~~ --------------------------
; int get_IntVect(int value)
get_IntVect:
	AR=		io[IntVect]
	AX=		AR
	rets


; ~~ --------------------------
; int get_IOC_PA(int value)
get_IOC_PA:
	AR=		io[IOC_PA]
	AX=		AR
	rets


; ~~ --------------------------
; int get_IOC_PB(int value)
get_IOC_PB:
	AR=		io[IOC_PB]
	AX=		AR
	rets


; ~~ --------------------------
; int get_IOC_PC(int value)
get_IOC_PC:
	AR=		io[IOC_PC]
	AX=		AR
	rets

; ~~ --------------------------
; int get_PortA(int value)
get_PortA:
	AR=		io[PortA]
	AX=		AR
	rets

; ~~ --------------------------
; int get_PortB(int value)
get_PortB:
	AR=		io[PortB]
	AX=		AR
	rets


; ~~ --------------------------
; int get_PortC(int value)
get_PortC:
	AR=		io[PortC]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SPI_CTL(int value)
set_SPI_CTL:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SPI_CTL]=	AR
	rets

; ~~ --------------------------
; int get_SPI_CTL(int value)
get_SPI_CTL:
	AR=		io[SPI_CTL]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SPI_DAT(int value)
set_SPI_DAT:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SPI_DAT]=	AR
	rets

; ~~ --------------------------
; int get_SPI_DAT(int value)
get_SPI_DAT:
	AR=		io[SPI_DAT]
	AX=		AR
	rets


; ~~ --------------------------
; void set_MISC(int value)
set_MISC:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	;~ io[0x1C]	=AR
	rets

; ~~ --------------------------
; int get_MISC(int value)
get_MISC:
	AR=		io[MISC]
	AX=		AR
	rets

; ~~ --------------------------
; int get_Real_T(int value)
get_Real_T:
	;~ AR=		io[0x1D]
	AX=		AR
	rets


; ~~ --------------------------
; int get_MACOP(void)
get_MACOP:
	AR=		MACOP
	AX=		AR
	rets


; ~~ --------------------------
; void set_INTMASK(int value)
; set_INTMASK:
	; AR=			BP
	; AR=			AR + 1		; ~~ value
	; I1=			AR
	; AR=			rm[I1]
	; io[INTMASK]=AR
	; rets

; ~~ --------------------------
; int get_INTMASK(int value)
; get_INTMASK:
	; AR=			io[INTMASK]
	; AX=			AR
	; rets

; ~~ --------------------------
; int vXCHG(int value)
vXCHG:
	AR=		BP
	AR=		AR + 1
	I1=		AR
	AR=		rm[I1]
	xchg		AR
	AX=		AR
	rets

; ~~ --------------------------
; void cpuHalt(void)
cpuHalt:
	halt


#ifdef _MFDSP_

; ~~ --------------------------
; void setSystemSpeed(int value)
set_SystemSpeed:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SPEED]=	AR
	rets


; ~~ --------------------------
; void set_SD_CTL(int value)
set_SD_CTL:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SD_CTL]=	AR
	rets

; ~~ --------------------------
; int get_SD_CTL(int value)
get_SD_CTL:
	AR=		io[SD_CTL]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SD_DAT(int value)
set_SD_DAT:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SD_DAT]=	AR
	rets

; ~~ --------------------------
; int get_SD_DAT(void)
get_SD_DAT:
	AR=		io[SD_DAT]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SD_RSP(int value)
set_SD_RSP:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SD_RSP]=	AR
	rets

; ~~ --------------------------
; int get_SD_RSP(int value)
get_SD_RSP:
	AR=		io[SD_RSP]
	AX=		AR
	rets

; ~~ --------------------------
; void set_UART_CTL(int value)
set_UART_CTL:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[UART_CTL]=	AR
	rets

; ~~ --------------------------
; int get_UART_CTL(int value)
get_UART_CTL:
	AR=		io[UART_CTL]
	AX=		AR
	rets

; ~~ --------------------------
; void set_UART_DAT(int value)
set_UART_DAT:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[UART_DAT]=	AR
	rets

; ~~ --------------------------
; int get_UART_DAT(int value)
get_UART_DAT:
	AR=		io[UART_DAT]
	AX=		AR
	rets


; By Tsao	20161103

; ~~ --------------------------
; void set_ADH_CFG0(int value)
set_ADH_CFG0:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[ADH_CFG0]=	AR
	rets

; ~~ --------------------------
; int get_ADH_CFG0(void)
get_ADH_CFG0:
	AR=		io[ADH_CFG0]
	AX=		AR
	rets

; ~~ --------------------------
; void set_ADH_CFG1(int value)
set_ADH_CFG1:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[ADH_CFG1]=	AR
	rets

; ~~ --------------------------
; int get_ADH_CFG1(void)
get_ADH_CFG1:
	AR=		io[ADH_CFG1]
	AX=		AR
	rets

; ~~ --------------------------
; int get_ADH_DO(void)
get_ADH_DO:
	AR=		io[ADH_DO]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SPIS_CTL(int value)
set_SPIS_CTL:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SPIS_CTL]=	AR
	rets

; ~~ --------------------------
; int get_SPIS_CTL(int value)
get_SPIS_CTL:
	AR=		io[SPIS_CTL]
	AX=		AR
	rets

; ~~ --------------------------
; void set_SPIS_DAT(int value)
set_SPIS_DAT:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SPIS_DAT]=	AR
	rets

; ~~ --------------------------
; int get_SPIS_DAT(int value)
get_SPIS_DAT:
	AR=		io[SPIS_DAT]
	AX=		AR
	rets

; ~~ --------------------------
; void set_GreenMode(int value)
set_GreenMode:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[GREEN]=	AR
	rets

; ~~ --------------------------
; void cpuStall(int value)
cpuStall:
	AR=		BP
	AR=		AR + 1		; ~~ value
	I1=		AR
	AR=		rm[I1]
	io[SLEEP]=	AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; set_SPI_DMA_CTL:
	; AR=		BP
	; AR=		AR + 1		// ~~ value
	; I1=		AR
	; AR=		rm[I1]
	; io[SPI_DMA_CTL]=	AR
	; rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

get_SPI_DMA_CTL:
	AR=		io[SPI_DMA_CTL]
	AX=		AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; set_SPI_DMA_RADR:
	; AR=		BP
	; AR=		AR + 1		// ~~ value
	; I1=		AR
	; AR=		rm[I1]
	; io[SPI_DMA_RADR]=	AR
	; rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

get_SPI_DMA_RADR:
	AR=		io[SPI_DMA_RADR]
	AX=		AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; set_SPI_DMA_DMANUM:
	; AR=		BP
	; AR=		AR + 1		// ~~ value
	; I1=		AR
	; AR=		rm[I1]
	; io[0x55]=	AR
	; rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

get_SPI_DMA_DMANUM:
	AR=		io[SPI_DMA_DMANUM]
	AX=		AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#endif

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

read_I0:
	AX=		rm[I0]
	rets

read_I0P:
	AX=		rm[I0++]
	rets

read_I0P2:
	AX=		rm[I0++2]
	rets

read_I0M:
	AX=		rm[I0--]
	rets


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
get_I0:
	AR=		I0
	AX=		AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

read_P0:
	AX=		pm[P0]
	rets

read_P0P:
	AX=		pm[P0++]
	rets

read_P0M:
	AX=		pm[P0--]
	rets


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
get_P0:
	AR=		P0
	AX=		AR
	rets

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


FA:
	AX=		1
	if FA jmp	@fa_label_1504
	AX=		0
@fa_label_1504:
	rets








