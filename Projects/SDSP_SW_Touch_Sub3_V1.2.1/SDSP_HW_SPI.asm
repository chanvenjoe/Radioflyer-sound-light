;******************************************************************************
;******************************************************************************
.CODE
;******************************************************************************
VarRM[0:127]={
}
VarRM[128:511]={
Flash_Adr_L
Flash_Adr_H
}
;******************************************************************************
;******************************************************************************
;输入地址 Flash_Adr_L是低位; Flash_Adr_H 是高位
;CTRL的高8位设定：
;;B8,B9		:SPI 中断选择 	00:Int1 01:Int2 10:Int3 11:Int5;
;;b11		:SPI 中断使能	=1，开启，=0关闭;
;;B12,B13	:SPI Clock速度选择 00: 32M, 01:16M，10:8M，11:4M;
;;b14		:CPHA时钟相位
;;b15		:CPOL时钟极性
;******************************************************************************
;#Define		Spi_Speed	0X03   		;//32M	AH=0000 0011
#Define		Spi_Speed	0X13   		;//16M	AH=0001 0011
;#Define		Spi_Speed	0X23   		;//8M	AH=0010 0011
;#Define		Spi_Speed	0X33   		;//4M	AH=0011 0011

;******************************************************************************
;SDSP SPI InterFace:
;CS		=PB5
;SCK		=PB0
;SI		=PB1
;SO		=PB2		For Input
;注意设置IO时，PB2为输入，且下拉电阻
;******************************************************************************
Macro 		Set_SpiFlash_Cs
		Set 		Io[PortB].B5		;//Cs=1
Endm
Macro		Clr_SpiFlash_Cs
		Clr 		Io[PortB].B5		;//Cs=0
Endm

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
;            待写入的值    :Ax		**
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
;            待写入的值    :I0指向的地址		**
;Output: None
******************************************************************************/
SpiFlash_Write_128WordFlow:
	Push		Cx
	Push		Ax

	Call		SpiFlash_Wait_Ready	;;等待Flash空闲
	Call		SpiFlash_Write_Enable	;;开启写使能
	Call		SpiFlash_Write_LoadAdr	;;给 写开始地址

	Cx		= 0X007F			;;128次
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
;******************************************************************************
SpiFlash_Initial:
	SET		IO[IOC_PB].B0
	SET		IO[IOC_PB].B1
	CLR		IO[IOC_PB].B2
	SET		IO[IOC_PB].B5

	CLR		IO[PORTB].B0
	CLR		IO[PORTB].B1
	CLR		IO[PORTB].B2
	Call		SpiFlash_Open
	Call		SpiFlash_Cs_Reset
	Ar		= 0X11
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Call		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Open:
	Set		Io[Status].B8		;// Enable Spi Control
	Set_SpiFlash_Cs
	Rets
SpiFlash_Close:
	Clr		Io[Status].B8		;// Enable Spi Control
	Set_SpiFlash_Cs				;// Cs=1
	Rets

;******************************************************************************
SpiFlash_Read_ID:
	;;//Command 90H Read Id
	Call		SpiFlash_Cs_Reset
	Ar		= 0X0090
	Call		SpiFlash_Write_A_Word
	Ar		= 0
	Call		SpiFlash_Write_A_Word
	Call		SpiFlash_Read_A_Word
	Set_SpiFlash_Cs
	Rets

;******************************************************************************
SpiFlash_Chip_Erase:
	;;//Command 60/C7 Write Enable
	Ar		= 0X0060
	Jmp		Spiflash_Write_1Byte_Cycle
;******************************************************************************
SpiFlash_Deep_Powerdown:
	;;//Command B9H Write Enable
	Ar		= 0X00B9
	Jmp		Spiflash_Write_1Byte_Cycle
;******************************************************************************
SpiFlash_Rel_Powerdown:
	;;//Command Abh Write Enable
	Ar		= 0X00AB
	jmp		SpiFlash_Write_1byte_Cycle
;******************************************************************************
SpiFlash_Write_Enable:
	;;//Command 06H Write Enable
	Ar		= 0X06
	jmp		SpiFlash_Write_1byte_Cycle
SpiFlash_Write_1Byte_Cycle:
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Byte
	Set_SpiFlash_Cs
	Rets

;******************************************************************************
;******************************************************************************
SpiFlash_Write_Status_Reg:
	;;//Command 01H Write Status  Reg
	Push		Ar
	Call		SpiFlash_Cs_Reset
	Ar		= 0X01
	Call		SpiFlash_Write_A_Byte
	Pop		Ar
	Call		SpiFlash_Write_A_Byte
	Set_SpiFlash_Cs
	Rets

;******************************************************************************
SpiFlash_Read_Status:
	;;//Command 05H Read Status
	Call		SpiFlash_Cs_Reset
	Ar		= 0X05
	Call		SpiFlash_Write_A_Byte
SpiFlash_Read_1byte_Cycle:
	Call		SpiFlash_Read_A_Byte
	Set_SpiFlash_Cs
	Rets

;******************************************************************************
;******************************************************************************
;******************************************************************************
;//Input:	High Address :Flash_Adr_H
;//	Low Address  :Flash_Adr_L
SpiFlash_Read_LoadAdr:
	;;//Command 03H   Read One Byte Data
	Ar		= Rm[Flash_Adr_H]
	Xchg		Ar
	Al		= 0X03
SpiFlash_Write_4byte_Cycle:
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Ar		= Rm[Flash_Adr_L]
	Xchg		Ar
	Call		SpiFlash_Write_A_Word
	Rets

;******************************************************************************
;//Input:	High Address :Flash_Adr_H
;//	Low Address  :Flash_Adr_L
SpiFlash_Write_LoadAdr:
	;;//Write 02H Command And Flash Address
	Ar		= Rm[Flash_Adr_H]
	Xchg		Ar
	Al		= 0X02
	jmp		SpiFlash_Write_4byte_Cycle

;******************************************************************************
;//Input:	High Address :Flash_Adr_H
;//	Low Address  :Flash_Adr_L
SpiFlash_Sector_Erase:
	;;//Command 20H, Sector Erase
	Ar		= Rm[Flash_Adr_H]
	Xchg		Ar
	Al		= 0X20
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Ar		= Rm[Flash_Adr_L]
	Xchg		Ar
	Call		SpiFlash_Write_A_Word
	Set_SpiFlash_Cs
	Rets

;******************************************************************************
SpiFlash_Write_A_Byte:
	Io[Spi_Dat]	= Ar
	Ar		= 0X11
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Call		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Write_A_Word:
	Io[Spi_Dat]	= Ar
	Ar		= 0X12   			;;2 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Call		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Read_A_Byte:
	Ar		= 0X21			;;1 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Call		SpiFlash_Check_Tran_Ok
	Ar		= Io[Spi_Dat]
	Ah		= 0
	Rets

;******************************************************************************
SpiFlash_Read_A_Word:
	Ar		= 0X22			;;2 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Call		SpiFlash_Check_Tran_Ok
	Ar		= Io[Spi_Dat]
	Rets

;******************************************************************************
SpiFlash_Wait_Ready:
	Io[Clrwdt]	= Ar
	Call		SpiFlash_Read_Status
	Test		Ar.B0
	Jnz		SpiFlash_Wait_Ready  	;;=1,Busy,=0,Ready
	Rets

;******************************************************************************
SpiFlash_Check_Tran_Ok:
	Ar		=Io[SPI_CTL]
	Test		Ar.B7
	Jeq		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Cs_Reset:
	Set_SpiFlash_Cs				;;//Cs=1
	Nop
	Clr_SpiFlash_Cs				;;//Cs=0
	Rets

;******************************************************************************
;******************************************************************************