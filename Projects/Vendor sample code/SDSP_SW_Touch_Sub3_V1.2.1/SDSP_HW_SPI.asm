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
;�����ַ Flash_Adr_L�ǵ�λ; Flash_Adr_H �Ǹ�λ
;CTRL�ĸ�8λ�趨��
;;B8,B9		:SPI �ж�ѡ�� 	00:Int1 01:Int2 10:Int3 11:Int5;
;;b11		:SPI �ж�ʹ��	=1��������=0�ر�;
;;B12,B13	:SPI Clock�ٶ�ѡ�� 00: 32M, 01:16M��10:8M��11:4M;
;;b14		:CPHAʱ����λ
;;b15		:CPOLʱ�Ӽ���
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
;ע������IOʱ��PB2Ϊ���룬����������
;******************************************************************************
Macro 		Set_SpiFlash_Cs
		Set 		Io[PortB].B5		;//Cs=1
Endm
Macro		Clr_SpiFlash_Cs
		Clr 		Io[PortB].B5		;//Cs=0
Endm

;******************************************************************************
/******************************************************************************
;SpiFlash�ϵ��ʼ������
;Input:	None
;Output: None
******************************************************************************/
SpiFlash_PowerOn_Int:
	Call		SpiFlash_Initial
	Call		SpiFlash_Rel_Powerdown
	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
	Call		SpiFlash_Read_ID
	Sf		= Ar - 0
	Jeq		SpiFlash_PowerOn_Int
	Sf		= Ar - 0xFF
	Jeq		SpiFlash_PowerOn_Int
	Rets

;******************************************************************************
/******************************************************************************
;��FLASH��һ��word�Ĳ���:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;Output: Ar	������ֵ
******************************************************************************/
SpiFlash_Read_WordFlow:
	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
	Call		SpiFlash_Read_LoadAdr	;;�� ����ַ
	Call		SpiFlash_Read_A_Word	;;����ֵ��Ar
	Push		Ar

	Ar		= Rm[Flash_Adr_L]
	Ar		= Ar+2			;;��ַ��2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar+0+C
	Rm[Flash_Adr_H]	= Ar

	Pop		Ar
	Rets

;******************************************************************************
/******************************************************************************
;��FLASHдһ��Word�Ĳ���:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;            ��д���ֵ    :Ax		**
;Output: None
******************************************************************************/
SpiFlash_Write_WordFlow:
	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
	Call		SpiFlash_Write_Enable	;;����дʹ��
	Call		SpiFlash_Write_LoadAdr	;;�� д��ַ
	Ar		= Ax			;;��д���ֵ��Ar **
	Call		SpiFlash_Write_A_Word	;;���д�Ķ���

	Ar		= Rm[Flash_Adr_L]
	Ar		= Ar+2			;;��ַ��2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar+0+C
	Rm[Flash_Adr_H]	= Ar
	Rets
;******************************************************************************
/******************************************************************************
;������FLASHд128Word�Ĳ���:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;            ��д���ֵ    :I0ָ��ĵ�ַ		**
;Output: None
******************************************************************************/
SpiFlash_Write_128WordFlow:
	Push		Cx
	Push		Ax

	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
	Call		SpiFlash_Write_Enable	;;����дʹ��
	Call		SpiFlash_Write_LoadAdr	;;�� д��ʼ��ַ

	Cx		= 0X007F			;;128��
SpiFlash_Write_128WordFlow_Lp:
	Ar		= rm[I0++]		;;��д���ֵ��Ar **
	Call		SpiFlash_Write_A_Word	;;���д�Ķ���
	Loop		SpiFlash_Write_128WordFlow_Lp

	Ar		= Rm[Flash_Adr_L]
	Ax		= 0X0100		;;��ַ��256
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
;�߳�Flashһ��Sector�Ĳ���:
;Input:	High Address :Flash_Adr_H
;	Low Address  :Flash_Adr_L
;Output: None
******************************************************************************/
SpiFlash_Sector_EraseFlow:
	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
	Call		SpiFlash_Write_Enable	;;����дʹ��
	Call		SpiFlash_Sector_Erase	;;���߳���ʼ��ַ���������߳�����
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