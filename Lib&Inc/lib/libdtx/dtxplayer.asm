






#define MAX_DTX_CHANNEL		4

; -----------------------------------------------------


#define DTX_SET_CH1_INS		0
#define DTX_SET_CH2_INS		1
#define DTX_SET_CH4_INS		2
#define DTX_RESERVE3		3
#define DTX_CHANGE_CH1_VOL	4
#define DTX_CHANGE_CH2_VOL	5
#define DTX_CHANGE_CH3_VOL	6
#define DTX_CHANGE_CH4_VOL	7
#define DTX_USER_CMD		8
#define DTX_REST		9
#define DTX_SET_NOTEOFF		10
#define DTX_END_SONG		11


; -----------------------------------------------------


#define DTX_TONE_ENVADR		0
#define DTX_TONE_ENVSTA		2
#define DTX_TONE_TONE		4
#define DTX_TONE_TONECNT	5
#define DTX_TONE_FLTG		6
#define DTX_TONE_MOD		7

#define DTX_TONE_SIZEOF		8

#define DTX_TONE_CH		(DTX_TONE_SIZEOF*3)

; -----------------------------------------------------

#define DTX_PERC_INSADR		0
#define DTX_PERC_INSADR_H	1
#define DTX_PERC_FLTG		2
#define DTX_PERC_FLTI		3
#define DTX_PERC_FLTA		7
#define DTX_PERC_FLTP		8
#define DTX_PERC_ADPCM_HD	9
#define DTX_PERC_ADPCM_S0	10
#define DTX_PERC_ADPCM_S1	11
#define DTX_PERC_ADPCM_CNT	12
#define DTX_PERC_ADPCM_BUF	13

#define DTX_PERC_SIZEOF		14

; -----------------------------------------------------


VarRM[0:127] = {

	dtxfltg,


}



VarRM[512:4095] = {

	dtxbaseadr[2]
	dtxinsbase[2]
	dtxpercbase[2]
	dtxsonghdr[2]
	dtxnote[2]
	dtxsongcnt
	dtxtonech[DTX_TONE_CH]			; 3 channel tone
	dtxperc[DTX_PERC_SIZEOF]

	dtxPlayInfo
	dtxPlayChannel
	dtxReleaseCh
	dtxBaseTimer
	dtxEventTimer

	dtxRender[8]
}


#define dtxbaseadr_l		dtxbaseadr
#define dtxbaseadr_h		dtxbaseadr+1
#define dtxinsbase_l		dtxinsbase
#define dtxinsbase_h		dtxinsbase+1
#define dtxpercbase_l		dtxpercbase
#define dtxpercbase_h		dtxpercbase+1
#define dtxsonghdr_l		dtxsonghdr
#define dtxsonghdr_h		dtxsonghdr+1
#define dtxnote_h		dtxnote+1



ShareVar = {


}

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


DTX_TONE_FREQ:
	DW 0x7A01, 0x7302, 0x6D00, 0x6603, 0x6100, 0x5B02, 0x5602, 0x5102,
	DW 0x4D00, 0x4803, 0x4403, 0x4003, 0x3D01, 0x3903, 0x3602, 0x3302,
	DW 0x3002, 0x2D03, 0x2B01, 0x2803, 0x2602, 0x2401, 0x2201, 0x2002,
	DW 0x1E02, 0x1C03, 0x1B01, 0x1903, 0x1801, 0x1700, 0x1502, 0x1402,
	DW 0x1301, 0x1201, 0x1101, 0x1001, 0x0F01, 0x0E02, 0x0D02, 0x0C03,
	DW 0x0C01, 0x0B02, 0x0A03, 0x0A01, 0x0902, 0x0900, 0x0802, 0x0800,
	DW 0x0702, 0x0701, 0x0603, 0x0602, 0x0600, 0x0503, 0x0502, 0x0500,
	DW 0x0403, 0x0402, 0x0401, 0x0400,

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


dtxInitialize:
; {
	; dtxbaseadr = 0;
		AR=		0
		I1=		dtxbaseadr
		rm[I1++]=	AR
		rm[I1]=		AR

	; dtxinsbase = 0;
		I1=		dtxinsbase
		rm[I1++]=	AR
		rm[I1]=		AR

	; dtxpercbase = 0;
		I1=		dtxpercbase
		rm[I1++]=	AR
		rm[I1]=		AR


	jmp		dtxInitParameters
; }

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

dtxInitParameters:
; {
	; dtxPlayInfo = 0;
		I1=		dtxPlayInfo
		rm[I1]=		AR

	; dtxPlayChannel = 0;
		I1=		dtxPlayChannel
		rm[I1]=		AR

	; dtxReleaseCh = 0;
		I1=		dtxReleaseCh
		rm[I1]=		AR

	; dtxEventTimer = 0;
		I1=		dtxEventTimer
		rm[I1]=		AR

	; memset(dtxtonech, 0, sizeof(dtxtonech));
		CX=		DTX_TONE_CH - 1
		I1=		dtxtonech
	@dtxinit_loop_0932:
		rm[I1++]=	AR
		loop		@dtxinit_loop_0932

	; memset(&dtxperc, 0, sizeof(dtxperc));
		CX=		DTX_PERC_SIZEOF - 1
		I1=		dtxperc
	@dtxinit_loop_1804:
		rm[I1++]=	AR
		loop		@dtxinit_loop_1804

	; dtxBaseTimer = 0x001F;
		AR=		0x001F
		I1=		dtxBaseTimer
		rm[I1]=		AR

	#ifdef DTX_PRAM_START
		CX=		#DTXPLAYER_PRAM_LARGE_END - 1
		AR=		#DTXPLAYER_PRAM_LARGE_START
		CX=		CX - AR
		P1=		#DTXPLAYER_PRAM_LARGE_START
		P0=		DTX_PRAM_START
		P0.hh=		DTX_PRAM_BANK
	@dtxinit_loop_0913:
		AR=		pm[P1++]
		pm[P0++]=	AR
		loop		@dtxinit_loop_0913
		P0.hh=		0
	#endif

	rets
; }

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

dtxReadTune:
; {
	; ~~ read tone modtune

	; spiContReadStart(dtxbaseadr + 12, &dtx);
		I1=		dtxbaseadr
		AR=		rm[I1++]
		AR=		AR + 12
		AX=		AR
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

	; dtxtonech[0].Mod = spiContReadByte();
		I1=		dtxtonech + DTX_TONE_MOD
		mSfContReadByte
		rm[I1]=		AR

	; dtxtonech[1].Mod = spiContReadByte();
		I1=		dtxtonech + DTX_TONE_SIZEOF + DTX_TONE_MOD
		mSfContReadByte
		rm[I1]=		AR

	; dtxtonech[2].Mod = spiContReadWord() >> 8;
		I1=		dtxtonech + DTX_TONE_SIZEOF + DTX_TONE_SIZEOF + DTX_TONE_MOD
		mSfContReadWord
		AL=		0
		xchg		AR
		rm[I1]=		AR

	; sfContReadStop();
		mSfContReadStop

	rets
; }

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


; bool dtxDoEvent(void)
dtxDoEvent:
; {
	; DSP16 AX;
	; int i, mask, cmd;

	; BaseTimer = (BaseTimer + 1) & 0x003F;
		I1=		dtxBaseTimer
		AR=		rm[I1]
		AR++
		AR=		AR & 0x3F
		rm[I1]=		AR


	; switch(BaseTimer)
		SF=		AR - 0
		if EQ jmp	@dtxdoe_case0_label_1906
		SF=		AR - 0x20
		if EQ jmp	@dtxdoe_case20_label_1906
		jmp		@dtxdoe_case_default_1909
	; {
		; case 0:
		@dtxdoe_case0_label_1906:
		; {
			; mask = 0x01;
				I1=		dtxPlayChannel
				AX=		rm[I1]

			; for(i = 0; i < MAX_DTX_CHANNEL; i++)
				CX=		MAX_DTX_CHANNEL - 1
				BX=		dtxtonech
				DX=		1
			@dtxdoe_loop_0911:
			; {
				; if(PlayChannel & mask)
					sra		AX, 1
					if NC jmp	@dtxdoe_label_0913
				; {
					; if(i != 2)		// perc
						test		DX.b2
						if NZ jmp	@dtxdoe_label_0916
					; {
						; ch[i].tone.envadr++;
							AR=		BX
							I1=		AR	; DTX_TONE_ENVADR
							AR=		rm[I1]
							AR++
							rm[I1++]=	AR
							AR=		rm[I1]
							AR=		AR + 0 + C
							rm[I1]=		AR
					; }
					@dtxdoe_label_0916:
				; }
				@dtxdoe_label_0913:

				; mask <<= 1;
					test		DX.b2
					if NZ jmp	@dtxdoe_label_1614
						AR=		DTX_TONE_SIZEOF
						BX=		BX + AR
					@dtxdoe_label_1614:
					slz		DX, 1

				loop		@dtxdoe_loop_0911
			; }
		; }

		; case 0x0020:
		@dtxdoe_case20_label_1906:
		; {
			; dtxEventTimer--;
				I1=		dtxEventTimer
				AR=		rm[I1]
				AR--
				rm[I1]=		AR

			; if(EventTimer != 0xFFFF)
				SF=		AR - 0xFF
				if EQ jmp	@dtxdoe_label_0919
			; {
				; return true;
			; }

			; break;
		; }

		; default:
		@dtxdoe_case_default_1909:
		; {
			; return true;
				set		Z
				rets
		; }
	; }
	@dtxdoe_label_0919:


	; spiContReadStart(dtxnote, &dtx);
		I1=		dtxnote_h
		mSfContReadStart

	; ~~            byte 0                         byte 1
	; ~~ +-----------------------------+-----------------------------+
	; ~~ |      H             L        |      H              L       |
	; ~~ +--------------+--------------+--------------+--------------+
	; ~~ | Note Timer H | Note Timer M | Note Timer L |   PlayInfo   |
	; ~~ +--------------+--------------+--------------+--------------+

	; AX = spiContReadByte();
		mSfContReadByte

	; dtxEventTimer = (AX.U << 4);
		I1=		dtxEventTimer
		AX=		AR
		slz		AX, 2
		slz		AX, 2

	; AX = spiContReadByte();
		mSfContReadByte

	; dtxEventTimer |= (AX.U >> 4);
		push		AR
		sra		AR, 2
		sra		AR, 2
		rm[I1]=		AR | AX
		AX=		rm[I1]

	; dtxPlayInfo = (unsigned long)(AX.U & 0x000F);
		pop		AR
		I1=		dtxPlayInfo
		AR=		AR & 0x0F
		rm[I1]=		AR

	; dtxnote += 2;
		I1=		dtxnote
		AR=		rm[I1]
		AR=		AR + 2
		rm[I1++]=	AR
		AR=		rm[I1]
		AR=		AR + 0 + C
		rm[I1]=		AR

	; if(!dtxPlayInfo)
		I1=		dtxPlayInfo
		AR=		rm[I1]
		if NZ jmp	@dtxdoe_label_0933
	; {
		; spiContReadStop();
			mSfContReadStop

		; return false;
			clr		Z
			rets
	; }
	@dtxdoe_label_0933:

	; // ---

	; while(PlayInfo)
	@dtxdoe_loop_1400:
		io[ClrWDT]=	AR
		I1=		dtxPlayInfo
		AR=		rm[I1]
		if ZR jmp	@dtxdoe_label_0935
	; {
		; AX = spiContReadByte();
			mSfContReadByte
			AX=		AR

		; note++;
			I1=		dtxnote
			AR=		rm[I1]
			AR++
			rm[I1++]=	AR
			AR=		rm[I1]
			AR=		AR + 0 + C
			rm[I1]=		AR

		; //          byte 3
		; // +---------------------+
		; //      H           L
		; // +---+-------+---------+
		; // | 1 | 0 0 0 | x x x x |   command
		; // +---+-------+---------+
		; //           or
		; // +---+-------+---------+
		; // | y | y y y | x x x x |   data
		; // +---+-------+---------+


		; if(AX.N1 == 0x08)
			AR=		0x00F0
			AR=		AR & AX
			AH=		0xFF
			SF=		AR - 0x80
			if NE jmp	@dtxdoe_label_0939
		; {
			; // command prc

			; note++;
				I1=		dtxnote
				AR=		rm[I1]
				AR++
				rm[I1++]=	AR
				AR=		rm[I1]
				AR=		AR + 0 + C
				rm[I1]=		AR

			; cmd = AX.N0;
				AR=		0x0F
				AR=		AX & AR
				push		AR

			; AX = spiContReadByte();
				mSfContReadByte
				AX=		AR

			; switch(cmd)
				pop		AR
				SF=		AR - DTX_SET_CH1_INS
				if EQ jmp	@dtxdoe_case_DTX_SET_CH1_INS_label_0948
				SF=		AR - DTX_SET_CH2_INS
				if EQ jmp	@dtxdoe_case_DTX_SET_CH2_INS_label_0948
				SF=		AR - DTX_SET_CH4_INS
				if EQ jmp	@dtxdoe_case_DTX_SET_CH4_INS_label_0948
				SF=		AR - DTX_CHANGE_CH1_VOL
				if EQ jmp	@dtxdoe_case_DTX_CHANGE_CH1_VOL_label_0948
				SF=		AR - DTX_CHANGE_CH2_VOL
				if EQ jmp	@dtxdoe_case_DTX_CHANGE_CH2_VOL_label_0948
				SF=		AR - DTX_CHANGE_CH3_VOL
				if EQ jmp	@dtxdoe_case_DTX_CHANGE_CH3_VOL_label_0948
				SF=		AR - DTX_CHANGE_CH4_VOL
				if EQ jmp	@dtxdoe_case_DTX_CHANGE_CH4_VOL_label_0948
				SF=		AR - DTX_REST
				if EQ jmp	@dtxdoe_case_DTX_REST_label_0948
				SF=		AR - DTX_SET_NOTEOFF
				if EQ jmp	@dtxdoe_case_DTX_SET_NOTEOFF_label_0948
				SF=		AR - DTX_END_SONG
				if GE jmp	@dtxdoe_case_DTX_END_SONG_label_0948
				jmp		@dtxdoe_label_0955
			; {
				; case DTX_SET_CH1_INS:
				@dtxdoe_case_DTX_SET_CH1_INS_label_0948:
				; {
					; SetTone(&ch[0].tone, (int)AX.U);
						BX=		dtxtonech
						call		dtxSetTone
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_SET_CH2_INS:
				@dtxdoe_case_DTX_SET_CH2_INS_label_0948:
				; {
					; SetTone(&ch[1].tone, (int)AX.U);
						BX=		dtxtonech + DTX_TONE_SIZEOF
						call		dtxSetTone
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_SET_CH4_INS:
				@dtxdoe_case_DTX_SET_CH4_INS_label_0948:
				; {
					; SetTone(&ch[3].tone, (int)AX.U);
						BX=		dtxtonech + DTX_TONE_SIZEOF + DTX_TONE_SIZEOF
						call		dtxSetTone
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_RESERVE3:
					; break;

				; case DTX_CHANGE_CH1_VOL:
				@dtxdoe_case_DTX_CHANGE_CH1_VOL_label_0948:
				; {
					; SetChFLTG(&ch[0], (int)AX.U);
						BX=		dtxtonech
						call		dtxSetToneFLTG
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_CHANGE_CH2_VOL:
				@dtxdoe_case_DTX_CHANGE_CH2_VOL_label_0948:
				; {
					; SetChFLTG(&ch[1], (int)AX.U);
						BX=		dtxtonech + DTX_TONE_SIZEOF
						call		dtxSetToneFLTG
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_CHANGE_CH3_VOL:
				@dtxdoe_case_DTX_CHANGE_CH3_VOL_label_0948:
				; {
					; SetChFLTG(&ch[2], (int)AX.U);
						BX=		dtxperc
						call		dtxSetPercFLTG
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_CHANGE_CH4_VOL:
				@dtxdoe_case_DTX_CHANGE_CH4_VOL_label_0948:
				; {
					; SetChFLTG(&ch[3], (int)AX.U);
						BX=		dtxtonech + DTX_TONE_SIZEOF + DTX_TONE_SIZEOF
						call		dtxSetToneFLTG
					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_USER_CMD:
					; break;

				; case DTX_REST:
				@dtxdoe_case_DTX_REST_label_0948:
				; {
					; //       H           L
					; // +---------+--------------------------------+
					; // | 0 0 0 0 | active bit for tone ctrl / flag|
					; // +---------+--------------------------------+

					; // TONE_FLAG as PlayChannel

					; dtxPlayChannel &= (unsigned long)~AX.U;
						AR=		-1
						AX=		AX ^ AR
						I1=		dtxPlayChannel
						AR=		rm[I1]
						rm[I1]=		AR & AX

					; dtxPlayInfo &= (unsigned long)~AX.U;
						I1=		dtxPlayInfo
						AR=		rm[I1]
						rm[I1]=		AR & AX

					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_SET_NOTEOFF:
				@dtxdoe_case_DTX_SET_NOTEOFF_label_0948:
				; {
					; //       H           L
					; // +---------+-----------------------------+
					; // | 0 0 0 0 | active bit for CH_RAMP_FLAG |
					; // +---------+-----------------------------+

					; // CH_RAMP_FLAG as ReleaseChannel

					; dtxReleaseCh |= (unsigned long)AX.U;
						I1=		dtxReleaseCh
						AR=		rm[I1]
						rm[I1]=		AR | AX

					; PlayInfo &= (unsigned long)~AX.U;
						AR=		-1
						AX=		AX ^ AR
						I1=		dtxPlayInfo
						AR=		rm[I1]
						rm[I1]=		AR & AX

					; break;
						jmp		@dtxdoe_label_0955
				; }

				; case DTX_END_SONG:
				@dtxdoe_case_DTX_END_SONG_label_0948:
				; default:
				; {
					; dtxnote = 0;
						I1=		dtxnote
						AR=		0
						rm[I1++]=	AR
						rm[I1]=		AR

					; dtxPlayChannel = 0;
						I1=		dtxPlayChannel
						rm[I1]=		AR

					; spiContReadStop();
						mSfContReadStop

					; return false;
						clr		Z
						rets
				; }
			; }
			@dtxdoe_label_0955:

			jmp		@dtxdoe_label_0939_1
		; }
		; else
		@dtxdoe_label_0939:
		; {
			; // data prc

			; SetChannelData(AX);
				call		dtxSetChannelData
		; }
		@dtxdoe_label_0939_1:

		jmp		@dtxdoe_loop_1400
	; }
	@dtxdoe_label_0935:

	; spiContReadStop();
		mSfContReadStop

	; return true;
		set		Z
		rets
; }


; --------------------------------------------
; void SetTone(toneChannel *tonech, int ins)
;
; in:
;    tonech 	: BX
;    ins	: AX
;
; out:
;
;
; --------------------------------------------
dtxSetTone:
; {
	; unsigned long adr;
	; DSP16 AX, BX;

	; spiContReadStop();
		mSfContReadStop

	; // read tone index map

	; adr = dtxbaseadr + 16 + ins;
		AR=		16
		AX=		AX + AR
		I1=		dtxbaseadr
		AR=		rm[I1++]
		AX=		AX + AR
		AR=		rm[I1]
		AR=		AR + 0 + C

	; spiContReadStart(adr & ~1, &dtx);
		push		AR
		AR=		AX
		clr		AR.b0
		push		AR
		AR=		BP
		AR=		AR + 2
		I1=		AR
		mSfContReadStart
		pop		AR
		pop		AR

	; AX = spiContReadWord();
		mSfContReadWord

	; // high byte

	; if(adr & 0x01)
		test		AX.b0
		if ZR jmp	@dtxst_label_1018
	; {
		; AX.U >>= 8;
			xchg		AR
		jmp		@dtxst_label_1018_1
	; }
	; else
	@dtxst_label_1018:
	; {
		; AX.H = 0x00;
	; }
	@dtxst_label_1018_1:
		AH=		0
		AX=		AR

	; spiContReadStop();
		mSfContReadStop

	; AX.U <<= 2;
		slz		AX, 2

	; adr = dtxinsbase + AX.U;
		I1=		dtxinsbase
		AR=		rm[I1++]
		AX=		AX + AR
		AR=		rm[I1]
		AR=		AR + 0 + C

	; spiContReadStart(adr, &dtx);
		push		AR
		push		AX
		AR=		BP
		AR=		AR + 2
		I1=		AR
		mSfContReadStart
		pop		AR
		pop		AR

	; AX = spiContReadWord();
		mSfContReadWord
		AX=		AR

	; BX = spiContReadWord();
		mSfContReadWord
		push		AR

	; tonech->envsta = baseadr + ((unsigned long)BX.U << 16) + (unsigned long)AX.U;
		I1=		dtxbaseadr + 1
		AR=		rm[I1--]
		push		AR
		AR=		rm[I1]
		push		AR
		AR=		DTX_TONE_ENVSTA
		AR=		AR + BX
		I1=		AR
		pop		AR
		rm[I1++]=	AR + AX
		pop		AX
		pop		AR
		rm[I1--]=	AR + AX + C

	; spiContReadStop();
		mSfContReadStop

	; // restore note pointer

	; spiContReadStart(note, &dtx);
		I1=		dtxnote_h
		mSfContReadStart

	rets
; }

; --------------------------------------------
; void dtxSetToneFLTG(dtxChannel *chp, int FLTG)
;
; in:
;    BX		: chp
;    AX		: FLTG
;
;
;
;
; --------------------------------------------
dtxSetToneFLTG:
; {
	; chp->tone.FLTG = 0x0888 * FLTG;
		MX=		0x0888
		AR=		AX
	#ifdef _MSPEECHDSP_
		MULSS
	#else
		MR=		MX * AR
	#endif
		AR=		DTX_TONE_FLTG
		AR=		AR + BX
		I1=		AR

	; AR = 0
	; MR0 = AR

		rm[I1]=		MR0

	rets
; }


; --------------------------------------------
; void dtxSetPercFLTG(dtxChannel *chp, int FLTG)
;
; in:
;    BX		: chp
;    AX		: FLTG
;
;
;
;
; --------------------------------------------
dtxSetPercFLTG:
; {
	; chp->tone.FLTG = 0x0888 * FLTG;
		; MX=		0x0888
		; AR=		AX
	; #ifdef _MSPEECHDSP_
		; MULSS
	; #else
		; MR=		MX * AR
	; #endif
		; AR=		DTX_PERC_FLTG
		; AR=		AR + BX
		; I1=		AR
		; rm[I1]=		MR0

		slz		AX, 2
		set		AX.b0
		set		AX.b1
		AR=		DTX_PERC_FLTG
		AR=		AR + BX
		I1=		AR

	; AX = 0

		rm[I1]=		AX

	rets
; }


; --------------------------------------------
; void dtxSetChannelData(DSP16 AX)
;
; in:
;    AX		: AX
;
;
;
;
; --------------------------------------------
dtxSetChannelData:
; {
	; int i, adr;
	; int mask;
	; DSP16 BX;

	; mask = 0x01;
		DX=		1

	; spiContReadStop();
		mSfContReadStop

	; for(i = 0; i < MAX_DTX_CHANNEL; i++)
		CX=		MAX_DTX_CHANNEL - 1
		I1=		dtxPlayInfo
		BX=		rm[I1]
		MX=		dtxtonech
	@dtxscd_loop_1128:
	; {
		; if(PlayInfo & mask)
			src		BX, 1
			if NC jmp	@dtxscd_label_1129
		; {
			; if(ch[i].type == dtxChannel::TONE_CHANNEL)
				test		DX.b2
				if NZ jmp	@dtxscd_label_1130
			; {
				; // read FREQ table in real chip

				; ch[i].tone.envadr = ch[i].tone.envsta;
					push		BX
					push		DX
					AR=		DTX_TONE_ENVSTA
					AR=		MX + AR
					I1=		AR
					BX=		rm[I1++]
					DX=		rm[I1]
					AR=		MX		; DTX_TONE_ENVADR
					I1=		AR
					rm[I1++]=	BX
					rm[I1]=		DX
					pop		DX
					pop		BX

				; ch[i].tone.TONE.FREQ = DTX_TONE_FREQ[AX.U];
					AR=		DTX_TONE_TONE
					AR=		AR + MX
					I1=		AR
					P1=		#DTX_TONE_FREQ	; ~~ read stop !!
					AR=		AX
					P1=		P1 + AR
					rm[I1++]=	pm[P1]

				; ch[i].tone.TONECNT.FREQ = 0;
					AR=		0
					rm[I1]=		AR


				jmp		@dtxscd_label_1130_1
			; }
			; else
			@dtxscd_label_1130:
			; {
				; memset(&dtxperc, 0, sizeof(dtxperc));
					push		CX
					I1=		dtxperc
					AR=		DTX_PERC_FLTI
					I1=		I1 + AR
					CX=		DTX_PERC_SIZEOF - 4
					AR=		0
				@dtxscd_loop_1337:
					rm[I1++]=	AR
					loop		@dtxscd_loop_1337
					pop		CX

				; // perc索引在 + 128的位址

				; adr = dtxbaseadr + 16 + ((AX.U & 0x3F) | 0x80);
					AR=		0x3F
					AX=		AX & AR
					AR=		0x0090
					AX=		AX + AR
					I1=		dtxbaseadr
					AR=		rm[I1++]
					AX=		AX + AR
					AR=		rm[I1]
					AR=		AR + 0 + C

				; spiContReadStart(adr, &dtx);
					push		AR
					push		AX
					AR=		BP
					AR=		AR + 2
					I1=		AR
					mSfContReadStart
					pop		AR
					pop		AR

				; AX = spiContReadByte();
					mSfContReadByte
					AX=		AR

				; spiContReadStop();
					mSfContReadStop

				; // 打擊樂資訊佔4 bytes

				; AX.U <<= 2;
					slz		AX, 2

				; adr = dtxpercbase + AX.U;
					I1=		dtxpercbase
					AR=		rm[I1++]
					AX=		AX + AR
					AR=		rm[I1]
					AR=		AR + 0 + C

				; spiContReadStart(adr, &dtx);
					push		AR
					push		AX
					AR=		BP
					AR=		AR + 2
					I1=		AR
					mSfContReadStart
					pop		AR
					pop		AR

				; AX = spiContReadWord();
					push		BX
					push		DX
					mSfContReadWord
					BX=		AR

				; BX = spiContReadWord();
					mSfContReadWord
					DX=		AR

				; spiContReadStop();
					mSfContReadStop

				; ch[i].perc.insadr = baseadr + (((unsigned long)BX.U & 0x00FF) << 16) + (unsigned long)AX.U;
					push		DX
					I1=		dtxbaseadr
					DX.h=		0
					AR=		rm[I1++]
					BX=		BX + AR
					AR=		rm[I1]
					AR=		AR + DX + C
					I1=		dtxperc
					rm[I1++]=	BX
					rm[I1++]=	AR

				; // FLTP

				; ch[i].perc.FLTP = (BX.U << 3) & 0xFF00;
					pop		AR
					slz		AR, 2
					slz		AR, 1
					AL=		0
					I1=		dtxperc + DTX_PERC_FLTP
					rm[I1]=		AR
					pop		DX
					pop		BX

				; // pre-cache

				; spiContReadStart(ch[i].perc.insadr, &dtx);
					I1=		dtxperc + 1
					mSfContReadStart

				; AX = spiContReadWord();
					mSfContReadWord

				; ch[i].perc.TASPAD.BUF = AX.S;
					I1=		dtxperc + DTX_PERC_ADPCM_BUF
					rm[I1]=		AR

				; spiContReadStop();
					mSfContReadStop

				; ch[i].perc.insadr += 2;
					I1=		dtxperc
					AR=		rm[I1]
					AR=		AR + 2
					rm[I1++]=	AR
					AR=		rm[I1]
					AR=		AR + 0 + C
					rm[I1]=		AR
			; }
			@dtxscd_label_1130_1:

			; dtxPlayChannel |= mask;
				I1=		dtxPlayChannel
				AR=		rm[I1]
				rm[I1]=		AR | DX

			; dtxReleaseCh &= ~mask;
				I1=		dtxReleaseCh
				push		DX
				AR=		-1
				DX=		DX ^ AR
				AR=		rm[I1]
				rm[I1]=		AR & DX

			; dtxPlayInfo &= ~mask;
				I1=		dtxPlayInfo
				AR=		rm[I1]
				rm[I1]=		AR & DX
				pop		DX

			; if(PlayInfo)
				AR=		rm[I1]
				if ZR jmp	@dtxscd_label_1358
			; {
				; spiContReadStart(note, &dtx);
					I1=		dtxnote_h
					mSfContReadStart

				; AX = spiContReadByte();
					mSfContReadByte
					AX=		AR

				; note++;
					I1=		dtxnote
					AR=		rm[I1]
					AR++
					rm[I1++]=	AR
					AR=		rm[I1]
					AR=		AR + 0 + C
					rm[I1]=		AR

				; spiContReadStop();
					mSfContReadStop
			; }
			@dtxscd_label_1358:
		; }
		@dtxscd_label_1129:

		; mask <<= 1;
			test		DX.b2
			if NZ jmp	@dtxscd_label_1911
				AR=		DTX_TONE_SIZEOF
				MX=		MX + AR
		@dtxscd_label_1911:
			slz		DX, 1

		loop		@dtxscd_loop_1128
	; }

	; spiContReadStart(note, &dtx);
		I1=		dtxnote_h
		mSfContReadStart

	rets
; }




; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


; ~.~---------------------------------------------------
; bool dtxFindToneEntry(unsigned long flashadr)
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
dtxFindToneEntry:
; {
	; dtxbaseadr = flashadr;
		I1=		dtxbaseadr
	#ifdef DTX_WORD_ADR
		slz		BX, 1
		slc		AX, 1
	#endif
		rm[I1++]=	BX
		rm[I1]=		AX

	; dtxsonghdr = flashadr;
		I1=		dtxsonghdr
		rm[I1++]=	BX
		rm[I1]=		AX

	; sfContReadStart(HIADR(&dtxbaseadr));
		mSfContReadStart

	; AX = sfContReadWord();
		mSfContReadWord
		AX=		AR

	; BX = sfContReadWord();
		mSfContReadWord

	; ~~ check "DTX " mark

	; if((AX != 0x5444) || (BX != 0x2058))
		BX=		0x2058
		SF=		AR - BX
		if NZ jmp	@dtxfte_label_1821
		AR=		0x5444
		SF=		AR - AX
		if NZ jmp	@dtxfte_label_1821
		jmp		@dtxfte_label_1823
	@dtxfte_label_1821:
	; {
		; sfContReadStop();
			mSfContReadStop

		; return false;
			clr		Z
			rets
	; }
	@dtxfte_label_1823:


	; dtxinsbase = dtxbaseadr + (unsigned long)head->InsAddrEntry;
		I1=		dtxbaseadr_l
		AX=		rm[I1++]
		BX=		rm[I1]
		mSfContReadWord
		AX=		AX + AR
		AR=		0
		BX=		BX + AR + C
		I1=		dtxinsbase
		rm[I1++]=	AX
		rm[I1]=		BX

	; dtxpercbase = dtxbaseadr + (unsigned long)head->PercAddrEntry;
		I1=		dtxbaseadr_l
		AX=		rm[I1++]
		BX=		rm[I1]
		mSfContReadWord
		AX=		AX + AR
		AR=		0
		BX=		BX + AR + C
		I1=		dtxpercbase
		rm[I1++]=	AX
		rm[I1]=		BX

	; dtxsonghdr = dtxbaseadr + (unsigned long)head->SongListEntry;
		mSfContReadWord
		AX=		AR
		mSfContReadWord
		BX=		AR
		I1=		dtxbaseadr_l
		AR=		rm[I1++]
		AX=		AX + AR
		AR=		rm[I1]
		BX=		BX + AR + C
		I1=		dtxsonghdr
		rm[I1++]=	AX
		rm[I1]=		BX

	; ~~

	; sfContReadStop();
		mSfContReadStop

	; sfContReadStart(HIADR(&dtxsonghdr));
		I1=		dtxsonghdr_h
		mSfContReadStart

	; dtxsongcnt = spiContReadWord();
		mSfContReadWord
		I1=		dtxsongcnt
		rm[I1]=		AR

	; dtxsonghdr += 2;
		I1=		dtxsonghdr_l
		AR=		rm[I1]
		AR=		AR + 2
		rm[I1++]=	AR
		AR=		rm[I1]
		AR=		AR + 0 + C
		rm[I1]=		AR

	; sfContReadStop();
		mSfContReadStop


	; return true;
		set		Z
		rets
; }

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

; ~.~------------------------------------------------------------
; bool dtxPlaySong(short index)
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
dtxPlaySong:
; {
	; if(index >= mp.songcnt)
		I1=		dtxsongcnt
		AR=		rm[I1]
		SF=		AR - AX
		if LE jmp	@dtxplaysong_label_1541
		jmp		@dtxplaysong_label_1541_1
	@dtxplaysong_label_1541:
	; {
		; return false;
			clr		Z
			rets
	; }
	@dtxplaysong_label_1541_1:


	; dtxnote = dtxsonghdr + (index * sizeof(long));
		I1=		dtxsonghdr
		BX=		rm[I1++]
		DX=		rm[I1]
		I1=		dtxnote
		AR=		AX
		slz		AR, 2
		rm[I1++]=	BX + AR
		AR=		0
		rm[I1]=		DX + AR + C

	; sfContReadStart(HIADR(&dtxnote));
		I1=		dtxnote_h
		mSfContReadStart

	; lo = sfContReadWord();
		mSfContReadWord
		BX=		AR

	; hi = sfContReadWord();
		mSfContReadWord
		DX=		AR

	; dtxnote = dtxbaseadr + (hi << 16) + lo;
		I1=		dtxbaseadr
		AR=		rm[I1++]
		BX=		BX + AR
		AR=		rm[I1]
		DX=		DX + AR + C
		I1=		dtxnote
		rm[I1++]=	BX
		rm[I1]=		DX

	; sfContReadStop();
		mSfContReadStop

	; dtxBaseTimer = 0x001F;
		AR=		0x001F
		I1=		dtxBaseTimer
		rm[I1]=		AR

	; dtxEventTimer = 0;
		I1=		dtxEventTimer
		rm[I1]=		AR

	; dtxStartBGServe();
		PCH=		dtxStartBGServe
		lcall		dtxStartBGServe

	; return true;
		set		Z
		rets
; }

; -----------------------------------------------


dtxStopSong:
; {
	I1=		dtxnote
	AR=		0
	rm[I1++]=	AR
	rm[I1++]=	AR

	I1=		dtxPlayChannel
	rm[I1]=		AR

	rets
; }


; -----------------------------------------------


dtxCheckSongEnd:
; {
	I1=		dtxnote
	AR=		rm[I1++]
	AX=		rm[I1]
	AR=		AR | AX
	rets
; }




; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


dtxStartBGServe:
; {
	; ClearIntReq(INT0);
		clr		io[INTREQ].b0

	; EnableInterrupt(INT0);
		ena		INT0

	; EnableInterrupts();
		eni

	rets
; }



dtxStopBGServe:
; {
	; DisableInterrupt(INT0);
		dsi		INT0

	; ClearIntReq(INT0);
		clr		io[INTREQ].b0

	rets
; }



; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

























