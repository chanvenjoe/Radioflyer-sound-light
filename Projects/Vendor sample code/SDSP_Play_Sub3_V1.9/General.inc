;===============================================================;
; Ver 1.0
;===============================================================;
#include	"Option.Inc"			; 必须包含option.Inc才能进行pram设定自动调整
;******************************************************************************
;******************************************************************************
#define		RamBank	_Opt_Prambank_		; 1Kw Pram在哪个bank2/7/15
#define		PH_H	_Opt_Prambank_		; P1.HH,P0.HH,
;******************************************************************************
;******************************************************************************
Macro	Audio_Config_Adjust_Fltp		; 根据PWN选项,调整fltp
	#if	_Opt_Audiosamplingrate_ != 32
		Ar	= Fltp
		Clr	C
		#if	_Opt_Audiosamplingrate_ == 64
			Src	Ar, 1
		#endif
		#if	_Opt_Audiosamplingrate_ == 128
			Src	Ar, 2
		#endif
		Fltp	= Ar
	#endif
Endm
;******************************************************************************
;===============================================================;
;	Multiplication						; 调整16128的乘法指令, 使用macro转换
;===============================================================;
Macro	Muluu
	#ifdef	_MSPEECHDSP_		;;//SF16128
		Muluu
	#else
;		Push	Macop
		Macop	= 0x0003
		Mr	= Mx * Ar
;		Pop	Macop
	#endif				; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro	Mulus
	#ifdef	_MSPEECHDSP_		;;//SF16128
		Mulus
	#else
;		Push	Macop
		Macop	= 0x0002
		Mr	= Mx * Ar
;		Pop	Macop
	#endif				; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro	Mulsu
	#ifdef	_MSPEECHDSP_		;;//SF16128
		Mulsu
	#else
;		Push	Macop
		Macop	= 0x0001
		Mr	= Mx * Ar
;		Pop	Macop
	#endif				; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro	Mulss
	#ifdef	_MSPEECHDSP_		;;//SF16128
		Mulss
	#else
;		Push	Macop
		Macop	= 0x0000
		Mr	= Mx * Ar
;		Pop	Macop
	#endif				; _Mspeechdsp_
Endm
;===============================================================;
