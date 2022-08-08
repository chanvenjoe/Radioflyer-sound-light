;===============================================================;
;   Ver 1.0
;===============================================================;
    #include            "Option.inc"                            ; 必須要包含Option.inc才行進行PRAM的設定自動調整

    #if     _OPT_PRAMBank_              != 0                    ; 自動調整PRAM的使用與否
      #define        SBB3_UsePRAM                               ; 是否高效運行1kW SRAM Code
      #define        RAMBank            _OPT_PRAMBank_          ; 1kW PRAM在哪個Bank
    #endif

;===============================================================;
    MACRO   Audio_Config_Adjust_FLTP                            ; 自動判斷Audio_Config的Sampling_Rate定義,調整FLTP
      #if   _OPT_AudioSamplingRate_     != 32
            AR          = FLTP
            CLR         C
        #if _OPT_AudioSamplingRate_     == 64
            SRC         AR, 1
        #endif
        #if _OPT_AudioSamplingRate_     == 128
            SRC         AR, 2
        #endif
            FLTP        = AR
      #endif
    ENDM

;===============================================================;
;   Multiplication                                              ; 調整16128的乘法指令, 使用MACRO轉換
;===============================================================;
    MACRO   MULUU
        #ifdef          _MSPEECHDSP_
            MULUU
        #else
            PUSH        MACOP
            MACOP       = 0x0003
            MR          = MX * AR
            POP         MACOP
        #endif                                                  ; _MSPEECHDSP_
    ENDM
    ;-----------------------------------------------------------;
    MACRO   MULUS
        #ifdef          _MSPEECHDSP_
            MULUS
        #else
            PUSH        MACOP
            MACOP       = 0x0002
            MR          = MX * AR
            POP         MACOP
        #endif                                                  ; _MSPEECHDSP_
    ENDM
    ;-----------------------------------------------------------;
    MACRO   MULSU
        #ifdef          _MSPEECHDSP_
            MULSU
        #else
            PUSH        MACOP
            MACOP       = 0x0001
            MR          = MX * AR
            POP         MACOP
        #endif                                                  ; _MSPEECHDSP_
    ENDM
    ;-----------------------------------------------------------;
    MACRO   MULSS
        #ifdef          _MSPEECHDSP_
            MULSS
        #else
            PUSH        MACOP
            MACOP       = 0x0000
            MR          = MX * AR
            POP         MACOP
        #endif                                                  ; _MSPEECHDSP_
    ENDM

;===============================================================;
