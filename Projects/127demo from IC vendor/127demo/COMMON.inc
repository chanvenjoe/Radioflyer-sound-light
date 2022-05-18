
; =====================
;      COMMON I/O
; =====================

#ifdef _MFDSP_

; {

	STATUS	     EQU    00H	      ; R/W, BIT0: Zero.
				      ; R/W, BIT1: Carry.
				      ; R/W, BIT2: Overflow.
				      ; R/W, BIT3: Negative.
				      ; R/W, BIT7: Global Interrupt Enable.
				      ; R/W, BIT[12:8]: SD_EN,NH_EN,TFT_EN,TMSEN,SPI_EN.
				      ; R/W, BIT13: Interrupt Vector Table Access Enable.
				      ; R/W, BIT14: Filter Buffer Available.
				      ; R/W, BIT15: Parser Buffer Available.
	INTENA	     EQU    01H	      ; R/W, Int Enable.
	INTREQ	     EQU    02H	      ; R/W, Int Request.
	IntVect	     EQU    03H	      ; R/W, Interrupt Table
	IOC_PA	     EQU    04H	      ; R/W, PortA IO control. ('0' = input,'1' = output)
	IOC_PB	     EQU    05H	      ; R/W, PortB IO control. ('0' = input,'1' = output)
	IOC_PC	     EQU    06H	      ; R/W, PortC IO control. ('0' = input,'1' = output)
	IOC_PCI	     EQU    06H

	IOC_PD	     EQU    0CH	      ; R/W, PortD IO control. ('0' = input,'1' = output)
	PortA	     EQU    07H	      ; R/W, General input/output port.
	PortB	     EQU    08H	      ; R/W, General input/output port.
	PortC	     EQU    09H	      ; R/W, General input/output port.
	PortC2	     EQU    09H
	PortCI	     EQU    09H
	PortD	     EQU    0AH	      ; R/W, General output port.
	SPH_CTL	     EQU    0BH	      ; W,   Specical Peripheral control register.
	SPI_CTL	     EQU    0DH	      ; R/W, Serial interface control register.
	SPI_DAT	     EQU    0EH	      ; R/W, Serial interface data.
	SD_CTL	     EQU    0FH	      ; R/W, SD card interface control register.
	SD_DAT	     EQU    10H	      ; R/W, SD card interface data.
	SD_RSP	     EQU    11H	      ; R/W, SD card interface response register.
	UART_CTL     EQU    12H
	UART_DAT     EQU    13H
	DPPWM	     EQU    14H

	; ------------------------------------

	PUPD_PA	     EQU    15H
	DACL	     EQU    16H	      ;W, DAC output L Channel.
	DACR	     EQU    17H	      ;W, DAC output R Channel.
	USB_CTL	     EQU    18H
	USB_DAT	     EQU    19H
	PUPD_PB	     EQU    1AH
	PUPD_PC	     EQU    1BH
	MISC	     EQU    1CH
	ClrWDT	     EQU    1DH	      ;W, Clear Watch-dog reset.
	Real_T	     EQU    1DH	      ;R, System Real-Time Counter, base on 31.25us
	IOP_IX	     EQU    1EH	      ;W, Programming IO Port index .
	IOP_DAT	     EQU    1FH	      ;W, Programming IO Port Data .

	DPPWM2_CTL   EQU    16h
	DPPWM2_DAT   EQU    17h
	DPPWM3_CTL   EQU    34h
	DPPWM3_DAT   EQU    36h
	ADPWM_CTL    EQU    61h
	ADPWM_DAT    EQU    62h

	; ------------------------------------
	; Virtual Program IO Port

	IOP_Timer1    EQU    00H
	IOP_Timer2    EQU    01H
	IOP_RTC32K    EQU    02H
	IOP_PreScale  EQU    03H
	IOP_FGREEN32K EQU    04H
	IOP_ODEN_PA   EQU    05H
	IOP_ODEN_PB   EQU    06H
	IOP_ODEN_PC   EQU    07H

	IOP_TOUCH_CFG EQU    08H
	IOP_TOUCH_DAT EQU    09H

	IOP_CLK_CFG   EQU    0AH
	IOP_CLK_DAT1  EQU    0BH
	IOP_CLK_DAT2  EQU    0CH
	IOP_CUR_PA    EQU    0DH
	IOP_CUR_PB    EQU    0EH
	IOP_CUR_PC    EQU    0FH
	IOP_WAKEN_PA  EQU    10H
	IOP_WAKEN_PB  EQU    11H
	IOP_WAKEN_PC  EQU    12H
	IOP_WAKELV_PA EQU    13H
	IOP_WAKELV_PB EQU    14H
	IOP_WAKELV_PC EQU    15H

	; ------------------------------------
	; IO[0x40-0x7F]

	ADH_CFG0     EQU    40H
	ADH_CFG1     EQU    41H
	ADH_CFG2     EQU    42H
	ADH_CFG3     EQU    43H
	ADH_DO	     EQU    44H

	ADL_CFG	     EQU    45H

	TRA_CFG	     EQU    46H
	TRA_DAT	     EQU    47H

	I2C_CTL	     EQU    48H
	I2C_DAT	     EQU    49H
	I2C_CMD	     EQU    4AH
	I2C_SR	     EQU    4AH	    ; same as I2C_CMD

	I80_CTL	     EQU    4BH
	I80_INX	     EQU    4CH
	I80_DAT	     EQU    4DH
	I80_RADR     EQU    4EH
	I80_DMANUM   EQU    4FH

	SD_DMA_CTL    EQU   50H
	SD_DMA_RADR   EQU   51H
	SD_DMA_DMANUM EQU   52H

	SPI_DMA_CTL    EQU  53H
	SPI_DMA_RADR   EQU  54H
	SPI_DMA_DMANUM EQU  55H

	USB_DMA_CTL    EQU  56H
	USB_DMA_RADR   EQU  57H
	USB_DMA_DMANUM EQU  58H

	SPLL	       EQU  63H
	MIC	       EQU  64H
	GREEN	       EQU  65H
	SLEEP	       EQU  66H
	PR	       EQU  68H
; }

#endif




#ifdef _MSPEECHDSP_

	STATUS		EQU    00H	 ; R/W, BIT0:  Zero.
					 ; R/W, BIT1:  Carry.
					 ; R/W, BIT2:  Overflow.
					 ; R/W, BIT3:  Negative.
					 ; R/W, BIT7:  Global Interrupt Enable.
					 ; R/W, BIT8:  SPIM_EN.
					 ; R/W, BIT13: Interrupt Vector Table Access Enable.
					 ; R/W, BIT14: Filter Buffer Available.
					 ; R/W, BIT15: Parser Buffer Available.

	INTENA		EQU    01H	 ; R/W, Int Enable.
	INTREQ		EQU    02H	 ; R/W, Int Request.
	IntVect		EQU    03H	 ; R/W, Interrupt Table
	IOC_PA		EQU    04H	 ; R/W, PortA IO control. ('0' = input,'1' = output)
	IOC_PB		EQU    05H	 ; R/W, PortB IO control. ('0' = input,'1' = output)
	IOC_PC		EQU    06H	 ; R/W, PortCI IO control. ('0' = input,'1' = output)
	IOC_PCI		EQU    06H	 ; R/W, PortCI IO control. ('0' = input,'1' = output)
	PortA		EQU    07H	 ; R/W, General input/output port.
	PortB		EQU    08H	 ; R/W, General input/output port.
	PortC		EQU    09H	 ; R/W, General input/output port.
	PortCI		EQU    09H	 ; R/W, General input/output port.
	INTMASK		EQU    0AH	 ; R/W, Int Mask.
	DACL		EQU    16H
	MISC5		EQU    18H	 ; R/W, Miscellanea register #5
	MISC4		EQU    19H	 ; R/W, Miscellanea register #4
	MISC3		EQU    1AH	 ; R/W, Miscellanea register #3
	MISC2		EQU    1BH	 ; R/W, Miscellanea register #2
	MISC		EQU    1CH	 ; R/W, Miscellanea register #1
	ClrWDT		EQU    1DH	 ; W, Clear Watch-dog reset.
	Real_T		EQU    1DH	 ; R, System Real-Time Counter, base on 31.25us
	IOP_IX		EQU    1EH	 ; W, Programming IO Port index .
	IOP_DAT		EQU    1FH	 ; W, Programming IO Port Data .

	; Virtual Program IO Port
	IOP_Timer1	EQU    00H
	IOP_Timer2	EQU    01H
	IOP_RTC32K	EQU    02H
	IOP_FetchCNT	EQU    03H

	IOP_PA_PD50K	EQU    05H
	IOP_PB_PD50K	EQU    06H
	IOP_PCI_PD50K	EQU    07H
	IOP_PA_PD220K	EQU    08H
	IOP_PB_PD220K	EQU    09H
	IOP_PCI_PD220K	EQU    0AH
	IOP_PA_PD1M	EQU    0BH
	IOP_PB_PD1M	EQU    0CH
	IOP_PCI_PD1M	EQU    0DH
	IOP_PA_4MA	EQU    0EH
	IOP_PB_4MA	EQU    0FH
	IOP_PCI_4MA	EQU    10H
	IOP_PA_WLOW	EQU    11H
	IOP_PB_WLOW	EQU    12H
	IOP_PCI_WLOW	EQU    13H
	IOP_WAKEN_PA	EQU    14H
	IOP_WAKEN_PB	EQU    15H
	IOP_WAKEN_PC	EQU    16H
	IOP_WAKELV_PA	EQU    17H
	IOP_WAKELV_PB	EQU    18H
	IOP_WAKELV_PC	EQU    19H
	IOP_WAKEDLV_PB	EQU    1AH

	; IO[0x40-0x7F]
	ENC_DAT		EQU    54H
	SPI_CTL		EQU    55H
	SPI_DAT		EQU    56H
	EP		EQU    5EH
	SSC		EQU    63H
	SPEED		EQU    67H
#endif



#ifdef _MSPEECHDSP2_

	STATUS		EQU    00H	 ; R/W, BIT0:  Zero.
					 ; R/W, BIT1:  Carry.
					 ; R/W, BIT2:  Overflow.
					 ; R/W, BIT3:  Negative.
					 ; R/W, BIT7:  Global Interrupt Enable.
					 ; R/W, BIT8:  SPIM_EN.
					 ; R/W, BIT13: Interrupt Vector Table Access Enable.
					 ; R/W, BIT14: Filter Buffer Available.
					 ; R/W, BIT15: Parser Buffer Available.

	INTENA		EQU    01H	 ; R/W, Int Enable.
	INTREQ		EQU    02H	 ; R/W, Int Request.
	IntVect		EQU    03H	 ; R/W, Interrupt Table
	IOC_PA		EQU    04H	 ; R/W, PortA IO control. ('0' = input,'1' = output)
	IOC_PB		EQU    05H	 ; R/W, PortB IO control. ('0' = input,'1' = output)
	IOC_PC		EQU    06H	 ; R/W, PortCI IO control. ('0' = input,'1' = output)
	IOC_PCI		EQU    06H	 ; R/W, PortCI IO control. ('0' = input,'1' = output)
	PortA		EQU    07H	 ; R/W, General input/output port.
	PortB		EQU    08H	 ; R/W, General input/output port.
	PortC		EQU    09H	 ; R/W, General input/output port.
	PortCI		EQU    09H	 ; R/W, General input/output port.
	INTMASK		EQU    0AH	 ; R/W, Int Mask.
	DACL		EQU    16H
	MISC5		EQU    18H	 ; R/W, Miscellanea register #5
	MISC4		EQU    19H	 ; R/W, Miscellanea register #4
	MISC3		EQU    1AH	 ; R/W, Miscellanea register #3
	MISC2		EQU    1BH	 ; R/W, Miscellanea register #2
	MISC		EQU    1CH	 ; R/W, Miscellanea register #1
	ClrWDT		EQU    1DH	 ; W, Clear Watch-dog reset.
	Real_T		EQU    1DH	 ; R, System Real-Time Counter, base on 31.25us
	IOP_IX		EQU    1EH	 ; W, Programming IO Port index .
	IOP_DAT		EQU    1FH	 ; W, Programming IO Port Data .

	; Virtual Program IO Port
	IOP_Timer1	EQU    00H
	IOP_Timer2	EQU    01H
	IOP_RTC32K	EQU    02H
	IOP_FetchCNT	EQU    03H

	IOP_PA_PD50K	EQU    05H
	IOP_PB_PD50K	EQU    06H
	IOP_PCI_PD50K	EQU    07H
	IOP_PA_PD220K	EQU    08H
	IOP_PB_PD220K	EQU    09H
	IOP_PCI_PD220K	EQU    0AH
	IOP_PA_PD1M	EQU    0BH
	IOP_PB_PD1M	EQU    0CH
	IOP_PCI_PD1M	EQU    0DH
	IOP_PA_4MA	EQU    0EH
	IOP_PB_4MA	EQU    0FH
	IOP_PCI_4MA	EQU    10H
	IOP_PA_WLOW	EQU    11H
	IOP_PB_WLOW	EQU    12H
	IOP_PCI_WLOW	EQU    13H
	IOP_WAKEN_PA	EQU    14H
	IOP_WAKEN_PB	EQU    15H
	IOP_WAKEN_PC	EQU    16H
	IOP_WAKELV_PA	EQU    17H
	IOP_WAKELV_PB	EQU    18H
	IOP_WAKELV_PC	EQU    19H
	IOP_WAKEDLV_PB	EQU    1AH

	; IO[0x40-0x7F]
	ENC_DAT		EQU    54H
	SPI_CTL		EQU    55H
	SPI_DAT		EQU    56H
	EP		EQU    5EH
	SSC		EQU    63H
	SPEED		EQU    67H
#endif



//------------------------------------                                                                     
;#define         Optimal_RM                      ; Optimal RAM function Enable
                                                                
VarRM[0:127]    ={                               
RAM0,RAM1
Filter_GainNum
FlashAddrH
FlashAddrL
RomNumMax
SPINumMax
SentenceNumMax
SPIorRomFlag




SleepStatus




Sbb3Volum
Sbb3_Flag
Sbb3_Step
Sbb3_Num


PCMVolum
PCM_Flag
PCM_Step
PCM_Num




KeyTime
KeyNew
KeyOld
KeyNum
KeyFlag
HaltTime


SentenceNum
SentenceLoop

PauseFlag
MuteFlag


Sentence_Flag
Sentence_PT
Sentence_Time
Sentence_Loop
SentenceLoop_PT
RecIROK
RecCode
RecIRFlag
RecIRTime

}                                                               
                                                                
VarRM[128:511]  ={                               

}                                                               
                                                                
VarRM[512:4095]={ 
ReAllocate#3008
StackBuffer[64]					;;¶ÑÕ»»º´æÇø   
}                                                               
                                                                
ShareVar        ={                               
                                                                
}                                                               
                    



