// SUBC 0.8.9 (build Jun 29 2020 12:00:34)
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


naked void melody();
naked void subdat0();
naked void subdat1();
// RCODE segment

// .model speechdsp
// .code segment _text
.code
// .code ends _text

// .code segment _ginit
.code

// -=-=-=-=-=-=-=-=-=-=-
naked void ginit_code_data_0EBCA7F9_s(void)
{
	return;
}

// .code ends _ginit


// -=-=-=-=-=-=-=-=-=-=-
// strlit segment

// .code segment _text
.code
// .code ends _text

// .code segment _text
.code

// -=-=-=-=-=-=-=-=-=-=-
// read only segment

// .code ends _text

// .data segment _linkd
.data
// LINKFILE (RO) segment
naked void melody()
{
	asm	DW "dtx\gamedtx_32K_4CH_mp.dtx"
}

naked void subdat0()
{
	asm	DW "subband3\Airport_16K@39K5bps.t3z"
}

naked void subdat1()
{
	asm	DW "subband3\06_Story_12K1@27K8bps.t3z"
}


// .data ends _linkd

// .code segment _text
.code
// .code ends _text

// public melody
// public subdat0
// public subdat1
// public ginit_code_data_0EBCA7F9_s
