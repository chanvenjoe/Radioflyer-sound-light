;;******************************************************************************
;;******************************************************************************
;;//      COMMON I/O
;;******************************************************************************
;;******************************************************************************
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
DACR		EQU	17H	;Audio R Channel
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
IOP_PA_4MA	EQU	0EH	;PortA Drive Current 4mA Enable
IOP_PB_4MA	EQU	0FH	;
IOP_PCI_4MA	EQU	10H	;
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
ENC_DAT	EQU	54H	;
SPI_CTL		EQU	55H	;SPI Control Register
SPI_DAT		EQU	56H	;SPI Data Value
EP		EQU	5EH	;
SSC		EQU	63H	;

;;******************************************************************************
;;#Define		Optimal_RM	;Optimal RAM function Enable
;;******************************************************************************
;;******************************************************************************
VarRM[0:127] = {
	RAM0
	RAM1
	;;-------------------------------;;For Scankey
	Key_Flag
	Key_Buf
	DebounceTime
	KeyFlagL
	KeyFlagM
	Play_KeyL
	;;-------------------------------;;For Time
	Time_Ms
}
VarRM[128:511] = {

}
VarRM[512:4095] = {
ReAllocate#3008
	StackBuffer[64]			;;¶ÑÕ»»º´æÇø
}
ShareVar = {
}
;;******************************************************************************
;;******************************************************************************