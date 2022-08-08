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

__int16 _adpdata32993E3B[24] = {
	(int)&ADPCM_CH0_Data, (int)&ADPCM_CH0_Data.h|0x0800, 0x1FFF, 0x003F, (int)&ADPCM_CH1_Data, (int)&ADPCM_CH1_Data.h|0x0800, 0x3FFF, 0x003F, 
	(int)&ADPCM_CH2_Data, (int)&ADPCM_CH2_Data.h|0x0800, 0x3FFF, 0x003F, (int)&ADPCM_CH3_Data, (int)&ADPCM_CH3_Data.h|0x0800, 0x3FFF, 0x003F, 
	(int)&ADPCM_CH4_Data, (int)&ADPCM_CH4_Data.h|0x0800, 0x3FFF, 0x003F, 0x0000, 0x0000, 0x0000, 0x0000
};

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void ADPCM_CH0_Data()
{
	asm	DW "adpcm\Media1_8000_4-12.xam"
}

naked void ADPCM_CH1_Data()
{
	asm	DW "adpcm\Media1_16000_4-12.xam"
}

naked void ADPCM_CH2_Data()
{
	asm	DW "adpcm\Media2_16000_4-12.xam"
}

naked void ADPCM_CH3_Data()
{
	asm	DW "adpcm\Media3_16000_4-12.xam"
}

naked void ADPCM_CH4_Data()
{
	asm	DW "adpcm\Media4_16000_4-12.xam"
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
