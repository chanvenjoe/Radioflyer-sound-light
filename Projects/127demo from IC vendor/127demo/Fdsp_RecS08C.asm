;----------------------------------------------------------------------------
;	TR16 play sbb3 Demo Code , TRITAN Technology Inc.
;-----------------------------------------------------------------------------
;	Remark:		PA0: play sbb3
;	Remark:		PA1: play pcm
;-----------------------------------------------------------------------------
;	Change History :
;	<Date>		<Version>	<Author>	<Description>
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------
#include        	"COMMON.inc"
#include		"General.inc"
#include		"TR16_FormatSetUp.inc"


#Define		_SPI_Rom_			1	;0：SPI  1：Rom


.CODE
; =================================================================
		ORG             0000H
RSTB_ENTRY:                                     ; System program entry
                PCH             =SYS_PROG_ENTRY
                LJMP            SYS_PROG_ENTRY
; =================================================================
                ORG             0004H
WAKEUP_ENTRY:                                   ; Wake up entry
                PCH             =WAKEUP_PROC
                LJMP            WAKEUP_PROC
; =================================================================
		ORG             0100H
		nop
		nop
SYS_PROG_ENTRY:
		pcb		=PrgBank
		pch=		Power_on_init
		lcall		Power_on_init
		ar		=0x003f
		rm[Sbb3Volum]	=ar
		rm[PCMVolum]	=ar
WAKEUP_PROC:
WAKEUP_PROC_Ok:
		nop
		Dsi
		nop
		ar		=PrgBank	;;中断向量表定义到BANK7
		pch=		SetUp_Int
		lcall		SetUp_Int
		pch=		On_PWMOrDAC
		lcall		On_PWMOrDAC	;;打开声音输出方式
		ENA		INT3
		ENA		INT2
		ENA		INT1
		ENA		INT0
		ENI

		pch=		SPIorROM_Init
		lcall		SPIorROM_Init		;;;
		ar		=0x0000
		rm[HaltTime]	=ar

; =================================================================
; ------------- Main Program Start --------------------------------
; =================================================================
main_loop:

		io[ClrWDT]	=ar
		call		SysReliabilityChk
		pch=		Key_Task
		lcall		Key_Task

		M_PCMPlay_Task
		M_Sbb3Play_Task

		pch=		Sentence_Flow
		lcall		Sentence_Flow

		ar		=rm[Sentence_Flag]
		jeq		main_loop_Halt
		ar		=rm[PauseFlag]
		jeq		main_loop_Play
main_loop_Halt:
		clr		io[PORTA].b0
		clr		io[PORTA].b1
		clr		io[PORTCI].b2
		ar		=rm[HaltTime]
		ax		=0x1000
		sf		=ar-ax
		jle		main_loop

#If		_SPI_Rom_		== 0	;;0：SPI  1：Rom
		nop
		pch=		FlashRel_powerdown
		lcall		FlashRel_powerdown
		pch=		SPI_Close
		lcall		SPI_Close
#Endif

		pch=		OFF_PWMOrDAC
		lcall		OFF_PWMOrDAC
		nop
		halt
		nop
		nop
		jmp		main_loop
main_loop_Play:
		set		io[PORTA].b0
		set		io[PORTA].b1
		set		io[PORTCI].b2
		ar		=0x0000
		rm[HaltTime]	=ar
		jmp		main_loop


SysReliabilityChk:
		ar		=rm[RAM0]
		sf		=ar-0x0007
		jnz		SysReliabilityChk
		ar		=rm[RAM1]
		sf		=ar-0x0006
		jnz		SysReliabilityChk
		rets
#include	"TR16_sysinit.asm"
#include	"TR16_key.asm"
#include	"Sentenceflow.asm"
#include	"TR16_SPI_Rom.asm"

;#If		_SPI_Rom_		== 0	;;0：SPI  1：Rom
#include	"TR16_SPI_HW.asm"
;#Endif

;;***********************************
.CODE
;		ORG		0x0B9c

Copy_To_Sram_StartAddr:

#Include		"TR16_ISR.asm"
PE_Sector:
		PE		=ar
		jmp		Wait_Ready
PP_Word:
		pm[p1++]	=ar
Wait_Ready:
		ar		=ps
		jeq		Wait_Ready
		rets

Copy_To_Sram_EndAddr:





#If		_TR16_PlaySbb3_			!= 0	;;
#include		"Sbb3_Prg\Sbb3_Play.asm"
#Endif

;#If		_TR16_PlayPCM_			!= 0	;;
;#include		"PCM_Prg\PCM_Play.asm"
;#Endif

#If		_SPI_Rom_		== 1	;;0：SPI  1：Rom
.DATA
BinTab:
		dw	"DATA\DATA.BIN"
.CODE
#Endif


