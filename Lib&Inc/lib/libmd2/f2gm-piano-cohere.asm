

; ~~ change start address at BANK7


#define DSP_INSBANK_NUM		0x0C00

#define MC_INSLOOP_L		0
#define MC_INSLOOP_H		1
#define	MC_INSADR_L		2
#define MC_INSADR_H		3
#define MC_FLTA			4
#define MC_FLTP			5
#define MC_FLTG			6
#define MC_RR			7
#define MC_FLTI			8
#define MC_ADSR_VOL		12
#define MC_ADSR_LPATTACK	13
#define MC_ADSR_SATTACK		14
#define MC_ADSR_LPDECAY		15
#define MC_ADSR_SDECAY		16
#define MC_ADSR_LPSUSTAIN	17
#define MC_ADSR_SSUSTAIN	18

#define MC_ADPCM_HD		19
#define MC_ADPCM_S0		20
#define MC_ADPCM_S1		21
#define MC_ADPCM_CNT		22
#define MC_ADPCM_BUF		23

#define MC_SAMPLE_SKIP		24
#define MC_SAMPLE_SKIPRE	25

#define MC_LEFT_VOL		26
#define MC_RIGHT_VOL		27
#define MC_MIDICH		28

#define MC_SIZEOF		29


#ifdef _MSPEECHDSP_

	macro	mMULSS		PartA, PartB
		AR=		PartA
		MX=		AR
		AR=		PartB
		MULSS   		; ~~ MULSS  (MY sign * MX sign)
		endm


	macro	mMULSS_NW	PartA, PartB
		AR=		PartA
		MX=		AR
		AR=		PartB
		MULSS   		; ~~ MULSS  (MY sign * MX sign)
		endm

#else

	macro	mMULSS		PartA, PartB
		AR=		PartA
		MX=		AR
		AR=		PartB
		MR=		MX * AR
		endm


	macro	mMULSS_NW	PartA, PartB
		AR=		PartA
		MX=		AR
		AR=		PartB
		MR=		MX * AR
		endm

#endif


VarRM[0:127] = {
	; mp.baseadr
		mp_baseadr[2],

	; mp.songcnt
		mp_songcnt,

	; mp.tinsbank
		mp_tinsbank,

	; mp.occupyopr
		mp_occupyopr,

	; mp.inbuf
		mp_inbuf

	; mp.outbuf
		mp_outbuf

	; mp.tempo		; ~~ 2 (0x7FFF) ~ 0.5 (0x2000)
		mp_tempo

	; mp.vol;
		mp_vol

	; mp.lop;
		mp_lop

	; mp.pitch;
		mp_pitch
}


VarRM[128:511]={


}


VarRM[512:4095] = {
	#ifdef _PWM_64K_
		; long RENDERBUF[512];
		BASEON1024#RENDERBUF[1024],
	#else
		; long RENDERBUF[256];
		BASEON512#RENDERBUF[512],
	#endif

	; struct md2Play mp;
		; mp.ch[0]
		mp[580]

		; -=-=

		; -=-=

		; mp.insbase

		mp@insbase[2],

		; mp.songhdr
		mp@songhdr[2],

		; mp.kmapbase,
		mp@kmapbase[2],

		; mp.flags,
		mp@flags,

		; ~~ --

		; mp.extev
		mp@extev,

		; mp.note
		mp@note[2],

		; mp.PlayInfo
		mp@PlayInfo[2],

		; mp.PlayChannel
		mp@PlayChannel[2],

		; mp.ReleaseInfo
		mp@ReleaseInfo[2],

		; mp.ReleaseCh
		mp@ReleaseCh[2],

		; mp.BaseTimer
		mp@BaseTimer,

		; mp.EventTimer
		mp@EventTimer

		; mp.lpadr	; ~~ midi loop setting
		mp@lpadr[2],

		mp@mchmask,





		; mp.keych[20]
		mp@keych[20],

		mp@okmask,

		mp@keymap[2],

		mp@ofsevent[2],

		mp@okon[40]

		mp_ctlev,

}

#define mp@keymap_h		mp@keymap + 1

#define mp_baseadr_l		mp_baseadr
#define mp_baseadr_h		mp_baseadr+1

#define mp@baseadr_l		mp_baseadr
#define mp@baseadr_h		mp_baseadr+1

#define	mp@ch0@RR		mp + MC_RR
#define mp@ch0@FLTG		mp + MC_FLTG
#define mp@ch0@FLTP		mp + MC_FLTP
#define mp@ch0@insloop_l	mp + MC_INSLOOP_L
#define mp@ch0@midich		mp + MC_MIDICH
#define mp@ch19@insloop_l	mp + (MC_SIZEOF * 19) + MC_INSLOOP_L

#define mp@insbase_l		mp@insbase
#define mp@insbase_h		mp@insbase + 1

#define mp@songhdr_l		mp@songhdr
#define mp@songhdr_h		mp@songhdr + 1

#define mp@kmapbase_l		mp@kmapbase
#define mp@kmapbase_h		mp@kmapbase + 1

#define mp@note_l		mp@note
#define mp@note_h		mp@note + 1

#define mp@PlayInfo_l		mp@PlayInfo
#define mp@PlayInfo_h		mp@PlayInfo + 1

#define mp@PlayChannel_l	mp@PlayChannel
#define mp@PlayChannel_h	mp@PlayChannel + 1

#define mp@ReleaseInfo_l	mp@ReleaseInfo
#define mp@ReleaseInfo_h	mp@ReleaseInfo + 1

#define mp@ReleaseCh_l		mp@ReleaseCh
#define mp@ReleaseCh_h		mp@ReleaseCh + 1

#define mp@lpadrl		mp@lpadr
#define mp@lpadrh		mp@lpadr + 1

#define mp@ofsevent_l		mp@ofsevent
#define mp@ofsevent_h		mp@ofsevent + 1



#define ICH0	mp + MC_MIDICH + (MC_SIZEOF * 0)
#define ICH1	mp + MC_MIDICH + (MC_SIZEOF * 1)
#define ICH2	mp + MC_MIDICH + (MC_SIZEOF * 2)
#define ICH3	mp + MC_MIDICH + (MC_SIZEOF * 3)
#define ICH4	mp + MC_MIDICH + (MC_SIZEOF * 4)
#define ICH5	mp + MC_MIDICH + (MC_SIZEOF * 5)
#define ICH6	mp + MC_MIDICH + (MC_SIZEOF * 6)
#define ICH7	mp + MC_MIDICH + (MC_SIZEOF * 7)
#define ICH8	mp + MC_MIDICH + (MC_SIZEOF * 8)
#define ICH9	mp + MC_MIDICH + (MC_SIZEOF * 9)
#define ICH10	mp + MC_MIDICH + (MC_SIZEOF * 10)
#define ICH11	mp + MC_MIDICH + (MC_SIZEOF * 11)
#define ICH12	mp + MC_MIDICH + (MC_SIZEOF * 12)
#define ICH13	mp + MC_MIDICH + (MC_SIZEOF * 13)
#define ICH14	mp + MC_MIDICH + (MC_SIZEOF * 14)
#define ICH15	mp + MC_MIDICH + (MC_SIZEOF * 15)
#define ICH16	mp + MC_MIDICH + (MC_SIZEOF * 16)
#define ICH17	mp + MC_MIDICH + (MC_SIZEOF * 17)
#define ICH18	mp + MC_MIDICH + (MC_SIZEOF * 18)
#define ICH19	mp + MC_MIDICH + (MC_SIZEOF * 19)







ShareVar = {

	mp@endevent_l = mp@note_l
	mp@endevent_h = mp@note_h

	mp_insbase = mp@insbase
	mp_songhdr = mp@songhdr
	mp_kmapbase = mp@kmapbase
	mp_flags = mp@flags
	mp_extev = mp@extev
	mp_note = mp@note
	mp_PlayInfo = mp@PlayInfo
	mp_PlayChannel = mp@PlayChannel
	mp_ReleaseInfo = mp@ReleaseInfo
	mp_ReleaseCh = mp@ReleaseCh
	mp_BaseTimer = mp@BaseTimer
	mp_EventTimer = mp@EventTimer
	mp_lpadr = mp@lpadr
	mp_mchmask = mp@mchmask
	mp_okmask = mp@okmask
	mp_endevent = mp@note

	mp@baseadr_l = mp_baseadr_l
	mp@baseadr_h = mp_baseadr_h

	mp@songcnt = mp_songcnt
	mp@tinsbank = mp_tinsbank
	mp@occupyopr = mp_occupyopr
	mp@inbuf = mp_inbuf
	mp@outbuf = mp_outbuf
	mp@tempo = mp_tempo
	mp@vol = mp_vol
	mp@lop = mp_lop
	mp@ctlev = mp_ctlev
	mp@pitch = mp_pitch
}


; +-++-+


; ~.~---------------------------------------------------------------
; bool md2DoEvent(void)
;
; in:
;    none
;
; out:
;    Z		- true
;    NZ		- false
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;
;
; special request:
;
;
; ------------------------------------------------------------------
; #ifdef __RAMFUNC_ENABLE__
; __md2DoEvent:
	; P1.hh=		0
; #else
md2DoEvent:
; #endif
; {
	; if(mp.BaseTimer)
		I1=		mp@BaseTimer
		AR=		rm[I1]
		if ZR jmp	@md2de_label_1054
	; {
		; return true;
			set		Z
			rets
	; }
	@md2de_label_1054:

	; if(mp.note == 0)
		I1=		mp@note_l
		AR=		rm[I1++]
		AX=		rm[I1]
		AR=		AR | AX
		if NZ jmp	@md2de_label_1624
	; {
		; return true;
			set		Z
			rets
	; }
	@md2de_label_1624:

@md2de_loop_1841:
	; mp.EventTimer = 0;
		I1=		mp@EventTimer
		AR=		0
		rm[I1]=		AR

	; sfContReadStart(HIADR(&mp.note));
		I1=		mp@note_h
		mSfContReadStart

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; mp.extev = AX.N1;
		I1=		mp@extev
		sra		AR, 2
		sra		AR, 2
		AR=		AR & 0x0F
		rm[I1]=		AR

	; if(mp.ExtEV & 0x08)
		test		AR.b3
		if ZR jmp	@md2de_label_1157
	; {
		; ~~ control message

		; spiContReadStop();
			mSfContReadStop

		; mp.ctlev = vXCHG(AX);
			AR=		AX
			I1=		mp@ctlev
			xchg		AR
			rm[I1]=		AR

	#ifdef MD2_CTLEV_CALLBACK

		; md2CtlEvCallback();
			PCH=		md2CtlEvCallback
			lcall		md2CtlEvCallback

	#endif

		; mp->note += 2;
			I1=		mp@note_l
			AR=		rm[I1]
			AR=		AR + 2
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; spiContReadStart(mp->note, &mp->md2);
			I1=		mp@note_h
			mSfContReadStart


		; AX = spiContReadWord();
			mSfContReadWord
			AX=		AR

		; mp.extev = (unsigned long)AX.N1;
			I1=		mp@extev
			sra		AR, 2
			sra		AR, 2
			AR=		AR & 0x0F
			rm[I1]=		AR
	; }
	@md2de_label_1157:


	; switch(mp.extev & 3)
		AR=		AR & 0x03
		if ZR jmp	@md2de_caseT_case0
		SF=		AR - 1
		if EQ jmp	@md2de_caseT_case1
		SF=		AR - 2
		if EQ jmp	@md2de_caseT_case2
		jmp		@md2de_caseT_case3
	; {
		; case 0:
		@md2de_caseT_case0:
		; {
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit | event type = 0	     |	      |	   N1
			; ~~ +------+------------------------+ byte 0 |	 L
			; ~~ |4-bit | event timer high 4-bit |	      |	   N0
			; ~~ +------|			     +--------+
			; ~~ |8-bit |		  low 8-bit  | byte 1 |	 H
			; ~~ +------+------------------------+--------+

			; mp.EventTimer = ((unsigned short)AX.N0) << 8;
				I1=		mp@EventTimer
				AR=		0xFF0F
				AR=		AR & AX
				xchg		AR

			; mp.EventTimer |= (unsigned short)AX.H;
				rm[I1]=		AR

			; mp.note += 2;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 2
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; break;
				jmp		@md2de_label_1759
		; }

		; case 1:
		@md2de_caseT_case1:
		; {
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | event type = 1	      |	       |    N1
			; ~~ +------+-------------------------+ byte 0 |  L
			; ~~ |4-bit | play channel [19:16]    |	       |    N0
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | play channel [15:12]    |	       |    N3
			; ~~ +------+-------------------------+ byte 1 |  H
			; ~~ |4-bit | play channel [11:8]     |	       |    N2
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | play channel [7:0]      | byte 2 |  L
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | event timer	      | byte 3 |  H
			; ~~ +------+-------------------------+--------+

			; mp.PlayInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@PlayInfo_h
				AR=		0x0F
				rm[I1--]=	AR & AX

			; mp.PlayInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.PlayInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.EventTimer = 0x0F00 | (unsigned short)AX.H;
				pop		AR
				xchg		AR
				AH=		0x0F
				I1=		mp@EventTimer
				rm[I1]=		AR

			; mp.note += 4;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 4
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; Debug("case 1: EventTimer=%04X\n", (int)mp->EventTimer);
			; Debug("	 PlayInfo=%08X\n", (int)mp->PlayInfo);

			; break;
				jmp		@md2de_label_1759
		; }

		; case 2:
		@md2de_caseT_case2:
		; {
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | event type = 2	      |	       |    N1
			; ~~ +------+-------------------------+ byte 0 |  L
			; ~~ |4-bit | release channel [19:16] |	       |    N0
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | release channel [15:12] |	       |    N3
			; ~~ +------+-------------------------+ byte 1 |  H
			; ~~ |4-bit | release channel [11:8]  |	       |    N2
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | release channel [7:0]   | byte 2 |  L
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit |		 event timer  | byte 3 |  H
			; ~~ +------+-------------------------+--------+

			; mp.ReleaseInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@ReleaseInfo_h
				AR=		0x000F
				rm[I1--]=	AR & AX

			; mp.ReleaseInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.ReleaseInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.EventTimer = 0x0F00 | (unsigned short)AX.H;
				pop		AR
				xchg		AR
				AH=		0x0F
				I1=		mp@EventTimer
				rm[I1]=		AR

			; mp.note += 4;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 4
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; Debug("case 2: EventTimer=%04X\n", (int)mp->EventTimer);
			; Debug("	 ReleaseInfo=%08X\n", (int)mp->ReleaseInfo);

			; break;
				jmp		@md2de_label_1759
		; }

		; case 3:
		@md2de_caseT_case3:
		; {
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit | event type = 3	     |	      |	  N1
			; ~~ +------+------------------------+ byte 0 | L
			; ~~ |4-bit | play channel [19:16]   |	      |	  N0
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit | play channel [15:8]    | byte 1 | H
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit | play channel [7:0]     | byte 2 | L
			; ~~ +------+------------------------+--------+
			; ~~ |8-bit |release channel [19:12] | byte 3 | H
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit |release channel [11:4]  | byte 4 | L
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit |release channel [3:0]   |	      |	  N3
			; ~~ +------+------------------------| byte 5 + H
			; ~~ |4-bit | event timer	     |	      |	  N2
			; ~~ +------+------------------------+--------+

			; mp.PlayInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@PlayInfo_h
				AR=		0x000F
				rm[I1--]=	AR & AX

			; mp.PlayInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.PlayInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.ReleaseInfo = ((unsigned long)AX.H) << 12;
				I1=		mp@ReleaseInfo_h

			; AX = sfContReadWord();
				mSfContReadWord
				xchg		AR
				AX=		AR
				BX=		AR

			; mp.ReleaseInfo |= ((unsigned long)AX.L) << 4;
				pop		AR
				xchg		AR
				AH=		0
				sra		AR, 2
				src		AX, 2
				sra		AR, 2
				src		AX, 2
				rm[I1--]=	AR

			; mp.ReleaseInfo |= ((unsigned long)AX.N3);
				rm[I1]=		AX

			; mp.EventTimer = 0x0FF0 | (unsigned short)AX.N2;
				BX.h=		0
				AR=		0x0FF0
				I1=		mp@EventTimer
				rm[I1]=		AR | BX

			; mp.note += 6;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 6
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; Debug("case 3: EventTimer=%04X\n", (int)mp->EventTimer);
			; Debug("	 PlayInfo=%08X\n", (int)mp->PlayInfo);
			; Debug("	 ReleaseCh=%08X\n", (int)mp->ReleaseInfo);

			; break;
				jmp		@md2de_label_1759
		; }

		; default:
		@md2de_case_default:
		; {
			; Debug("Fatal: undefined event %d\n", AX.L & 0x0F);
			; return false;
				clr		Z
				rets
		; }
	; }
	@md2de_label_1759:

	; sfContReadStop();
		mSfContReadStop

	; if(mp.EventTimer == 0)
		I1=		mp@EventTimer
		AR=		rm[I1]
		if NZ jmp	@md2de_label_1104
	; {
		; mp.note = mp.lpadr;
			AX=		0
			I1=		mp@lpadrh
			AR=		rm[I1--]
			clr		AR.b15		; ~~ no loop bit
			push		AR
			AR=		rm[I1]
			I1=		mp@note_l
			rm[I1++]=	AR
			AX=		AX | AR
			pop		AR
			rm[I1]=		AR
			AX=		AX | AR

		; if(mp.lpadr & 0x80000000)
			I1=		mp@lpadrh
			AR=		rm[I1]
			test		AR.b15
			if ZR jmp	@md2de_label_1740
		; {
			; mp.lpadr = 0;
				AR=		0
				rm[I1--]=	AR
				rm[I1]=		AR
		; }
		@md2de_label_1740:


		; if(mp.note)
			AR=		AX
			if ZR jmp	@md2de_label_1849
		; {
			; goto __md2de_loop_1841;
				jmp		@md2de_loop_1841
		; }

		@md2de_label_1849:

		; mp.occupyopr = 0;
			rm[mp@occupyopr]=AR

		; return true;
			set		Z
			rets
	; }
	@md2de_label_1104:

	; ~~ processing release

	; ~~ offset aware
	;      mp.ReleaseInfo, mp.note,

	; ~~ meaning registers:
	; ------------------------------------
	; ~~	 AX:BX = 1 << i
	; ~~	 CX    = i
	; ~~	 DX    = note count
	; ~~	 R1:R0 = mp.ReleaseInfo
	; ~~	 R2    = AX
	; ~~	 I0    = pch (pch->RR)
	; ~~	 I1    = mp.??

	; if(mp.ReleaseInfo)
		I1=		mp@ReleaseInfo_l
		R0=		rm[I1++]
		AR=		rm[I1]
		AR=		AR | R0
		if ZR jmp	@md2de_label_1705
		R1=		rm[I1]
	; {
		; pch = mp.ch;
			I0=		mp@ch0@RR

		; sfContReadStart(HIADR(&mp.note));
			I1=		mp@note_h
			mSfContReadStart

		; AX = sfContReadWord();
			mSfContReadWord
			R2=		AR

		; for(i = 0; (i < 20) && mp.ReleaseInfo; i++)
			io[ClrWDT]=	AR
			CX=		19
			BX=		1
			AX=		0
			DX=		0
		@md2de_loop_1114:
			AR=		R0
			AR=		AR | R1
			if ZR jmp	@md2de_label_1114
		; {
			; if(mp->ReleaseInfo & 1)
				sra		R1, 1
				src		R0, 1
				if NC jmp	@md2de_label_1117
			; {
				; pch->RR = (unsigned long)AX.U;
					rm[I0]=		R2

				; AX = spiContReadWord();
					mSfContReadWord
					R2=		AR

				; mp->note += 2;
					DX++
					DX++

				; mp.ReleaseCh |= (1 << i);
					I1=		mp@ReleaseCh_l
					AR=		rm[I1]
					rm[I1++]=	AR | BX
					AR=		rm[I1]
					rm[I1]=		AR | AX
			; }
			@md2de_label_1117:

			; mp.ReleaseInfo >>= 1;
				slz		BX, 1
				slc		AX, 1

			; pch++;
				AR=		MC_SIZEOF
				I0=		I0 + AR

			loop		@md2de_loop_1114
		; }
		@md2de_label_1114:
			; ~~ write back --> mp.ReleaseInfo, mp.note
			I1=		mp@ReleaseInfo_l
			rm[I1++]=	R0
			rm[I1]=		R1
			I1=		mp@note_l
			AR=		rm[I1]
			rm[I1++]=	AR + DX
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; sfContReadStop();
			mSfContReadStop

		; Debug("release final %08X\n", (int)mp->note);
	; }
	@md2de_label_1705:


	; mp.BaseTimer = (0x1000 - mp.EventTimer) * 8 * tempo;
		I1=		mp@EventTimer
		AR=		0x1000
		AX=		rm[I1]
		AX=		AR - AX
		slz		AX, 2
		slz		AX, 1
		I1=		mp@tempo

		; ~~ simulate 90nm Speech

		mMULSS		rm[I1], AX

	#ifdef _MSPEECHDSP_
		AR=		MR0		; ~~ load answer and store
		AX=		AR
		AR=		MR1
	#else
		AR=		MR0
		AX=		AR
		AR=		MR1
	#endif

		; ~~ --------------------

		slz		AX, 2
		slc		AR, 2
		I1=		mp@BaseTimer
		rm[I1]=		AR

	; EnableInterrupt(INT2);
		; ena		INT2

	; return true;
		set		Z
		rets
; }



; ~.~---------------------------------------------------------------
; void md2SetInstrument(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;    AX:BX	- (1 << i)
;    CX		- i
;    DX		- next pch
;    I0		- pch
;    I1		- mp.??
;    R1:R0	- mp.PlayInfo
;    R2		- AX
;    R3		- BX
;
; special request:
;
;
; ------------------------------------------------------------------
; #ifdef __RAMFUNC_ENABLE__
; __md2SetInstrument:
	; P1.hh=		0
; #else
md2SetInstrument:
; #endif
; {
	; md2Channel *pch;
	; DSP16 AX, BX;
	; int i, temp;

	; if(mp.PlayInfo)
		I1=		mp@PlayInfo_l
		R0=		rm[I1++]
		AR=		rm[I1]
		AR=		AR | R0
		if ZR jmp	@md2si_label_1645
		R1=		rm[I1]
	; {
		; // Debug("\n");

		; pch = mp.ch;
			I0=		mp

		; sfContReadStart(HIADR(&mp.note));
			I1=		mp@note_h
			mSfContReadStart

		; ~~ offset aware
		;	verify mp struct offset if modified.

		; for(i = 0; (i < 20) && (mp.PlayInfo); i++)
			io[ClrWDT]=	AR
			CX=		19
			BX=		1
			AX=		0
		@md2si_loop_1344:
			DX=		0
			AR=		R0
			AR=		AR | R1
			if ZR jmp	@md2si_label_1340
		; {
			; if(mp.PlayInfo & 1)
				sra		R1, 1
				src		R0, 1
				if NC jmp	@__md2si_label_0328
			; {
				; ~~ clear FIFO

				; memset(pch->FLTI, 0, sizeof(pch->FLTI));
					I1=		MC_FLTI
					AR=		I0
					I1=		I1 + AR
					AR=		0
					rm[I1++]=	AR
					rm[I1++]=	AR
					rm[I1++]=	AR
					rm[I1++]=	AR
					; rm[I1++]=	AR
					; rm[I1++]=	AR
					; rm[I1++]=	AR
					; rm[I1++]=	AR

				; AX = sfContReadWord();
					mSfContReadWord
					R3=		AR
					; mask Scale area
					clr		R3.b13
					clr		R3.b12

				; mp.note += 2;
					DX++
					DX++

				; CX = (AX & 0x3000) >> 12;
					slc		AR, 2		; ~~ drop 2-bit
					slc		AR, 2
					P0=		#md2ScaleTable
					AR=		0
					slc		AR, 2
					P0=		P0 + AR

				; mp.skip = 1 << CX;
					I1=		MC_SAMPLE_SKIP
					AR=		I0
					I1=		I1 + AR
					rm[I1++]=	pm[P0]
				; mp.skipre = mp.skip;
					rm[I1++]=	pm[P0]


				; ~~ Initial Volume Setting (only support V2 15-bit volume)


				; if(BX.b15)
					test		R3.b15
					if ZR jmp	@md2si_label_1355
				; {
					; BX.U = BX.U & 0x7FFF;
						clr		R3.b15

					; AX = sfContReadWord();
						I1=		MC_FLTG
						AR=		I0
						I1=		I1 + AR
						mSfContReadWord

					; pch->FLTG = AX;	; ~~ Volume 16-bit
						rm[I1]=		AR

					; mp.note += 2;
						DX++
						DX++


					; ~~ compare at 8-bit

					; if(pch->FLTG == 0)
						if NZ jmp	@md2si_label_1355
					; {
						; ~~ cancel this channel if Volume == 0

						; mp.PlayChannel &= ~(1 << i);
							I1=		mp@PlayChannel_l
							AR=		rm[I1]
							AR=		AR ^ 0xFF
							AR=		AR | BX
							AR=		AR ^ 0xFF
							rm[I1++]=	AR
							AR=		rm[I1]
							AR=		AR ^ 0xFF
							AR=		AR | AX
							AR=		AR ^ 0xFF
							rm[I1]=		AR

						; goto __md2si_label_0328;
							I1=		mp@note_l
							AR=		rm[I1]
							rm[I1++]=	AR + DX
							AR=		rm[I1]
							AR=		AR + 0 + C
							rm[I1]=		AR
							jmp		@__md2si_label_0328
					; }
				; }
				@md2si_label_1355:


				; ~~ PAN control

				; if(BX.b14)
					test		R3.b14
					if ZR jmp	@md2si_label_1827
				; {
					; BX.U = BX.U & 0xBFFF;
						clr		R3.b14

					; mp.note += 2;
						DX++
						DX++

					; AX = sfContReadWord();
						I1=		MC_LEFT_VOL
						AR=		I0
						I1=		I1 + AR
						mSfContReadWord

					; mp.Stereo.L = 0x007F | (AL << 7);
						push		AR
						xchg		AR
						AL=		0xFF
						clr		C
						src		AR, 1
						rm[I1++]=	AR

					; mp.Stereo.R = 0x007F | (AH << 7);
						pop		AR
						AL=		0xFF
						clr		C
						src		AR, 1
						rm[I1++]=	AR
				; }
				@md2si_label_1827:

				; ~~ FLTP

				; AX = sfContReadWord();
					mSfContReadWord
					R2=		AR

				; if(pch->FLTP & 0x8000)
					test		R2.b15
					if ZR jmp	@md2si_label_1044
				; {
					; mp.midich = AX.U & 0x000F;
						I1=		MC_MIDICH
						AR=		I0
						I1=		I1 + AR
						AR=		0x0F
						AR=		AR & R2
						rm[I1]=		AR

					; AX.U &= ~0x800F;
						AR=		0x7FF0
						R2=		R2 & AR
				; }
				@md2si_label_1044:


				; pch->FLTP = AX.U;
					I1=		MC_FLTP
					AR=		I0
					I1=		I1 + AR
					rm[I1]=		R2

				; mp.note += 2;
					DX++
					DX++

				; spiContReadStop();
					mSfContReadStop


				; ~~ Debug("FLTP=%04X\n", AX.U);

				; ~~ instrument address


				; ~~ don't broken these register
				;    AX:BX	- (1 << i)
				;    CX		- i
				;    DX		- next pch
				;    I0		- pch
				;    R1:R0	- mp.PlayInfo

				; ~~ P1 is already safe to use it


				; if(BX.U == DSP_INSBANK_NUM)
					AR=		DSP_INSBANK_NUM
					SF=		AR - R3
					if NE jmp	@md2si_label_1624
				; {

					; +-----+-----+-----------+-----------+
					; | b15 | b14 | b13 - b12 | b11 - b0  |
					; +-----+-----+-----------+-----------+
					; |  0	|  0  |	 scale	  | INS index |
					; +-----+-----+-----------+-----------+

					; +-----+------------+
					; | b15 | b14  - b0  |
					; +-----+------------+
					; |  0	|    FLTP    |
					; +-----+------------+

					; ~~ auto setup midi channel to 0
					; ~~ because midi channel always 0 when instrument is DSP_INSBANK_NUM

					; mp.midich = 0;
						I1=		MC_MIDICH
						AR=		I0
						I1=		I1 + AR
						AR=		0
						rm[I1]=		AR

					; ~~ get address

					; spiContReadStart(mp->keymap + (pch->FLTP * 4), &mp->md2);
						I1=		mp@keymap
						slz		R2, 2
						AR=		rm[I1++]
						R2=		AR + R2
						AR=		rm[I1]
						AR=		AR + 0 + C
						push		AR
						push		R2
						AR=		BP
						AR=		AR + 2
						I1=		AR
						mSfContReadStart
						pop		AR
						pop		AR

					; AX = spiContReadWord();
						mSfContReadWord

					; BX = AX & 0x0FFF;
						R3=		AR		; INS
						clr		R3.b13
						clr		R3.b12
						slc		AR, 2
						slc		AR, 2

					; AX = spiContReadWord();
						mSfContReadWord
						R2=		AR		; FLTP

					; spiContReadStop();
						mSfContReadStop

					; CX = (BX & 0x3000) >> 12;
						P1=		#md2ScaleTable	; code
						AR=		0
						slc		AR, 2
						P1=		P1 + AR

					; mp.skip = 1 << CX;
						I1=		MC_SAMPLE_SKIP
						AR=		I0
						I1=		I1 + AR
						rm[I1++]=	pm[P1]

					; mp.skipre = mp.skip;
						rm[I1]=		pm[P1]

					; pch->FLTP = AX.U;
						I1=		MC_FLTP
						AR=		I0
						I1=		I1 + AR
						rm[I1]=		R2

				; }
				@md2si_label_1624:


				; ~~ shift

				; if(pch->midich != 9)
					I1=		MC_MIDICH
					AR=		I0
					I1=		I1 + AR
					AR=		rm[I1]
					SF=		AR - 9
					if EQ jmp	@md2si_label_1041
				; {
					; __sub_md2Pitch();
						call		__sub_md2Pitch
				; }
				@md2si_label_1041:



				; BX.U = BX.U * mp->SizeInsIndex;
					MX=		18
					AR=		R3
				#ifdef _MSPEECHDSP_
					MULSS
				#else
					MR=		MX * AR
				#endif

				; temp = (mp.insbase + BX.U);
					I1=		mp@insbase_l
					AR=		rm[I1++]
					MR0=		MR0 + AR
					AR=		rm[I1]
					AR=		AR + MR1 + C
					push		AR
					push		MR0

				; ~~ Debug("table adr=%08X\n", temp);


				; ~~ get instrument address


				; sfContReadStart(HIADR(&temp));
					AR=		BP
					AR=		AR + 2
					I1=		AR
					mSfContReadStart
					pop		AR
					pop		AR

				; BX = sfContReadWord();		// low
					push		AX
					push		BX
					mSfContReadWord
					BX=		AR

				; AX = sfContReadWord();		// high
					mSfContReadWord
					AX=		AR

				; pch->insadr = mp.baseadr + ((unsigned long)AX << 16) | (unsigned long)BX;
					I1=		mp_baseadr_l
					R2=		rm[I1++]
					R3=		rm[I1]
					I1=		MC_INSADR_L
					AR=		I0
					I1=		AR + I1
					AR=		R2
					rm[I1++]=	AR + BX
					AR=		R3
					rm[I1]=		AR + AX + C
					pop		BX
					pop		AX


				; Debug("inst adr=%08X\n", (int)pch->insadr);


				; ~~ direct read ADSR parameters (right behind address)


				; sfContRead4Word();

				; pch->ADSR.VOL = sfContReadWord();
					I1=		MC_ADSR_VOL
					AR=		I0
					I1=		I1 + AR
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.lpAttack = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.sAttack = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.lpDecay = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.sDecay = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.lpSustain = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; pch->ADSR.sSustain = sfContReadWord();
					mSfContReadWord
					rm[I1++]=	AR

				; spiContReadStop();
					mSfContReadStop


				; sfContReadStart(HIADR(&pch->insadr));
					I1=		MC_INSADR_H
					AR=		I0
					I1=		AR + I1
					mSfContReadStart

				; ~~ loop address

				; if(mp.flags.ADPCM)
					push		AX
					push		BX
					mSfContReadWord
					BX=		AR		; ~~ loop address
					mSfContReadWord
					AX=		AR
					; ~
					I1=		mp@flags
					AR=		rm[I1]
					test		AR.b5
					if NZ jmp	@__md2si_label_1015
					test		AR.b3
					if ZR jmp	@__md2si_label_1411
				@__md2si_label_1015:
				; {
					; tmp = SPI_DAT;

					; sfContReadWord();

					; ~~ ADPCM uses byte address to indicate odd frame

					; pch->insloop = mp.baseadr + (tmp | (SPI_DAT << 16));
						I1=		mp_baseadr_l
						R2=		rm[I1++]
						R3=		rm[I1]
						I1=		MC_INSLOOP_L
						AR=		I0
						I1=		I1 + AR
						AR=		R2
						rm[I1++]=	AR + BX
						AR=		R3
						rm[I1]=		AR + AX + C

					; pch->TASPAD.HD = 0;
						I1=		MC_ADPCM_HD
						AR=		I0
						I1=		I1 + AR
						AR=		0
						rm[I1++]=	AR

					; pch->TASPAD.S0 = 0;
						rm[I1++]=	AR

					; pch->TASPAD.S1 = 0;
						rm[I1++]=	AR

					; pch->TASPAD.CNT = 0;
						rm[I1++]=	AR

					; ~~ cache first word of ADPCM data


					; spiContReadStart(pch->insadr, &mp->md2);
						; ~~ optimize out

					; AX = spiContReadWord();
						mSfContReadWord

					; pch->TASPAD.BUF = AX.S;
						rm[I1++]=	AR

					; spiContReadStop();
						; mSfContReadStop	; ~~ optimize out

					; pch->insadr += 6;	; ~~ skip loop point + first word data
						I1=		MC_INSADR_L
						AR=		I0
						I1=		I1 + AR
						AR=		rm[I1]
						AR=		AR + 6
						rm[I1++]=	AR
						AR=		rm[I1]
						AR=		AR + 0 + C
						rm[I1]=		AR

					jmp		@__md2si_label_1411_1
				; }
				; else
				@__md2si_label_1411:
				; {
					; ~~ PCM uses word address

					; pch->insloop = mp.baseadr + (AX | (BX << 16));
						I1=		mp_baseadr_l
						R2=		rm[I1++]
						R3=		rm[I1]
						I1=		MC_INSLOOP_L
						AR=		I0
						I1=		I1 + AR
						AR=		R2
						rm[I1++]=	AR + BX
						AR=		R3
						rm[I1]=		AR + AX + C

					; pch->insadr += 4;		// skip loop point
						I1=		MC_INSADR_L
						AR=		I0
						I1=		I1 + AR
						AR=		rm[I1]
						AR=		AR + 4
						rm[I1++]=	AR
						AR=		rm[I1]
						AR=		AR + 0 + C
						rm[I1]=		AR
				; }
				@__md2si_label_1411_1:
					pop		BX
					pop		AX

				; sfContReadStop();
					mSfContReadStop

				; Debug("loop adr=%08X\n", (int)pch->insloop);


				; chmask = mp.mchmask & (1 << pch->midich);
					P1.hh=		0			; ~~ for FDSP
					P1=		#@md2chmask_table
					I1=		MC_MIDICH
					AR=		I0
					I1=		I1 + AR
					AR=		rm[I1]			; ~~ pch->midich
					P1=		P1 + AR
					I1=		mp@mchmask
					R2=		rm[I1]
					AR=		pm[P1]
					AR=		AR & R2

				; if(chmask)
					if ZR jmp	@__md2si_label_1644
				; {
					; ~~ channel enable

					; mp.PlayChannel |= (1 << i);
						I1=		mp@PlayChannel_l
						AR=		rm[I1]
						rm[I1++]=	AR | BX
						AR=		rm[I1]
						rm[I1]=		AR | AX

					; mp.ReleaseCh &= ~(1 << i);
						I1=		mp@ReleaseCh_l
						AR=		rm[I1]
						AR=		AR ^ 0xFF
						AR=		AR | BX
						AR=		AR ^ 0xFF
						rm[I1++]=	AR
						AR=		rm[I1]
						AR=		AR ^ 0xFF
						AR=		AR | AX
						AR=		AR ^ 0xFF
						rm[I1]=		AR

					jmp		@__md2si_label_1644_1
				; }
				; else
				@__md2si_label_1644:
				; {
					; ~~ channel mask

					; mp.PlayChannel &= ~(1 << i);
						I1=		mp@PlayChannel_l
						AR=		rm[I1]
						AR=		AR ^ 0xFF
						AR=		AR | BX
						AR=		AR ^ 0xFF
						rm[I1++]=	AR
						AR=		rm[I1]
						AR=		AR ^ 0xFF
						AR=		AR | AX
						AR=		AR ^ 0xFF
						rm[I1]=		AR

					; mp.ReleaseCh &= ~(1 << i);
						I1=		mp@ReleaseCh_l
						AR=		rm[I1]
						rm[I1++]=	AR | BX
						AR=		rm[I1]
						rm[I1]=		AR | AX
				; }
				@__md2si_label_1644_1:


				; sfContReadStart(HIADR(&mp.note));
					I1=		mp@note_l
					AR=		rm[I1]
					rm[I1++]=	AR + DX
					AR=		rm[I1]
					AR=		AR + 0 + C
					rm[I1]=		AR
					mSfContReadStart
			; }
			@__md2si_label_0328:
		; __md2si_label_0328:

			; mp.PlayInfo >>= 1;
				slz		BX, 1
				slc		AX, 1

			; pch++;
				AR=		MC_SIZEOF
				I0=		I0 + AR

			loop		@md2si_loop_1344
		; }
	; }
	@md2si_label_1340:
		I1=		mp@PlayInfo_l
		rm[I1++]=	R0
		rm[I1]=		R1

	; sfContReadStop();
		mSfContReadStop

	@md2si_label_1645:
	; ~~ Debug("PlayChannel=%08X\n", mp->PlayChannel);

	rets

	; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

md2ScaleTable:
@md2chmask_table:
	DW 0x0001
	DW 0x0002
	DW 0x0004
	DW 0x0008
	DW 0x0010
	DW 0x0020
	DW 0x0040
	DW 0x0080
	DW 0x0100
	DW 0x0200
	DW 0x0400
	DW 0x0800
	DW 0x1000
	DW 0x2000
	DW 0x4000
	DW 0x8000
; }


	DW 0x2000, 0x21E8, 0x23EC, 0x260E, 0x2852, 0x2AB8, 0x2D42, 0x2FF3, 0x32CC, 0x35D2, 0x3905, 0x3C69	; -12 ~ -1
@md2shift_table:
	DW 0x4000												; 0
	DW 0x43CF, 0x47D7, 0x4C1C, 0x50A3, 0x556F, 0x5A83, 0x5FE5, 0x6598, 0x6BA3, 0x7209, 0x78D1, 0x8000	; 1 ~ 12



; ~.~---------------------------------------------------------------
; void md2ExtEvent(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;    AX:BX	- (1 << i)
;    CX		- i
;    DX		- next pch
;    I0		- pch
;    I1		- mp.??
;    R1:R0	- mp.PlayInfo
;    R2		- AX
;    R3		- BX
;
; special request:
;
;
; ------------------------------------------------------------------
; #ifdef __RAMFUNC_ENABLE__
; __md2ExtEvent:
	; P1.hh=		0
; #else
md2ExtEvent:
; #endif
; {
	; md2Channel *pch;
	; DSP16 AX, BX;
	; int i;

	; if(mp.extev & 0x04)
		I1=		mp@extev
		AR=		rm[I1]
		test		AR.b2
		if ZR jmp	@md2extev_label_1428
	; {
		; ~~ extend event 4-bit

		; ~~ +-----------+---------------+--------------+
		; ~~ | ext event | event channel | control data |
		; ~~ | 4-bit	 |    20-bit	 |    n bytes	|
		; ~~ +-----------+---------------+--------------+

		; sfContReadStart(HIADR(&mp.note));
			I1=		mp@note_h
			mSfContReadStart

		; // +-------------------+
		; // |	Channel [19:16]	 |  N0
		; // +-------------------+	 L
		; // |	     ExtEV	 |  N1
		; // +-------------------+
		; // |	Channel [11:8]	 |  N2
		; // +-------------------+	 H
		; // |	Channel [15:12]	 |  N3
		; // +-------------------+

		; AX = sfContReadWord();
			mSfContReadWord
			R0=		AR

		; mp.extev = AX.N1;
			I1=		mp@extev
			sra		AR, 2
			sra		AR, 2
			AR=		AR & 0x0F
			rm[I1]=		AR

		; ~~ volume control

		; if(mp.extev & 0x01)
			test		AR.b0
			if ZR jmp	@md2extev_label_1542
		; {
			; mp.PlayInfo = (((unsigned long)AX.N0) << 16) |
					; ((unsigned long)AX.H << 8);
				AR=		0x0F
				AR=		AR & R0
				R1=		AR
				AR=		0xFF00
				R0=		R0 & AR

			; // +-------------------+
			; // |			 |  N0
			; // |	Channel [7:0]	 |	 L
			; // |			 |  N1
			; // +-------------------+
			; // |			 |  N2
			; // |	   Data 0	 |	 H
			; // |			 |  N3
			; // +-------------------+

			; AX = spiContReadWord();
				mSfContReadWord

			; ~~ mp.note += 4;
				; I1=		mp@note_l
				; AR=		rm[I1]
				; AR=		AR + 2
				; rm[I1++]=	AR
				; AR=		rm[I1]
				; AR=		AR + 0 + C
				; rm[I1]=		AR

			; mp.PlayInfo |= (unsigned long)AX.L;
				AX=		AR
				AH=		0
				R0=		R0 | AR

			; c = 4;
				DX=		4

			; for(i = 0; (i < 20) && (mp->PlayInfo); i++)
				io[ClrWDT]=	AR
				CX=		19
				I1=		mp@ch0@FLTG
			@md2extev_loop_1807:
				AR=		R0
				AR=		AR | R1
				if ZR jmp	@md2extev_label_1808
			; {
				; if(mp->PlayInfo & 0x01)
					sra		R1, 1
					src		R0, 1
					if NC jmp	@md2extev_label_1808_1
				; {
					; BX.L = AX.H
						AR=		AX
						xchg		AR
						AH=		0
						BX=		AR

					; AX = spiContReadWord();
						mSfContReadWord

					; BX.H = AX.L
						AX=		AR
						xchg		AR
						AL=		0

					; mp.ch[i].FLTG = BX.U;
						rm[I1]=		BX | AR

					; c += 2;
						DX++
						DX++
				; }
				@md2extev_label_1808_1:

				; mp->PlayInfo >>= 1;
					AR=		MC_SIZEOF
					I1=		I1 + AR

				loop		@md2extev_loop_1807
			; }
			@md2extev_label_1808:

			; mp.note += c;
				I1=		mp@note_l
				AR=		rm[I1]
				rm[I1++]=	AR + DX
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; ~~ stop continue function and restart it again
			; ~~ for align reason.

			; sfContReadStop();
				mSfContReadStop

			; sfContReadStart(HIADR(&mp.note));
				I1=		mp@note_h
				mSfContReadStart

			; AX = sfContReadWord();
				mSfContReadWord
				R0=		AR
		; }
		@md2extev_label_1542:

		; // pitch bend

		; if(mp.extev & 0x02)
			I1=		mp@extev
			AR=		rm[I1]
			test		AR.b1
			if ZR jmp	@md2extev_label_1846
		; {
			; // +-------------------+
			; // |	Channel [19:16]	 |  N0
			; // +-------------------+	 L
			; // |	     Dummy	 |  N1
			; // +-------------------+
			; // |	Channel [11:8]	 |  N2
			; // +-------------------+	 H
			; // |	Channel [15:12]	 |  N3
			; // +-------------------+

			; mp->PlayInfo = (((unsigned long)AX.N0) << 16) |
					; ((unsigned long)AX.H << 8);
				AR=		0x0F
				AR=		AR & R0
				R1=		AR
				AR=		0xFF00
				R0=		R0 & AR

			; // +-------------------+
			; // |			 |  N0
			; // |	Channel [7:0]	 |	 L
			; // |			 |  N1
			; // +-------------------+
			; // |			 |  N2
			; // |	   FLTP [7:0]	 |	 H
			; // |			 |  N3
			; // +-------------------+

			; AX = spiContReadWord();
				mSfContReadWord

			; ~~ mp->note += 3;
				; I1=		mp@note_l
				; AR=		rm[I1]
				; AR=		AR + 3
				; rm[I1++]=	AR
				; AR=		rm[I1]
				; AR=		AR + 0 + C
				; rm[I1]=		AR

			; mp->PlayInfo |= (unsigned long)AX.L;
				AX=		AR
				AH=		0
				R0=		R0 | AR

			; for(i = 0; (i < 20) && (mp->PlayInfo); i++)
				io[ClrWDT]=	AR
				CX=		19
				I1=		mp@ch0@FLTP
				DX=		4
			@md2extev_loop_1850:
				AR=		R0
				AR=		AR | R1
				if ZR jmp	@md2extev_label_1850
			; {
				; if(mp->PlayInfo & 0x01)
					sra		R1, 1
					src		R0, 1
					if NC jmp	@md2extev_label_1850_1
				; {
					; mp->note += 2;
						DX++
						DX++

					; BX = spiContReadWord();
						mSfContReadWord

					; mp->ch[i].FLTP = (unsigned long)BX.U;
						rm[I1]=		AR
				; }
				@md2extev_label_1850_1:

				; mp->PlayInfo >>= 1;
					AR=		MC_SIZEOF
					I1=		I1 + AR

				loop		@md2extev_loop_1850
			; }
			@md2extev_label_1850:

			; ~~ write back
				I1=		mp@note_l
				AR=		rm[I1]
				rm[I1++]=	AR + DX
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR
		; }
		@md2extev_label_1846:

		; sfContReadStop();
			mSfContReadStop

		; mp.PlayInfo = 0;
		; mp.ExtEV = 0;
			I1=		mp@extev
			AR=		0
			rm[I1]=		AR
	; }
	@md2extev_label_1428:

	rets
; }



__RAMFUNC_SEGMENT_START:


; ~.~---------------------------------------------------------------
; void md2DoADSR(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2
;
; meaning registers:
;    AX:BX	- ~(1 << i)
;    CX		- i
;    DX		- next pch
;    I0		- pch (pch->FLTG)
;    I1		- mp.??
;    R1:R0	- ch
;    R2		- j
;
; special request:
;
;
; ------------------------------------------------------------------
md2DoADSR:
; {
	; md2Channel *pch;
	; int ch;
	; int i, j;

	; if(!(mp->ReleaseCh & mask))
		I1=		mp@ReleaseCh_l
		AR=		BX
		AR=		AR ^ 0xFF
		DX=		rm[I1++]
		AR=		AR & DX
		if NZ jmp	@md2drc_label_1904
		AR=		AX
		AR=		AR ^ 0xFF
		DX=		rm[I1]
		AR=		AR & DX
		if NZ jmp	@md2drc_label_1904
	; {
		; ~~ do ADSR if not in release mode.

		; ~~ offset aware !!!
		; pch->ADSR

		; if(pch->ADSR.lpAttack)
			I1=		MC_ADSR_LPATTACK
			AR=		I0
			I1=		I1 + AR
			AR=		rm[I1]
			if ZR jmp	@md2drc_label_1646
		; {
			; pch->ADSR.lpAttack--;
				AR--
				rm[I1++]=	AR

			; pch->ADSR.VOL += pch->ADSR.sAttack;
				DX=		rm[I1]
				I1=		MC_ADSR_VOL
				AR=		I0
				I1=		I1 + AR
				AR=		rm[I1]
				rm[I1]=		AR + DX

			jmp		@md2drc_label_1646_1
		; }
		; else
		@md2drc_label_1646:
		; {
			; if(pch->ADSR.lpDecay)
				I1=		MC_ADSR_LPDECAY
				AR=		I0
				I1=		I1 + AR
				AR=		rm[I1]
				if ZR jmp	@md2drc_label_1647
			; {
				; pch->ADSR.lpDecay--;
					AR--
					rm[I1++]=	AR

				; pch->ADSR.VOL += pch->ADSR.sDecay;
					DX=		rm[I1]
					I1=		MC_ADSR_VOL
					AR=		I0
					I1=		I1 + AR
					AR=		rm[I1]
					rm[I1]=		AR + DX

				jmp		@md2drc_label_1646_1
			; }
			; else
			@md2drc_label_1647:
			; {
				; if(pch->ADSR.lpSustain)
					I1=		MC_ADSR_LPSUSTAIN
					AR=		I0
					I1=		I1 + AR
					AR=		rm[I1]
					if ZR jmp	@md2drc_label_1744
				; {
					; pch->ADSR.lpSustain--;
						AR--
						rm[I1++]=	AR

					; pch->ADSR.VOL += pch->ADSR.sSustain;
						DX=		rm[I1]
						I1=		MC_ADSR_VOL
						AR=		I0
						I1=		I1 + AR
						AR=		rm[I1]
						rm[I1]=		AR + DX
					jmp		@md2drc_label_1646_1
				; }
				; else
				@md2drc_label_1744:
				; {
					I1=		MC_ADSR_VOL
					AR=		I0
					I1=		I1 + AR
					jmp		@md2drc_label_1837
				; }
			; }
		; }
		@md2drc_label_1646_1:


		; if(pch->ADSR.VOL > 32767)
			if AV jmp	@md2drc_label_1406
			jmp		@md2drc_label_1406_1
		@md2drc_label_1406:
		; {
			; pch->ADSR.VOL = 32767;
				AR=		0x7FFF
				rm[I1]=		AR
			jmp		@md2drc_label_1837
		; }
		@md2drc_label_1406_1:

		; if(pch->ADSR.VOL < 0)
			AR=		rm[I1]
			if GE jmp	@md2drc_label_1837
		; {
			; pch->ADSR.VOL = 0;
				AR=		0
				rm[I1]=		AR
				jmp		@md2drc_label_1825
		; }
		@md2drc_label_1837:


		; MX = (pch->FLTG * pch->VOL) >> 15;

		#ifdef _MSPEECHDSP_
			AR=		rm[I1]		; ~~ offset aware - pch->ADSR.VOL
			MX=		AR
			I1=		MC_FLTG
			AR=		I0
			I1=		I1 + AR
			AR=		rm[I1]
			MULSS

			slz		MR0, 1
			slc		MR1, 1
			AR=		MR1
		@md2drc_label_1825:
			P0=		AR		; ~~ MX
		#else
			#ifdef _MSPEECHDSP2_ && MIDIPCMDEC
				AR=		rm[I1]		; ~~ offset aware - pch->ADSR.VOL
				MX=		AR
				I1=		MC_FLTG
				AR=		I0
				I1=		I1 + AR
				AR=		rm[I1]
				MR=		MX * AR
				slz		MR0, 1
				slc		MR1, 1
				AR=		MR1
				MX=		AR

				; assistance vol

				AR=		rm[mp_vol]
				AR=		AR & 0x3F
				xchg		AR
				AL=		0xFF
				MR=		MX * AR
				slz		MR0, 2
				slc		MR1, 2
				AR=		MR1
			@md2drc_label_1825:
				; P0=		AR
				set		AR.b15
				FLTG=		AR
			#else
				AR=		rm[I1]		; ~~ offset aware - pch->ADSR.VOL
				MX=		AR
				I1=		MC_FLTG
				AR=		I0
				I1=		I1 + AR
				AR=		rm[I1]
				MR=		MX * AR

				slz		MR0, 1
				slc		MR1, 1
				AR=		MR1
			@md2drc_label_1825:
				P0=		AR		; ~~ MX
			#endif
		#endif

		; return true;
			set		Z
			rets
	; }
	@md2drc_label_1904:


	; j = (int)(pch->ADSR.VOL - pch->GainFade);
		; ~~ offset aware
		; ~~ pch->ADSR.VOL
		I1=		MC_RR
		AR=		I0
		I1=		I1 + AR
		DX=		rm[I1]
		; I1=		MC_ADSR_VOL
		; AR=		I0
		; I1=		I1 + AR
		AR=		MC_ADSR_VOL - MC_RR
		I1=		I1 + AR
		AR=		rm[I1]
		AR=		AR - DX

	; if(j <= 0)
		if LE jmp	@md2drc_label_1853
		jmp		@md2drc_label_1853_1
	@md2drc_label_1853:
	; {
		; pch->ADSR.VOL = 0;
			AR=		0
			rm[I1]=		AR

		; MX = 0;
			P0=		0

		; mp->ReleaseCh &= (~mask);
			I1=		mp@ReleaseCh_l
			AR=		rm[I1]
			rm[I1++]=	AR & BX
			AR=		rm[I1]
			rm[I1++]=	AR & AX

		; mp->PlayChannel &= (~mask);
			I1=		mp@PlayChannel_l
			AR=		rm[I1]
			rm[I1++]=	AR & BX
			AR=		rm[I1]
			rm[I1]=		AR & AX

		; return false;
			clr		Z
			rets
	; }
	; else
	@md2drc_label_1853_1:
	; {
		; pch->ADSR.VOL = j;
			rm[I1]=		AR
	; }


	; MX = (pch->FLTG * pch->ADSR.VOL) >> 15;
		MX=		AR
		I1=		MC_FLTG
		AR=		I0
		I1=		I1 + AR
		AR=		rm[I1]

	#ifdef _MSPEECHDSP_
		MULSS
		slz		MR0, 1
		slc		MR1, 1
		AR=		MR1
		P0=		AR		; ~~ MX
	#else

		#ifdef _MSPEECHDSP2_ && MIDIPCMDEC
			MR=		MX * AR
			slz		MR0, 1
			slc		MR1, 1
			AR=		MR1
			MX=		AR

			; assistance vol

			AR=		rm[mp_vol]
			AR=		AR & 0x3F
			xchg		AR
			AL=		0xFF
			MR=		MX * AR
			slz		MR0, 2
			slc		MR1, 2
			AR=		MR1
			; P0=		AR
			set		AR.b15
			FLTG=		AR
		#else
			MR=		MX * AR
			slz		MR0, 1
			slc		MR1, 1
			AR=		MR1
			P0=		AR		; ~~ MX
		#endif

	#endif


	; return true;
		set		Z
		rets
; }





; ~~ DO channel here






; ~.~-----------------------------------------------------
; bool md2DoChannelSub(WORD count, WORD *prender, LONG mask)
;
; in:
;    CX		- count
;    I0		- point to Channel
;    I1		- *prender
;    AX:BX	- mask
;
; out:
;    Z		- continue
;    NZ		- stop
;
; affect registers:
;
;
; meaning registers:
;
;
; --------------------------------------------------------


#ifdef SOFTADPDEC


; ~.~-----------------------------------------------------
; bool md2DoChannelSub(WORD count, WORD *prender, LONG mask)

md2DoChannelAdpcmSub:
; {
	; for(i = 0; i < count; i++)
		push		R0
	@md2dcsadp_loop_1039_1:
	; {
		push		I1
		I1=		MC_SAMPLE_SKIP
		AR=		I0
		I1=		I1 + AR
		AR=		rm[I1]
		R0=		AR
	#ifdef __RAMFUNC_ENABLE__

	#else
		PCH=		NextSampleAdpcm
	#endif

		; if(!FLTP)
			AR=		FLTP
			if NZ jmp	@md2dcsadp_label_1435
		; {
			; do
			@md2dcsadp_loop_1436:
			; {
				; if(!NextSampleAdpcm())
				#ifdef __RAMFUNC_ENABLE__
					call		NextSampleAdpcmFast
				#else
					; PCH=		NextSampleAdpcm
					lcall		NextSampleAdpcm
				#endif
					if ZR jmp	@md2dcsadp_label_1437
				; {
					; return false;
						pop		I1
						pop		R0
						rets
				; }
				@md2dcsadp_label_1437:

			; } while(mp[i].skip--);
				R0--
				if ZR jmp	@md2dcsadp_label_1438
				jmp		@md2dcsadp_loop_1436

				; push		I1
				; AR=		MC_SAMPLE_SKIP
				; AR=		I0 + AR
				; I1=		AR
				; AR=		rm[I1]
				; AR--
				; rm[I1++]=	AR
				; if ZR jmp	@md2dcsadp_label_1438
				; pop		I1
				; jmp		@md2dcsadp_loop_1436
			@md2dcsadp_label_1438:

				AR=		P0

				#ifdef _MSPEECHDSP_
					MULSS
				#else
					MR=		MX * AR
				#endif
					slz		MR0, 1
					slc		MR1, 1

				AR=		MR1
				MX=		AR

				; assistance vol

				AR=		rm[mp_vol]
				AR=		AR & 0x3F
				xchg		AR
				AL=		0xFF


				#ifdef _MSPEECHDSP_
					MULSS
				#else
					MR=		MX * AR
				#endif

					slz		MR0, 2
					slc		MR1, 2

				AR=		MR1
				MX=		AR

			jmp		@md2dcsadp_label_1435_1
		; }
		; else
		@md2dcsadp_label_1435:
		; {
			; do
			@md2dcsadp_loop_1039:
			; {
				; if(FIFORDY)
					if FA jmp	@md2dcsadp_label_1732
				; {
					; if(!NextSampleAdpcm())
					#ifdef __RAMFUNC_ENABLE__
						call		NextSampleAdpcmFast
					#else
						; PCH=		NextSampleAdpcm
						lcall		NextSampleAdpcm
					#endif
						if ZR jmp	@md2dcsadp_label_1520
					; {
						; return false;
							pop		I1
							pop		R0
							rets
					; }
					@md2dcsadp_label_1520:


					AR=		P0

					#ifdef _MSPEECHDSP_
						MULSS
					#else
						MR=		MX * AR
					#endif
						slz		MR0, 1
						slc		MR1, 1

					AR=		MR1

					; FLTI = Sample;
						FLTI=		AR

				; }
				@md2dcsadp_label_1732:

			; } while(mp[i].skip--);
				AR=		FLTO	; ~~ fetch FLTO
				MX=		AR
				R0--
				if ZR jmp	@md2dcsadp_label_1618
				jmp		@md2dcsadp_loop_1039
				; push		I1
				; AR=		MC_SAMPLE_SKIP
				; AR=		I0 + AR
				; I1=		AR
				; AR=		rm[I1]
				; AR--
				; rm[I1++]=	AR
				; if ZR jmp	@md2dcsadp_label_1618
				; pop		I1
				; jmp		@md2dcsadp_loop_1039
			@md2dcsadp_label_1618:
		; }
		@md2dcsadp_label_1435_1:

		; mp[i].skip = mp[i].skipre;
			; AR=		rm[I1--]
			; rm[I1]=		AR

		; sample = ((LONG)FLTO * MX) >> 15;

		#ifdef _MSPEECHDSP_
			AR=		1			; ~~ Volume
			MULSS
		#else
			MR=		MX * 1
		#endif


		@md2dcsadp_label_1723:
			pop		I1
			DX=		rm[I1]
			AR=		MR0
			rm[I1++]=	AR + DX
			AR=		MR1
			DX=		rm[I1]
			rm[I1++]=	AR + DX + C

		loop		@md2dcsadp_loop_1039_1
	; }
	@md2dcsadp_label_1335:

	; return true;
		pop		R0
		set		Z
		rets


; }


#else


#ifdef MIDIPCMDEC


md2DoChannelMidpcmSub:
; {


	; for(i = 0; i < count; i++)
	@md2dcsmip_loop_1039_1:
	; {
		push		I1
		I1=		MC_SAMPLE_SKIP
		AR=		I0
		I1=		I1 + AR
		P0=		rm[I1]
		PCH=		NextSampleMidpcm
		; pop		I1

		; if(!FLTP)
			AR=		FLTP
			if NZ jmp	@md2dcsmip_label_1435
		; {
			; do
			@md2dcsmip_loop_1436:
			; {
				; if(!NextSampleAdpcm())
				#ifdef __RAMFUNC_ENABLE__
					call		NextSampleAdpcmFast
				#else
					; PCH=		NextSampleMidpcm
					lcall		NextSampleMidpcm
				#endif
					if ZR jmp	@md2dcsmip_label_1437
				; {
					; return false;
						pop		I1
						rets
				; }
				@md2dcsmip_label_1437:

			; } while(mp[i].skip--);
				AR=		FLTO
				; MX=		AR
				P0--
				if ZR jmp	@md2dcsmip_label_1618
				jmp		@md2dcsmip_loop_1436
			; @md2dcsmip_label_1438:

				; AR=		P0

				; #ifdef _MSPEECHDSP_
					; MULSS
				; #else
					; MR=		MX * AR
				; #endif
					; slz		MR0, 1
					; slc		MR1, 1

				; AR=		MR1
				; MX=		AR

			jmp		@md2dcsmip_label_1435_1
		; }
		; else
		@md2dcsmip_label_1435:
		; {
			; do
			@md2dcsmip_loop_1039:
			; {
				; if(FIFORDY)
					if FA jmp	@md2dcsmip_label_1732
				; {
					; if(!NextSampleAdpcm())
					#ifdef __RAMFUNC_ENABLE__
						call		NextSampleAdpcmFast
					#else
						; PCH=		NextSampleMidpcm
						lcall		NextSampleMidpcm
					#endif
						if ZR jmp	@md2dcsmip_label_1520
					; {
						; return false;
							pop		I1
							rets
					; }
					@md2dcsmip_label_1520:
				; }
				@md2dcsmip_label_1732:

			; } while(mp[i].skip--);
				AR=		FLTO	; ~~ fetch FLTO
				; MX=		AR
				P0--
				if ZR jmp	@md2dcsmip_label_1618
				jmp		@md2dcsmip_loop_1039
			@md2dcsmip_label_1618:
				MX=		AR
		; }
		@md2dcsmip_label_1435_1:


		; mp[i].skip = mp[i].skipre;
			; AR=		rm[I1--]
			; rm[I1]=		AR

		; sample = ((LONG)FLTO * MX) >> 15;

		#ifdef _MSPEECHDSP_
			AR=		1			; ~~ Volume
			MULSS
		#else
			MR=		MX * 1
		#endif


		@md2dcsmip_label_1723:
			pop		I1
			DX=		rm[I1]
			AR=		MR0
			rm[I1++]=	AR + DX
			AR=		MR1
			DX=		rm[I1]
			rm[I1++]=	AR + DX + C

		loop		@md2dcsmip_loop_1039_1
	; }
	@md2dcsmip_label_1335:

	; return true;
		set		Z
		rets


; }


#else


; -------------------------------------
; bool NextSamplePCM(*pch, ChannelBit, Offset)
; -------------------------------------
; input:
;    AX:BX	- channel mask bit
;    P1		- ADPCM data address
;    I0		- pch
;    R3		- Offset
;
; -------------------------------------
; return:
;    Z		- decode OK
;    NZ		- decode stop
;    AR		- decode Sample
;    R3		- Offset
; -------------------------------------
; protected:
;    I0, I1, DX

NextSamplePCM:
; {
	; AX = SPI_DAT;
		mSfContReadWord

	; if(AX.U == 0x8000)
		R2=		0x8000
		SF=		AR - R2
		if NE jmp	@md2dc_label_1318
	; {
		; sfContReadStop();
			mSfContReadStop

		; if(pch->insloop == mp.baseadr)
			; ~~ offset aware - pch->insloop
			push		I1
			push		DX
			I1=		mp_baseadr_l
			DX=		rm[I1++]
			R2=		rm[I1]
			AR=		I0
			I1=		AR
			AR=		rm[I1++]
			DX=		DX - AR
			AR=		rm[I1]
			AR=		R2 - AR + C - 1
			AR=		AR | DX
			if NZ jmp	@md2dc_label_1323
		; {
			; ~~ disable this channel if not loop

			; mp.PlayChannel &= ~(1 << i);
				I1=		mp@PlayChannel_l
				AR=		rm[I1]
				rm[I1++]=	AR & BX
				AR=		rm[I1]
				rm[I1]=		AR & AX

			; return false;
				pop		DX
				pop		I1
				clr		Z
				rets
		; }
		@md2dc_label_1323:


		; pch->insadr = pch->insloop;
			; ~~ offset aware -
			;	pch->insloop
			;	pch->insadr
			AR=		I0
			I1=		AR
			AR=		rm[I1++2]
			rm[I1--]=	AR
			AR=		rm[I1++2]
			rm[I1]=		AR

		; Offset.U = 0;
			R3=		0

		; sfContReadStart(HIADR(&pch->insadr));
			; ~~ offset aware -
			;	pch->insadr
			mSfContReadStart

		; AX = sfContReadWord();
			mSfContReadWord
			pop		DX
			pop		I1
	; }
	@md2dc_label_1318:

	; Offset.U++;
		R3++

	; return true;
		MX=		AR
		set		Z
		rets
; }


; ~.~-----------------------------------------------------
; bool md2DoChannelSub(WORD count, WORD *prender, LONG mask)
;
; in:
;    CX		- count
;    I0		- point to Channel
;    I1		- *prender
;    AX:BX	- mask
;
; out:
;    Z		- continue
;    NZ		- stop
;
; affect registers:
;
;
; meaning registers:
;
;
; --------------------------------------------------------
md2DoChannelSubPCM:
; {
	; for(i = 0; i < count; i++)
	@md2dcs_loop_1039_1:
		push		I1
		I1=		MC_SAMPLE_SKIP
		AR=		I0
		I1=		I1 + AR
		DX=		rm[I1]
		pop		I1
	; {
		; if(!FLTP)
			AR=		FLTP
			if NZ jmp	@md2dcs_label_1423
		; {
			; do
			@md2dcs_loop_1424:
			; {
				; if(!NextSamplePCM())
					call		NextSamplePCM
					if ZR jmp	@md2dcs_label_1425
				; {
					; return false;
						rets
				; }
				@md2dcs_label_1425:


			; } while(mp[i].skip--);
				DX--
				if NZ jmp	@md2dcs_loop_1424

				AR=		P0

				#ifdef _MSPEECHDSP_
					MULSS
				#else
					MR=		MX * AR
				#endif
					slz		MR0, 1
					slc		MR1, 1

				AR=		MR1
				MX=		AR

				; assistance vol

				AR=		rm[mp_vol]
				AR=		AR & 0x3F
				xchg		AR
				AL=		0xFF

				#ifdef _MSPEECHDSP_
					MULSS
				#else
					MR=		MX * AR
				#endif

					slz		MR0, 2
					slc		MR1, 2

				AR=		MR1
				MX=		AR

			jmp		@md2dcs_label_1423_1
		; }
		; else
		@md2dcs_label_1423:
		; {
			; do
			@md2dcs_loop_1039:
			; {
				; if(FIFORDY)
					if FA jmp	@md2dc_label_1151
				; {
					; if(!NextSamplePCM())
						call		NextSamplePCM
						if ZR jmp	@md2dc_label_1520
					; {
						; return false;
							rets
					; }
					@md2dc_label_1520:


					AR=		P0

					#ifdef _MSPEECHDSP_
						MULSS
					#else
						MR=		MX * AR
					#endif
						slz		MR0, 1
						slc		MR1, 1

					AR=		MR1

					; FLTI = AX;
						FLTI=		AR
				; }
				@md2dc_label_1151:

			; } while(mp[i].skip--);
				AR=		FLTO	; ~~ fetch FLTO
				MX=		AR
				DX--
				if NZ jmp	@md2dcs_loop_1039
		; }
		@md2dcs_label_1423_1:


		; mp[i].skip = mp[i].skipre;
			; nop

		; sample = ((LONG)FLTO * MX) >> 15;

		#ifdef _MSPEECHDSP_
			AR=		1
			MULSS
		#else
			MR=		MX * 1
		#endif

		; ~~ stereo plug-in



		; *(prender++) += sample;
		@md2dc_label_1501:
			; pop		I1
			DX=		rm[I1]
			AR=		MR0
			rm[I1++]=	AR + DX
			AR=		MR1
			DX=		rm[I1]
			rm[I1++]=	AR + DX + C

		loop		@md2dcs_loop_1039_1
	; }
	@md2dc_label_1335:

	; return true;
		set		Z
		rets


	; ~~ Stereo

; }


#endif


#endif









; ~.~---------------------------------------------------------------
; void md2DoChannel(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;    AX:BX	- ~(1 << i)
;    CX		- i, k
;    DX		- next pch
;    I0		- pch
;    I1		- mp.??, RENDERBUF
;    R1:R0	- ch
;    R2		- AX
;    R3		- BX
;
; special request:
;
;
; ------------------------------------------------------------------
#ifdef __RAMFUNC_ENABLE__
__md2DoChannel:
	P1.hh=		0
#else
md2DoChannel:
#endif
; {
	; unsigned long ch;
	; md2Channel *pch;
	; int i, j, k;
	; DSP16 AX, BX;

	; ~~ skip channel renderer if in/out are at the same bank

	; if((mp.inbuf & 0x40) == (mp.outbuf & 0x40))
		AX=		rm[mp@inbuf]
		AR=		rm[mp@outbuf]
		AR=		AR ^ AX
	#ifdef _PWM_64K_
		test		AR.b9
	#else
		test		AR.b8		; ~~ long address
	#endif
		if ZR jmp	@md2dc_label_1125
	; {
		; return;
	; }

	; ~~ initialize render buffer

	; FLTG = mp.vol;
		AR=		rm[mp@vol]
		FLTG=		AR

	; set		io[PortB].b3

	; memset(&RENDERBUF[mp.inbuf], 0, sizeof(long) * 128);
		I1=		rm[mp@inbuf]
	#ifdef _PWM_64K_
		CX=		0x7F
	#else
		CX=		0x3F
	#endif
		AR=		0
	@md2dc_loop_1739:
		rm[I1++]=	AR
		rm[I1++]=	AR
		rm[I1++]=	AR
		rm[I1++]=	AR
		loop		@md2dc_loop_1739

	; ~~

	; pch = mp->ch;
		I0=		mp@ch0@insloop_l

	; ch = mp->PlayChannel;
		I1=		mp@PlayChannel_l
		R0=		rm[I1++]
		AR=		rm[I1]

	; if(ch)
		AR=		AR | R0
		if ZR jmp	@md2dc_label_1619
		R1=		rm[I1]
	; {
		; for(i = 0; (i < 20) && ch; i++)
			io[ClrWDT]=	AR
			CX=		rm[mp@lop]
			; CX=		0
			BX=		0xFFFE
			AX=		0xFFFF
		@md2dc_loop_1622:
			AR=		R0
			AR=		AR | R1
			if ZR jmp	@md2dc_label_1619
		; {
			; if(ch & 1)
				sra		R1, 1
				src		R0, 1
				if NC jmp	@md2dc_label_1550
			; {
				; sfContReadStartNoWait(HIADR(&pch->insadr));
				#ifdef SOFTADPDEC || MIDIPCMDEC
					I1=		MC_INSADR_L
					AR=		I0
					I1=		I1 + AR
					DX=		rm[I1]
					AR=		DX
					clr		AR.b0
					rm[I1++]=	AR
					mSfContReadStart
					rm[I1]=		DX

					; AR=		MC_INSADR_H
					; AR=		AR + I0
					; I1=		AR
					; AR=		rm[I1--]
					; push		AR
					; AR=		rm[I1]
					; clr		AR.b0
					; push		AR
					; AR=		BP
					; AR=		AR + 2
					; I1=		AR
					; mSfContReadStart
					; pop		AR
					; pop		AR
				#else
					AR=		MC_INSADR_H
					AR=		AR + I0
					I1=		AR
					mSfContReadStart
				#endif

				; FLTI = pch->FLTI[0];
					AR=		MC_FLTI
					AR=		AR + I0
					I1=		AR
					FLTI=		rm[I1++]
				; FLTI = pch->FLTI[1];
					FLTI=		rm[I1++]
				; FLTI = pch->FLTI[2];
					FLTI=		rm[I1++]
				; FLTI = pch->FLTI[3];
					FLTI=		rm[I1++]

				; FLTA = pch->FLTA;
					AR=		MC_FLTA
					AR=		AR + I0
					I1=		AR
					FLTA=		rm[I1++]

				; FLTP = pch->FLTP;
					; ~~ offset aware --> pch->FLTP, pch->FLTG
					FLTP=		rm[I1++]

				; ~~ MX = pch->FLTG << 3;
					; MX=		rm[I1]
					; slz		MX, 2
					; slz		MX, 1

				; temp = FLTO;				; ~~ reset state machine
					AR=		FLTO

				; BX.U = 0;
					R3=		0

				; sfWaitSPIOK();
					; PCH=		sfWaitSPIOK
					; lcall		sfWaitSPIOK


				; ~~ phrase 1 ~~

				; if(!md2DoADSR())
					push		CX
					call		md2DoADSR
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }

				; prender = &RENDERBUF[mp.inbuf];
					I1=		rm[mp@inbuf]

				; if(!md2DoChannelSub(32, prender, mask))
				#ifdef _PWM_64K_
					CX=		63
				#else
					CX=		31
				#endif

			#ifdef SOFTADPDEC
					call		md2DoChannelAdpcmSub
			#else
				#ifdef MIDIPCMDEC
					call		md2DoChannelMidpcmSub
				#else
					call		md2DoChannelSubPCM
				#endif
			#endif
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }


				; ~~ phrase 2 ~~

			#ifdef _MD2_HALF_ADSR_


			#else

				; if(!md2DoADSR())
					call		md2DoADSR
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }
			#endif

				; prender = &RENDERBUF[mp.inbuf] + 64;
					I1=		rm[mp@inbuf]
				#ifdef _PWM_64K_
					AR=		0x80		; ~~  +128
					I1=		I1 - AR
				#else
					; AR=		0x80		; ~~  +128
					; I1=		I1 - AR
					AR=		64
					I1=		I1 + AR
				#endif

				; if(!md2DoChannelSub(32, prender, mask))
				#ifdef _PWM_64K_
					CX=		63
				#else
					CX=		31
				#endif

			#ifdef SOFTADPDEC
					call		md2DoChannelAdpcmSub
			#else
				#ifdef MIDIPCMDEC
					call		md2DoChannelMidpcmSub
				#else
					call		md2DoChannelSubPCM
				#endif
			#endif
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }


				; ~~ phrase 3 ~~

				; if(!md2DoADSR())
					call		md2DoADSR
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }

				; prender = &RENDERBUF[mp.inbuf] + 128;
					I1=		rm[mp@inbuf]
				#ifdef _PWM_64K_
					AR=		0x0100
					I1=		I1 + AR
				#else
					AR=		0x80
					I1=		I1 - AR
				#endif

				; if(!md2DoChannelSub(32, prender, mask))
				#ifdef _PWM_64K_
					CX=		63
				#else
					CX=		31
				#endif

			#ifdef SOFTADPDEC
					call		md2DoChannelAdpcmSub
			#else
				#ifdef MIDIPCMDEC
					call		md2DoChannelMidpcmSub
				#else
					call		md2DoChannelSubPCM
				#endif
			#endif
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }


				; ~~ phrase 4 ~~

			#ifdef _MD2_HALF_ADSR_


			#else
				; if(!md2DoADSR())
					call		md2DoADSR
					if NZ jmp	@md2dc_label_1031
				; {
					; goto __md2dc_label_1031;
				; }
			#endif

				; prender = &RENDERBUF[mp.inbuf] + 192;
					I1=		rm[mp@inbuf]
				#ifdef _PWM_64K_
					AR=		0x0180
					I1=		I1 + AR
				#else
					AR=		0x00C0
					I1=		I1 + AR
				#endif

				; md2DoChannelSub(32, prender, mask);
				#ifdef _PWM_64K_
					CX=		63
				#else
					CX=		31
				#endif

			#ifdef SOFTADPDEC
					call		md2DoChannelAdpcmSub
			#else
				#ifdef MIDIPCMDEC
					call		md2DoChannelMidpcmSub
				#else
					call		md2DoChannelSubPCM
				#endif
			#endif


			; __md2dc_label_1031:
				@md2dc_label_1031:
					pop		CX

				; sfContReadStop();
					mSfContReadStop

				; pch->insadr += (int)(BX.U << 1);
					slz		R3, 1
					I1=		MC_INSADR_L
					AR=		I0
					I1=		I1 + AR
					AR=		rm[I1]
					AR=		AR + R3
					rm[I1++]=	AR
					AR=		rm[I1]
					AR=		AR + 0 + C
					rm[I1]=		AR

				; ~~ backup all registers

				; pch->FLTI[0] = FLTI;
					AR=		MC_FLTI
					AR=		AR + I0
					I1=		AR
					rm[I1++]=	FLTI
				; pch->FLTI[1] = FLTI;
					rm[I1++]=	FLTI
				; pch->FLTI[2] = FLTI;
					rm[I1++]=	FLTI
				; pch->FLTI[3] = FLTI;
					rm[I1++]=	FLTI

				; pch->FLTA = FLTA;
					; AR=		MC_FLTA
					; AR=		AR + I0
					; I1=		AR
					AR=		MC_ADSR_VOL - MC_FLTA
					I1=		I1 - AR
					rm[I1]=		FLTA
			; }
			@md2dc_label_1550:

			; ch >>= 1;
				set		C
				slc		BX, 1
				slc		AX, 1

			; pch++;
				AR=		MC_SIZEOF
				I0=		I0 + AR

			loop		@md2dc_loop_1622
		; }
	; }
	@md2dc_label_1619:


	; if(mp.BaseTimer >= 4)
		I1=		mp@BaseTimer
		AR=		rm[I1]
		SF=		AR - 4
		if AN jmp	@md2dc_label_1354
	; {
		; mp.BaseTimer -= 4;
			AR=		AR - 4
		jmp		@md2dc_label_1354_1
	; }
	; else
	@md2dc_label_1354:
	; {
		; mp.BaseTimer = 0;
			AR=		0
	; }
	@md2dc_label_1354_1:
		rm[I1]=		AR


#ifdef _MD2_USER_MIX_






#else

	; ~~~~~~~~~~~~~~~~~~~

		I1=		rm[mp@inbuf]
	#ifdef _PWM_64K_
		CX=		0x00FF
	#else
		CX=		0x007F
	#endif
		AR=		SATV
	@md2dc_loop_1528:

#ifdef MD2_OUTPUT_PWM_8002
		AX=		rm[I1++]
		DX=		rm[I1--]
		sra		DX, 1
		src		AX, 1
		AR=		0x4000
		AX=		AX + AR
		DX +=		C

		AR=		AX
		SATV=		AR
		AR=		DX
		SATV=		AR
		AR=		SATV
#else
		SATV=		rm[I1++]
		SATV=		rm[I1--]
		AR=		SATV
#endif
		rm[I1++2]=	AR
		loop		@md2dc_loop_1528

	; ~~~~~~~~~~~~~~~~~~~

	@md2dc_label_1717:

	; ~~ cause we initialized render buffer
	; ~~ so mp->inbuf must be added even no sound rendered

	; mp.inbuf = (mp.inbuf + 128) & 0x01FF;
		AR=		rm[mp@inbuf]
	#ifdef _PWM_64K_
		not		AR.b9
	#else
		not		AR.b8
	#endif
		rm[mp@inbuf]=	AR

#endif


	; clr		io[PortB].b3

@md2dc_label_1125:
	rets
; }


NextSampleAdpcmFast:


__RAMFUNC_SEGMENT_END:




; ~~ wrap function

#ifdef __RAMFUNC_ENABLE__

md2DoChannel:
	AR=		#__RAMFUNC_SEGMENT_START
	P1=		#__md2DoChannel
	P1=		P1 - AR
	AR=		MD2_PRAM_START_BASE
	P1=		P1 + AR
	P1.hh=		RAMBANK
	fjmp		pm[P1]

#endif



; +++++++++++++++++++++



; ~.~---------------------------------------------------
; bool md2DoRoutine(void)
;
; in:
;    none
;
; out:
;    Z		- true	(music playing)
;    NZ		- false	(music stop)
;
; affect registers:
;
;
; meaning registers:
;
;
; special request:
;
;
; -------------------------------------------------------------
md2DoRoutine:
; {
	; set		io[PortA].b0

	; if(md2DoEvent())
		MACOP=		0
		I1=		mp@okmask
		AR=		rm[I1]
		if NZ jmp	@md2dr_label_1127
		PCH=		md2DoEvent
		lcall		md2DoEvent
		if NZ jmp	@md2dr_label_1355
	; {
		; md2SetInstrument();

			PCH=		md2SetInstrument
			lcall		md2SetInstrument

		; md2ExtEvent();
			PCH=		md2ExtEvent
			lcall		md2ExtEvent

	@md2dr_label_1127:
		; md2DoChannel();
			PCH=		md2DoChannel
			lcall		md2DoChannel

		; clr		io[PortA].b0

		; return true;
			P1.hh=		0
			set		Z
			rets
	; }
	@md2dr_label_1355:


	; clr		io[PortA].b0

	; return false;
		P1.hh=		0
		clr		Z
		rets
; }



; ~.~------------------------------------------------------------
; bool md2SelectIns(short index)
;
; in:
;    AX			- index
;
; out:
;    Z			- true
;    NZ			- false
;
; affect registers:
;    All
;
; meaning registers:
;    AX:BX		- flashadr
;
; special request:
;   none
;
; -------------------------------------------------------------
md2SelectIns:
; {
	; if(!mp.flags.INSBank)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b2
		if ZR jmp	@md2selectins_label_1541
	; {
		; return false;
	; }

	; if(index >= mp.tinsbank)
		AR=		rm[mp_tinsbank]
		SF=		AR - AX
		if LE jmp	@md2selectins_label_1541
		jmp		@md2selectins_label_1541_1
	@md2selectins_label_1541:
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2selectins_label_1541_1:


	; mp.keymap = mp.kmapbase + (index * 512);
		MX=		0x0200
		AR=		AX
	#ifdef _MSPEECHDSP_
		MULSS
	#else
		MACOP=		0
		MR=		MX * AR
	#endif
		I1=		mp@kmapbase_l
		AR=		rm[I1++]
		MR0=		MR0 + AR
		AR=		rm[I1]
		MR1=		MR1 + AR + C
		I1=		mp@keymap
		AR=		MR0
		rm[I1++]=	AR
		AR=		MR1
		rm[I1]=		AR

	; return true;
		set		Z
		rets
; }


; ~.~------------------------------------------------------------
; bool md2PlaySong(short index)
;
; in:
;    AX			- index
;
; out:
;    none
;
; affect registers:
;    All
;
; meaning registers:
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2PlaySong:
; {
	; if(index >= mp.songcnt)
		AR=		rm[mp_songcnt]
		SF=		AR - AX
		if LE jmp	@md2playsong_label_1541
		jmp		@md2playsong_label_1541_1
	@md2playsong_label_1541:
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2playsong_label_1541_1:


	; mp.extev = 0;
		I1=		mp@extev
		AR=		0
		rm[I1]=		AR


	; mp.note = mp.songhdr + (index * sizeof(long))
		I1=		mp@songhdr_l
		BX=		rm[I1++]
		DX=		rm[I1]
		I1=		mp@note_l
		AR=		AX
		slz		AR, 2
		rm[I1++]=	BX + AR
		AR=		0
		rm[I1]=		DX + AR + C


	; if(mp.flags.INSBank)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b2
		if ZR jmp	@md2playsong_label_1612
	; {
		; sfContReadStart(mp.baseadr + sizeof(MD2Header) + sizeof(DSPChannelMap) + (index * sizeof(short)));
			BX=		rm[mp_baseadr_l]
			DX=		rm[mp_baseadr_h]
			AR=		20		; sizeof(MD2Header) + sizeof(DSPChannelMap)
			BX=		BX + AR
			AR=		0
			DX=		DX + AR + C
			AR=		AX		; index
			slz		AR, 1
			BX=		BX + AR
			AR=		0
			AR=		AR + DX + C
			push		AR
			push		BX
			AR=		2
			AR=		AR + BP
			I1=		AR
			mSfContReadStart
			pop		AR
			pop		AR

		; mp.occupyopr = sfContReadWord();
			mSfContReadWord
			I1=		mp@occupyopr
			rm[I1]=		AR

		; sfContReadStop
			mSfContReadStop

		jmp		@md2playsong_label_1612_1
	; }
	; else
	@md2playsong_label_1612:
	; {
		; mp.occupyopr = mp.lop;
			AR=		rm[mp@lop]
			rm[mp@occupyopr]=AR
	; }
	@md2playsong_label_1612_1:


	; ~~ needs to clear channel indicator

	; for(i = 0; i < mp.occupyopr; i++)
		I1=		mp@ReleaseCh
		AR=		rm[I1++]
		R0=		AR
		AR=		rm[I1]
		R1=		AR
		BX=		mp
		CX=		rm[mp@occupyopr]
		clr		CX.b15
		jmp		@md2playsong_label_1155
	@md2playsong_loop_1155:
	; {
		; if(mp.ReleaseCh & (1 << i))
			test		R0.b0
			if NZ jmp	@md2playsong_label_1820
		; {
			; mp.ch[i].FLTG = 0x64CA;	// 100
				AR=		MC_FLTG
				AR=		AR + BX
				I1=		AR
				AR=		0x64CA
				rm[I1]=		AR
		; }
		@md2playsong_label_1820:

		; mp.ch[i].midich = 0;
			AR=		MC_MIDICH
			AR=		AR + BX
			I1=		AR
			AR=		0
			rm[I1]=		AR

			AR=		MC_SIZEOF
			BX=		BX + AR
			
			clr		C
			src		R1, 1
			src		R0, 1
	@md2playsong_label_1155:
		loop		@md2playsong_loop_1155

	; }


	; sfContReadStart(HIADR(&mp.note));
		I1=		mp@note_h
		mSfContReadStart

	; sfContRead2Word();

	; mp.note = mp.baseadr + (SPI_DAT + (SPI_DAT << 16));
		mSfContReadWord
		BX=		AR
		mSfContReadWord
		DX=		AR
		I1=		mp_baseadr_l
		AR=		rm[I1++]
		BX=		BX + AR
		AR=		rm[I1]
		DX=		DX + AR + C
		I1=		mp@note_l
		rm[I1++]=	BX
		rm[I1]=		DX


	; ~~ check filter mode


	; switch(mp.note & 0xC0000000)
		AR=		DX
		slz		AR, 2
		slc		AR, 2
		AR=		AR & 0x03
		if ZR jmp	@md2playsong_case_0_1340
		SF=		AR - 1
		if EQ jmp	@md2playsong_case_0_1340
		SF=		AR - 2
		if EQ jmp	@md2playsong_case_2_1340
		jmp		@md2playsong_case_default_1340
	; {
		; case 0:
		; case 1:
		@md2playsong_case_0_1340:
		; {
			; ~~ turn on filter

			; mp.vol &= 0x3F;
				AR=		rm[mp@vol]
				AR=		AR & 0x3F
				rm[mp@vol]=	AR

			; FLTG = mp.vol;
				FLTG=		AR

			; break;
				jmp		@md2playsong_case_default_1340
		; }
		; case 2:
		@md2playsong_case_2_1340:
		; {
			; ~~ turn off filter

			; mp.vol |= 0x80;
				AR=		rm[mp@vol]
				set		AR.b7
				rm[mp@vol]=	AR

			; FLTG = mp.vol;
				FLTG=		AR

			; break;
				jmp		@md2playsong_case_default_1340
		; }
		; default:
		; {
			; break;
		; }
	; }
	@md2playsong_case_default_1340:


	; mp.note &= 0x3FFFFFFF;
		AR=		rm[I1]
		clr		AR.b15
		clr		AR.b14
		rm[I1]=		AR


	; sfContReadStop
		mSfContReadStop

	; mp.BaseTimer = 1;
		AR=		1
		I1=		mp@BaseTimer
		rm[I1++]=	AR
	; mp.EventTimer = 0x0FFF;
		AR=		0x0FFF
		rm[I1++]=	AR

	; mp.lpadr = 0;
		AR=		0
		I1=		mp@lpadrl
		rm[I1++]=	AR
		rm[I1]=		AR

	; md2StartBGServe();
		PCH=		md2StartBGServe
		lcall		md2StartBGServe

	; return true;
		set		Z
		rets
; }


; ~.~------------------------------------------------------------
; bool md2PlayRhythmLoop(short index)
;
; in:
;    AX			- index
;
; out:
;    none
;
; affect registers:
;    All
;
; meaning registers:
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2PlayRhythmLoop:
; {
	; md2PlaySong(index);
		call		md2PlaySong
		if ZR jmp	@md2prl_label_1123
		rets
	@md2prl_label_1123:
	; mp.lpadr = mp.note;
		I1=		mp@note_h
		AR=		rm[I1--]
		push		AR
		AR=		rm[I1]
		I1=		mp@lpadrl
		rm[I1++]=	AR
		pop		AR
		rm[I1]=		AR

	rets
; }



; ~.~------------------------------------------------------------
; void md2StopSong(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;    All
;
; meaning registers:
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2StopSong:
; {
	; if(md2ChkSongEnd())
		PCH=		md2ChkSongEnd
		lcall		md2ChkSongEnd
		if NZ jmp	@md2ss_label_1548
	; {
		; return;
			rets
	; }
	@md2ss_label_1548:


	; mp.note = 0;
		I1=		mp@note_l
		AR=		0
		rm[I1++]=	AR
		rm[I1]=		AR

	; __md2ReleaseOccupy();
		call		__md2ReleaseOccupy

	; mp.occupyopr = 0;
		AR=		0
		rm[mp@occupyopr]=AR

	rets
; }


; ---------------------------------------------------------------------------

__md2ReleaseOccupy:
; {
	; mask = 1;
		AX=		0
		BX=		1

	; for(i = 0; i < mp.occupyopr & 0x7FFF; i++)
		CX=		rm[mp@occupyopr]
		clr		CX.b15
		I0=		mp
		jmp		@md2roc_label_1555
	@md2roc_loop_1552:
	; {
		; mp[i].RR = 64;
			AR=		MC_RR
			AR=		AR + I0
			I1=		AR
			AR=		64
			rm[I1]=		AR

		; mp.ReleaseCh |= mask;
			I1=		mp@ReleaseCh_l
			AR=		rm[I1]
			rm[I1++]=	AR | BX
			AR=		rm[I1]
			rm[I1]=		AR | AX

		; mask <<= 1;
			slz		BX, 1
			slc		AX, 1
			AR=		MC_SIZEOF
			I0=		I0 + AR

	@md2roc_label_1555:
		loop		@md2roc_loop_1552
	; }

	rets
; }




; -------------------------------------------------------------------

md2StartOkon:
; {
	; if(md2ChkSongEnd())
		PCH=		md2ChkSongEnd
		lcall		md2ChkSongEnd
		if NZ jmp	@md2roc_label_1548
	; {
		; return;
			rets
	; }
	@md2roc_label_1548:


	; __md2ReleaseOccupy();
		call		__md2ReleaseOccupy

	; mp.okmask = 1;
		AR=		1
		I1=		mp@okmask
		rm[I1]=		AR

	; if((mp.lop - 2) < mp.occupyopr)
		AR=		rm[mp@lop]
		AX=		rm[mp@occupyopr]
		clr		AX.b15
		AR=		AR - 2
		SF=		AR - AX
		if GE jmp	@md2sokon_label_1345
	; {
		; mp.occupyopr = mp.lop - 2;
			rm[mp@occupyopr]=AR
	; }
	@md2sokon_label_1345:

	rets
; }


; -------------------------------------------------------------------

md2LeaveOkon:
; {
	; if(mp.ofsevent)
		I1=		mp@ofsevent_l
		AX=		rm[I1++]
		AR=		rm[I1--]
		AR=		AR | AX
		if ZR jmp	@md2lok_label_1454
	; {
		; mp.note = mp.ofsevent;
			; AX=		rm[I1++]
			; AR=		rm[I1]
			; I1=		mp@note_l
			; rm[I1++]=	AX
			; rm[I1]=		AR

		; mp.ofsevent = 0;
			I1=		mp@ofsevent_l
			AR=		0
			rm[I1++]=	AR
			rm[I1]=		AR


		; mp.BaseTimer = 1;
			I1=		mp@BaseTimer
			AR=		1
			rm[I1]=		AR
	; }
	@md2lok_label_1454:

	; mp.okmask = 0;
		AR=		0
		I1=		mp@okmask
		rm[I1]=		AR

	rets
; }






; ~.~------------------------------------------------------------
; bool md2ChkSongEnd(void)
;
; in:
;    none
;
; out:
;    Z			- true
;    NZ			- false
;
; affect registers:
;    All
;
; meaning registers:
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2ChkSongEnd:
; {
	; if(mp.note == 0)
		I1=		mp@note_l
		AR=		rm[I1++]
		AX=		rm[I1]
		AR=		AR | AX
	; {
		; return true;
	; }

	; return false;
		rets
; }


; ---------------------------------------------------
; I0 -- pch
; R2 -- FLTP
; P1    must safe to use

__sub_md2Pitch:
; {
	; if(mp.pitch)
		AR=		rm[mp@pitch]
		if ZR jmp	@submd2p_label_1632
	; {
		; ~~ P1 is safe to use

		; temp = (FLTP == 0) ? 0x8000 : FLTP;
			AR=		R2		; FLTP
			if NZ jmp	@md2si_label_1509
			set		AR.b15
		@md2si_label_1509:
			MX=		AR

		; nFLTP = (temp * md2shift_table[mp.pitch]) / 16384;
			P1=		#@md2shift_table
			AR=		rm[mp@pitch]
			P1=		P1 + AR
			AR=		pm[P1]
		#ifdef _MSPEECHDSP_
			MULUU
		#else
			MACOP=		3
			MR=		MX * AR
			MACOP=		0
		#endif
			slz		MR0, 2
			slc		MR1, 2

		; if(nFLTP >= 0x8000)
			if AC jmp	@md2si_label_1556
			test		MR1.b15
			if ZR jmp	@md2si_label_1513
		@md2si_label_1556:
		; {
			; nFLTP = nFLTP >> 1;
				clr		C
				src		MR1, 1

			; pch->skipre <<= 1;
				I1=		MC_SAMPLE_SKIPRE
				AR=		I0
				I1=		I1 + AR
				AR=		rm[I1]
				slz		AR, 1
				rm[I1--]=	AR		; ~~ SKIPRE

			; pch->skip = pch->skipre;
				rm[I1]=		AR		; ~~ SKIP

		; }
		@md2si_label_1513:

		; pch->FLTP = nFLTP;
			I1=		MC_FLTP
			AR=		I0
			I1=		I1 + AR
			AR=		MR1
			rm[I1++]=	AR
	; }
	@submd2p_label_1632:

	rets
; }



; ----------------------------------
;    AX (BX)    - index
;    DX         - FLTG
;    CX         - i
;    R1:R0      - mask
;    R2         - FLTP
;    R3         - INS
;    I0         - pch
; ----------------------------------
__sub_md2PlayNote:
; {
	; ~~ get note info

	; spiContReadStart(mp->keymap + (index * 4), &mp->md2);
		AR=		AX
		BX=		AR
		clr		AX.b15
		I1=		mp@keymap
		slz		AX, 2
		AR=		rm[I1++]
		AX=		AX + AR
		AR=		rm[I1]
		AR=		AR + 0 + C
		push		AR
		push		AX
		AR=		BP
		AR=		AR + 2
		I1=		AR
		mSfContReadStart
		pop		AR
		pop		AR

	; INS = sfContReadWord();
		mSfContReadWord
		R3=		AR

	; FLTP = sfContReadWord();
		mSfContReadWord
		R2=		AR

	; spiContReadStop();
		mSfContReadStop


__sub_md2PlayNote_nomap:

	; ~~ clear FIFO

	; memset(pch->FLTI, 0, sizeof(pch->FLTI));
		I1=		MC_FLTI
		AR=		I0
		I1=		I1 + AR
		AR=		0
		rm[I1++]=	AR
		rm[I1++]=	AR
		rm[I1++]=	AR
		rm[I1++]=	AR


	; if(INS < 0 || FLTP < 0)
		AR=		R2
		AR=		AR | R3
		if AN jmp	@__md2pn_label_1435
	; {
		; return false;
	; }


	; ~.~-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	; BX = INS & 0x0FFF;
		AR=		R3
		clr		R3.b13
		clr		R3.b12
		slc		AR, 2
		slc		AR, 2

	; CX = (INS & 0x3000) >> 12;
		P1=		#md2ScaleTable	; code
		AR=		0
		slc		AR, 2
		P1=		P1 + AR

	; mp.skip = 1 << CX;
		I1=		MC_SAMPLE_SKIP
		AR=		I0
		I1=		I1 + AR
		rm[I1++]=	pm[P1]

	; mp.skipre = mp.skip;
		rm[I1]=		pm[P1]


	; pch->FLTP = FLTP;
		I1=		MC_FLTP
		AR=		I0
		I1=		I1 + AR
		rm[I1++]=	R2


	; __sub_md2Pitch();
		call		__sub_md2Pitch

	; mp.ch[i].FLTG = DX;
		; ~~ offset aware
		rm[I1]=		DX


	; BX.U = BX.U * mp->SizeInsIndex;
		MX=		18
		AR=		R3
	#ifdef _MSPEECHDSP_
		MULSS
	#else
		MACOP=		0
		MR=		MX * AR
	#endif


	; ~~ get entry & ADSR info

	; temp = (mp.insbase + BX.U);
		I1=		mp@insbase_l
		AR=		rm[I1++]
		MR0=		MR0 + AR
		AR=		rm[I1]
		AR=		AR + MR1 + C
		push		AR
		push		MR0

	; sfContReadStart(HIADR(&temp));
		AR=		BP
		AR=		AR + 2
		I1=		AR
		mSfContReadStart
		pop		AR
		pop		AR


	; BX = sfContReadWord();
		mSfContReadWord
		DX=		AR

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; pch->insadr = mp.baseadr + ((unsigned long)AX << 16) | (unsigned long)BX;
		I1=		mp_baseadr_l
		R2=		rm[I1++]
		R3=		rm[I1]
		I1=		MC_INSADR_L
		AR=		I0
		I1=		AR + I1
		AR=		R2
		rm[I1++]=	AR + DX
		AR=		R3
		rm[I1]=		AR + AX + C


	; ~~ read ADSR parameters


	; pch->ADSR.VOL = SPI_DAT;
		I1=		MC_ADSR_VOL
		AR=		I0
		I1=		I1 + AR
		mSfContReadWord
		rm[I1++]=	AR

	; pch->ADSR.lpAttack = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR

	; pch->ADSR.sAttack = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR

	; pch->ADSR.lpDecay = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR


	; pch->ADSR.sDecay = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR

	; pch->ADSR.lpSustain = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR

	; pch->ADSR.sSustain = SPI_DAT;
		mSfContReadWord
		rm[I1++]=	AR

	; spiContReadStop();
		mSfContReadStop


	; ~~ loop address


	; sfContReadStart(HIADR(&pch->insadr));
		I1=		MC_INSADR_H
		AR=		I0
		I1=		AR + I1
		mSfContReadStart

	; BX = sfContReadWord();
		mSfContReadWord
		DX=		AR	; ~~ loop address

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; ~~ loop address

	; if(mp.flags.ADPCM)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b5
		if NZ jmp	@__md2pn_label_1017
		test		AR.b3
		if ZR jmp	@__md2pn_label_1411
	@__md2pn_label_1017:
	; {
		; ~~ ADPCM uses byte address to indicate odd frame

		; pch->insloop = mp.baseadr + (BX | (AX << 16));
			I1=		mp_baseadr_l
			R2=		rm[I1++]
			R3=		rm[I1]
			I1=		MC_INSLOOP_L
			AR=		I0
			I1=		I1 + AR
			AR=		R2
			rm[I1++]=	AR + DX
			AR=		R3
			rm[I1]=		AR + AX + C

		; pch->TASPAD.HD = 0;
			I1=		MC_ADPCM_HD
			AR=		I0
			I1=		I1 + AR
			AR=		0
			rm[I1++]=	AR

		; pch->TASPAD.S0 = 0;
			rm[I1++]=	AR

		; pch->TASPAD.S1 = 0;
			rm[I1++]=	AR

		; pch->TASPAD.CNT = 0;
			rm[I1++]=	AR


		; spiContReadStart(pch->insadr, &mp->md2);
			; ~~ optimize out

		; AX = spiContReadWord();
			mSfContReadWord

		; pch->TASPAD.BUF = AX.S;
			rm[I1++]=	AR

		; spiContReadStop();
			; mSfContReadStop	; ~~ optimize out

		; pch->insadr += 6;	; ~~ skip loop point + first word data
			I1=		MC_INSADR_L
			AR=		I0
			I1=		I1 + AR
			AR=		rm[I1]
			AR=		AR + 6
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		jmp		@__md2pn_label_1411_1
	; }
	; else
	@__md2pn_label_1411:
	; {
		; ~~ PCM uses word address

		; pch->insloop = mp.baseadr + (AX | (BX << 16));
			I1=		mp_baseadr_l
			R2=		rm[I1++]
			R3=		rm[I1]
			I1=		MC_INSLOOP_L
			AR=		I0
			I1=		I1 + AR
			AR=		R2
			rm[I1++]=	AR + DX
			AR=		R3
			rm[I1]=		AR + AX + C

		; pch->insadr += 4;		// skip loop point
			I1=		MC_INSADR_L
			AR=		I0
			I1=		I1 + AR
			AR=		rm[I1]
			AR=		AR + 4
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR
	; }
	@__md2pn_label_1411_1:


	; spiContReadStop();
		mSfContReadStop

	; mp.PlayChannel |= mask;
		I1=		mp@PlayChannel_l
		AR=		rm[I1]
		AR=		AR | R0
		rm[I1++]=	AR
		AR=		rm[I1]
		AR=		AR | R1
		rm[I1]=		AR

	; mp.ReleaseCh &= ~mask;
		I1=		mp@ReleaseCh_l
		AR=		-1
		R0=		R0 ^ AR
		R1=		R1 ^ AR
		AR=		rm[I1]
		AR=		AR & R0
		rm[I1++]=	AR
		AR=		rm[I1]
		AR=		AR & R1
		rm[I1]=		AR

	; mp.keych[i] = index;
		AR=		rm[mp@occupyopr]
		clr		AR.b15
		AR=		AR + CX
		I1=		mp@keych
		I1=		I1 + AR
		rm[I1]=		BX

	set		Z
	rets


@__md2pn_label_1435:
	clr		Z
	rets
; }



__md2SetLopBit:
; {
	P1=		#md2ScaleTable
	AR=		rm[mp_lop]
	SF=		AR - 16
	if AN jmp	@md2pn_label_1555
	AR=		AR - 16
	R0=		0
	P1=		P1 + AR
	AR=		pm[P1]
	R1=		AR
	rets
@md2pn_label_1555:
	R1=		0
	P1=		P1 + AR
	AR=		pm[P1]
	R0=		AR
@md2pn_label_1555_1:
	rets
;}



__md2SetLopBase:
; {
	MX=		MC_SIZEOF
	AR=		rm[mp_lop]
#ifdef _MSPEECHDSP_
	MULSS
#else
	MR=		MX * AR
#endif
	AR=		mp@ch0@insloop_l
	AR=		AR + MR0
	I0=		AR
	rets
; }



__md2GetFreeOp:
; {
	; mask = 0x00080000;		// bit 19
		call		__md2SetLopBit

	; for(i = 19; i > mp@occupyopr & 0x7FFF; i--)
		call		__md2SetLopBase
		AR=		rm[mp@occupyopr]
		clr		AR.b15
		CX=		rm[mp_lop]
		CX=		CX - AR
		if AN jmp	@md2pn_label_1747
	@md2pn_loop_1800:
	; {
		; if(mp.PlayChannel & mask)
			I1=		mp@PlayChannel_h
			AR=		rm[I1--]
			AR=		AR & R1
			BX=		AR
			AR=		rm[I1]
			AR=		AR & R0
			AR=		AR | BX
			if NZ jmp	@md2pn_label_1803_1
		@md2pn_label_1803:
		; {
			; return true;
				set		Z
				rets
		; }
		@md2pn_label_1803_1:


		; mask >>= 1;
			sra		R1, 1
			src		R0, 1
			AR=		MC_SIZEOF
			I0=		I0 - AR

	@md2pn_loop_1800_1:
		loop		@md2pn_loop_1800
	; }
	@md2pn_label_1747:

	; return false;
		clr		Z
		rets
; }

; ~~

__md2GetRecycleOp:
; {
	; mask = 0x00080000;		// bit 19
		call		__md2SetLopBit

	; for(i = 19; i > mp@occupyopr & 0x7FFF; i--)
		call		__md2SetLopBase
		AR=		rm[mp@occupyopr]
		clr		AR.b15
		CX=		rm[mp_lop]
		CX=		CX - AR
		if AN jmp	@md2gro_label_1747
	@md2gro_loop_1800:
	; {
		; if(mp.ReleaseCh & mask)
			I1=		mp@ReleaseCh_h
			AR=		rm[I1--]
			AR=		AR & R1
			BX=		AR
			AR=		rm[I1]
			AR=		AR & R0
			AR=		AR | BX
			if ZR jmp	@md2gro_label_1803_1
		@md2gro_label_1803:
		; {
			; AR=		-1
			; R0=		R0 ^ AR
			; R1=		R1 ^ AR

			; I1=		mp@PlayChannel_h
			; AR=		rm[I1]
			; AR=		AR & R1
			; rm[I1--]=	AR
			; AR=		rm[I1]
			; AR=		AR & R0
			; rm[I1]=		AR

			; return true;
				set		Z
				rets
		; }
		@md2gro_label_1803_1:


		; mask >>= 1;
			sra		R1, 1
			src		R0, 1
			AR=		MC_SIZEOF
			I0=		I0 - AR

	@md2gro_loop_1800_1:
		loop		@md2gro_loop_1800
	; }
	@md2gro_label_1747:


		call		__md2SetLopBit
		call		__md2SetLopBase

		set		Z
		rets







	; return false;
		clr		Z
		rets
; }




; ~.~------------------------------------------------------------
; bool md2PlayNote(short index, short FLTG)
;
; in:
;    AX			- index
;    DX                 - FLTG
;
; out:
;    Z			- true
;    NZ			- false
;
;
; affect registers:
;    All
;
; meaning registers:
;    R1:R0	- mask
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2PlayNote:
; {
	; if(!mp.flags.INSBank)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b2
		if NZ jmp	@md2pn_label_1746
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2pn_label_1746:


	; if(__md2GetFreeOp())
		call		__md2GetFreeOp
		if NZ jmp	@md2pn_label_1743
	; {

		; __sub_md2PlayNote();
			call		__sub_md2PlayNote

		; return true;
			set		Z
			rets
	; }
	; else
	@md2pn_label_1743:
	; {
		; if(__md2GetRecycleOp())
			call		__md2GetRecycleOp
			if NZ jmp	@md2pn_label_1743_1
		; {
			; __sub_md2PlayNote();
				call		__sub_md2PlayNote

			; return true;
				set		Z
				rets
		; }
	; }
	@md2pn_label_1743_1:


	; return false;
		clr		Z
		rets
; }


; ~.~------------------------------------------------------------
; bool md2PlayPercNote(short index)
;
; in:
;    AX			- index
;    DX                 - FLTG
;
; out:
;    Z			- true
;    NZ			- false
;
;
; affect registers:
;    All
;
; meaning registers:
;    R1:R0	- mask
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2PlayPercNote:
; {
	; if(!mp.flags.INSBank)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b2
		if NZ jmp	@md2perc_label_1746
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2perc_label_1746:


	; if(__md2GetFreeOp())
		call		__md2GetFreeOp
		if NZ jmp	@md2ppn_label_1743
	; {
		; temp = mp.keymap;
			I1=		mp@keymap
			AR=		rm[I1++]
			push		AR
			AR=		rm[I1]
			push		AR

		; ~~ perc table address ..... danger

		; mp.keymap = mp.insbase - 512;
			I1=		mp@insbase_l
			BX=		rm[I1++]
			AR=		0x0204
			BX=		BX - AR
			AR=		rm[I1]
			AR=		AR - 0 + C - 1
			I1=		mp@keymap
			rm[I1++]=	BX
			rm[I1]=		AR

		; __sub_md2PlayNote();
			set		AX.b15
			call		__sub_md2PlayNote


		; temp = mp.keymap;
			I1=		mp@keymap_h
			pop		AR
			rm[I1--]=	AR
			pop		AR
			rm[I1]=		AR

		; return true;
			set		Z
			rets
	; }
	@md2ppn_label_1743:


	; return false;
		clr		Z
		rets
; }


; ~.~------------------------------------------------------------
; bool md2ReleaseNote(short index, short RR)
;
; in:
;    AX			- index
;    DX                 - RR
;
; out:
;    Z			- true
;    NZ			- false
;
; affect registers:
;    All
;
; meaning registers:
;    R1:R0	- mask
;
;
; special request:
;   none
;
; -------------------------------------------------------------

md2ReleasePercNote:
	set		AX.b15
md2ReleaseNote:
; {
	; if(!mp.flags.INSBank)
		I1=		mp@flags
		AR=		rm[I1]
		test		AR.b2
		if NZ jmp	@md2rn_label_1746
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2rn_label_1746:

md2ReleaseNote_okon:
	; mask = 0x00080000;		// bit 19
		call		__md2SetLopBit

	; for(i = 19; i < mp@occupyopr & 0x7FFF; i--)
		call		__md2SetLopBase
		CX=		rm[mp@occupyopr]
		clr		CX.b15
		AR=		rm[mp_lop]
		CX=		AR - CX
		I1=		mp@keych
		I1=		I1 + AR
	@md2rn_loop_1800:
	; {
		; if(mp.keych[i] == index)
			AR=		rm[I1]
			SF=		AR - AX
			if NZ jmp	@md2rn_label_1913
		; {
			; mp.keych[i] = -1;
				AR=		-1
				rm[I1]=		AR

			; mp.ch[i].RR = 64;
				AR=		MC_RR
				AR=		AR + I0
				I1=		AR
				rm[I1]=		DX

			; mp.ReleaseCh |= mask;
				I1=		mp@ReleaseCh_l
				AR=		rm[I1]
				AR=		AR | R0
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR | R1
				rm[I1++]=	AR

			; return true;
				set		Z
				rets
		; }
		@md2rn_label_1913:

		; mask >>= 1;
			sra		R1, 1
			src		R0, 1
			AR=		MC_SIZEOF
			I0=		I0 - AR
			I1--

	@md2rn_loop_1800_1:
		loop		@md2rn_loop_1800

	; }

	; return false;
		clr		Z
		rets
; }


; ----

md2Reset:
; {
	; memset(mp.ch, 0, sizeof(mp.ch));
		CX=		mp@insbase_l
		AR=		mp
		CX=		CX - AR
		CX--
		I1=		mp
		AR=		0
	@md2fme_loop_1700:
		rm[I1++]=	AR
		loop		@md2fme_loop_1700

	; mp.note = 0;
		I1=		mp@note_l
		AR=		0
		rm[I1++]=	AR
		rm[I1++]=	AR
	; mp.PlayInfo = 0;
		rm[I1++]=	AR
		rm[I1++]=	AR
	; mp.PlayChannel = 0;
		rm[I1++]=	AR
		rm[I1++]=	AR
	; mp.ReleaseInfo = 0;
		rm[I1++]=	AR
		rm[I1++]=	AR
	; mp.ReleaseCh = 0;
		rm[I1++]=	AR
		rm[I1++]=	AR
	; mp.BaseTimer = 1;
		AR=		1
		rm[I1++]=	AR
	; mp.EventTimer = 0x0FFF;
		AR=		0x0FFF
		rm[I1++]=	AR
	; mp.tempo = 0x4000;
		AR=		0x4000
		I1=		mp@tempo
		rm[I1]=		AR

	; for(i = 0; i < 20; i++)
		CX=		19
		I1=		mp@keych
		AR=		-1
	@md2fme_loop_1867:
	; {
		; mp.keych[i] = -1;
			rm[I1++]=	AR

		loop		@md2fme_loop_1867
	; }

	; for(i = 0; i < 20; i++)
		CX=		19
		I1=		mp
		AR=		MC_LEFT_VOL
		I1=		I1 + AR
	@md2play_loop_1124:
	; {
		; mp[i].Stereo.L = 0x7FFF;
			AR=		0x7FFF
			rm[I1++]=	AR
		; mp[i].Stereo.R = 0x7FFF;
			rm[I1--]=	AR
			AR=		MC_SIZEOF
			I1=		I1 + AR
			loop		@md2play_loop_1124
	; }

	; ~.~ add your codes


	; ~~ turn all midi channel on

	; mp.mchmask = 0xFFFF;
		I1=		mp@mchmask
		AR=		-1
		rm[I1]=		AR

	; mp.okmask = 0;
		I1=		mp@okmask
		AR=		0
		rm[I1]=		AR

	rets
; }









; ~.~---------------------------------------------------
; void md2InitParameters(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;
;
; meaning registers:
;
;
; special request:
;
;
; -------------------------------------------------------------
md2InitParameters:
; {
	; md2Reset();
		call		md2Reset

	; mp.lop = 19;
		AR=		19
		rm[mp@lop]=	AR

	; mp.pitch = 0;
		AR=		0
		rm[mp@pitch]=	AR

	; mp.inbuf = 0;
		AR=		RENDERBUF
		rm[mp@inbuf]=	AR

	; mp.outbuf = 0;
		rm[mp@outbuf]=		AR

	; MACOP = 0;
		MACOP=		0

	; ~~ copy ramfunc to pram area

#ifdef __RAMFUNC_ENABLE__

	; memcpy((__code *)0x20000, __RAMFUNC_SEGMENT_START, (__RAMFUNC_SEGMENT_END - __RAMFUNC_SEGMENT_START));
		AR=		#__RAMFUNC_SEGMENT_START
		CX=		#__RAMFUNC_SEGMENT_END
		P0=		AR
		P0.hh=		0
		P1=		MD2_PRAM_START_BASE
		P1.hh=		RAMBANK
		CX=		CX - AR
		jmp		@md2fme_label_1606
	@md2fme_loop_1606:
		AR=		pm[P0++]
		pm[P1++]=	AR
	@md2fme_label_1606:
		loop		@md2fme_loop_1606


	#ifdef SOFTADPDEC
		; ~~ copy OBJ

			AR=		#NextSampleAdpcm
			CX=		#__NextSampleAdpcmEnd
			P0=		AR
			P0.hh=		0
			; ~~ copy to P1
			CX=		CX - AR
			jmp		@md2fme_label_1507
		@md2fme_loop_1508:
			AR=		pm[P0++]
			pm[P1++]=	AR
		@md2fme_label_1507:
			loop		@md2fme_loop_1508
	#endif


	#ifdef MIDIPCMDEC
		; ~~ copy OBJ

			AR=		#NextSampleMidpcm
			CX=		#__NextSampleMidpcmEnd
			P0=		AR
			P0.hh=		0
			; ~~ copy to P1
			CX=		CX - AR
			jmp		@md2fme_label_0942_1
		@md2fme_loop_0942:
			AR=		pm[P0++]
			pm[P1++]=	AR
		@md2fme_label_0942_1:
			loop		@md2fme_loop_0942
	#endif

		P1.hh=		0

#endif


	rets
; }




; ~.~---------------------------------------------------
; void md2StartBGServe(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;
;
; meaning registers:
;
;
; special request:
;
;
; -------------------------------------------------------------
md2StartBGServe:
; {
	; ClearIntReq(INT0);
		clr		io[INTREQ].b0

	; EnableInterrupt(INT0);
		ena		INT0

	; EnableInterrupts();
		eni

	rets
; }


; ~.~---------------------------------------------------
; void md2StopBGServe(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;
;
; meaning registers:
;
;
; special request:
;
;
; -------------------------------------------------------------
md2StopBGServe:
; {
	; DisableInterrupt(INT0);
		dsi		INT0

	; ClearIntReq(INT0);
		clr		io[INTREQ].b0

	rets
; }


; ~.~-----------------------------------------------------
; void md2Initilize(void)
;
; in:
;    none
;
; out:
;    none
;
; affect registers:
;    AR, CX, I1
;
; meaning registers:
;    none
;
; special request:
;    none
;
; -------------------------------------------------------------
md2Initilize:
md2Initialize:
; {
	; memset(&mp, 0, sizeof(mp));
		AR=		mp
		CX=		AR
		I1=		AR
		AR=		mp@EventTimer
		CX=		AR - CX
		AR=		0
	@md2play_loop_1534:
		rm[I1++]=	AR
		loop		@md2play_loop_1534


	rets
; }

; ~.~---------------------------------------------------
; bool md2FindMidiEntry(unsigned long flashadr)
;
; in:
;    AX:BX		- flashadr
;
; out:
;
;
; affect registers:
;
;
; meaning registers:
;
;
; special request:
;
;
; -------------------------------------------------------------
md2FindMidiEntry:
; {
	; DSP16 AX, BX;
	; short i;

	; mp.baseadr = flashadr;
		I1=		mp_baseadr_l
	#ifdef MD2_WORD_ADR
		slz		BX, 1
		slc		AX, 1
	#endif
		rm[I1++]=	BX
		rm[I1]=		AX

	; mp.songhdr = flashadr;
		I1=		mp@songhdr_l
		rm[I1++]=	BX
		rm[I1]=		AX

	; sfContReadStart(HIADR(&mp.baseadr));
		mSfContReadStart


	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR


	; BX = sfContReadWord();
		mSfContReadWord
		push		AR

	; sfContReadStop();
		mSfContReadStop
		pop		AR


	; if((AX == 0x444D) && (BX == 0x2032))
		BX=		0x2032
		SF=		AR - BX
		if NZ jmp	@md2fme_label_1437
		AR=		0x444D
		SF=		AR - AX
		if NZ jmp	@md2fme_label_1437
	; {
		; ~~ header

		; ~~ ignore HeaderSize, Version.....


		; ~~ offset aware ~~ mp_baseadr_l

		; ~~ read Entry (old header)

		; sfContReadStart(mp.baseadr + 10);		// entry
			BX=		10
			AR=		rm[I1++]
			BX=		BX + AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			push		AR
			push		BX
			AR=		BP
			AR=		AR + 2
			I1=		AR
			mSfContReadStart
			pop		AR
			pop		AR

		; ~~ Entry is 16-bit offset

		; mp.insbase = mp.baseadr + sfContReadWord();
			mSfContReadWord
			BX=		rm[mp_baseadr_l]
			I1=		mp@insbase_l
			rm[I1++]=	AR + BX
			BX=		rm[mp_baseadr_h]
			AR=		0
			rm[I1]=		AR + BX + C

		; sfContReadStop();
			mSfContReadStop

		; ~~ read Flags

		; sfContReadStart(mp.baseadr + 8);
			BX=		rm[mp_baseadr_l]
			AR=		8
			BX=		BX + AR
			AR=		rm[mp_baseadr_h]
			AR=		AR + 0 + C
			push		AR
			push		BX
			AR=		2
			AR=		AR + BP
			I1=		AR
			mSfContReadStart
			pop		AR
			pop		AR

		; mp.flags = sfContReadWord();
			mSfContReadWord
			I1=		mp@flags
			rm[I1]=		AR
			BX=		AR

		; sfContReadStop();
			mSfContReadStop

		; if(mp.flags.INSBank)
			test		BX.b2
			if ZR jmp	@md2fme_label_1532
		; {
			; mp.kmapbase = mp.baseadr + sizeof(MD2Header);
				BX=		rm[mp_baseadr_l]
				AR=		16
				BX=		BX + AR
				AR=		rm[mp_baseadr_h]
				AR=		AR + 0 + C
				I1=		mp@kmapbase_l
				rm[I1++]=	BX
				rm[I1]=		AR

			; sfContReadStart(HIADR(&mp.kmapbase));
				; ~~ offset aware ~~ mp@kmapbase_l
				mSfContReadStart

			; ~~ TotalINSBank
				mSfContReadWord
				rm[mp_tinsbank]=AR

			; ~~ TotalSong
				mSfContReadWord
				rm[mp_songcnt]=	AR

			; sfContReadStop();
				mSfContReadStop

			; mp.kmapbase += sizeof(DSPChannelMap) + (int)(pDCM->TotalSong	- 1) * sizeof(short);
				AR=		rm[mp_songcnt]
				slz		AR, 1
				AR=		AR + 4		; sizeof(DSPChannelMap)
				I1=		mp@kmapbase_l
				BX=		rm[I1]
				rm[I1++]=	AR + BX
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; mp.keymap = mp.kmapbase;
				BX=		rm[I1]
				I1=		mp@keymap
				rm[I1++]=	BX
				rm[I1]=		AR
		; }
		@md2fme_label_1532:


		; sfContReadStart(HIADR(&mp.insbase));
			I1=		mp@insbase_h
			mSfContReadStart

		jmp		@md2fme_label_1437_1
	; }
	; else
	@md2fme_label_1437:
	; {
		; mp.flags = 0;
			AR=		0
			I1=		mp@flags
			rm[I1]=		AR

		; mp.insbase = mp.baseadr;
			AR=		rm[mp_baseadr_l]
			I1=		mp@insbase_l
			rm[I1++]=	AR
			AR=		rm[mp_baseadr_h]
			rm[I1]=		AR

		; sfContReadStart(HIADR(&mp.baseadr));
			I1=		mp_baseadr_h
			mSfContReadStart
	; }
	@md2fme_label_1437_1:


	; ~~ only new V2

	; sfContRead2Word();

	; BX = SPI_DAT;
		mSfContReadWord
		BX=		AR

	; AX = SPI_DAT;
		mSfContReadWord
		AX=		AR

	; sfContReadStop();
		mSfContReadStop


	; if(AX.b15)
		test		AX.b15
		if ZR jmp	@md2fme_label_1603
	; {
		; AX.b15 = 0;
			clr		AX.b15

		; mp.insbase += sizeof(long);
			I1=		mp@insbase_l
			AR=		rm[I1]
			AR=		AR + 4
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; mp.songhdr = ((unsigned long)AX.U << 16) | (unsigned long)BX.U;
			I1=		mp@songhdr_l
			AR=		rm[I1]
			rm[I1++]=	AR + BX
			AR=		rm[I1]
			rm[I1]=		AR + AX + C

		jmp		@md2fme_label_1605
	; }
	; else
	@md2fme_label_1603:
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2fme_label_1605:


	; ~~ read song count


	; sfContReadStart(HIADR(&mp.songhdr));
		I1=		mp@songhdr_h
		mSfContReadStart

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; sfContReadStop();
		mSfContReadStop

	; mp.songhdr += 2;
		I1=		mp@songhdr_l
		AR=		rm[I1]
		AR=		AR + 2
		rm[I1++]=	AR
		AR=		rm[I1]
		AR=		AR + 0 + C
		rm[I1]=		AR

	; mp.songcnt = (unsigned long)AX.U;
		I1=		mp_songcnt
		rm[I1]=		AX

	; return true;
		set		Z
		rets
; }





; +-++-+


; ~.~---------------------------------------------------------------
; bool md2DoEvent_okon(void)
;
; in:
;    none
;
; out:
;    Z		- true
;    NZ		- false
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;
;
; special request:
;
;
; ------------------------------------------------------------------
md2DoEvent_okon:
; {
	; if(mp.note == 0)
		I1=		mp@note_l
		AR=		rm[I1++]
		AX=		rm[I1]
		AR=		AR | AX
		if NZ jmp	@md2deokon_label_1624
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2deokon_label_1624:


@md2deokon_loop_1841:
	; mp.EventTimer = 0;
		I1=		mp@EventTimer
		AR=		0
		rm[I1]=		AR

	; mp.ofsevent = mp.note;
		I1=		mp@note_l
		AR=		rm[I1++]
		AX=		rm[I1]
		I1=		mp@ofsevent_l
		rm[I1++]=	AR
		rm[I1]=		AX


	; sfContReadStart(HIADR(&mp.note));
		I1=		mp@note_h
		mSfContReadStart

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; mp.extev = AX.N1;
		I1=		mp@extev
		sra		AR, 2
		sra		AR, 2
		AR=		AR & 0x0F
		rm[I1]=		AR

	; if(mp.ExtEV & 0x08)
		test		AR.b3
		if ZR jmp	@md2deokon_label_1157
	; {
		; ~~ control message

		; spiContReadStop();
			mSfContReadStop

		; mp.ctlev = vXCHG(AX);
			AR=		AX
			I1=		mp@ctlev
			xchg		AR
			rm[I1]=		AR

		; mp->note += 2;
			I1=		mp@note_l
			AR=		rm[I1]
			AR=		AR + 2
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; return true;
			set		Z
			rets
	; }
	@md2deokon_label_1157:


	; switch(mp.extev & 3)
		AR=		AR & 0x03
		if ZR jmp	@md2deokon_caseT_case0
		SF=		AR - 1
		if EQ jmp	@md2deokon_caseT_case1
		SF=		AR - 2
		if EQ jmp	@md2deokon_caseT_case2
		jmp		@md2deokon_caseT_case3
	; {
		; case 0:
		@md2deokon_caseT_case0:
		; {
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit | event type = 0	     |	      |	   N1
			; ~~ +------+------------------------+ byte 0 |	 L
			; ~~ |4-bit | event timer high 4-bit |	      |	   N0
			; ~~ +------|			     +--------+
			; ~~ |8-bit |		  low 8-bit  | byte 1 |	 H
			; ~~ +------+------------------------+--------+

			; mp.EventTimer = ((unsigned short)AX.N0) << 8;
				I1=		mp@EventTimer
				AR=		0xFF0F
				AR=		AR & AX
				xchg		AR

			; mp.EventTimer |= (unsigned short)AX.H;
				rm[I1]=		AR

			; mp.note += 2;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 2
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; break;
				jmp		@md2deokon_label_1759
		; }

		; case 1:
		@md2deokon_caseT_case1:
		; {
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | event type = 1	      |	       |    N1
			; ~~ +------+-------------------------+ byte 0 |  L
			; ~~ |4-bit | play channel [19:16]    |	       |    N0
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | play channel [15:12]    |	       |    N3
			; ~~ +------+-------------------------+ byte 1 |  H
			; ~~ |4-bit | play channel [11:8]     |	       |    N2
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | play channel [7:0]      | byte 2 |  L
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | event timer	      | byte 3 |  H
			; ~~ +------+-------------------------+--------+

			; mp.PlayInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@PlayInfo_h
				AR=		0x0F
				rm[I1--]=	AR & AX

			; mp.PlayInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.PlayInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.EventTimer = 0x0F00 | (unsigned short)AX.H;
				pop		AR
				xchg		AR
				AH=		0x0F
				I1=		mp@EventTimer
				rm[I1]=		AR

			; mp.note += 4;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 4
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; break;
				jmp		@md2deokon_label_1759
		; }

		; case 2:
		@md2deokon_caseT_case2:
		; {
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | event type = 2	      |	       |    N1
			; ~~ +------+-------------------------+ byte 0 |  L
			; ~~ |4-bit | release channel [19:16] |	       |    N0
			; ~~ +------+-------------------------+--------+
			; ~~ |4-bit | release channel [15:12] |	       |    N3
			; ~~ +------+-------------------------+ byte 1 |  H
			; ~~ |4-bit | release channel [11:8]  |	       |    N2
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit | release channel [7:0]   | byte 2 |  L
			; ~~ +------+-------------------------+--------+
			; ~~ |8-bit |		 event timer  | byte 3 |  H
			; ~~ +------+-------------------------+--------+

			; mp.ReleaseInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@ReleaseInfo_h
				AR=		0x000F
				rm[I1--]=	AR & AX

			; mp.ReleaseInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.ReleaseInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.EventTimer = 0x0F00 | (unsigned short)AX.H;
				pop		AR
				xchg		AR
				AH=		0x0F
				I1=		mp@EventTimer
				rm[I1]=		AR

			; mp.note += 4;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 4
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; break;
				jmp		@md2deokon_label_1759
		; }

		; case 3:
		@md2deokon_caseT_case3:
		; {
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit | event type = 3	     |	      |	  N1
			; ~~ +------+------------------------+ byte 0 | L
			; ~~ |4-bit | play channel [19:16]   |	      |	  N0
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit | play channel [15:8]    | byte 1 | H
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit | play channel [7:0]     | byte 2 | L
			; ~~ +------+------------------------+--------+
			; ~~ |8-bit |release channel [19:12] | byte 3 | H
			; ~~ +------+------------------------+--------|
			; ~~ |8-bit |release channel [11:4]  | byte 4 | L
			; ~~ +------+------------------------+--------+
			; ~~ |4-bit |release channel [3:0]   |	      |	  N3
			; ~~ +------+------------------------| byte 5 + H
			; ~~ |4-bit | event timer	     |	      |	  N2
			; ~~ +------+------------------------+--------+

			; mp.PlayInfo = ((unsigned long)AX.N0) << 16;
				I1=		mp@PlayInfo_h
				AR=		0x000F
				rm[I1--]=	AR & AX

			; mp.PlayInfo |= ((unsigned long)AX.H) << 8;
				AR=		0xFF00
				AX=		AX & AR

			; AX = sfContReadWord();
				mSfContReadWord
				push		AR

			; mp.PlayInfo |= ((unsigned long)AX.L);
				AH=		0
				rm[I1]=		AR | AX

			; mp.ReleaseInfo = ((unsigned long)AX.H) << 12;
				I1=		mp@ReleaseInfo_h

			; AX = sfContReadWord();
				mSfContReadWord
				xchg		AR
				AX=		AR
				BX=		AR

			; mp.ReleaseInfo |= ((unsigned long)AX.L) << 4;
				pop		AR
				xchg		AR
				AH=		0
				sra		AR, 2
				src		AX, 2
				sra		AR, 2
				src		AX, 2
				rm[I1--]=	AR

			; mp.ReleaseInfo |= ((unsigned long)AX.N3);
				rm[I1]=		AX

			; mp.EventTimer = 0x0FF0 | (unsigned short)AX.N2;
				BX.h=		0
				AR=		0x0FF0
				I1=		mp@EventTimer
				rm[I1]=		AR | BX

			; mp.note += 6;
				I1=		mp@note_l
				AR=		rm[I1]
				AR=		AR + 6
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; break;
				jmp		@md2deokon_label_1759
		; }

		; default:
		@md2deokon_case_default:
		; {
			; Debug("Fatal: undefined event %d\n", AX.L & 0x0F);
			; return false;
				clr		Z
				rets
		; }
	; }
	@md2deokon_label_1759:


	; sfContReadStop();
		mSfContReadStop


	; if(mp.EventTimer == 0)
		I1=		mp@EventTimer
		AR=		rm[I1]
		if NZ jmp	@md2deokon_label_1104
	; {
		; mp.note = 0;
			I1=		mp@note_l
			AR=		0
			rm[I1++]=	AR
			rm[I1]=		AR

		; return false;
			clr		Z
			rets
	; }
	@md2deokon_label_1104:


	; ~~ processing release skip

	; ~~ offset aware
	;      mp.ReleaseInfo, mp.note,

	; ~~ meaning registers:
	; ------------------------------------
	; ~~	 AX:BX = 1 << i
	; ~~	 CX    = i
	; ~~	 DX    = note count
	; ~~	 R1:R0 = mp.ReleaseInfo
	; ~~	 R2    = AX
	; ~~	 I0    = pch (pch->RR)
	; ~~	 I1    = mp.??

	; if(mp.ReleaseInfo)
		I1=		mp@ReleaseInfo_l
		R0=		rm[I1++]
		AR=		rm[I1]
		AR=		AR | R0
		if ZR jmp	@md2deokon_label_1705
		R1=		rm[I1]
	; {
		; for(i = 0; (i < 20) && mp.ReleaseInfo; i++)
			io[ClrWDT]=	AR
			CX=		19
			DX=		0
		@md2deokon_loop_1114:
			AR=		R0
			AR=		AR | R1
			if ZR jmp	@md2deokon_label_1114
		; {
			; if(mp->ReleaseInfo & 1)
				sra		R1, 1
				src		R0, 1
				if NC jmp	@md2deokon_label_1117
			; {
				; mp->note += 2;
					DX++
					DX++
			; }
			@md2deokon_label_1117:


			loop		@md2deokon_loop_1114
		; }
		@md2deokon_label_1114:
			; ~~ write back --> mp.ReleaseInfo, mp.note
			I1=		mp@ReleaseInfo_l
			rm[I1++]=	R0
			rm[I1]=		R1
			I1=		mp@note_l
			AR=		rm[I1]
			rm[I1++]=	AR + DX
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; sfContReadStop();
			mSfContReadStop

		; Debug("release final %08X\n", (int)mp->note);
	; }
	@md2deokon_label_1705:


	; ~~ still setting basetimer in okon mode

	; mp.BaseTimer = (0x1000 - mp.EventTimer) * 8 * tempo;
		I1=		mp@EventTimer
		AR=		0x1000
		AX=		rm[I1]
		AX=		AR - AX
		slz		AX, 2
		slz		AX, 1
		I1=		mp@tempo

		mMULSS		rm[I1], AX

	#ifdef _MSPEECHDSP_
		AR=		MR0		; ~~ load answer and store
		AX=		AR
		AR=		MR1
	#else
		AR=		MR0
		AX=		AR
		AR=		MR1
	#endif

		; ~~ --------------------

		slz		AX, 2
		slc		AR, 2
		I1=		mp@BaseTimer
		rm[I1]=		AR


	; return true;
		set		Z
		rets
; }



; ~.~---------------------------------------------------------------
; void md2SetInstrument_okon(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;    CX		- i
;    DX		- next pch
;    BX		- pch
;    I1		- mp.??
;    R1:R0	- mp.PlayInfo
;    R2		- AX
;    R3		- BX
;
; special request:
;
;
; ------------------------------------------------------------------
md2SetInstrument_okon:
; {
	; md2Channel *pch;
	; DSP16 AX, BX;
	; int i, temp;

	; if(mp.PlayInfo)
		I1=		mp@PlayInfo_l
		R0=		rm[I1++]
		AR=		rm[I1]
		AR=		AR | R0
		if ZR jmp	@md2siokon_label_1645
		R1=		rm[I1]
	; {
		; // Debug("\n");

		; pch = mp;
			BX=		mp

		; pokon = mp.okon;
			I0=		mp@okon

		; sfContReadStart(HIADR(&mp.note));
			I1=		mp@note_h
			mSfContReadStart

		; ~~ offset aware
		;	verify mp struct offset if modified.

		; for(i = 0; (i < 20) && (mp.PlayInfo); i++)
			io[ClrWDT]=	AR
			CX=		19
		@md2siokon_loop_1344:
			DX=		0
			AR=		R0
			AR=		AR | R1
			if ZR jmp	@md2siokon_label_1340
		; {
			; if(mp.PlayInfo & 1)
				sra		R1, 1
				src		R0, 1
				if NC jmp	@__md2siokon_label_0328
			; {
				; ~~ clear FIFO


				; S_INS = sfContReadWord();
					mSfContReadWord
					R3=		AR

				; mp.note += 2;
					DX++
					DX++

				; ~~ Initial Volume Setting (only support V2 15-bit volume)


				; if(S_INS.b15)
					test		R3.b15
					if ZR jmp	@md2siokon_label_1355
				; {
					; ~~ skip vol

					; S_INS.b15 = 0;
						clr		R3.b15

					; AX = sfContReadWord();
						mSfContReadWord

					; mp.note += 2;
						DX++
						DX++

					; if(AX == 0)
						if NZ jmp	@md2siokon_label_1355
					; {
						; ~~ cancel this channel if Volume == 0

						; goto __md2siokon_label_0328;
							I1=		mp@note_l
							AR=		rm[I1]
							rm[I1++]=	AR + DX
							AR=		rm[I1]
							AR=		AR + 0 + C
							rm[I1]=		AR
							jmp		@__md2siokon_label_0328
					; }
				; }
				@md2siokon_label_1355:


				; ~~ skip PAN control

				; if(S_INS.b14)
					test		R3.b14
					if ZR jmp	@md2siokon_label_1827
				; {
					; S_INS.b14 = 0;
						clr		R3.b14

					; mp.note += 2;
						DX++
						DX++

					; AX = sfContReadWord();
						mSfContReadWord
				; }
				@md2siokon_label_1827:

				; ~~ FLTP

				; S_FLTP = sfContReadWord();
					mSfContReadWord
					R2=		AR

				; if(S_FLTP & 0x8000)
					test		R2.b15
					if ZR jmp	@md2siokon_label_1044
				; {
					; mp.midich = AX.U & 0x000F;
						I1=		MC_MIDICH
						AR=		BX
						I1=		I1 + AR
						AR=		0x0F
						AR=		AR & R2
						rm[I1]=		AR

					; S_FLTP &= ~0x800F;
						AR=		0x7FF0
						R2=		R2 & AR
				; }
				@md2siokon_label_1044:


				; mp.note += 2;
					DX++
					DX++

				; spiContReadStop();
					mSfContReadStop


				; ~~ don't broken these register
				;    CX		- i
				;    DX		- next pch
				;    BX		- pch
				;    R1:R0	- mp.PlayInfo

				; ~~ P1 is already safe to use it


				; if(S_INS == DSP_INSBANK_NUM)
					AR=		DSP_INSBANK_NUM
					SF=		AR - R3
					if NE jmp	@md2siokon_label_1624
				; {

					; +-----+-----+-----------+-----------+
					; | b15 | b14 | b13 - b12 | b11 - b0  |
					; +-----+-----+-----------+-----------+
					; |  0	|  0  |	 scale	  | INS index |
					; +-----+-----+-----------+-----------+

					; +-----+------------+
					; | b15 | b14  - b0  |
					; +-----+------------+
					; |  0	|    FLTP    |
					; +-----+------------+

					; ~~ auto setup midi channel to 0
					; ~~ because midi channel always 0 when instrument is DSP_INSBANK_NUM

					; mp.midich = 0;
						I1=		MC_MIDICH
						AR=		BX
						I1=		I1 + AR
						AR=		0
						rm[I1]=		AR

					; ~~ get address
				/*
					; spiContReadStart(mp->keymap + (pch->FLTP * 4), &mp->md2);
						I1=		mp@keymap
						slz		R2, 2
						AR=		rm[I1++]
						R2=		AR + R2
						AR=		rm[I1]
						AR=		AR + 0 + C
						push		AR
						push		R2
						AR=		BP
						AR=		AR + 2
						I1=		AR
						mSfContReadStart
						pop		AR
						pop		AR

					; S_INS = spiContReadWord();
						mSfContReadWord
						R3=		AR		; INS

					; S_FLTP = spiContReadWord();
						mSfContReadWord
						R2=		AR		; FLTP

					; spiContReadStop();
						mSfContReadStop
				*/
				; }
				@md2siokon_label_1624:


				; chmask = mp.okmask & (1 << pch->midich);
					P1.hh=		0			; ~~ for FDSP
					P1=		#@md2chmask_table
					I1=		MC_MIDICH
					AR=		BX
					I1=		I1 + AR
					AR=		rm[I1]			; ~~ pch->midich
					P1=		P1 + AR
					I1=		mp@okmask
					AR=		pm[P1]
					P1=		rm[I1]
					AR=		AR & P1

				; if(chmask)
					if ZR jmp	@md2siokon_label_2316
				; {
					; ~~ record this to okon

					; okon->INS = S_INS;
						rm[I0++]=	R3
					; okon->FLTP = S_FLTP;
						rm[I0++]=	R2
				; }
				@md2siokon_label_2316:


				; sfContReadStart(HIADR(&mp.note));
					I1=		mp@note_l
					AR=		rm[I1]
					rm[I1++]=	AR + DX
					AR=		rm[I1]
					AR=		AR + 0 + C
					rm[I1]=		AR
					mSfContReadStart
			; }
			@__md2siokon_label_0328:
		; __md2siokon_label_0328:

			; pch++;
				AR=		MC_SIZEOF
				BX=		BX + AR

			loop		@md2siokon_loop_1344
		; }
	; }
	@md2siokon_label_1340:
		I1=		mp@PlayInfo_l
		rm[I1++]=	R0
		rm[I1]=		R1

	; sfContReadStop();
		mSfContReadStop

	@md2siokon_label_1645:

	rets
; }




; ~.~---------------------------------------------------------------
; void md2ExtEvent(void)
;
; in:
;    none
;
; out:
;    none
;
;
; affect registers:
;    AR, AX, BX, CX, DX, I0, I1, R0, R1, R2, R3
;
; meaning registers:
;    AX:BX	- (1 << i)
;    CX		- i
;    DX		- next pch
;    I0		- pch
;    I1		- mp.??
;    R1:R0	- mp.PlayInfo
;    R2		- AX
;    R3		- BX
;
; special request:
;
;
; ------------------------------------------------------------------
md2ExtEvent_okon:
; {
	; md2Channel *pch;
	; DSP16 AX, BX;
	; int i;

	; if(mp.extev & 0x04)
		I1=		mp@extev
		AR=		rm[I1]
		test		AR.b2
		if ZR jmp	@md2extevokon_label_1428
	; {
		; ~~ extend event 4-bit

		; ~~ +-----------+---------------+--------------+
		; ~~ | ext event | event channel | control data |
		; ~~ | 4-bit	 |    20-bit	 |    n bytes	|
		; ~~ +-----------+---------------+--------------+

		; sfContReadStart(HIADR(&mp.note));
			I1=		mp@note_h
			mSfContReadStart

		; // +-------------------+
		; // |	Channel [19:16]	 |  N0
		; // +-------------------+	 L
		; // |	     ExtEV	 |  N1
		; // +-------------------+
		; // |	Channel [11:8]	 |  N2
		; // +-------------------+	 H
		; // |	Channel [15:12]	 |  N3
		; // +-------------------+

		; AX = sfContReadWord();
			mSfContReadWord
			R0=		AR

		; mp.extev = AX.N1;
			I1=		mp@extev
			sra		AR, 2
			sra		AR, 2
			AR=		AR & 0x0F
			rm[I1]=		AR

		; ~~ volume control

		; if(mp.extev & 0x01)
			test		AR.b0
			if ZR jmp	@md2extevokon_label_1542
		; {
			; mp.PlayInfo = (((unsigned long)AX.N0) << 16) |
					; ((unsigned long)AX.H << 8);
				AR=		0x0F
				AR=		AR & R0
				R1=		AR
				AR=		0xFF00
				R0=		R0 & AR

			; // +-------------------+
			; // |			 |  N0
			; // |	Channel [7:0]	 |	 L
			; // |			 |  N1
			; // +-------------------+
			; // |			 |  N2
			; // |	   Data 0	 |	 H
			; // |			 |  N3
			; // +-------------------+

			; AX = spiContReadWord();
				mSfContReadWord


			; mp.PlayInfo |= (unsigned long)AX.L;
				AX=		AR
				AH=		0
				R0=		R0 | AR

			; c = 4;
				DX=		4

			; for(i = 0; (i < 20) && (mp->PlayInfo); i++)
				io[ClrWDT]=	AR
				CX=		19
			@md2extevokon_loop_1807:
				AR=		R0
				AR=		AR | R1
				if ZR jmp	@md2extevokon_label_1808
			; {
				; if(mp->PlayInfo & 0x01)
					sra		R1, 1
					src		R0, 1
					if NC jmp	@md2extevokon_label_1808_1
				; {
					; AX = spiContReadWord();
						mSfContReadWord

					; c += 2;
						DX++
						DX++
				; }
				@md2extevokon_label_1808_1:

				; mp->PlayInfo >>= 1;

				loop		@md2extevokon_loop_1807
			; }
			@md2extevokon_label_1808:

			; mp.note += c;
				I1=		mp@note_l
				AR=		rm[I1]
				rm[I1++]=	AR + DX
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; ~~ stop continue function and restart it again
			; ~~ for align reason.

			; sfContReadStop();
				; mSfContReadStop

			; sfContReadStart(HIADR(&mp.note));
				; I1=		mp@note_h
				; mSfContReadStart

			; AX = sfContReadWord();
				mSfContReadWord
				R0=		AR
		; }
		@md2extevokon_label_1542:

		; // pitch bend

		; if(mp.extev & 0x02)
			I1=		mp@extev
			AR=		rm[I1]
			test		AR.b1
			if ZR jmp	@md2extevokon_label_1846
		; {
			; // +-------------------+
			; // |	Channel [19:16]	 |  N0
			; // +-------------------+	 L
			; // |	     Dummy	 |  N1
			; // +-------------------+
			; // |	Channel [11:8]	 |  N2
			; // +-------------------+	 H
			; // |	Channel [15:12]	 |  N3
			; // +-------------------+

			; mp->PlayInfo = (((unsigned long)AX.N0) << 16) |
					; ((unsigned long)AX.H << 8);
				AR=		0x0F
				AR=		AR & R0
				R1=		AR
				AR=		0xFF00
				R0=		R0 & AR

			; // +-------------------+
			; // |			 |  N0
			; // |	Channel [7:0]	 |	 L
			; // |			 |  N1
			; // +-------------------+
			; // |			 |  N2
			; // |	   FLTP [7:0]	 |	 H
			; // |			 |  N3
			; // +-------------------+

			; AX = spiContReadWord();
				mSfContReadWord

			; mp->PlayInfo |= (unsigned long)AX.L;
				AX=		AR
				AH=		0
				R0=		R0 | AR

			; for(i = 0; (i < 20) && (mp->PlayInfo); i++)
				io[ClrWDT]=	AR
				CX=		19
				DX=		4
			@md2extevokon_loop_1850:
				AR=		R0
				AR=		AR | R1
				if ZR jmp	@md2extevokon_label_1850
			; {
				; if(mp->PlayInfo & 0x01)
					sra		R1, 1
					src		R0, 1
					if NC jmp	@md2extevokon_label_1850_1
				; {
					; mp->note += 2;
						DX++
						DX++
				; }
				@md2extevokon_label_1850_1:

				; mp->PlayInfo >>= 1;

				loop		@md2extevokon_loop_1850
			; }
			@md2extevokon_label_1850:
				I1=		mp@note_l
				AR=		rm[I1]
				rm[I1++]=	AR + DX
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR
		; }
		@md2extevokon_label_1846:

		; sfContReadStop();
			mSfContReadStop

		; mp.PlayInfo = 0;
		; mp.ExtEV = 0;
			I1=		mp@extev
			AR=		0
			rm[I1]=		AR
	; }
	@md2extevokon_label_1428:

	rets
; }


; +++++++++++++++++++++


md2FindNextOkon:
; {
	; if(!mp.okmask)
		I1=		mp@okmask
		AR=		rm[I1]
		if NZ jmp	@md2fnok_label_1603
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2fnok_label_1603:


	; memset(mp.okon, -1, sizeof(mp.okon);
		CX=		39
		I1=		mp@okon
		AR=		-1
	@md2fnok_loop_1117:
		rm[I1++]=	AR
		loop		@md2fnok_loop_1117

	; while(mp@note && (mp.okon[0].INS == -1))
		MACOP=		0
	@md2fnok_loop_1122:
		io[ClrWDT]=	AR
		I1=		mp@note_l
		AR=		rm[I1++]
		AX=		rm[I1]
		AR=		AR | AX
		if ZR jmp	@md2fnok_label_1115
		I1=		mp@okon
		AR=		rm[I1]
		SF=		AR - 0xFF
		if NE jmp	@md2fnok_label_1115
	; {
		; md2DoEvent_okon();
			PCH=		md2DoEvent_okon
			lcall		md2DoEvent_okon

		; md2SetInstrument_okon();
			PCH=		md2SetInstrument_okon
			lcall		md2SetInstrument_okon

		; md2ExtEvent_okon();
			PCH=		md2ExtEvent_okon
			lcall		md2ExtEvent_okon

		jmp		@md2fnok_loop_1122
	; }
	@md2fnok_label_1115:


	; return (mp.okon[0].INS == -1) ? false : true;
		I1=		mp@okon
		AR=		rm[I1]
		SF=		AR - 0xFF
		if EQ jmp	@md2fnok_label_1124
		set		Z
		rets
	@md2fnok_label_1124:
		clr		Z
		rets
; }


; ---------------------------------------------------------------------------

md2PlayOkon:
; {
	; if(!mp.okmask)
		I1=		mp@okmask
		AR=		rm[I1]
		if NZ jmp	@md2pokon_label_1603
	; {
		; return;
			rets
	; }
	@md2pokon_label_1603:


md2PlayOkonAccomp:

	; kindex = 0x0100;
		BX=		0x0100

	; for(i = 0; i < mp.lop; i++)
		I1=		mp@okon
		CX=		19
	@md2pokon_loop_1337:
	; {
		; if(mp.okon[i].INS == -1)
			AR=		rm[I1]
			SF=		AR - 0xFF
			if EQ jmp	@md2pokon_label_1338
		; {
			; break;
		; }


		; if(!__md2GetFreeOp())
			push		I1
			push		BX
			push		CX

			PCH=		__md2GetFreeOp
			lcall		__md2GetFreeOp
			push		CX
			pop		AX

			pop		CX
			pop		BX
			pop		I1
			if ZR jmp	@md2pokon_label_1754
		; {
			; if(!__md2GetRecycleOp())
				push		I1
				push		BX
				push		CX

				PCH=		__md2GetRecycleOp
				lcall		__md2GetRecycleOp
				push		CX
				pop		AX

				pop		CX
				pop		BX
				pop		I1
				if NZ jmp	@md2pokon_label_1338
			; {
				; break;
			; }
		; }
		@md2pokon_label_1754:

		; iINS = mp.okon[i].INS;
			R3=		rm[I1++]
		; iFLTP = mp.okon[i].FLTP;
			R2=		rm[I1--]

		; if(iINS == DSP_INSBANK_NUM)
			AR=		DSP_INSBANK_NUM
			SF=		AR - R3
			if NE jmp	@md2pokon_label_1347
		; {

			; ~~ get address

			; spiContReadStart(mp->keymap + (pch->FLTP * 4), &mp->md2);
				push		I1
				push		BX
				push		CX
				push		AX
				I1=		mp@keymap
				slz		R2, 2
				AR=		rm[I1++]
				R2=		AR + R2
				AR=		rm[I1]
				AR=		AR + 0 + C
				push		AR
				push		R2
				AR=		BP
				AR=		AR + 2
				I1=		AR
				mSfContReadStart
				pop		AR
				pop		AR

			; S_INS = spiContReadWord();
				mSfContReadWord
				R3=		AR		; INS

			; S_FLTP = spiContReadWord();
				mSfContReadWord
				R2=		AR		; FLTP

			; spiContReadStop();
				mSfContReadStop
				pop		AX
				pop		CX
				pop		BX
				pop		I1
		; }
		@md2pokon_label_1347:


		; __sub_md2PlayNote_nomap();
			push		I1
			push		BX
			push		CX
			push		AX
			pop		CX
			; DX=		0x7FFF

			PCH=		__sub_md2PlayNote_nomap
			lcall		__sub_md2PlayNote_nomap
			pop		CX
			pop		BX
			pop		I1

		; mp.okon[i].INS = kindex;
			AR=		BX
			rm[I1++2]=	AR

		; kindex++;
			BX++

		loop		@md2pokon_loop_1337
	; }
	@md2pokon_label_1338:


	rets
; }


; ---------------------------------------------------------------------------

md2ReleaseOkon:
; {
	; if(!mp.okmask)
		I1=		mp@okmask
		AR=		rm[I1]
		if NZ jmp	@md2rokon_label_1603
	; {
		; return;
			rets
	; }
	@md2rokon_label_1603:


md2ReleaseOkonAccomp:
	; kindex = 0x0100;
		AX=		0x0100

	; for(i = 0; i < 20; i++)
		I1=		mp@okon
		CX=		rm[mp_lop]
	@md2rokon_loop_1337:
	; {
		; if(mp.okon[i].INS == -1)
			AR=		rm[I1]
			SF=		AR - 0xFF
			if EQ jmp	@md2rokon_label_1338
		; {
			; break;
		; }

		; md2ReleaseNote_okon(mp.okon[i].INS);
			push		I1
			push		CX
			AX=		rm[I1]
			PCH=		md2ReleaseNote_okon
			lcall		md2ReleaseNote_okon
			pop		CX
			pop		I1

		; mp.okon[i].INS = -1;
			AR=		-1
			rm[I1++]=	AR

		; mp.okon[i].FLTP = -1;
			rm[I1++]=	AR

		loop		@md2rokon_loop_1337
	; }
	@md2rokon_label_1338:

	rets
; }


; ~.~------------------------------------------------------------
; bool md2LoopToSong(short index)
;
; in:
;    AX			- index
;
; out:
;    none
;
; affect registers:
;    All
;
; meaning registers:
;
;
; special request:
;   none
;
; -------------------------------------------------------------
md2LoopToSong:
; {
	; if(index >= mp.songcnt)
		AR=		rm[mp_songcnt]
		SF=		AR - AX
		if LE jmp	@md2looptosong_label_1541
		jmp		@md2looptosong_label_1541_1
	@md2looptosong_label_1541:
	; {
		; return false;
			clr		Z
			rets
	; }
	@md2looptosong_label_1541_1:


	; mp.lpadr = mp.songhdr + (index * sizeof(long))
		I1=		mp@songhdr_l
		BX=		rm[I1++]
		DX=		rm[I1]
		I1=		mp@lpadrl
		AR=		AX
		slz		AR, 2
		rm[I1++]=	BX + AR
		AR=		0
		rm[I1]=		DX + AR + C


	; sfContReadStart(HIADR(&mp.lpadr));
		I1=		mp@lpadrh
		mSfContReadStart

	; sfContRead2Word();

	; mp.lpadr = mp.baseadr + (SPI_DAT + (SPI_DAT << 16));
		mSfContReadWord
		BX=		AR
		mSfContReadWord
		DX=		AR
		I1=		mp_baseadr_l
		AR=		rm[I1++]
		BX=		BX + AR
		AR=		rm[I1]
		DX=		DX + AR + C
		I1=		mp@lpadrl
		rm[I1++]=	BX
		rm[I1]=		DX

	; mp.lpadr &= 0x3FFFFFFF;
		AR=		rm[I1]
		clr		AR.b15
		clr		AR.b14
		rm[I1]=		AR

	; sfContReadStop
		mSfContReadStop

	; return true;
		set		Z
		rets
; }











