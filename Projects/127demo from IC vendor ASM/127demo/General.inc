;===============================================================;
;   Ver 1.0
;===============================================================;
#Include		"Option.Inc"                            	; 必须包含option.Inc才能进行pram设定自动调整
;******************************************************************************
;******************************************************************************

#Define		PrgBank		0			; 程序 bank
#Define		RamBank		_Opt_Prambank_		; 1Kw Pram在哪个bank

#Define		PH_H		_Opt_Prambank_		; P1.HH,P0.HH,




#If		_Opt_Prambank_              != 0	;;自动调整pram的使用与否
		#Define		Sbb3_Usepram		;;Sub3解码是否运行1Kw Sram Code
#Endif



;;根据PWN选项,调整Filter_Gain多久调整一次

	#If	_OPT_DACFIFO_==0
		#If	_Opt_Audiosamplingrate_ == 32
			#Define		_Filter_GainNum		0x0007
		#Endif
		#If	_Opt_Audiosamplingrate_ == 64
			#Define		_Filter_GainNum		0x000f
		#Endif
		#If	_Opt_Audiosamplingrate_ == 128
			#Define		_Filter_GainNum		0x001f
		#Endif
	#Else		;;;1

		#If	_Opt_Audiosamplingrate_ == 32
			#Define		_Filter_GainNum		0x0001
		#Endif
		#If	_Opt_Audiosamplingrate_ == 64
			#Define		_Filter_GainNum		0x0003
		#Endif
		#If	_Opt_Audiosamplingrate_ == 128
			#Define		_Filter_GainNum		0x0007
		#Endif

	#Endif



;******************************************************************************
;******************************************************************************
Macro	Audio_Config_Adjust_Fltp                            	; 根据PWN选项,调整fltp
	#If	_Opt_Audiosamplingrate_	!= 32
		Clr	C
		#If	_Opt_Audiosamplingrate_	== 64
		Src	Ar, 1
		#Endif
		#If	_Opt_Audiosamplingrate_     == 128
		Src	Ar, 2
		#Endif
	#Endif
Endm
;******************************************************************************
;===============================================================;
;   Multiplication                                              ; 调整16128的乘法指令, 使用macro转换
;===============================================================;
Macro   Muluu
        #Ifdef	_MSPEECHDSP_		;;//SF16128
            Muluu
        #Else
            Push	Macop
            Macop	= 0X0003
            Mr	= Mx * Ar
            Pop	Macop
        #Endif                                                  ; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro   Mulus
        #Ifdef	_MSPEECHDSP_		;;//SF16128
            Mulus
        #Else
            Push	Macop
            Macop       = 0X0002
            Mr	= Mx * Ar
            Pop	Macop
        #Endif                                                  ; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro   Mulsu
        #Ifdef	_MSPEECHDSP_		;;//SF16128
            Mulsu
        #Else
            Push	Macop
            Macop	= 0X0001
            Mr	= Mx * Ar
            Pop	Macop
        #Endif                                                  ; _Mspeechdsp_
Endm
;-----------------------------------------------------------;
Macro   Mulss
        #Ifdef          _MSPEECHDSP_		;;//SF16128
            Mulss
        #Else
            Push        Macop
            Macop	= 0X0000
            Mr	= Mx * Ar
            Pop         Macop
        #Endif                                                  ; _Mspeechdsp_
Endm

;===============================================================;
