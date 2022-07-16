; linkfile.c Code Start!!;
VarRM[0:4095]={
  
};

; //
.code
; //
; //
; //naked void ADPCM_CH0_Data();
; //naked void ADPCM_CH1_Data();
; //naked void ADPCM_CH2_Data();
; //naked void ADPCM_CH3_Data();
; //naked void ADPCM_CH4_Data();
; //naked void ADPCM_CH5_Data();
; //naked void subb0();
; //naked void subb1();
; //
; //
; //
; //
.code
; //
; //
; //
.data
; //
; //
; //
; //
; //
; //
; //
.code
; //
; //
; //
.code
; //
; //
; //
; //
; //__int16 _adpdata32993E3B[28] = {		
_adpdata32993E3B:
; //	(int)&ADPCM_CH0_Data, (int)&ADPCM_CH0_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH1_Data, (int)&ADPCM_CH1_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH0_Data,#ADPCM_CH0_Data.h|0x0800,0x1FFF,0x003F,#ADPCM_CH1_Data,#ADPCM_CH1_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH2_Data, (int)&ADPCM_CH2_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH3_Data, (int)&ADPCM_CH3_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH2_Data,#ADPCM_CH2_Data.h|0x0800,0x3FFF,0x003F,#ADPCM_CH3_Data,#ADPCM_CH3_Data.h|0x0800,0x3FFF,0x003F,
; //	(int)&ADPCM_CH4_Data, (int)&ADPCM_CH4_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH5_Data, (int)&ADPCM_CH5_Data.h|0x0800, 0x3FFF, 0x003F, 
DW #ADPCM_CH4_Data,#ADPCM_CH4_Data.h|0x0800,0x3FFF,0x003F,#ADPCM_CH5_Data,#ADPCM_CH5_Data.h|0x0800,0x3FFF,0x003F,
; //	0x0000, 0x0000, 0x0000, 0x0000		
DW 0x0000,0x0000,0x0000,0x0000,
; //};
; //
; //
; //
; //
.data
; //
; //naked void ADPCM_CH0_Data()			
ADPCM_CH0_Data:
; //{
; //	asm	DW "adpcm\bird_8000_4-12.xam"	
DW "adpcm\bird_8000_4-12.xam"
; //}
; //
; //naked void ADPCM_CH1_Data()			
ADPCM_CH1_Data:
; //{
; //	asm	DW "adpcm\horse_16000_4-12.xam"	
DW "adpcm\horse_16000_4-12.xam"
; //}
; //
; //naked void ADPCM_CH2_Data()			
ADPCM_CH2_Data:
; //{
; //	asm	DW "adpcm\2cat_16000_4-12.xam"	
DW "adpcm\2cat_16000_4-12.xam"
; //}
; //
; //naked void ADPCM_CH3_Data()			
ADPCM_CH3_Data:
; //{
; //	asm	DW "adpcm\cat_16000_4-12.xam"	
DW "adpcm\cat_16000_4-12.xam"
; //}
; //
; //naked void ADPCM_CH4_Data()			
ADPCM_CH4_Data:
; //{
; //	asm	DW "adpcm\Dog_Barking_002_16000_4-12.xam"
DW "adpcm\Dog_Barking_002_16000_4-12.xam"
; //}
; //
; //naked void ADPCM_CH5_Data()			
ADPCM_CH5_Data:
; //{
; //	asm	DW "adpcm\duck_A1S_16000_4-12.xam"
DW "adpcm\duck_A1S_16000_4-12.xam"
; //}
; //
; //naked void subb0()				
subb0:
; //{
; //	asm	DW "subband3\03_kid1_12K@15Kbps.t3z"
DW "subband3\03_kid1_12K@15Kbps.t3z"
; //}
; //
; //naked void subb1()				
subb1:
; //{
; //	asm	DW "subband3\06_Story_12K1@27K8bps.t3z"
DW "subband3\06_Story_12K1@27K8bps.t3z"
; //}
; //
; //
; //
; //
; //
.code
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
; //
