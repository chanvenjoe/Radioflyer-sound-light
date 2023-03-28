;-----------------------------------------------------------------------------
VarRM[0:127] = {
	Flash_Adr_L
	Flash_Adr_H
}
VarRM[128:511] = {
}
;-----------------------------------------------------------------------------
;输入地址:	Flash_Adr_L是低位
;		Flash_Adr_H是高位
;-----------------------------------------------------------------------------
;Fdsp Spi Interface:
;CS	=PA0
;SCK	=PA1
;SI	=PA2
;SO	=PA3
;-----------------------------------------------------------------------------
;Dsp Type1 Spi Interface:
;CS	=PA3
;SCK	=PA2
;SI	=PA1
;SO	=PA0
;-----------------------------------------------------------------------------
;SFDSP  Spi Interface:
;CS	=PB5
;SCK	=PB0
;SI	=PB1
;SO	=PB2
;-----------------------------------------------------------------------------
;Use Spi Interface:
;CS	=PA0
;SCK	=PA1
;SI	=PA2
;SO	=PA2
;-----------------------------------------------------------------------------
#ifdef		_MFDSP_		;//FDSP 801/064/032/900B
	#define		FDSP_INTERF	;;FDSP默认Spi接口:/032/064/900/801/
#endif
#ifdef		_MSPEECHDSP_		;//SF16 128
	#define		SFDSP_INTERF	;;SFDSP默认Spi接口:/128/127/256/512/
#endif
#ifdef		_MSPEECHDSP2_		;// SF16 127 / 256 / 512
	#define		SFDSP_INTERF	;;SFDSP默认Spi接口:/128/127/256/512/
#endif
;	#define		DSP_INTERF	;;DSP默认Spi接口:/101/103/161/188/
;	#define		USE_INTERF	;;用户自定义Spi接口

/****************************************
 		Fdsp_Interf
****************************************/
#ifdef	Fdsp_Interf

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PA].B0
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortA].B0
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PA].B1
	Endm
Macro	Spi_Sclk		Inst
	Inst		Io[PortA].B1
	Endm

Macro	Spi_Si_Ctrl	Inst		;SI
	Inst		Io[Ioc_PA].B2
	Endm
Macro	Spi_Si		Inst
	Inst		Io[PortA].B2
	Endm

Macro	Spi_So_Ctrl	Inst		;SO
	Inst		Io[Ioc_PA].B3
	Endm
Macro	Spi_So		Inst
	Inst		Io[PortA].B3
	Endm
#endif

/****************************************
 		Sfdsp_Interf
****************************************/
#ifdef	Sfdsp_Interf

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PB].B5
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortB].B5
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PB].B0
	Endm
Macro	Spi_Sclk		Inst
	Inst		Io[PortB].B0
	Endm

Macro	Spi_Si_Ctrl	Inst		;SI
	Inst		Io[Ioc_PB].B1
	Endm
Macro	Spi_Si		Inst
	Inst		Io[PortB].B1
	Endm

Macro	Spi_So_Ctrl	Inst		;SO
	Inst		Io[Ioc_PB].B2
	Endm
Macro	Spi_So		Inst
	Inst		Io[PortB].B2
	Endm
#endif

/****************************************
 		Dsp_Interf
****************************************/
#ifdef	Dsp_Interf

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PA].B3
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortA].B3
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PA].B2
	Endm
Macro	Spi_Sclk		Inst
	Inst		Io[PortA].B2
	Endm

Macro	Spi_Si_Ctrl	Inst		;SI
	Inst		Io[Ioc_PA].B1
	Endm
Macro	Spi_Si		Inst
	Inst		Io[PortA].B1
	Endm

Macro	Spi_So_Ctrl	Inst		;SO
	Inst		Io[Ioc_PA].B0
	Endm
Macro	Spi_So		Inst
	Inst		Io[PortA].B0
	Endm
#endif

/****************************************
		Use_Interf
****************************************/
#ifdef	Use_Interf

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PA].B0
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortA].B0
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PA].B1
	Endm
Macro	Spi_Sclk		Inst
	Inst		Io[PortA].B1
	Endm

Macro	Spi_Si_Ctrl	Inst		;SI
	Inst		Io[Ioc_PA].B2
	Endm
Macro	Spi_Si		Inst
	Inst		Io[PortA].B2
	Endm

Macro	Spi_So_Ctrl	Inst		;SO
	Inst		Io[Ioc_PA].B2
	Endm
Macro	Spi_So		Inst
	Inst		Io[PortA].B2
	Endm
#endif

;;***************************************************************
;;***************************************************************
Macro	Adr_H_Output
	Ar		= Rm[Flash_Adr_H]	;;Flash_Adr_H传输H地址
	Endm
Macro	Adr_L_Output
;	Ar		= Ax			;;Ax传输L地址
	Ar		= Rm[Flash_Adr_L]	;;Flash_Adr_L传输L地址
	Endm
;;***************************************************************
;;***************************************************************
;******************************************************************************
/******************************************************************************
;SpiFlash上电初始化函数
;Input:	None
;Output: None
******************************************************************************/
SpiFlash_PowerOn_Int:
	Call		SpiFlash_Initial
	Call		SpiFlash_Rel_Powerdown
	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Read_ID
	Sf		= Ar - 0
	Jeq		SpiFlash_PowerOn_Int
	Sf		= Ar - 0xFF
	Jeq		SpiFlash_PowerOn_Int
	Rets

;******************************************************************************
/******************************************************************************
;从FLASH读一个word的步骤:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;Output: Ar	读出的值
******************************************************************************/
SpiFlash_Read_WordFlow:
	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Read_LoadAdr	;;给 读地址
	Call		SpiFlash_Read_A_Word	;;读出值到Ar
	Push		Ar

	Ar		= Rm[Flash_Adr_L]
	Ar		= Ar+2			;;地址加2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar+0+C
	Rm[Flash_Adr_H]	= Ar

	Pop		Ar
	Rets

;******************************************************************************
/******************************************************************************
;给FLASH写一个Word的步骤:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;            待写入的值    :Ax
;Output: None
******************************************************************************/
SpiFlash_Write_WordFlow:
	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Write_Enable	;;开启写使能
	Call		SpiFlash_Write_LoadAdr	;;给 写地址
	Ar		= Ax			;;待写入的值给Ar **
	Call		SpiFlash_Write_A_Word	;;完成写的动作

	Ar		= Rm[Flash_Adr_L]
	Ar		= Ar+2			;;地址加2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar+0+C
	Rm[Flash_Adr_H]	= Ar
	Rets
;******************************************************************************
/******************************************************************************
;连续给FLASH写128Word的步骤:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;            待写入的值    :I0指向的地址
;Output: None
******************************************************************************/
SpiFlash_Write_128WordFlow:
	Push		Cx
	Push		Ax

	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Write_Enable	;;开启写使能
	Call		SpiFlash_Write_LoadAdr	;;给 写开始地址

	Cx		= 0X007F		;;128次
SpiFlash_Write_128WordFlow_Lp:
	Ar		= rm[I0++]		;;待写入的值给Ar **
	Call		SpiFlash_Write_A_Word	;;完成写的动作
	Loop		SpiFlash_Write_128WordFlow_Lp

	Ar		= Rm[Flash_Adr_L]
	Ax		= 0X0100		;;地址加256
	Ar		= Ar+Ax
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar+0+C
	Rm[Flash_Adr_H]	= Ar

	Pop		Ax
	Pop		Cx
	Rets
;******************************************************************************
/******************************************************************************
;檫除Flash一个Sector的步骤:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;Output: None
******************************************************************************/
SpiFlash_Sector_EraseFlow:
	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Write_Enable	;;开启写使能
	Call		SpiFlash_Sector_Erase	;;给檫除开始地址，并启动檫除动作
	Rets

;******************************************************************************
;******************************************************************************
SpiFlash_Chip_EraseFlow:
	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Write_Enable	;;开启写使能
	Call		SpiFlash_Chip_Erase	;;檫除整块芯片
	Rets

;******************************************************************************
;******************************************************************************
;******************************************************************************
;******************************************************************************
SpiFlash_Initial:
	Clr		Io[Status].B8
	Spi_Cs_Ctrl	Set
	Spi_Sclk_Ctrl	Set
	Spi_Si_Ctrl	Set
	Spi_So_Ctrl	Clr

	Spi_Cs		Set					;;CS=1
	Spi_Sclk	Clr
	Spi_Si		Clr
	Rets

;;***************************************************************
SpiFlash_Wait_Ready:
	Io[Clrwdt]	= Ar
	Call		SpiFlash_Read_Status
	Test		Ar.B0
	Jnz		SpiFlash_Wait_Ready			;1=Busy;0=Ready
	Rets

;;***************************************************************
SpiFlash_Cs_Reset:
	Spi_Cs		Set					;//Cs=1
	Spi_Sclk	Clr					;//Sclk=0
	Spi_Cs		Clr					;//Cs=0
	Rets

;;***************************************************************
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
SpiFlash_Read_LoadAdr:
	;//Command 03H	Read One Byte Data
	Adr_H_OutPut						;;Add
	Xchg		Ar
	Al		= 0X03
SpiFlash_Write_4byte_Cycle:
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Adr_L_OutPut						;;Add
	Xchg		Ar
	Call		SpiFlash_Write_A_Word
	Rets

;;***************************************************************
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
SpiFlash_Write_LoadAdr:
	;//Program A Byte
	;//Write 02H Command And Flash Address
	Adr_H_OutPut						;;Add
	Xchg		Ar
	Al		= 0x02
	jmp		SpiFlash_Write_4byte_Cycle

;;***************************************************************
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
SpiFlash_Sector_Erase:
	;//Command 20H,Add1,Add2,Add3 Sector Erase
	Adr_H_OutPut						;;Add
	Xchg		Ar
	Al		= 0x20
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Adr_L_OutPut						;;Add
	Xchg		Ar
	Call		SpiFlash_Write_A_Word
	Spi_Cs		Set					;;//Cs=1
	Rets

;;***************************************************************
SpiFlash_Chip_Erase:
	;;//Command Command 60 or C7 Chip Erase
	Ar		= 0X0060
SpiFlash_Write_1Byte_Cycle:
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Byte
	Spi_Cs		Set					;;//Cs=1
	Rets

;;***************************************************************
SpiFlash_Deep_Powerdown:
	;;//Command B9H Write Enable
	Ar		= 0x00B9
	Jmp		Spiflash_Write_1Byte_Cycle

;;***************************************************************
SpiFlash_Rel_Powerdown:
	;//Command Abh Write Enable
	Ar		= 0x00AB
	Jmp		SpiFlash_Write_1byte_Cycle
;;***************************************************************
SpiFlash_Write_Enable:
	;//Command 06H Write Enable
	Ar		= 0x06
	Jmp		SpiFlash_Write_1byte_Cycle
;;***************************************************************
SpiFlash_Write_Status_Reg:
	;//Command 01H Write Status  Reg
	Push		Ar
	Call		Spiflash_Cs_Reset
	Ar		= 0x01
	Call		Spiflash_Write_A_Byte
	Pop		Ar
	Call		Spiflash_Write_A_Byte
	Spi_Cs		Set					;//Cs=1
	Rets

;;***************************************************************
SpiFlash_Read_Status:
	;;//Command 05H Read Status
	Call		SpiFlash_Cs_Reset
	Ar		= 0x05
	Call		SpiFlash_Write_A_Byte
SpiFlash_Read_1byte_Cmd:
	Call		SpiFlash_Read_A_Byte
	Spi_Cs		Set					;;//Cs=1
	Rets

;;***************************************************************
SpiFlash_Read_ID:
	;;//Command 90H Read Id
	Call		SpiFlash_Cs_Reset
	Ar		= 0x0090
	Call		SpiFlash_Write_A_Word
	Ar		= 0
	Call		SpiFlash_Write_A_Word
	Call		SpiFlash_Read_A_Word
	Spi_Cs		Set					;;//Cs=1
	Rets

;;***************************************************************
SpiFlash_Write_A_Byte:
	Spi_Si_Ctrl	Set
	Push		Cx
	Cx		= 0x07
	Xchg		Ar
SpiFlash_Write_Data_Lp:
	Slc		Ar
	Jac		Write_Data_High
Write_Data_Low:
	Spi_Si		Clr					;;//Si=0
	Jmp		SpiFlash_Write_Data_Next
Write_Data_High:
	Spi_Si		Set					;;//Si=1
SpiFlash_Write_Data_Next:
	Spi_Sclk	Set					;;//Sclk=1
	Spi_Sclk	Clr					;;//Sclk=0
	Loop		SpiFlash_Write_Data_Lp
	Pop		Cx
	Rets

;;***************************************************************
SpiFlash_Write_A_Word:
	Spi_Si_Ctrl	Set
	Push		Cx
	Cx		= 0x0F
	Xchg		Ar
	jmp		SpiFlash_Write_Data_Lp
;;***************************************************************
SpiFlash_Read_A_Byte:
	Spi_So_Ctrl	Clr					;;//

	Push		Cx
	Cx		= 7
	Ar		= 0
SpiFlash_Read_A_Byte_Lp:
	Spi_Sclk	Set					;;//Sclk=1
	Spi_So		Test					;;//So
	Jnz		Read_Data_High
Read_Data_Low:
	Clr		C
	Jmp		Save_Out_Bit
Read_Data_High:
	Set		C
Save_Out_Bit:
	Slc		Ar
	Spi_Sclk	Clr					;;//Sclk=0
	Loop		SpiFlash_Read_A_Byte_Lp
	Pop		Cx
	Rets
;;***************************************************************
SpiFlash_Read_A_Word:
	Spi_So_Ctrl	Clr					;;//
	Push		Cx
	Cx		= 0x0F
	Ar		= 0
SpiFlash_Read_A_Word_Lp:
	Spi_Sclk	Set					;//Sclk=1
	Spi_So		Test					;//So
	Jnz		Read_Data_High1
Read_Data_Low1:
	Clr		C
	Jmp		Save_Out_Bit1
Read_Data_High1:
	Set		C
Save_Out_Bit1:
	Slc		Ar
	Spi_Sclk	Clr					;//Sclk=0
	Loop		SpiFlash_Read_A_Word_Lp
	Pop		Cx
	Xchg		Ar
	Rets
;;***************************************************************