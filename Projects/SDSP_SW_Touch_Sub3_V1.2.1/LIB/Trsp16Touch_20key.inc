;-----------------------------------------------------------------------------
; TRITAN Technology inc.
; S/W Touch include file
;-----------------------------------------------------------------------------
;i/o assign:
;    you must configure as an input&floating state,and must use an external pull-down resistor(68k~500k).

#define		TG0_ENABLE		0	; i/o assign to PA0,touch flag assigh to RM[TouchKeyFlagL].b0,active '1'.
#define		TG1_ENABLE		0	; i/o assign to PA1,touch flag assigh to RM[TouchKeyFlagL].b1,active '1'.
#define		TG2_ENABLE		0	; i/o assign to PA2,touch flag assigh to RM[TouchKeyFlagL].b2,active '1'.
#define		TG3_ENABLE		1	; i/o assign to PA3,touch flag assigh to RM[TouchKeyFlagL].b3,active '1'.
#define		TG4_ENABLE		0	; i/o assign to PB0,touch flag assigh to RM[TouchKeyFlagL].b4,active '1'.
#define		TG5_ENABLE		0	; i/o assign to PB1,touch flag assigh to RM[TouchKeyFlagL].b5,active '1'.
#define		TG6_ENABLE		0	; i/o assign to PB2,touch flag assigh to RM[TouchKeyFlagL].b6,active '1'.
#define		TG7_ENABLE		0	; i/o assign to PB3,touch flag assigh to RM[TouchKeyFlagL].b7,active '1'.
#define		TG8_ENABLE		0	; i/o assign to PB4,touch flag assigh to RM[TouchKeyFlagL].b8,active '1'.
#define		TG9_ENABLE		0	; i/o assign to PB5,touch flag assigh to RM[TouchKeyFlagL].b9,active '1'.
#define		TG10_ENABLE		0	; i/o assign to PC0,touch flag assigh to RM[TouchKeyFlagL].b10,active '1'.
#define		TG11_ENABLE		0	; i/o assign to PC1,touch flag assigh to RM[TouchKeyFlagL].b11,active '1'.
#define		TG12_ENABLE		0	; i/o assign to PC3/PC2,touch flag assigh to RM[TouchKeyFlagL].b12,active '1'.
#define		TG13_ENABLE		0	; i/o assign to PC4/PC3,touch flag assigh to RM[TouchKeyFlagL].b13,active '1'.
#define		TG14_ENABLE		0	; i/o assign to PC5/PC4,touch flag assigh to RM[TouchKeyFlagL].b14,active '1'.
#define		TG15_ENABLE		0	; i/o assign to PC6/PC5,touch flag assigh to RM[TouchKeyFlagL].b15,active '1'.
#define		TG16_ENABLE		0	; i/o assign to PC7/PC6,touch flag assigh to RM[TouchKeyFlagM].b0,active '1'.
#define		TG17_ENABLE		0	; i/o assign to PC8/PC7,touch flag assigh to RM[TouchKeyFlagM].b1,active '1'.
#define		TG18_ENABLE		0	; i/o assign to PC9/PI0,touch flag assigh to RM[TouchKeyFlagM].b2,active '1'.
#define		TG19_ENABLE		0	; i/o assign to PC10/PI1,touch flag assigh to RM[TouchKeyFlagM].b3,active '1'.

;touch key release capture,through your experience to assess the need to open it.
;	warning:high sensitivity don't enable it.
#define		TOUCH_RELEASE_CAPTURE_ENABLED	0	;(enabled:set to '1')

;The number of samples per interrupt serve:2;
;user don't change it.
#define		_TOTAL_PEAK_VALUE_	2

;reference sensitive range: 4~64 (-1 for disable)
#define		_TG0_SENSITIVE_LEVEL_	30
#define		_TG1_SENSITIVE_LEVEL_	30
#define		_TG2_SENSITIVE_LEVEL_	30
#define		_TG3_SENSITIVE_LEVEL_	30
#define		_TG4_SENSITIVE_LEVEL_	30
#define		_TG5_SENSITIVE_LEVEL_	30
#define		_TG6_SENSITIVE_LEVEL_	30
#define		_TG7_SENSITIVE_LEVEL_	30
#define		_TG8_SENSITIVE_LEVEL_	30
#define		_TG9_SENSITIVE_LEVEL_	30
#define		_TG10_SENSITIVE_LEVEL_	30
#define		_TG11_SENSITIVE_LEVEL_	30
#define		_TG12_SENSITIVE_LEVEL_	30
#define		_TG13_SENSITIVE_LEVEL_	30
#define		_TG14_SENSITIVE_LEVEL_	30
#define		_TG15_SENSITIVE_LEVEL_	30
#define		_TG16_SENSITIVE_LEVEL_	30
#define		_TG17_SENSITIVE_LEVEL_	30
#define		_TG18_SENSITIVE_LEVEL_	30
#define		_TG19_SENSITIVE_LEVEL_	30

;ram expend:TouchVarBuf[24]; "_KEY_NUMBER_" key*6=24
#define		_KEY_NUMBER_		(TG0_ENABLE + TG1_ENABLE + TG2_ENABLE + TG3_ENABLE + TG4_ENABLE + TG5_ENABLE + TG6_ENABLE + TG7_ENABLE + TG8_ENABLE + TG9_ENABLE + TG10_ENABLE + TG11_ENABLE + TG12_ENABLE + TG13_ENABLE + TG14_ENABLE + TG15_ENABLE + TG16_ENABLE + TG17_ENABLE + TG18_ENABLE + TG19_ENABLE)

;-----------------------------------------------------------------------------
; Memory Usage
;	[0:127] => 12
;	[512:4095] => 17
;	User assignment => 6*_KEY_NUMBER_ (TouchVarBuf)
;-----------------------------------------------------------------------------
VarRM[128:511] = {
	TouchVarBuf[6*_KEY_NUMBER_]	; 20key * 6 = 120
}
VarRM[512:4095] = {
}
;-----------------------------------------------------------------------------

