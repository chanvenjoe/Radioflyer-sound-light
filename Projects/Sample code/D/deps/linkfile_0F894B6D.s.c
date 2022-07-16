// SUBC 0.8.12 (build Apr 11 2022 16:13:40)
#include "crt0.h"

// .fast segment _fast
// FAST segment (data with / without initial value)

// .fast ends _fast

// .bss segment _rwdata
// DATA segment (with initial value)

// .bss ends _rwdata

// .bss segment _bss
// BSS segment (data without initial value)

// .bss ends _bss

// CODE segment

.code


naked void ADPCM_CH0_Data();
naked void ADPCM_CH1_Data();
naked void ADPCM_CH2_Data();
naked void ADPCM_CH3_Data();
naked void ADPCM_CH4_Data();
naked void ADPCM_CH5_Data();
naked void subb0();
naked void subb1();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .data segment _rdata
.data
// .data ends _rdata


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

__int16 _adpdata32993E3B[28] = {
	(int)&ADPCM_CH0_Data, (int)&ADPCM_CH0_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH1_Data, (int)&ADPCM_CH1_Data.h|0x0800, 0x3FFF, 0x003F, 
	(int)&ADPCM_CH2_Data, (int)&ADPCM_CH2_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH3_Data, (int)&ADPCM_CH3_Data.h|0x0800, 0x3FFF, 0x003F, 
	(int)&ADPCM_CH4_Data, (int)&ADPCM_CH4_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH5_Data, (int)&ADPCM_CH5_Data.h|0x0800, 0x3FFF, 0x003F, 
	0x0000, 0x0000, 0x0000, 0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void ADPCM_CH0_Data()
{
	asm	DW "adpcm\bird_8000_4-12.xam"
}

naked void ADPCM_CH1_Data()
{
	asm	DW "adpcm\horse_16000_4-12.xam"
}

naked void ADPCM_CH2_Data()
{
	asm	DW "adpcm\2cat_16000_4-12.xam"
}

naked void ADPCM_CH3_Data()
{
	asm	DW "adpcm\cat_16000_4-12.xam"
}

naked void ADPCM_CH4_Data()
{
	asm	DW "adpcm\Dog_Barking_002_16000_4-12.xam"
}

naked void ADPCM_CH5_Data()
{
	asm	DW "adpcm\duck_A1S_16000_4-12.xam"
}

naked void subb0()
{
	asm	DW "subband3\03_kid1_12K@15Kbps.t3z"
}

naked void subb1()
{
	asm	DW "subband3\06_Story_12K1@27K8bps.t3z"
}


// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// public _adpdata32993E3B
// public ADPCM_CH0_Data
// public ADPCM_CH1_Data
// public ADPCM_CH2_Data
// public ADPCM_CH3_Data
// public ADPCM_CH4_Data
// public ADPCM_CH5_Data
// public subb0
// public subb1
