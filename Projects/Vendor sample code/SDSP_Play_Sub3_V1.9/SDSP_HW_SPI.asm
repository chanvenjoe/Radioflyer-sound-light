;******************************************************************************
;******************************************************************************
.CODE
;******************************************************************************
VarRM[0:127] = {
	Flash_Adr_L
	Flash_Adr_H
}
VarRM[128:511] = {
}
;;***************************************************************
;;***************************************************************
;�����ַ:	Flash_Adr_L�ǵ�λ
;		Flash_Adr_H�Ǹ�λ
;;***************************************************************
;;***************************************************************
;Fdsp Spi Interface:
;CS	=PA0
;SCK	=PA1
;SI	=PA2
;SO	=PA3
;;-----------------------------------------------------------;;
;Dsp Type1 Spi Interface:
;CS	=PA3
;SCK	=PA2
;SI	=PA1
;SO	=PA0
;;-----------------------------------------------------------;;
;SFDSP  Spi Interface:
;CS	=PB5
;SCK	=PB0
;SI	=PB1
;SO	=PB2
;;***************************************************************
;;***************************************************************
#ifdef		_MFDSP_		;//FDSP 801/064/032/900B
	#Define		Fdsp_Interf	;;FDSPĬ��Spi�ӿ�:/032/064/900/801/
#Endif
#ifdef		_MSPEECHDSP_		;//SF16 128
	#Define		Sfdsp_Interf	;;SFDSPĬ��Spi�ӿ�:/128/127/256/512/
#Endif
#ifdef		_MSPEECHDSP2_		;// SF16 127 / 256 / 512
	#Define		Sfdsp_Interf	;;SFDSPĬ��Spi�ӿ�:/128/127/256/512/
#endif
;	#Define		DSP_INTERF	;;DSPĬ��Spi�ӿ�:/101/103/161/188/

/****************************************
 		Fdsp_Interf
****************************************/
#Ifdef	Fdsp_Interf

;*****************************************
;;ѡ��SPI clock�ٶ�
;#define	SPI_Speed	0x00		;//32M
#define		SPI_Speed	0x10		;//16M
;#define	SPI_Speed	0x20		;//13M
;#define	SPI_Speed	0x30		;//11M
;#define	SPI_Speed	0x40		;//8M
;#define	SPI_Speed	0x50		;//4M
;*****************************************
Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PA].B0
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortA].B0
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PA].B1
	Endm
Macro	Spi_Sclk	Inst
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

Macro	Spi_Ctl_Reset
	Set		Io[Spi_Ctl].B6
	Clr		Io[Spi_Ctl].B6
	Endm
Macro	Spi_Ctl_Send
	Clr		Io[Spi_Ctl].B4		;;//Send
	Endm
Macro	Spi_Ctl_Receive
	Clr		Io[Spi_Ctl].B5		;;//Receive
	Endm
#Endif

/*****************************************
 		Sfdsp_Interf
*****************************************/
#Ifdef	Sfdsp_Interf
;*****************************************
;CTRL�ĸ�8λ�趨��
;;B8,B9	:SPI �ж�ѡ��	00:Int1 01:Int2 10:Int3 11:Int5;
;;b11	:SPI �ж�ʹ��	=1��������=0�ر�;
;;B12,B13	:SPI Clock�ٶ�ѡ�� 00: 32M, 01:16M��10:8M��11:4M;
;;b14	:CPHAʱ����λ
;;b15	:CPOLʱ�Ӽ���
;*****************************************
;#define	Spi_Speed	0x03		;//32M	AH=0000 0011
#define	Spi_Speed	0x13		;//16M	AH=0001 0011
;#define	Spi_Speed	0x23		;//8M	AH=0010 0011
;#define	Spi_Speed	0x33		;//4M	AH=0011 0011
;*****************************************

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PB].B5
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortB].B5
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PB].B0
	Endm
Macro	Spi_Sclk	Inst
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

Macro	Spi_Ctl_Reset
	Nop
	Endm
Macro	Spi_Ctl_Send
	Nop
	Endm
Macro	Spi_Ctl_Receive
	Nop
	Endm
#endif

/****************************************
		Dsp_Interf
****************************************/
#Ifdef	Dsp_Interf

;*****************************************
;;ѡ��SPI clock�ٶ�
;#define	SPI_Speed	0x00		;//32M
;#define	SPI_Speed	0x10		;//16M
#define	SPI_Speed	0x20		;//13M
;#define	SPI_Speed	0x30		;//11M
;#define	SPI_Speed	0x40		;//8M
;#define	SPI_Speed	0x50		;//4M
;*****************************************

Macro	Spi_Cs_Ctrl	Inst		;CS
	Inst		Io[Ioc_PA].B3
	Endm
Macro	Spi_Cs		Inst
	Inst		Io[PortA].B3
	Endm

Macro	Spi_Sclk_Ctrl	Inst		;CLK
	Inst		Io[Ioc_PA].B2
	Endm
Macro	Spi_Sclk	Inst
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

Macro	Spi_Ctl_Reset
	Set		Io[Spi_Ctl].B6
	Clr		Io[Spi_Ctl].B6
	Endm
Macro	Spi_Ctl_Send
	Clr		Io[Spi_Ctl].B4		;;//Send
	Endm
Macro	Spi_Ctl_Receive
	Clr		Io[Spi_Ctl].B5		;;//Receive
	Endm
#Endif

;******************************************************************************
/******************************************************************************
;SpiFlash�ϵ��ʼ������
;Input:	None
;Output: None
******************************************************************************/
SpiFlash_PowerOn_Int:
	Call		SpiFlash_Initial
	Call		SpiFlash_Frist_Data
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
	Ar		= Ar + 2		;;��ַ��2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar + 0 + C
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
	Ar		= Ar + 2		;;��ַ��2
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar + 0 + C
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

	Cx		= 0x007F			;;128��
SpiFlash_Write_128WordFlow_Lp:
	Ar		= rm[I0++]		;;��д���ֵ��Ar **
	Call		SpiFlash_Write_A_Word	;;���д�Ķ���
	Loop		SpiFlash_Write_128WordFlow_Lp

	Ar		= Rm[Flash_Adr_L]
	Ax		= 0x0100		;;��ַ��256
	Ar		= Ar + Ax
	Rm[Flash_Adr_L]	= Ar
	Ar		= Rm[Flash_Adr_H]
	Ar		= Ar + 0 + C
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
;SpiFlash_Sector_EraseFlow:
;	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
;	Call		SpiFlash_Write_Enable	;;����дʹ��
;	Call		SpiFlash_Sector_Erase	;;���߳���ʼ��ַ���������߳�����
;	Rets
;******************************************************************************
;******************************************************************************
;SpiFlash_Chip_EraseFlow:
;	Call		SpiFlash_Wait_Ready	;;�ȴ�Flash����
;	Call		SpiFlash_Write_Enable	;;����дʹ��
;	Call		SpiFlash_Chip_Erase	;;�߳�����оƬ
;	Rets
;******************************************************************************
;******************************************************************************
;******************************************************************************
SpiFlash_Initial:
	Spi_Cs_Ctrl	Set
	Spi_Sclk_Ctrl	Set
	Spi_Si_Ctrl	Set
	Spi_So_Ctrl	Clr

	Spi_Cs		Set
	Spi_Sclk	Clr
	Spi_Si		Clr
	Spi_So		Clr

#Ifdef	Fdsp_Interf
	Ar		= Io[Pupd_PA]
	Set		Ar.B3			;;PA3.SO �������������
	Clr		Ar.B11
	Io[Pupd_PA]	= Ar
#Endif
	Call		SpiFlash_Open
	Rets

;******************************************************************************
SpiFlash_Open:
	Set		Io[Status].B8		;// Enable Spi Control
	Spi_Cs		Set
	Rets

SpiFlash_Close:
	Clr		Io[Status].B8		;// Enable Spi Control
	Spi_Cs		Set			;// Cs=1
	Rets

Spiflash_Cs_Set:
	Spi_Cs		Set			;// Cs=1
	Rets
;******************************************************************************
SpiFlash_Read_ID:
	;;//Command 90H Read Id
	Call		SpiFlash_Cs_Reset
	Ar		= 0x0090
	Call		SpiFlash_Write_A_Word
	Ar		= 0
	Call		SpiFlash_Write_A_Word
	Call		SpiFlash_Read_A_Word
	Spi_Cs		Set
	Rets

;******************************************************************************
SpiFlash_Chip_Erase:
	;;//Command 60/C7 Write Enable
	Ar		= 0x0060
	Jmp		Spiflash_Write_1Byte_Cycle
;******************************************************************************
SpiFlash_Deep_Powerdown:
	;;//Command B9H Write Enable
	Ar		= 0x00B9
	Jmp		Spiflash_Write_1Byte_Cycle
;******************************************************************************
SpiFlash_Rel_Powerdown:
	;;//Command Abh Write Enable
	Ar		= 0x00AB
	jmp		SpiFlash_Write_1byte_Cycle
;******************************************************************************
SpiFlash_Write_Enable:
	;;//Command 06H Write Enable
	Ar		= 0x06
	jmp		SpiFlash_Write_1byte_Cycle
SpiFlash_Write_1Byte_Cycle:
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Byte
	Spi_Cs		Set
	Rets

;******************************************************************************
SpiFlash_Write_1Word_Cycle:

	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Spi_Cs		Set
	Rets

;******************************************************************************
;******************************************************************************
SpiFlash_Write_Status_Reg:
	;;//Command 01H Write Status  Reg
	Push		Ar
	Call		SpiFlash_Cs_Reset
	Ar		= 0x01
	Call		SpiFlash_Write_A_Byte
	Pop		Ar
	Call		SpiFlash_Write_A_Byte
	Spi_Cs		Set
	Rets

;******************************************************************************
SpiFlash_Read_Status:

	;;//Command 05H Read Status
	Call		SpiFlash_Cs_Reset
	Ar		= 0x05
	Call		SpiFlash_Write_A_Byte
SpiFlash_Read_1byte_Cycle:
	Call		SpiFlash_Read_A_Byte

	Spi_Cs		Set
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
	Al		= 0x03
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
	Al		= 0x02
	jmp		SpiFlash_Write_4byte_Cycle

;******************************************************************************
;//Input:	High Address :Flash_Adr_H
;//	Low Address  :Flash_Adr_L
SpiFlash_Sector_Erase:
	;;//Command 20H, Sector Erase
	Ar		= Rm[Flash_Adr_H]
	Xchg		Ar
	Al		= 0x20
	Call		SpiFlash_Cs_Reset
	Call		SpiFlash_Write_A_Word
	Ar		= Rm[Flash_Adr_L]
	Xchg		Ar
	Call		SpiFlash_Write_A_Word
	Spi_Cs		Set
	Rets

;******************************************************************************
SpiFlash_Write_A_Byte:
	Io[Spi_Dat]	= Ar
	Ar		= 0x11
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Spi_Ctl_Send
	Call		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Write_A_Word:
	Io[Spi_Dat]	= Ar
	Ar		= 0x12			;;2 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Spi_Ctl_Send
	Call		SpiFlash_Check_Tran_Ok
	Rets

;******************************************************************************
SpiFlash_Read_A_Byte:
	Ar		= 0X21			;;1 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Spi_Ctl_Receive
	Call		SpiFlash_Check_Tran_Ok
	Ar		= Io[Spi_Dat]
	Ah		= 0
	Rets

;******************************************************************************
SpiFlash_Read_A_Word:
	Ar		= 0x22			;;2 Byte
	Ah		= Spi_Speed
	Io[Spi_Ctl]	= Ar
	Spi_Ctl_Receive
	Call		SpiFlash_Check_Tran_Ok
	Ar		= Io[Spi_Dat]
	Rets

;******************************************************************************
SpiFlash_Wait_Ready:
	Io[Clrwdt]	= Ar
	Call		SpiFlash_Read_Status
	Test		Ar.B0
	Jnz		SpiFlash_Wait_Ready	;;=1,Busy,=0,Ready
	Rets

;******************************************************************************
SpiFlash_Check_Tran_Ok:
	Ar		= Io[SPI_CTL]
	Test		Ar.B7
	Jeq		SpiFlash_Check_Tran_Ok
	Spi_Ctl_Reset
	Rets

;******************************************************************************
SpiFlash_Cs_Reset:
	Spi_Ctl_Reset
	Spi_Cs		Set				;;//Cs=1
	Nop
	Spi_Cs		Clr				;;//Cs=0
	Rets
;******************************************************************************
/******************************************************************************
;��������ĳЩIC���ϵ�ʱ����1Byte�� ����Ԥ��֮������ⷢ��
;Input:	None
;
;Output: None
******************************************************************************/
SpiFlash_Frist_Data:
	Spi_Cs		Set
	Ar		= 0x00
	Call		SpiFlash_Write_A_Byte
	Rets
;******************************************************************************