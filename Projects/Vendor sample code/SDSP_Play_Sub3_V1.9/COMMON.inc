;;******************************************************************************
;;******************************************************************************
;;	COMMON I/O
;;******************************************************************************
;;******************************************************************************
#ifdef		_MFDSP_		//FDSP 801/064/032/900B
STATUS		EQU	00H	;R/W, BIT0: Zero.
				;R/W, BIT1: Carry.
				;R/W, BIT2: Overflow.
				;R/W, BIT3: Negative.
				;R/W, BIT7: Global Interrupt Enable.
				;R/W, BIT[12:8]: SD_EN, TRA_EN, ADH_EN, SPIS_EN, SPIM_EN.
				;R/W, BIT13: Interrupt Vector Table Access Enable.
				;R/W, BIT14: Filter Buffer Available.
				;R/W, BIT15: Parser Buffer Available.

INTENA		EQU	01H	;R/W, Int Enable.
INTREQ		EQU	02H	;R/W, Int Request.
Intvect		EQU	03H	;R/W, Interrupt Table
IOC_PA		EQU	04H	;R/W, PortA IO control. ('0' = input,'1' = output)
IOC_PB		EQU	05H	;R/W, PortB IO control. ('0' = input,'1' = output)
IOC_PCI		EQU	06H	;R/W, PortCI IO control. ('0' = input,'1' = output)
PortA		EQU	07H	;R/W, General input/output port.
PortB		EQU	08H	;R/W, General input/output port.
PortCI		EQU	09H	;R/W, General input/output port.
IntMask		EQU	0AH	;R/W, Int Mask.
Spis_Ctl	EQU	0BH	;R/W, SPI slaver control register.
Spis_Dat	EQU	0CH	;R/W, SPI slaver data    register.
SPI_CTL		EQU	0DH	;R/W, SPI master control register.
SPI_DAT		EQU	0EH	;R/W, SPI master data    register.
SD_CTL		EQU	0FH	;R/W, SD card interface control register.
SD_DAT		EQU	10H	;R/W, SD card interface data.
SD_RSP		EQU	11H	;R/W, SD card interface response register.
Uart_Ctl	EQU	12H
Uart_Dat	EQU	13H
Dppwm		EQU	14H
;// ------------------------------------
PUPD_PA		EQU	15H	;R/W, PortA  Pull-Up(b15~b8)/Pull-Down(b7~b0)
DACL		EQU	16H
DACR		EQU	17H
USB_CTL		EQU	18H
USB_DAT		EQU	19H
PUPD_PB		EQU	1AH	;R/W, PortB  Pull-Up(b15~b8)/Pull-Down(b7~b0)
PUPD_PC		EQU	1BH	;R/W, PortC  Pull-Up(b15~b8)/Pull-Down(b7~b0)
MISC		EQU	1CH
ClrWDT		EQU	1DH	;W, Clear Watch-dog reset.
Real_T		EQU	1DH	;R, System Real-Time Counter, base on 31.25us
IOP_IX		EQU	1EH	;W, Programming IO Port index .
IOP_DAT		EQU	1FH	;W, Programming IO Port Data .
;// Virtual Program IO Port
IOP_Timer1	EQU	00H
IOP_Timer2	EQU	01H
IOP_RTC32K	EQU	02H
IOP_PreScale	EQU	03H
IOP_FGREEN32K	EQU	04H
IOP_ODEN_PA	EQU	05H
IOP_ODEN_PB	EQU	06H
IOP_ODEN_PC	EQU	07H

IOP_TOUCH_CFG	EQU	08H
IOP_TOUCH_DAT	EQU	09H

IOP_CLK_CFG	EQU	0AH
IOP_CLK_DAT1	EQU	0BH
IOP_CLK_DAT2	EQU	0CH
IOP_PDSEL_PA	EQU	0DH	;;PortA I/O PullDown R Select ¡°1¡±= 500K, ¡°0¡± = 100K Of Related Pa Bit
IOP_PDSEL_PB	EQU	0EH	;;PortB I/O PullDown R Select ¡°1¡±= 500K, ¡°0¡± = 100K Of Related Pa Bit
IOP_PDSEL_PC	EQU	0FH	;;PortC I/O PullDown R Select ¡°1¡±= 500K, ¡°0¡± = 100K Of Related Pa Bit
IOP_WAKEN_PA	EQU	10H	;;Porta Wake Up Enable
IOP_WAKEN_PB	EQU	11H	;;Portb Wake Up Enable
IOP_WAKEN_PC	EQU	12H	;;Portc Wake Up Enable
IOP_WAKELV_PA	EQU	13H	;;Porta Wake Up Edge ¡°1¡±= Pos-Edge, ¡°0¡± = Neg-Edge Of Related Pa Bit
IOP_WAKELV_PB	EQU	14H	;;Portb Wake Up Edge ¡°1¡±= Pos-Edge, ¡°0¡± = Neg-Edge Of Related Pb Bit
IOP_WAKELV_PC	EQU	15H	;;Portc Wake Up Edge ¡°1¡±= Pos-Edge, ¡°0¡± = Neg-Edge Of Related Pc Bit
IOP_WAKEDLV_PB	EQU	16H	;;PortB Double-Edge Wake Up Enable
IOP_CUR_PWM	EQU	17H	;;PWM I/O PAD Driving Current
;// ------------------------------------
;// IO[0x40-0x7F]
ADH_CFG0	EQU	40H
ADH_CFG1	EQU	41H
ADH_CFG2	EQU	42H
ADH_CFG3	EQU	43H
ADH_DO		EQU	44H

ADL_CFG		EQU	45H

TRA_CFG		EQU	46H
TRA_DAT		EQU	47H

I2C_CTL		EQU	48H
I2C_DAT		EQU	49H
I2C_CMD		EQU	4AH
I2C_SR		EQU	4AH	; Same As I2C_Cmd

I80_CTL		EQU	4BH
I80_INX		EQU	4CH
I80_DAT		EQU	4DH
I80_RADR	EQU	4EH
I80_DMANUM	EQU	4FH

SD_DMA_CTL	EQU	50H
SD_DMA_RADR	EQU	51H
SD_DMA_DMANUM	EQU	52H

SPI_DMA_CTL	EQU	53H
SPI_DMA_RADR	EQU	54H
SPI_DMA_DMANUM	EQU	55H

USB_DMA_CTL	EQU	56H
USB_DMA_RADR	EQU	57H
USB_DMA_DMANUM	EQU	58H

SPLL		EQU	63H
MIC		EQU	64H
GREEN		EQU	65H
SLEEP		EQU	66H
SPEED		EQU	67H
PR		EQU	68H
#endif
;;******************************************************************************
#ifdef		_MSPEECHDSP_	//SF16128
STATUS		EQU	00H	;R/W, BIT0:  Zero.
				;R/W, BIT1:  Carry.
				;R/W, BIT2:  Overflow.
				;R/W, BIT3:  Negative.
				;R/W, BIT7:  Global Interrupt Enable.
				;R/W, BIT8:  SPIM_EN.
				;R/W, BIT13: Interrupt Vector Table Access Enable.
				;R/W, BIT14: Filter Buffer Available.
				;R/W, BIT15: Parser Buffer Available.

INTENA		EQU	01H	;R/W, Int Enable.
INTREQ		EQU	02H	;R/W, Int Request.
Intvect		EQU	03H	;R/W, Interrupt Table
IOC_PA		EQU	04H	;R/W, PortA IO control. ('0' = input,'1' = output)
IOC_PB		EQU	05H	;R/W, PortB IO control. ('0' = input,'1' = output)
IOC_PCI		EQU	06H	;R/W, PortCI IO control. ('0' = input,'1' = output)
PortA		EQU	07H	;R/W, General input/output port.
PortB		EQU	08H	;R/W, General input/output port.
PortCI		EQU	09H	;R/W, General input/output port.
INTMASK		EQU	0AH	;R/W, Int Mask.
;//Reserved	EQU	0BH
;//Reserved	EQU	0CH
;//Reserved	EQU	0DH
;//Reserved	EQU	0EH
;//Reserved	EQU	0FH
;//Reserved	EQU	10H
;//Reserved	EQU	11H
;//Reserved	EQU	12H
;//Reserved	EQU	13H
;//Reserved	EQU	14H
;//Reserved	EQU	15H
;// -----------------------------------
DACL		EQU	16H	;Audio L Channel
;DACR		EQU	17H	;Audio R Channel
MISC5		EQU	18H	;R/W, Miscellanea register #5
MISC4		EQU	19H	;R/W, Miscellanea register #4
MISC3		EQU	1AH	;R/W, Miscellanea register #3
MISC2		EQU	1BH	;R/W, Miscellanea register #2
MISC		EQU	1CH	;R/W, Miscellanea register #1
;// -----------------------------------
ClrWDT		EQU	1DH	;W, Clear Watch-dog reset.
Real_T		EQU	1DH	;R, System Real-Time Counter, base on 31.25us
IOP_IX		EQU	1EH	;W, Programming IO Port index .
IOP_DAT		EQU	1FH	;W, Programming IO Port Data .
;// -----------------------------------
;// Virtual Program IO Port
IOP_Timer1	EQU	00H	;
IOP_Timer2	EQU	01H	;
IOP_RTC32K	EQU	02H	;
IOP_FetchCNT	EQU	03H	;
;//Reserved	EQU	04H	;
IOP_PA_PD50K	EQU	05H	;PortA Pull Down 50K Enable
IOP_PB_PD50K	EQU	06H	;
IOP_PCI_PD50K	EQU	07H	;
IOP_PA_PD220K	EQU	08H	;PortA Pull Down 220K Enable
IOP_PB_PD220K	EQU	09H	;
IOP_PCI_PD220K	EQU	0AH	;
IOP_PA_PD1M	EQU	0BH	;PortA Pull Down 1M Enable
IOP_PB_PD1M	EQU	0CH	;
IOP_PCI_PD1M	EQU	0DH	;
IOP_PA_4MA	EQU	0EH	;PortA touch enable bit 
IOP_PB_4MA	EQU	0FH	;PortB touch enable bit 
IOP_PCI_4MA	EQU	10H	;PortC0~ PortC7 touch enable bit 
IOP_PA_WLOW	EQU	11H	;PortA WLOW Enable
IOP_PB_WLOW	EQU	12H	;
IOP_PCI_WLOW	EQU	13H	;
IOP_WAKEN_PA	EQU	14H	;PortA WAKE UP Enable
IOP_WAKEN_PB	EQU	15H	;
IOP_WAKEN_PC	EQU	16H	;
IOP_WAKELV_PA	EQU	17H	;PortA WAKE UP Edge¡°1¡±= Pos-Edge, ¡°0¡± = Neg-Edge
IOP_WAKELV_PB	EQU	18H	;
IOP_WAKELV_PC	EQU	19H	;
IOP_WAKEDLV_PB	EQU	1AH	;PortB Double-Edge WAKE UP Enable
;// -----------------------------------
;// IO[0x40-0x7F]
ENC_DAT		EQU	54H	;
SPI_CTL		EQU	55H	;SPI Control Register
SPI_DAT		EQU	56H	;SPI Data Value
EP		EQU	5EH	;
SSC		EQU	63H	;
SPEED		EQU	67H	;
#endif
;;******************************************************************************
#ifdef		_MSPEECHDSP2_	//SF16127
STATUS		EQU	00H	;R/W, BIT0:  Zero.
				;R/W, BIT1:  Carry.
				;R/W, BIT2:  Overflow.
				;R/W, BIT3:  Negative.
				;R/W, BIT7:  Global Interrupt Enable.
				;R/W, BIT8:  SPIM_EN.
				;R/W, BIT13: Interrupt Vector Table Access Enable.
				;R/W, BIT14: Filter Buffer Available.
				;R/W, BIT15: Parser Buffer Available.

INTENA		EQU	01H	;R/W, Int Enable.
INTREQ		EQU	02H	;R/W, Int Request.
Intvect		EQU	03H	;R/W, Interrupt Table
IOC_PA		EQU	04H	;R/W, PortA IO control. ('0' = input,'1' = output)
IOC_PB		EQU	05H	;R/W, PortB IO control. ('0' = input,'1' = output)
IOC_PCI		EQU	06H	;R/W, PortCI IO control. ('0' = input,'1' = output)
PortA		EQU	07H	;R/W, General input/output port.
PortB		EQU	08H	;R/W, General input/output port.
PortCI		EQU	09H	;R/W, General input/output port.
INTMASK		EQU	0AH	;R/W, Int Mask.

;// -----------------------------------
DACL		EQU	16H	;Audio L Channel
;DACR		EQU	17H	;Audio R Channel
MISC5		EQU	18H	;R/W, Miscellanea register #5
MISC4		EQU	19H	;R/W, Miscellanea register #4
MISC3		EQU	1AH	;R/W, Miscellanea register #3
;MISC2		EQU	1BH	;R/W, Miscellanea register #2
MISC		EQU	1CH	;R/W, Miscellanea register #1
;// -----------------------------------
ClrWDT		EQU	1DH	;W, Clear Watch-dog reset.
Real_T		EQU	1DH	;R, System Real-Time Counter, base on 31.25us
IOP_IX		EQU	1EH	;W, Programming IO Port index .
IOP_DAT		EQU	1FH	;W, Programming IO Port Data .
;// -----------------------------------
;// Virtual Program IO Port
IOP_Timer1	EQU	00H	;
IOP_Timer2	EQU	01H	;
IOP_RTC32K	EQU	02H	;
IOP_FetchCNT	EQU	03H	;
;//Reserved	EQU	04H	;
IOP_PA_PD50K	EQU	05H	;PortA Pull Down 50K Enable
IOP_PB_PD50K	EQU	06H	;
IOP_PCI_PD50K	EQU	07H	;
IOP_PA_PD220K	EQU	08H	;PortA Pull Down 220K Enable
IOP_PB_PD220K	EQU	09H	;
IOP_PCI_PD220K	EQU	0AH	;
IOP_PA_PD1M	EQU	0BH	;PortA Pull Down 1M Enable
IOP_PB_PD1M	EQU	0CH	;
IOP_PCI_PD1M	EQU	0DH	;
IOP_PA_TOUCH	EQU	0EH	;PortA Touch Enable
IOP_PB_TOUCH	EQU	0FH	;PortB Touch Enable 
IOP_PCI_TOUC	EQU	10H	;PortCI Touch Enable

IOP_WAKEN_PA	EQU	14H	;PortA WAKE UP Enable
IOP_WAKEN_PB	EQU	15H	;
IOP_WAKEN_PC	EQU	16H	;
IOP_WAKELV_PA	EQU	17H	;PortA WAKE UP Edge¡°1¡±= Pos-Edge, ¡°0¡± = Neg-Edge
IOP_WAKELV_PB	EQU	18H	;
IOP_WAKELV_PC	EQU	19H	;
IOP_WAKEDLV_PB	EQU	1AH	;PortB Double-Edge WAKE UP Enable

IOP_DEEP_SLEEP	EQU	1BH	;Deep Sleep Control Register 
;// -----------------------------------
;// IO[0x40-0x7F]
ENC_DAT		EQU	54H	;
SPI_CTL		EQU	55H	;SPI Control Register
SPI_DAT		EQU	56H	;SPI Data Value
EP		EQU	5EH	;
SSC		EQU	63H	;
SPEED		EQU	67H	;
#endif
;;******************************************************************************
;;******************************************************************************
;#define		Optimal_RM	;Optimal RAM function Enable
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************
;;******************************************************************************
#define		_Sram_Size_	0x0C00			;;3K Sram
#define		_BANK0_		0			;;
#define		_Stack_Size_	64			;;¶ÑÕ»»º´æÇø´óÐ¡

#define		Stack_Size_Set	_Stack_Size_-1		;;¶ÑÕ»
#define		Sram_Size_Set	_Sram_Size_-1		;;SRAM
;;******************************************************************************
;;******************************************************************************
VarRM[0:127] = {
	RAM0
	RAM1
	;;-------------------------------;;For Scankey
	Key_Flag
	Key_Buf
	DebounceTime
	Key_Value
	Key_Rel_Value
	;;-------------------------------;;For Time
	Time_Ms
	SaveFrmaeL
	SaveFrmaeH
}
VarRM[128:511] = {
	StackBuffer[_Stack_Size_]			;;¶ÑÕ»»º´æÇø
}
VarRM[512:4095] = {
}
ShareVar = {
}
;;******************************************************************************
;;******************************************************************************
