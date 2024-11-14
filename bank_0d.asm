.include "Constants.inc"
.if ORIGINAL
.else
.include "text/text_list.inc"
.endif

.segment "BANK_0D"

;$A000 - code continue
.byte $00			; 9FFF	STA $00
	LDA #$00		; A001  A9 00          
	STA $10			; A003  85 10          
	LDA #$03		; A005  A9 03          
	STA $11			; A007  85 11          
	JSR $F9D2		; A009  20 D2 F9       
	LDA #$21		; A00C  A9 21          
	STA $2D			; A00E  85 2D          
	LDA #$20		; A010  A9 20          
	STA $2C			; A012  85 2C          
	LDA #$01		; A014  A9 01          
	STA $33			; A016  85 33          
	RTS			; A018  60             

; assignment - Middle panel
;$A019 - data block = ($A019-$A06E)
.if ORIGINAL
.byte $40,$03,$26,$8a,$27,$72,$28
.byte $7f,$08,$de,$29,$78,$2a,$83,$0a,$de,$2b,$77,$2c,$8f,$2d,$7d,$ff
.else
.byte $40,$03,$26,P_BAE,$27,P_CHI,$28
.byte T_GA,$29,P_NUENG,$ff,$2a,$83,$0a,$de,$2b,$77,$2c,$8f,$2d,$7d,$08,$de
.endif
;$A030 - data block = Hospitalization
.if ORIGINAL
.byte $40,$03,$26,$86,$27,$6d,$28,$73,$29,$72,$2a,$9d,$2b,$4f,$ff
.else
.byte $40,$03,$26,P_HAENG,$27,P_DONG,$28,P_CHI,$29,P_RYO,$2a,$9d,$2b,$4f,$ff
.endif
;$A03F - data block = Move done
.if ORIGINAL
.byte $40
.byte $03,$26,$7a,$27,$73,$28,$84,$08,$de,$29,$73,$2a,$7d,$0a,$de,$2b
.byte $90,$ff
.else
.byte $40
.byte $03,$26,P_HAENG,$27,P_DONG,$28,P_JONG,$29,P_RYO
.byte $ff,$08,$de,$2a,$7d,$0a,$de,$2b,$90
.endif
;$A052 - data bloc = assignment - Pilot status
.if ORIGINAL
.byte $00,$03,$00,$47,$20,$47,$40,$47,$60,$47,$1f,$48,$3f,$48
.byte $5f,$48,$7f,$48,$31,$ec,$36,$ed,$76,$ee,$3a,$f3,$7a,$f3,$ff
.else
.byte $00,$03,$00,T_LTL,$20,T_LTL,$40,T_LTL,$60,T_LTL,$1f,T_RTL,$3f,T_RTL
.byte $5f,T_RTL,$7f,T_RTL,$31,T_NT,$36,T_PL,$76,T_CL,$3a,T_EX,$7a,T_EX,$ff
.endif

; Name	:
; Marks	: To assignment ??
	JSR $F3C8		; A06F  20 C8 F3       
	JSR $F32B		; A072  20 2B F3       
	JSR $F371		; A075  20 71 F3       
.if ORIGINAL
	JSR $F536		; A078  20 36 F5       
.else
	JSR $FF3C		; CHR ROM - PILOT FULL NAME
.endif
	LDA #$0F		; A07B  A9 0F          
	STA $5E			; A07D  85 5E          
	LDX $6213		; A07F  AE 13 62       
	LDA $6219,X		; A082  BD 19 62       
	STA $02			; A085  85 02          
	DEC $02			; A087  C6 02          
	CLC			; A089  18             
	ADC #$0F		; A08A  69 0F          
	STA $5F			; A08C  85 5F          
	LDA $02			; A08E  A5 02          
	LSR A			; A090  4A             
	LSR A			; A091  4A             
	CLC			; A092  18             
	ADC #$18		; A093  69 18          
	STA $60			; A095  85 60          
	LDA #$20		; A097  A9 20          
	STA $2D			; A099  85 2D          
	LDA #$40		; A09B  A9 40          
	STA $2C			; A09D  85 2C          
	LDY #$1F		; A09F  A0 1F          
BDA0A1:
.if ORIGINAL
	LDA #$00		; A0A1  A9 00          
.else
	LDA #T_NULL
.endif
	STA $0300,Y		; A0A3  99 00 03       
.if ORIGINAL
	LDA #$62		; A0A6  A9 62          
.else
	LDA #T_MUTL
.endif
	STA $0320,Y		; A0A8  99 20 03       
	DEY			; A0AB  88             
	BPL BDA0A1		; A0AC  10 F3          
	LDA #$05		; A0AE  A9 05          
	LDY #$A3		; A0B0  A0 A3          
	JSR $FB09		; A0B2  20 09 FB       
	LDA $93			; A0B5  A5 93          
	CLC			; A0B7  18             
.if ORIGINAL
	ADC #$31		; A0B8  69 31          
	STA $0326		; A0BA  8D 26 03       
.else
	ADC #$42		; Fleet Number
	STA $0324		; A0BA  8D 26 03       
.endif
	JSR $CAB6		; A0BD  20 B6 CA       
	LDA #$4E		; A0C0  A9 4E          
	LDY #$A3		; A0C2  A0 A3		0D/A34E
	JSR $FB09		; A0C4  20 09 FB       
	LDX $94			; A0C7  A6 94          
	LDA $6379,X		; A0C9  BD 79 63       
	JSR $C57C		; A0CC  20 7C C5       
	LDA #$08		; A0CF  A9 08          
	STA $12			; A0D1  85 12          
	LDA #$03		; A0D3  A9 03          
	STA $13			; A0D5  85 13          
	JSR $F408		; A0D7  20 08 F4       
	LDX $94			; A0DA  A6 94          
	LDA $0470,X		; A0DC  BD 70 04       
	JSR $C5C2		; A0DF  20 C2 C5       
	LDA #$12		; A0E2  A9 12          
	STA $12			; A0E4  85 12          
	LDA #$03		; A0E6  A9 03          
	STA $13			; A0E8  85 13          
	JSR $F408		; A0EA  20 08 F4       
	JSR $CAB6		; A0ED  20 B6 CA       
	LDA #$59		; A0F0  A9 59          
	LDY #$A3		; A0F2  A0 A3		0D/A359
	JSR $FB09		; A0F4  20 09 FB       
	LDX $94			; A0F7  A6 94          
	LDA $63B9,X		; A0F9  BD B9 63       
	JSR $C57C		; A0FC  20 7C C5       
	LDA #$08		; A0FF  A9 08          
	STA $12			; A101  85 12          
	LDA #$03		; A103  A9 03          
	STA $13			; A105  85 13          
	JSR $F408		; A107  20 08 F4       
	LDX $94			; A10A  A6 94          
	LDA $0480,X		; A10C  BD 80 04       
	JSR $C5C2		; A10F  20 C2 C5       
	LDA #$12		; A112  A9 12          
	STA $12			; A114  85 12          
	LDA #$03		; A116  A9 03          
	STA $13			; A118  85 13          
	JSR $F408		; A11A  20 08 F4       
	JSR $CAB6		; A11D  20 B6 CA       
	JSR $FCAF		; A120  20 AF FC       
	CLC			; A123  18             
	LDA $2C			; A124  A5 2C          
	ADC #$20		; A126  69 20          
	STA $2C			; A128  85 2C          
	LDA $2D			; A12A  A5 2D          
	ADC #$00		; A12C  69 00          
	STA $2D			; A12E  85 2D          
	LDA #$18		; A130  A9 18          
	LDY #$A3		; A132  A0 A3		0D/A318
	JSR $FB09		; A134  20 09 FB       
	JSR $CAB6		; A137  20 B6 CA       
	LDA #$18		; A13A  A9 18          
	LDY #$A3		; A13C  A0 A3		0D/A318
	JSR $FB09		; A13E  20 09 FB       
	JSR $CAB6		; A141  20 B6 CA       
	JSR $FC9F		; A144  20 9F FC       
	CLC			; A147  18             
	LDA $2C			; A148  A5 2C          
	ADC #$20		; A14A  69 20          
	STA $2C			; A14C  85 2C          
	LDA $2D			; A14E  A5 2D          
	ADC #$00		; A150  69 00          
	STA $2D			; A152  85 2D          
	JSR $FCBF		; A154  20 BF FC       
.if ORIGINAL
	LDA #$61		; A157  A9 61          
.else
	LDA #T_LUTL		; Assignment 16 x 4 Small Panel textbox top line
.endif
	STA $0310		; A159  8D 10 03       
.if ORIGINAL
	LDA #$63		; A15C  A9 63          
.else
	LDA #T_RUTL
.endif
	STA $030F		; A15E  8D 0F 03       
	LDX $6213		; A161  AE 13 62       
	DEX			; A164  CA             
	LDA $F91B,X		; A165  BD 1B F9       
	STA $04			; A168  85 04          
	LDX $02			; A16A  A6 02          
	LDA $F91B,X		; A16C  BD 1B F9       
	STA $03			; A16F  85 03          
	JSR $A20E		; A171  20 0E A2       
	JSR $A20E		; A174  20 0E A2       
	LDA $03			; A177  A5 03          
	JSR $C5C2		; A179  20 C2 C5       
	LDA #$03		; A17C  A9 03          
	STA $12			; A17E  85 12          
	LDA #$03		; A180  A9 03          
	STA $13			; A182  85 13          
	JSR $F408		; A184  20 08 F4       
	INC $03			; A187  E6 03          
	LDA #$28		; A189  A9 28          
	JSR $C5C2		; A18B  20 C2 C5       
	LDA #$13		; A18E  A9 13          
	STA $12			; A190  85 12          
	LDA #$03		; A192  A9 03          
	STA $13			; A194  85 13          
	JSR $F408		; A196  20 08 F4       
.if ORIGINAL
	LDA #$48		; A199  A9 48          
.else
	LDA #T_RTL
.endif
	STA $032F		; A19B  8D 2F 03       
.if ORIGINAL
	LDA #$47		; A19E  A9 47          
.else
	LDA #T_LTL
.endif
	STA $0330		; A1A0  8D 30 03       
	JSR $CAB6		; A1A3  20 B6 CA       
	LDX $04			; A1A6  A6 04          
	LDA $62B9,X		; A1A8  BD B9 62       
	BEQ BDA1D4		; A1AB  F0 27          
	BPL BDA1DE		; A1AD  10 2F          
	PHA			; A1AF  48             
	AND #$03		; A1B0  29 03          
	CLC			; A1B2  18             
	ADC #$31		; A1B3  69 31          
	STA $0324		; A1B5  8D 24 03       
	LDA #$73		; A1B8  A9 73          
	LDY #$A3		; A1BA  A0 A3		0D/A373
	JSR $FB09		; A1BC  20 09 FB       
	PLA			; A1BF  68             
	AND #$04		; A1C0  29 04          
	BEQ BDA1CA		; A1C2  F0 06          
	LDA #$84		; A1C4  A9 84          
	LDY #$A3		; A1C6  A0 A3          
	BNE BDA1CE		; A1C8  D0 04          
BDA1CA:
	LDA #$93		; A1CA  A9 93          
	LDY #$A3		; A1CC  A0 A3          
BDA1CE:
	JSR $FB09		; A1CE  20 09 FB       
	JMP $A1EB		; A1D1  4C EB A1       
BDA1D4:
	LDA #$A0		; A1D4  A9 A0          
	LDY #$A3		; A1D6  A0 A3          
	JSR $FB09		; A1D8  20 09 FB       
	JMP $A1EB		; A1DB  4C EB A1       

BDA1DE:
.byte $18,$69
.byte $30,$8d,$2b,$03,$a9,$ab,$a0,$a3,$20,$09,$fb

	LDA #$68		; A1EB  A9 68          
	LDY #$A3		; A1ED  A0 A3          
	JSR $FB09		; A1EF  20 09 FB       
	JSR $CAB6		; A1F2  20 B6 CA       
	JSR $A2F2		; A1F5  20 F2 A2       
	LDX $6213		; A1F8  AE 13 62       
	LDA $D6C2,X		; A1FB  BD C2 D6       
	STA $03C1		; A1FE  8D C1 03       
	LDA #$01		; A201  A9 01          
	STA $2F			; A203  85 2F          
	JSR $F34A		; A205  20 4A F3       
	JSR $F4EF		; A208  20 EF F4       
	JMP $F346		; A20B  4C 46 F3       

; Name	:
; Marks	: Assignment screen
	LDA $03			; A20E  A5 03          
	JSR $C5C2		; A210  20 C2 C5       
	LDA #$03		; A213  A9 03          
	STA $12			; A215  85 12          
	LDA #$03		; A217  A9 03          
	STA $13			; A219  85 13          
	JSR $F408		; A21B  20 08 F4       
	INC $03			; A21E  E6 03          
	LDA $03			; A220  A5 03          
	JSR $C5C2		; A222  20 C2 C5       
	LDA #$13		; A225  A9 13          
	STA $12			; A227  85 12          
	LDA #$03		; A229  A9 03          
	STA $13			; A22B  85 13          
	JSR $F408		; A22D  20 08 F4       
	INC $03			; A230  E6 03          
.if ORIGINAL
	LDA #$48		; A232  A9 48          
.else
	LDA #T_RTL		; 16 x 4 Small Panel textbox side line
.endif
	STA $032F		; A234  8D 2F 03       
.if ORIGINAL
	LDA #$47		; A237  A9 47          
.else
	LDA #T_LTL
.endif
	STA $0330		; A239  8D 30 03       
	JSR $CAB6		; A23C  20 B6 CA       
	LDX $04			; A23F  A6 04          
	LDA $62B9,X		; A241  BD B9 62       
	BEQ BDA26D		; A244  F0 27          
	BPL BDA277		; A246  10 2F          
	PHA			; A248  48             
	AND #$03		; A249  29 03          
	CLC			; A24B  18             
.if ORIGINAL
	ADC #$31		; A24C  69 31          
	STA $0324		; A24E  8D 24 03       
.else
	ADC #$42		; A24C  69 31		Military camp number in assignment to Pilot small left panel
	STA $0323		; A24E  8D 24 03       
.endif
	LDA #$73		; A251  A9 73          
	LDY #$A3		; A253  A0 A3          
	JSR $FB09		; A255  20 09 FB       
	PLA			; A258  68             
	AND #$04		; A259  29 04          
	BEQ BDA263		; A25B  F0 06          
	LDA #$84		; A25D  A9 84          
	LDY #$A3		; A25F  A0 A3          
	BNE BDA267		; A261  D0 04          
BDA263:
	LDA #$93		; A263  A9 93          
	LDY #$A3		; A265  A0 A3          
BDA267:
	JSR $FB09		; A267  20 09 FB       
	JMP $A284		; A26A  4C 84 A2       
BDA26D:
	LDA #$A0		; A26D  A9 A0          
	LDY #$A3		; A26F  A0 A3          
	JSR $FB09		; A271  20 09 FB       
	JMP $A284		; A274  4C 84 A2       
BDA277:
	CLC			; A277  18             
	ADC #$30		; A278  69 30          
	STA $032B		; A27A  8D 2B 03       
	LDA #$AB		; A27D  A9 AB          
	LDY #$A3		; A27F  A0 A3          
	JSR $FB09		; A281  20 09 FB       
	INC $04			; A284  E6 04          
	LDX $04			; A286  A6 04          
	LDA $62B9,X		; A288  BD B9 62       
	BEQ BDA2B4		; A28B  F0 27          
	BPL BDA2BE		; A28D  10 2F          
	PHA			; A28F  48             
	AND #$03		; A290  29 03          
	CLC			; A292  18             
.if ORIGINAL
	ADC #$31		; A293  69 31          
	STA $0334		; A295  8D 34 03       
.else
	ADC #$42		; Military camp number in assignment to Pilot small right panel
	STA $0333
.endif
	LDA #$C2		; A298  A9 C2          
	LDY #$A3		; A29A  A0 A3          
	JSR $FB09		; A29C  20 09 FB       
	PLA			; A29F  68             
	AND #$04		; A2A0  29 04          
	BEQ BDA2AA		; A2A2  F0 06          
	LDA #$D3		; A2A4  A9 D3          
	LDY #$A3		; A2A6  A0 A3          
	BNE BDA2AE		; A2A8  D0 04          
BDA2AA:
	LDA #$E2		; A2AA  A9 E2          
	LDY #$A3		; A2AC  A0 A3          
BDA2AE:
	JSR $FB09		; A2AE  20 09 FB       
	JMP $A2CB		; A2B1  4C CB A2       
BDA2B4:
	LDA #$EF		; A2B4  A9 EF          
	LDY #$A3		; A2B6  A0 A3          
	JSR $FB09		; A2B8  20 09 FB       
	JMP $A2CB		; A2BB  4C CB A2       

BDA2BE:
.byte $18,$69
.byte $30,$8d,$3b,$03,$a9,$fa,$a0,$a3,$20,$09,$fb

	INC $04			; A2CB  E6 04          
	LDA #$68		; A2CD  A9 68          
	LDY #$A3		; A2CF  A0 A3          
	JSR $FB09		; A2D1  20 09 FB       
	JSR $CAB6		; A2D4  20 B6 CA       
.if ORIGINAL
	LDA #$49		; A2D7  A9 49          
.else
	LDA #T_MMTL		; assignment screen Pilot panel textbox mid mid line
.endif
	LDY #$1D		; A2D9  A0 1D          
BDA2DB:
	STA $0301,Y		; A2DB  99 01 03       
	DEY			; A2DE  88             
	BPL BDA2DB		; A2DF  10 FA          
.if ORIGINAL
	LDA #$67		; A2E1  A9 67          
.else
	LDA #T_MLTL
.endif
	STA $0300		; A2E3  8D 00 03       
	STA $0310		; A2E6  8D 10 03       
.if ORIGINAL
	LDA #$68		; A2E9  A9 68          
.else
	LDA #T_MRTL
.endif
	STA $030F		; A2EB  8D 0F 03       
	STA $031F		; A2EE  8D 1F 03       
	RTS			; A2F1  60             

; Name	:
	JSR $A2F5		; A2F2	$20 $f5 $a2

; Name	:
	LDA #$73		; A2F5  A9 73          
	STA PpuData_2007	; A2F7  8D 07 20       
	LDA #$75		; A2FA  A9 75          
	JSR $F25B		; A2FC  20 5B F2       
	LDA #$74		; A2FF  A9 74          
	STA PpuData_2007	; A301  8D 07 20       
	RTS			; A304  60             

;$A305 - data block = ($A305-$A410) - assignment Fleet on Top left
.if ORIGINAL
.byte $00,$03,$20,$61,$21,$20,$22,$76,$23,$9d,$24
.byte $80,$25,$72,$27,$20,$3f,$63,$ff
;$A318 - data block = Pilot FACE Blank ??
.byte $00,$03,$01,$00,$02,$00,$03,$00
.byte $04,$00,$21,$00,$22,$00,$23,$00,$24,$00,$ff
;$A32B - data block = Pilot FACE Blank ??
.byte $00,$03,$01,$00,$02
.byte $00,$03,$00,$04,$00,$21,$00,$22,$00,$23,$00,$24,$00,$41,$00,$42
.byte $00,$43,$00,$44,$00,$61,$00,$62,$00,$63,$00,$64,$00,$ff
;$A34E - data block = assignment flagship :
.byte $00,$03
.byte $22,$77,$23,$76,$24,$9d,$27,$3a,$ff
;$A359 - data block = assignment Prototype MS :
.byte $00,$03,$22,$7c,$23,$7b,$24
.byte $78,$25,$4d,$26,$53,$27,$3a,$ff
;Down part panels
;$A368 - data block = assignment ?? 16 x 4 textbox L/R side
.byte $00,$03,$0f,$48,$2f,$48,$10,$47
.byte $30,$47,$ff
;$A373 - data block = ?? Fleet Number Military camp (Left)
.byte $00,$03,$22,$80,$23,$72,$25,$8c,$26,$80,$27,$72,$02
.byte $de,$05,$de,$ff
;$A384 - data block = Pilot (Left)
.byte $00,$03,$29,$ca,$2a,$b2,$2b,$db,$2c,$af,$2d,$c4
.byte $09,$df,$ff
;$A393 - data block = Captain (Left)
.byte $00,$03,$29,$7c,$2a,$9a,$2b,$72,$2c,$76,$2d,$9d,$ff
;$A3A0 - data block = assignment Waiting(Left)
.byte $00,$03,$26,$80,$27,$72,$28,$77,$29,$4f,$ff
;$A3AB - data block = assignment - hospitalization ??
.byte $00,$03,$22,$86,$23
.byte $6d,$24,$73,$25,$72,$26,$9d,$27,$4f,$29,$71,$2a,$84,$2c,$ef,$2d
.byte $e9,$ff
;$A3C2 - data block = ?? Fleet Number Military camp (Right) ??
.byte $10,$03,$22,$80,$23,$72,$25,$8c,$26,$80,$27,$72,$02,$de
.byte $05,$de,$ff
;$A3D3 - data block =
.byte $10,$03,$29,$ca,$2a,$b2,$2b,$db,$2c,$af,$2d,$c4,$09
.byte $df,$ff
;$A3E2 - data block = Captain (Right) ??
.byte $10,$03,$29,$7c,$2a,$9a,$2b,$72,$2c,$76,$2d,$9d,$ff
;$A3EF - data block = assignment Waiting(Right)
.byte $10
.byte $03,$26,$80,$27,$72,$28,$77,$29,$4f,$ff
;$A3FA - data block = assignment - hospitalization (Left)
.byte $10,$03,$22,$86,$23,$6d
;$A400
.byte $24,$73,$25,$72,$26,$9d,$27,$4f,$29,$71,$2a,$84,$2c,$ef,$2d,$e9
.byte $ff
.else
.include "text/D_A305_ASSIGNMENT_PANEL.inc"
.endif

; Name	:
	JSR $F96D		; A411  20 6D F9       
	LDA #$FC		; A414  A9 FC          
	LDY #$A4		; A416  A0 A4          
	JSR $FB09		; A418  20 09 FB       
	LDA #$2B		; A41B  A9 2B          
	LDY #$A3		; A41D  A0 A3          
	JSR $FB09		; A41F  20 09 FB       
	LDX $94			; A422  A6 94          
	LDA $01			; A424  A5 01          
	BEQ BDA42E		; A426  F0 06          
	LDA $0480,X		; A428  BD 80 04       
	JMP $A431		; A42B  4C 31 A4       
BDA42E:
	LDA $0470,X		; A42E  BD 70 04       
	PHA			; A431  48             
	JSR $C5C2		; A432  20 C2 C5       
	LDA #$06		; A435  A9 06          
	STA $12			; A437  85 12          
	LDA #$03		; A439  A9 03          
	STA $13			; A43B  85 13          
	JSR $F408		; A43D  20 08 F4       
	LDA #$00		; A440  A9 00          
	STA $05			; A442  85 05          
	STA $06			; A444  85 06          
	STA $07			; A446  85 07          
	STA $08			; A448  85 08          
	STA $09			; A44A  85 09          
	PLA			; A44C  68             
	BMI BDA474		; A44D  30 25          
	TAX			; A44F  AA             
	LDA $F923,X		; A450  BD 23 F9       
	LDX $6213		; A453  AE 13 62       
	CLC			; A456  18             
	ADC $F91A,X		; A457  7D 1A F9       
	TAY			; A45A  A8             
	LDA $6331,Y		; A45B  B9 31 63       
	STA $05			; A45E  85 05          
	LDA $62F5,Y		; A460  B9 F5 62       
	STA $06			; A463  85 06          
	LDA $62E1,Y		; A465  B9 E1 62       
	STA $07			; A468  85 07          
	LDA $631D,Y		; A46A  B9 1D 63       
	STA $08			; A46D  85 08          
	LDA $6309,Y		; A46F  B9 09 63       
	STA $09			; A472  85 09          
BDA474:
	LDA $05			; A474  A5 05          
	JSR $F8D4		; A476  20 D4 F8       
	STX $0332		; A479  8E 32 03       
	STY $0333		; A47C  8C 33 03       
	LDA $06			; A47F  A5 06          
	JSR $F8D4		; A481  20 D4 F8       
	STX $0337		; A484  8E 37 03       
	STY $0338		; A487  8C 38 03       
	LDA $07			; A48A  A5 07          
	JSR $F8D4		; A48C  20 D4 F8       
	STX $033B		; A48F  8E 3B 03       
	STY $033C		; A492  8C 3C 03       
	LDA $08			; A495  A5 08          
	JSR $F8D4		; A497  20 D4 F8       
	STX $0377		; A49A  8E 77 03       
	STY $0378		; A49D  8C 78 03       
	LDA $09			; A4A0  A5 09          
	JSR $F8D4		; A4A2  20 D4 F8       
	STX $037B		; A4A5  8E 7B 03       
	STY $037C		; A4A8  8C 7C 03       
	LDA $93			; A4AB  A5 93          
	CLC			; A4AD  18             
.if ORIGINAL
	ADC #$31		; A4AE  69 31          
	STA $0368		; A4B0  8D 68 03       
.else
	ADC #$42		; Fleet Number in assigment Pilot status
	STA $0367		; A4B0  8D 68 03       
.endif
	LDA $01			; A4B3  A5 01          
	BEQ BDA4BD		; A4B5  F0 06          
	LDA #$E0		; A4B7  A9 E0          
	LDY #$A4		; A4B9  A0 A4          
	BNE BDA4C1		; A4BB  D0 04          
BDA4BD:
	LDA #$EF		; A4BD  A9 EF          
	LDY #$A4		; A4BF  A0 A4          
BDA4C1:
	JSR $FB09		; A4C1  20 09 FB       
	LDA #$80		; A4C4  A9 80          
	STA $00			; A4C6  85 00          
	LDA #$00		; A4C8  A9 00          
	STA $10			; A4CA  85 10          
	LDA #$03		; A4CC  A9 03          
	STA $11			; A4CE  85 11          
	JSR $F9D2		; A4D0  20 D2 F9       
	LDA #$21		; A4D3  A9 21          
	STA $2D			; A4D5  85 2D          
	LDA #$20		; A4D7  A9 20          
	STA $2C			; A4D9  85 2C          
	LDA #$01		; A4DB  A9 01          
	STA $33			; A4DD  85 33          
	RTS			; A4DF  60             

;$A4E0 - data block = ($A4E0-$A529) - Pilot/Captain
.if ORIGINAL
.byte $40,$03,$2e,$ca,$0e,$df,$2f,$b2,$30,$db,$31,$af,$32,$c4,$ff
.byte $40
.byte $03,$2e,$7c,$2f,$9a,$30,$72,$31,$76,$32,$9d,$ff
.else
.byte $40,$03,$2e,T_JO,$2f,P_JONG,$30,T_SA,$ff,$0e,$df,$31,$af,$32,$c4
.byte $40
.byte $03,$2e,T_HAAM,$2f,P_JANG,$ff,$30,$72,$31,$76,$32,$9d
.endif
;$A4FC - data block = assignment ??
.if ORIGINAL
.byte $00,$03,$00,$47
;$A500
.byte $20,$47,$40,$47,$60,$47,$1f,$48,$3f,$48,$5f,$48,$7f,$48,$31,$ec
.byte $36,$ed,$76,$ee,$3a,$f3,$7a,$f3,$66,$80,$46,$de,$67,$72,$69,$76
.byte $6a,$9d,$6b,$80,$6c,$72,$ff
.else
.byte $00,$03,$00,T_LTL
;$A500 - data block = assignment Pilot status - Fleet
.byte $20,T_LTL,$40,T_LTL,$60,T_LTL,$1f,T_RTL,$3f,T_RTL,$5f,T_RTL,$7f,T_RTL,$31,T_NT
.byte $36,T_PL,$76,T_CL,$3a,T_EX,$7a,T_EX,$66,P_JAE,$67,T_EMPTY,$68,T_HAAM
.byte $69,P_DAE,$ff,$46,$de,$6b,$80,$6c,$72
.endif
;$A527
.byte $90,$01,$60

	LDA #$00		; A52A  A9 00          
	STA $91			; A52C  85 91          
	LDA #$04		; A52E  A9 04          
	STA $8F			; A530  85 8F          
	LDA #$E8		; A532  A9 E8          
	STA $10			; A534  85 10          
	LDA #$85		; A536  A9 85          
	STA $11			; A538  85 11          
	JSR $FAED		; A53A  20 ED FA       
	JSR $A8C2		; A53D  20 C2 A8       
	JSR $8007		; A540  20 07 80       
	LDA $90			; A543  A5 90          
	BMI BDA574		; A545  30 2D          
	STA $9F			; A547  85 9F          
	JSR $A84C		; A549  20 4C A8       
	LDX $6213		; A54C  AE 13 62       
	LDA $6242,X		; A54F  BD 42 62       
	ASL A			; A552  0A             
	ASL A			; A553  0A             
	ADC $90			; A554  65 90          
	TAX			; A556  AA             
	LDA $97			; A557  A5 97          
	CMP $D822,X		; A559  DD 22 D8       
	BCC BDA56A		; A55C  90 0C          
	JSR $F2E6		; A55E  20 E6 F2       
	JSR $A8AA		; A561  20 AA A8       
	JSR $A8C2		; A564  20 C2 A8       
	JMP $A540		; A567  4C 40 A5       
BDA56A:
	JSR $A57B		; A56A  20 7B A5       
	LDA $9F			; A56D  A5 9F          
	STA $90			; A56F  85 90          
	JMP $A532		; A571  4C 32 A5       
BDA574:
	JSR $D4D0		; A574  20 D0 D4       
	JSR $C2EF		; A577  20 EF C2       
	RTS			; A57A  60             

; Name	:
	JSR $A671		; A57B  20 71 A6       
	JSR $A78C		; A57E  20 8C A7       
	LDA #$00		; A581  A9 00          
	STA $42			; A583  85 42          
	STA $3B			; A585  85 3B          
	STA $40			; A587  85 40          
	STA $41			; A589  85 41          
	STA $8D			; A58B  85 8D          
	LDA #$02		; A58D  A9 02          
	STA $26			; A58F  85 26          
	LDA #$46		; A591  A9 46          
	STA $44			; A593  85 44          
	LDA #$AE		; A595  A9 AE          
	STA $45			; A597  85 45          
	LDA #$00		; A599  A9 00          
	STA $46			; A59B  85 46          
	JSR $F34A		; A59D  20 4A F3       
	JSR $F4EF		; A5A0  20 EF F4       
	JSR $CD97		; A5A3  20 97 CD       
	LDA #$94		; A5A6  A9 94          
	STA $10			; A5A8  85 10          
	LDA #$85		; A5AA  A9 85          
	STA $11			; A5AC  85 11          
	JSR $FAED		; A5AE  20 ED FA       
	LDA #$00		; A5B1  A9 00          
	STA $24			; A5B3  85 24          
	STA $8E			; A5B5  85 8E          
	JSR $A61A		; A5B7  20 1A A6       
	LDA #$02		; A5BA  A9 02          
	BIT $7E			; A5BC  24 7E          
	BEQ BDA5CF		; A5BE  F0 0F          
BDA5C0:
	JSR $F2DE		; A5C0  20 DE F2       
	LDA #$00		; A5C3  A9 00          
	STA $3B			; A5C5  85 3B          
	STA $40			; A5C7  85 40          
	STA $41			; A5C9  85 41          
	JSR $D4D0		; A5CB  20 D0 D4       
	RTS			; A5CE  60             

BDA5CF:
	LDA #$01		; A5CF  A9 01          
	BIT $7E			; A5D1  24 7E          
	BEQ BDA5F0		; A5D3  F0 1B          
	LDA $8E			; A5D5  A5 8E          
	BNE BDA5C0		; A5D7  D0 E7          
	JSR $FBF0		; A5D9  20 F0 FB       
	BCC BDA5EA		; A5DC  90 0C          
	JSR $FC0E		; A5DE  20 0E FC       
	JSR $A89C		; A5E1  20 9C A8       
	JSR $F2D6		; A5E4  20 D6 F2       
	JMP $A5C3		; A5E7  4C C3 A5       

BDA5EA:
.byte $20,$e6,$f2,$4c,$b7,$a5
BDA5F0:
	LDA #$30		; A5F0  A9 30          
	BIT $7E			; A5F2  24 7E          
	BEQ BDA602		; A5F4  F0 0C          
	JSR $F2CE		; A5F6  20 CE F2       
	LDA $8E			; A5F9  A5 8E          
	EOR #$01		; A5FB  49 01          
	STA $8E			; A5FD  85 8E          
	JMP $A5B7		; A5FF  4C B7 A5       
BDA602:
	LDA #$80		; A602  A9 80          
	BIT $7E			; A604  24 7E          
	BEQ BDA60E		; A606  F0 06          
	JSR $A8D1		; A608  20 D1 A8       
;$A60B
.byte $4c,$b7,$a5
BDA60E:
	LDA #$40		; A60E  A9 40          
	BIT $7E			; A610  24 7E          
	BEQ BDA617		; A612  F0 03          
	JSR $A8E9		; A614  20 E9 A8       
BDA617:
	JMP $A5B7		; A617  4C B7 A5       

; Name	:
	LDA #$F0		; A61A  A9 F0          
	STA $0210		; A61C  8D 10 02       
	STA $0200		; A61F  8D 00 02       
	STA $0204		; A622  8D 04 02       
	LDA $24			; A625  A5 24          
	AND #$10		; A627  29 10          
	BNE BDA66B		; A629  D0 40          
	LDX $8E			; A62B  A6 8E          
	LDA $A66F,X		; A62D  BD 6F A6       
	STA $0210		; A630  8D 10 02       
	LDA #$01		; A633  A9 01          
	STA $0211		; A635  8D 11 02       
	LDA #$01		; A638  A9 01          
	STA $0212		; A63A  8D 12 02       
	LDA #$18		; A63D  A9 18          
	STA $0213		; A63F  8D 13 02       
	JSR $A984		; A642  20 84 A9       
	BCC BDA66B		; A645  90 24          
	LDA #$74		; A647  A9 74          
	STA $0200		; A649  8D 00 02       
	STA $0204		; A64C  8D 04 02       
	LDA #$08		; A64F  A9 08          
	STA $0203		; A651  8D 03 02       
	LDA #$F0		; A654  A9 F0          
	STA $0207		; A656  8D 07 02       
	LDA #$01		; A659  A9 01          
	STA $0201		; A65B  8D 01 02       
	STA $0205		; A65E  8D 05 02       
	LDA #$41		; A661  A9 41          
	STA $0202		; A663  8D 02 02       
	LDA #$01		; A666  A9 01          
	STA $0206		; A668  8D 06 02       
BDA66B:
	JSR $F3D0		; A66B  20 D0 F3       
	RTS			; A66E  60             

;$A66F - data block = ($A66F-$A670)
.byte $c8
.byte $d8

; Name	:
; Marks	: Draw repair screen ??
	JSR $F3C8		; A671  20 C8 F3       
	JSR $F32B		; A674  20 2B F3       
	JSR $F536		; A677  20 36 F5       
	LDA #$0F		; A67A  A9 0F          
	STA $60			; A67C  85 60          
	LDA PpuStatus_2002	; A67E  AD 02 20       
	LDA #$20		; A681  A9 20          
	STA PpuAddr_2006	; A683  8D 06 20       
	LDA #$00		; A686  A9 00          
	STA PpuAddr_2006	; A688  8D 06 20       
	LDA #$00		; A68B  A9 00          
	JSR $F225		; A68D  20 25 F2       
	JSR $F225		; A690  20 25 F2       
	JSR $F225		; A693  20 25 F2       
	JSR $FC8F		; A696  20 8F FC       
	LDA #$20		; A699  A9 20          
	STA $2D			; A69B  85 2D          
	LDA #$80		; A69D  A9 80          
	STA $2C			; A69F  85 2C          
	JSR $F982		; A6A1  20 82 F9       
	LDA #$2F		; A6A4  A9 2F          
	LDY #$A7		; A6A6  A0 A7          
	JSR $FB09		; A6A8  20 09 FB       
	LDA #$5A		; A6AB  A9 5A          
	LDY #$A7		; A6AD  A0 A7          
	JSR $FB09		; A6AF  20 09 FB       
	JSR $CAB6		; A6B2  20 B6 CA       
	LDA #$6D		; A6B5  A9 6D          
	LDY #$A7		; A6B7  A0 A7          
	JSR $FB09		; A6B9  20 09 FB       
	LDA #$5A		; A6BC  A9 5A          
	LDY #$A7		; A6BE  A0 A7          
	JSR $FB09		; A6C0  20 09 FB       
	JSR $A885		; A6C3  20 85 A8       
	LDY $6213		; A6C6  AC 13 62       
	LDA ($10),Y		; A6C9  B1 10          
	JSR $F8D4		; A6CB  20 D4 F8       
	STX $0309		; A6CE  8E 09 03       
	STY $030A		; A6D1  8C 0A 03       
	LDA $A0			; A6D4  A5 A0          
	STA $18			; A6D6  85 18          
	LDA $A1			; A6D8  A5 A1          
	STA $19			; A6DA  85 19          
	LDA $A2			; A6DC  A5 A2          
	STA $00			; A6DE  85 00          
	JSR $F8C3		; A6E0  20 C3 F8       
	LDY #$04		; A6E3  A0 04          
BDA6E5:
	LDA $0450,Y		; A6E5  B9 50 04       
	STA $032D,Y		; A6E8  99 2D 03       
	DEY			; A6EB  88             
	BPL BDA6E5		; A6EC  10 F7          
	JSR $CAB6		; A6EE  20 B6 CA       
	JSR $FC9F		; A6F1  20 9F FC       
	LDA #$80		; A6F4  A9 80          
	STA $88			; A6F6  85 88          
	LDA #$C8		; A6F8  A9 C8          
	STA $8A			; A6FA  85 8A          
	LDA #$D0		; A6FC  A9 D0          
	STA $8C			; A6FE  85 8C          
	LDA #$1F		; A700  A9 1F          
	STA $89			; A702  85 89          
	LDA #$03		; A704  A9 03          
	STA $8B			; A706  85 8B          
	JSR $FB4F		; A708  20 4F FB       
	LDX #$02		; A70B  A2 02          
	LDY #$1C		; A70D  A0 1C          
	JSR $D401		; A70F  20 01 D4       
	LDX $6213		; A712  AE 13 62       
	LDA $D6C2,X		; A715  BD C2 D6       
	STA $03C1		; A718  8D C1 03       
	STA $03C5		; A71B  8D C5 03       
	LDA #$30		; A71E  A9 30          
	STA $03C3		; A720  8D C3 03       
	LDA #$10		; A723  A9 10          
	STA $03C7		; A725  8D C7 03       
	LDA #$01		; A728  A9 01          
	STA $2F			; A72A  85 2F          
	STA $2E			; A72C  85 2E          
	RTS			; A72E  60             

;$A72F - data block = developments screen ??(compressed 2)
.byte $00
.byte $03,$00,$47,$20,$47,$1f,$48,$3f,$48,$01,$76,$02,$72,$03,$8a,$04
.byte $82,$26,$de,$0e,$de,$2d,$da,$2e,$cd,$2f,$d9,$30,$a6,$31,$71,$32
.byte $79,$12,$de,$33,$99,$34,$86,$35,$8a,$ff
;$A75A - data block = 
.byte $00,$03,$1a,$00,$1b,$00
.byte $1c,$00,$1d,$00,$3a,$00,$3b,$00,$3c,$00,$3d,$00,$ff
;$A76D - data block =
.byte $00,$03,$02
.byte $c3,$03,$af,$04,$b8,$05,$da,$06,$cd,$07,$d9,$32,$30,$33,$5c,$34
.byte $76,$35,$76,$36,$99,$37,$7f,$17,$de,$38,$2e,$ff

; Name	:
	LDA PpuStatus_2002	; A78C  AD 02 20       
	LDA #$21		; A78F  A9 21          
	STA PpuAddr_2006	; A791  8D 06 20       
	LDA #$20		; A794  A9 20          
	STA PpuAddr_2006	; A796  8D 06 20       
	LDA #$00		; A799  A9 00          
	STA PpuData_2007	; A79B  8D 07 20       
	STA PpuData_2007	; A79E  8D 07 20       
	LDA #$70		; A7A1  A9 70          
	STA PpuData_2007	; A7A3  8D 07 20       
	LDA #$71		; A7A6  A9 71          
	JSR $F237		; A7A8  20 37 F2       
	LDA #$72		; A7AB  A9 72          
	STA PpuData_2007	; A7AD  8D 07 20       
	LDA #$00		; A7B0  A9 00          
	STA PpuData_2007	; A7B2  8D 07 20       
	STA PpuData_2007	; A7B5  8D 07 20       
	JSR $F982		; A7B8  20 82 F9       
	LDA #$21		; A7BB  A9 21          
	STA $2D			; A7BD  85 2D          
	LDA #$40		; A7BF  A9 40          
	STA $2C			; A7C1  85 2C          
	LDA $9F			; A7C3  A5 9F          
	ASL A			; A7C5  0A             
	STA $00			; A7C6  85 00          
	LDX $6213		; A7C8  AE 13 62       
	LDA $6242,X		; A7CB  BD 42 62       
	ASL A			; A7CE  0A             
	ASL A			; A7CF  0A             
	ASL A			; A7D0  0A             
	ADC $00			; A7D1  65 00          
	JSR $C4F4		; A7D3  20 F4 C4       
	LDA #$00		; A7D6  A9 00          
	STA $02			; A7D8  85 02          
	LDA #$05		; A7DA  A9 05          
	STA $03			; A7DC  85 03          
BDA7DE:
	LDA #$31		; A7DE  A9 31          
	LDY #$A8		; A7E0  A0 A8          
	JSR $FB09		; A7E2  20 09 FB       
	LDA #$00		; A7E5  A9 00          
	STA $0E			; A7E7  85 0E          
	LDA #$03		; A7E9  A9 03          
	STA $0F			; A7EB  85 0F          
	JSR $AA40		; A7ED  20 40 AA       
	JSR $CAB6		; A7F0  20 B6 CA       
	LDA $02			; A7F3  A5 02          
	CMP #$05		; A7F5  C9 05          
	BCC BDA7DE		; A7F7  90 E5          
	LDA #$31		; A7F9  A9 31          
	LDY #$A8		; A7FB  A0 A8          
	JSR $FB09		; A7FD  20 09 FB       
	LDA #$65		; A800  A9 65          
	STA $0322		; A802  8D 22 03       
	LDA #$66		; A805  A9 66          
	STA $033D		; A807  8D 3D 03       
	LDY #$19		; A80A  A0 19          
	LDA #$4A		; A80C  A9 4A          
BDA80E:
	STA $0323,Y		; A80E  99 23 03       
	DEY			; A811  88             
	BPL BDA80E		; A812  10 FA          
	JSR $CAB6		; A814  20 B6 CA       
	LDA #$00		; A817  A9 00          
	STA $8D			; A819  85 8D          
	JSR $AABB		; A81B  20 BB AA       
	LDA PpuStatus_2002	; A81E  AD 02 20       
	LDA #$23		; A821  A9 23          
	STA PpuAddr_2006	; A823  8D 06 20       
	LDA #$C0		; A826  A9 C0          
	STA PpuAddr_2006	; A828  8D 06 20       
	LDX #$00		; A82B  A2 00          
	JSR $F0A4		; A82D  20 A4 F0       
	RTS			; A830  60             

;$A831 - data block = ($A831-$A84B)
.byte $00,$03,$00,$00,$01,$00,$02,$47,$20,$00,$21,$00,$22,$47,$1d
.byte $48,$1e,$00,$1f,$00,$3d,$48,$3e,$00,$3f,$00,$ff

; Name	:
	JSR $A885		; A84C  20 85 A8       
	LDY $6213		; A84F  AC 13 62       
	LDA ($10),Y		; A852  B1 10          
	STA $97			; A854  85 97          
	DEC $97			; A856  C6 97          
	STA $01			; A858  85 01          
	LDA $9F			; A85A  A5 9F          
	ASL A			; A85C  0A             
	STA $00			; A85D  85 00          
	LDX $6213		; A85F  AE 13 62       
	LDA $6242,X		; A862  BD 42 62       
	ASL A			; A865  0A             
	ASL A			; A866  0A             
	ASL A			; A867  0A             
	ADC $00			; A868  65 00          
	JSR $C520		; A86A  20 20 C5       
	LDA $01			; A86D  A5 01          
	ASL A			; A86F  0A             
	TAY			; A870  A8             
	JSR $C4E5		; A871  20 E5 C4       
	LDA $9B			; A874  A5 9B          
	STA $A0			; A876  85 A0          
	INY			; A878  C8             
	JSR $C4E5		; A879  20 E5 C4       
	LDA $9B			; A87C  A5 9B          
	STA $A1			; A87E  85 A1          
	LDA #$00		; A880  A9 00          
	STA $A2			; A882  85 A2          
	RTS			; A884  60             

; Name	:
	LDA $9F			; A885  A5 9F          
	ASL A			; A887  0A             
	TAX			; A888  AA             
	LDA $A894,X		; A889  BD 94 A8       
	STA $10			; A88C  85 10          
	LDA $A895,X		; A88E  BD 95 A8       
	STA $11			; A891  85 11          
	RTS			; A893  60             

;$A894 - data block = ($A894-$A98B)
.byte $2e,$62,$32,$62,$36,$62,$3a,$62

; Name	:
	JSR $A885		; A89C  20 85 A8       
	LDY $6213		; A89F  AC 13 62       
	LDA ($10),Y		; A8A2  B1 10          
	CLC			; A8A4  18             
	ADC #$01		; A8A5  69 01          
	STA ($10),Y		; A8A7  91 10          
	RTS			; A8A9  60             

; Name	:
	LDA #$3C		; A8AA  A9 3C          
	STA $10			; A8AC  85 10          
	LDA #$86		; A8AE  A9 86          
	STA $11			; A8B0  85 11          
	JSR $FAFB		; A8B2  20 FB FA       
	JSR $CFE6		; A8B5  20 E6 CF       
	JSR $F50B		; A8B8  20 0B F5       
	LDX #$C0		; A8BB  A2 C0          
	JSR $FBC9		; A8BD  20 C9 FB       
	CLC			; A8C0  18             
	RTS			; A8C1  60             

; Name	:
	LDA #$90		; A8C2  A9 90          
	STA $10			; A8C4  85 10          
	LDA #$86		; A8C6  A9 86          
	STA $11			; A8C8  85 11          
	JSR $FAFB		; A8CA  20 FB FA       
	JSR $CFE6		; A8CD  20 E6 CF       
	RTS			; A8D0  60             

;$A8D1
.byte $20,$84,$a9,$b0,$01,$60,$e6,$8d,$a5,$8d,$29,$03,$85,$8d,$20
.byte $01,$a9,$20,$1e,$ab,$20,$6b,$fd,$60,$20,$84,$a9,$b0,$01,$60,$c6
.byte $8d,$a5,$8d,$29,$03,$85,$8d,$20,$01,$a9,$20,$1e,$ab,$20,$67,$fd
;$A900
.byte $60,$a5,$3b,$49,$04,$85,$3b,$a9,$21,$85,$2d,$a9,$20,$85,$2c,$a0
.byte $19,$a9,$71,$99,$03,$03,$88,$10,$fa,$a9,$75,$a0,$a9,$20,$09,$fb
.byte $20,$8d,$f9,$a9,$20,$85,$32,$20,$dc,$f4,$a6,$8d,$bd,$01,$f9,$85
.byte $02,$18,$69,$05,$85,$03,$a9,$c1,$85,$14,$a9,$9c,$85,$15,$a9,$21
.byte $85,$2d,$a9,$40,$85,$2c,$20,$96,$a9,$a9,$21,$85,$2d,$a9,$c0,$85
.byte $2c,$20,$96,$a9,$a9,$22,$85,$2d,$a9,$40,$85,$2c,$20,$cd,$a9,$20
.byte $bb,$aa,$a9,$c0,$85,$2c,$a9,$23,$85,$2d,$20,$8d,$f9,$a9,$40,$85
.byte $32,$20,$dc,$f4,$60,$00,$03,$00,$00,$01,$00,$02,$70,$1f,$00,$1e
.byte $00,$1d,$72,$ff

; Name	:
	LDA $9F			; A984  A5 9F          
	CMP #$02		; A986  C9 02          
	BNE BDA994		; A988  D0 0A          
	LDX $6213		; A98A  AE 13 62       
	LDA $6242,X		; A98D  BD 42 62       
	BNE BDA994		; A990  D0 02          
	SEC			; A992  38             
	RTS			; A993  60             
BDA994:
	CLC			; A994  18             
	RTS			; A995  60             

;$A996
.byte $20,$6d,$f9,$a9,$0d,$a0,$aa,$20,$09,$fb
.byte $a9,$00,$85,$0e,$a9,$03,$85,$0f,$20,$40,$aa,$a9,$40,$85,$0e,$a9
.byte $03,$85,$0f,$20,$40,$aa,$a9,$00,$85,$10,$a9,$03,$85,$11,$a9,$80
.byte $85,$00,$20,$d2,$f9,$a9,$01,$85,$33,$20,$dc,$f4,$60,$20,$6d,$f9
.byte $a9,$0d,$a0,$aa,$20,$09,$fb,$a9,$00,$85,$0e,$a9,$03,$85,$0f,$20
.byte $40,$aa,$a9,$65,$8d,$62,$03,$a9,$66,$8d,$7d,$03,$a0,$19,$a9,$4a
.byte $99,$63,$03,$88,$10,$fa,$a9,$00,$85,$10,$a9,$03,$85,$11,$a9,$80
;$AA00
.byte $85,$00,$20,$d2,$f9,$a9,$01,$85,$33,$20,$dc,$f4,$60,$00,$03,$00
.byte $00,$01,$00,$02,$47,$20,$00,$21,$00,$22,$47,$40,$00,$41,$00,$42
.byte $47,$60,$00,$61,$00,$62,$47,$1d,$48,$1e,$00,$1f,$00,$3d,$48,$3e
.byte $00,$3f,$00,$5d,$48,$5e,$00,$5f,$00,$7d,$48,$7e,$00,$7f,$00,$ff

; Name	:
	LDY $02			; AA40  A4 02          
	JSR $C4E5		; AA42  20 E5 C4       
	LDA $9B			; AA45  A5 9B          
	BMI BDAAB6		; AA47  30 6D          
	JSR $C57C		; AA49  20 7C C5       
	CLC			; AA4C  18             
	LDA $0E			; AA4D  A5 0E          
	ADC #$07		; AA4F  69 07          
	STA $12			; AA51  85 12          
	LDA $0F			; AA53  A5 0F          
	ADC #$00		; AA55  69 00          
	STA $13			; AA57  85 13          
	JSR $F408		; AA59  20 08 F4       
	LDA $02			; AA5C  A5 02          
	STA $18			; AA5E  85 18          
	INC $18			; AA60  E6 18          
	LDA #$00		; AA62  A9 00          
	STA $19			; AA64  85 19          
	JSR $F884		; AA66  20 84 F8       
	LDY #$24		; AA69  A0 24          
	LDA $0453		; AA6B  AD 53 04       
	STA ($0E),Y		; AA6E  91 0E          
	INY			; AA70  C8             
	LDA $0454		; AA71  AD 54 04       
	STA ($0E),Y		; AA74  91 0E          
	INY			; AA76  C8             
	LDA #$3A		; AA77  A9 3A          
	STA ($0E),Y		; AA79  91 0E          
	LDY $03			; AA7B  A4 03          
	JSR $C4E5		; AA7D  20 E5 C4       
	LDA $9B			; AA80  A5 9B          
	BMI BDAAB6		; AA82  30 32          
	JSR $C57C		; AA84  20 7C C5       
	CLC			; AA87  18             
	LDA $0E			; AA88  A5 0E          
	ADC #$15		; AA8A  69 15          
	STA $12			; AA8C  85 12          
	LDA $0F			; AA8E  A5 0F          
	ADC #$00		; AA90  69 00          
	STA $13			; AA92  85 13          
	JSR $F408		; AA94  20 08 F4       
	LDA $03			; AA97  A5 03          
	STA $18			; AA99  85 18          
	INC $18			; AA9B  E6 18          
	LDA #$00		; AA9D  A9 00          
	STA $19			; AA9F  85 19          
	JSR $F884		; AAA1  20 84 F8       
	LDY #$32		; AAA4  A0 32          
	LDA $0453		; AAA6  AD 53 04       
	STA ($0E),Y		; AAA9  91 0E          
	INY			; AAAB  C8             
	LDA $0454		; AAAC  AD 54 04       
	STA ($0E),Y		; AAAF  91 0E          
	INY			; AAB1  C8             
	LDA #$3A		; AAB2  A9 3A          
	STA ($0E),Y		; AAB4  91 0E          
BDAAB6:
	INC $02			; AAB6  E6 02          
	INC $03			; AAB8  E6 03          
	RTS			; AABA  60             

; Name	:
	LDY #$3F		; AABB  A0 3F          
	LDA #$00		; AABD  A9 00          
BDAABF:
	STA $0300,Y		; AABF  99 00 03       
	DEY			; AAC2  88             
	BPL BDAABF		; AAC3  10 FA          
	LDA #$00		; AAC5  A9 00          
	STA $01			; AAC7  85 01          
	LDX $8D			; AAC9  A6 8D          
	LDA $F901,X		; AACB  BD 01 F9       
	STA $02			; AACE  85 02          
BDAAD0:
	LDA $97			; AAD0  A5 97          
	CMP $02			; AAD2  C5 02          
	BCS BDAAF5		; AAD4  B0 1F          
	LDA $01			; AAD6  A5 01          
	TAX			; AAD8  AA             
	ASL A			; AAD9  0A             
	TAY			; AADA  A8             
	LDA $AB00,Y		; AADB  B9 00 AB       
	STA $12			; AADE  85 12          
	LDA $AB01,Y		; AAE0  B9 01 AB       
	STA $13			; AAE3  85 13          
	LDA $AB14,X		; AAE5  BD 14 AB       
	STA $03			; AAE8  85 03          
	LDY #$02		; AAEA  A0 02          
BDAAEC:
	LDA ($12),Y		; AAEC  B1 12          
	ORA $03			; AAEE  05 03          
	STA ($12),Y		; AAF0  91 12          
	DEY			; AAF2  88             
	BPL BDAAEC		; AAF3  10 F7          
BDAAF5:
	INC $02			; AAF5  E6 02          
	INC $01			; AAF7  E6 01          
	LDA $01			; AAF9  A5 01          
	CMP #$0A		; AAFB  C9 0A          
	BCC BDAAD0		; AAFD  90 D1          
	RTS			; AAFF  60             

;$AB00
.byte $11,$03,$19,$03,$19,$03,$21,$03,$21,$03,$14,$03,$1c,$03,$1c,$03
.byte $24,$03,$24,$03,$50,$05,$50,$05,$50,$50,$05,$50,$05,$50,$a9,$f0
.byte $8d,$00,$02,$8d,$04,$02,$a9,$01,$85,$2e,$60,$90,$01,$60

	LDX $94			; AB2E  A6 94          
	LDA $6359,X		; AB30  BD 59 63       
	AND #$40		; AB33  29 40          
	BNE BDAB3B		; AB35  D0 04          
	JSR $F2E6		; AB37  20 E6 F2       
;$AB3A
.byte $60

BDAB3B:
	JSR $F3C8		; AB3B  20 C8 F3       
	JSR $C6D9		; AB3E  20 D9 C6       
	LDA #$00		; AB41  A9 00          
	STA $90			; AB43  85 90          
BDAB45:
	JSR $C2EF		; AB45  20 EF C2       
	JSR $AB96		; AB48  20 96 AB       
	BCC BDAB8F		; AB4B  90 42          
	LDA #$05		; AB4D  A9 05          
	STA $91			; AB4F  85 91          
	JSR $8007		; AB51  20 07 80       
	LDA $90			; AB54  A5 90          
	BMI BDAB8F		; AB56  30 37          
	LDX $90			; AB58  A6 90          
	LDA $044C,X		; AB5A  BD 4C 04       
	STA $A6			; AB5D  85 A6          
	LDA $90			; AB5F  A5 90          
	PHA			; AB61  48             
	JSR $D09C		; AB62  20 9C D0       
	JSR $AC4D		; AB65  20 4D AC       
	PLA			; AB68  68             
	STA $90			; AB69  85 90          
	BCC BDAB45		; AB6B  90 D8          
	LDX $94			; AB6D  A6 94          
	LDA $6369,X		; AB6F  BD 69 63       
	STA $A5			; AB72  85 A5          
	JSR $AEE9		; AB74  20 E9 AE       
	LDX $94			; AB77  A6 94          
	LDA $A6			; AB79  A5 A6          
	STA $6369,X		; AB7B  9D 69 63       
	LDA $A4			; AB7E  A5 A4          
	BEQ BDAB85		; AB80  F0 03          
	JSR $CE46		; AB82  20 46 CE       
BDAB85:
	LDA #$FF		; AB85  A9 FF          
	STA $9D			; AB87  85 9D          
	JSR $CEE1		; AB89  20 E1 CE       
	JMP $86A1		; AB8C  4C A1 86       
BDAB8F:
	JSR $986F		; AB8F  20 6F 98       
	JSR $C2EF		; AB92  20 EF C2       
	RTS			; AB95  60             

; Name	:
	LDA #$98		; AB96  A9 98          
	STA $10			; AB98  85 10          
	LDA #$84		; AB9A  A9 84          
	STA $11			; AB9C  85 11          
	JSR $F99F		; AB9E  20 9F F9       
	LDY #$03		; ABA1  A0 03          
	LDA #$FF		; ABA3  A9 FF          
BDABA5:
	STA $044C,Y		; ABA5  99 4C 04       
	DEY			; ABA8  88             
	BPL BDABA5		; ABA9  10 FA          
	LDA $92			; ABAB  A5 92          
	ASL A			; ABAD  0A             
	ASL A			; ABAE  0A             
	STA $02			; ABAF  85 02          
	LDX #$00		; ABB1  A2 00          
	STX $8F			; ABB3  86 8F          
BDABB5:
	STX $03			; ABB5  86 03          
	JSR $ABDC		; ABB7  20 DC AB       
	INC $02			; ABBA  E6 02          
	LDX $03			; ABBC  A6 03          
	INX			; ABBE  E8             
	CPX #$04		; ABBF  E0 04          
	BCC BDABB5		; ABC1  90 F2          
	LDA $8F			; ABC3  A5 8F          
	BNE BDABD7		; ABC5  D0 10          
	LDA #$D0		; ABC7  A9 D0          
	STA $10			; ABC9  85 10          
	LDA #$8B		; ABCB  A9 8B          
	STA $11			; ABCD  85 11          
	JSR $FAED		; ABCF  20 ED FA       

;$ABD2
.byte $20,$1b,$f5,$18,$60

BDABD7:
	JSR $FAF0		; ABD7  20 F0 FA       
	SEC			; ABDA  38             
	RTS			; ABDB  60             

; Name	:
	LDX $02			; ABDC  A6 02          
	LDA $D832,X		; ABDE  BD 32 D8       
	BMI BDAC44		; ABE1  30 61          
	TAY			; ABE3  A8             
	LDX $94			; ABE4  A6 94          
	LDA $6359,X		; ABE6  BD 59 63       
	AND #$10		; ABE9  29 10          
	BEQ BDABFE		; ABEB  F0 11          
	LDA $62A3,Y		; ABED  B9 A3 62       
	CMP $6213		; ABF0  CD 13 62       
	BNE BDAC44		; ABF3  D0 4F          
	LDA $624B,Y		; ABF5  B9 4B 62       
	AND #$20		; ABF8  29 20          
	BNE BDAC44		; ABFA  D0 48          
	BEQ BDAC12		; ABFC  F0 14          
BDABFE:
	LDA $6369,X		; ABFE  BD 69 63       
	TAX			; AC01  AA             
	LDA $62A3,X		; AC02  BD A3 62       
	CMP $6213		; AC05  CD 13 62       
	BEQ BDAC12		; AC08  F0 08          
	LDA $62A3,Y		; AC0A  B9 A3 62       
	CMP $6213		; AC0D  CD 13 62       
	BNE BDAC44		; AC10  D0 32          
BDAC12:
	TYA			; AC12  98             
	LDY $8F			; AC13  A4 8F          
	STA $044C,Y		; AC15  99 4C 04       
	JSR $C59C		; AC18  20 9C C5       
	LDA #$D1		; AC1B  A9 D1          
	STA $10			; AC1D  85 10          
	LDA #$00		; AC1F  A9 00          
	STA $11			; AC21  85 11          
	LDX $8F			; AC23  A6 8F          
	LDA $AC45,X		; AC25  BD 45 AC       
	STA $12			; AC28  85 12          
	LDA $AC49,X		; AC2A  BD 49 AC       
	STA $13			; AC2D  85 13          
	JSR $F459		; AC2F  20 59 F4       
	CLC			; AC32  18             
	LDA $12			; AC33  A5 12          
	ADC #$0E		; AC35  69 0E          
	STA $12			; AC37  85 12          
	LDA $13			; AC39  A5 13          
	ADC #$00		; AC3B  69 00          
	STA $13			; AC3D  85 13          
	JSR $F420		; AC3F  20 20 F4       
	INC $8F			; AC42  E6 8F          
BDAC44:
	RTS			; AC44  60             

;$AC45
.byte $1d,$39,$24,$40,$03,$03,$03,$03

; Name	:
	LDA #$04		; AC4D  A9 04          
	STA $91			; AC4F  85 91          
	LDA $A4			; AC51  A5 A4          
	BEQ BDAC6E		; AC53  F0 19          
	CMP #$80		; AC55  C9 80          
	BEQ BDAC68		; AC57  F0 0F          
	AND #$7F		; AC59  29 7F          
	CMP #$01		; AC5B  C9 01          
	BEQ BDAC62		; AC5D  F0 03          
	JMP $AD7A		; AC5F  4C 7A AD       
BDAC62:
	JSR $AD4F		; AC62  20 4F AD       
	JMP $ACF9		; AC65  4C F9 AC       
BDAC68:
	JSR $D084		; AC68  20 84 D0       
	JMP $ACB5		; AC6B  4C B5 AC       
BDAC6E:
	JMP $AC71		; AC6E  4C 71 AC       
	LDA #$E4		; AC71  A9 E4          
	STA $10			; AC73  85 10          
	LDA #$86		; AC75  A9 86          
	STA $11			; AC77  85 11          
	JSR $F99F		; AC79  20 9F F9       
	LDA $A6			; AC7C  A5 A6          
	JSR $C58C		; AC7E  20 8C C5       
	LDX #$8D		; AC81  A2 8D          
	JSR $AEA4		; AC83  20 A4 AE       
	LDA #$0F		; AC86  A9 0F          
	STA $12			; AC88  85 12          
	LDA #$03		; AC8A  A9 03          
	STA $13			; AC8C  85 13          
	JSR $F3E3		; AC8E  20 E3 F3       
	JSR $FAFE		; AC91  20 FE FA       
	JSR $AE70		; AC94  20 70 AE       
	LDA #$E0		; AC97  A9 E0          
	STA $10			; AC99  85 10          
	LDA #$87		; AC9B  A9 87          
	STA $11			; AC9D  85 11          
	JSR $FAED		; AC9F  20 ED FA       
	JSR $812D		; ACA2  20 2D 81       
	LDA $90			; ACA5  A5 90          
	BMI BDACAB		; ACA7  30 02          
	SEC			; ACA9  38             
	RTS			; ACAA  60             

BDACAB:
.byte $a2,$c0,$20,$c9,$fb
.byte $20,$d0,$f3,$18,$60

	LDA #$38		; ACB5  A9 38          
	STA $10			; ACB7  85 10          
	LDA #$87		; ACB9  A9 87          
	STA $11			; ACBB  85 11          
	JSR $F99F		; ACBD  20 9F F9       
	LDA $A6			; ACC0  A5 A6          
	JSR $C58C		; ACC2  20 8C C5       
	LDX #$A6		; ACC5  A2 A6          
	JSR $AEA4		; ACC7  20 A4 AE       
	LDA #$0F		; ACCA  A9 0F          
	STA $12			; ACCC  85 12          
	LDA #$03		; ACCE  A9 03          
	STA $13			; ACD0  85 13          
	JSR $F3E3		; ACD2  20 E3 F3       
	JSR $FAFE		; ACD5  20 FE FA       
	JSR $AE70		; ACD8  20 70 AE       
	LDA #$34		; ACDB  A9 34          
	STA $10			; ACDD  85 10          
	LDA #$88		; ACDF  A9 88          
	STA $11			; ACE1  85 11          
	JSR $FAED		; ACE3  20 ED FA       
	JSR $812D		; ACE6  20 2D 81       
	LDA $90			; ACE9  A5 90          
	BMI BDACEF		; ACEB  30 02          
	SEC			; ACED  38             
	RTS			; ACEE  60             

BDACEF:
;$ACEF
.byte $a2
.byte $c0,$20,$c9,$fb,$20,$d0,$f3,$18,$60

; Name	:
	LDA #$8C		; ACF9  A9 8C          
	STA $10			; ACFB  85 10          
	LDA #$87		; ACFD  A9 87          
	STA $11			; ACFF  85 11          
	JSR $F99F		; AD01  20 9F F9       
	LDA $AF			; AD04  A5 AF          
	JSR $C55C		; AD06  20 5C C5       
	LDX #$89		; AD09  A2 89          
	JSR $AEA4		; AD0B  20 A4 AE       
	LDA $AB			; AD0E  A5 AB          
	CLC			; AD10  18             
	ADC #$10		; AD11  69 10          
	TAX			; AD13  AA             
	JSR $AEA4		; AD14  20 A4 AE       
	LDX #$A6		; AD17  A2 A6          
	JSR $AEA4		; AD19  20 A4 AE       
	LDA #$0F		; AD1C  A9 0F          
	STA $12			; AD1E  85 12          
	LDA #$03		; AD20  A9 03          
	STA $13			; AD22  85 13          
	JSR $F3E3		; AD24  20 E3 F3       
	JSR $FAFE		; AD27  20 FE FA       
	JSR $AE70		; AD2A  20 70 AE       
	LDA #$88		; AD2D  A9 88          
	STA $10			; AD2F  85 10          
	LDA #$88		; AD31  A9 88          
	STA $11			; AD33  85 11          
	JSR $FAED		; AD35  20 ED FA       
	LDA #$06		; AD38  A9 06          
	STA $91			; AD3A  85 91          
	JSR $812D		; AD3C  20 2D 81       
	LDA $90			; AD3F  A5 90          
	BMI BDAD45		; AD41  30 02          
	SEC			; AD43  38             
	RTS			; AD44  60             

BDAD45:
.byte $a2,$c0,$20,$c9,$fb,$20,$d0,$f3,$18,$60

; Name	:
	JSR $D015		; AD4F  20 15 D0       
	LDX #$0F		; AD52  A2 0F          
BDAD54:
	JSR $CDFE		; AD54  20 FE CD       
	BCS BDAD6E		; AD57  B0 15          
	LDA $6369,X		; AD59  BD 69 63       
	CMP $A6			; AD5C  C5 A6          
	BNE BDAD6E		; AD5E  D0 0E          
	LDA $6359,X		; AD60  BD 59 63       
	AND #$40		; AD63  29 40          
	BEQ BDAD6E		; AD65  F0 07          
	LDA $6359,X		; AD67  BD 59 63       
	AND #$10		; AD6A  29 10          
	BEQ BDAD74		; AD6C  F0 06          
BDAD6E:
	DEX			; AD6E  CA             
	BPL BDAD54		; AD6F  10 E3          
	JMP $AD71		; AD71  4C 71 AD       
BDAD74:
	STX $AD			; AD74  86 AD          
	JSR $D04C		; AD76  20 4C D0       
	RTS			; AD79  60             

	LDA #$00		; AD7A  A9 00          
	STA $90			; AD7C  85 90          
BDAD7E:
	JSR $ADBD		; AD7E  20 BD AD       
	LDA $90			; AD81  A5 90          
	BMI BDADBB		; AD83  30 36          
	LDX $90			; AD85  A6 90          
	LDA $044C,X		; AD87  BD 4C 04       
	STA $AF			; AD8A  85 AF          
	LDA $90			; AD8C  A5 90          
	STA $0F			; AD8E  85 0F          
	LDA #$00		; AD90  A9 00          
	STA $90			; AD92  85 90          
BDAD94:
	JSR $AE09		; AD94  20 09 AE       
	LDX $90			; AD97  A6 90          
	LDA $0F			; AD99  A5 0F          
	STA $90			; AD9B  85 90          
	TXA			; AD9D  8A             
	BMI BDAD7E		; AD9E  30 DE          
	LDA $044C,X		; ADA0  BD 4C 04       
	STA $AD			; ADA3  85 AD          
	JSR $D04C		; ADA5  20 4C D0       
	JSR $D015		; ADA8  20 15 D0       
	LDX $A6			; ADAB  A6 A6          
	STX $A7			; ADAD  86 A7          
	LDA $90			; ADAF  A5 90          
	PHA			; ADB1  48             
	JSR $ACF9		; ADB2  20 F9 AC       
	PLA			; ADB5  68             
	STA $90			; ADB6  85 90          
	BCC BDAD94		; ADB8  90 DA          
	RTS			; ADBA  60             
BDADBB:
	CLC			; ADBB  18             
	RTS			; ADBC  60             

; Name	:
	JSR $F95F		; ADBD  20 5F F9       
	LDA #$FC		; ADC0  A9 FC          
	LDY #$AD		; ADC2  A0 AD          
	JSR $FB09		; ADC4  20 09 FB       
	JSR $CE23		; ADC7  20 23 CE       
	LDX #$00		; ADCA  A2 00          
	STX $01			; ADCC  86 01          
	INX			; ADCE  E8             
BDADCF:
	STX $02			; ADCF  86 02          
	LDA $0457,X		; ADD1  BD 57 04       
	BEQ BDADE6		; ADD4  F0 10          
	LDY $01			; ADD6  A4 01          
	TXA			; ADD8  8A             
	STA $044C,Y		; ADD9  99 4C 04       
	JSR $C55C		; ADDC  20 5C C5       
	LDX $01			; ADDF  A6 01          
	JSR $F3D9		; ADE1  20 D9 F3       
	INC $01			; ADE4  E6 01          
BDADE6:
	LDX $02			; ADE6  A6 02          
	INX			; ADE8  E8             
	CPX #$05		; ADE9  E0 05          
	BCC BDADCF		; ADEB  90 E2          
	JSR $FAF0		; ADED  20 F0 FA       
	LDA $01			; ADF0  A5 01          
	STA $8F			; ADF2  85 8F          
	LDA #$05		; ADF4  A9 05          
	STA $91			; ADF6  85 91          
	JSR $8007		; ADF8  20 07 80       
	RTS			; ADFB  60             

;$ADFC - data block =
.byte $00,$03,$0f,$7a
.byte $10,$73,$11,$79,$03,$de,$12,$77,$ff

; Name	:
	JSR $F95F		; AE09  20 5F F9       
	LDA $AF			; AE0C  A5 AF          
	JSR $C55C		; AE0E  20 5C C5       
	LDX #$04		; AE11  A2 04          
	JSR $F3D9		; AE13  20 D9 F3       
	LDY #$03		; AE16  A0 03          
	LDA #$FF		; AE18  A9 FF          
BDAE1A:
	STA $044C,Y		; AE1A  99 4C 04       
	DEY			; AE1D  88             
	BPL BDAE1A		; AE1E  10 FA          
	LDX $AF			; AE20  A6 AF          
	DEX			; AE22  CA             
	TXA			; AE23  8A             
	ASL A			; AE24  0A             
	ASL A			; AE25  0A             
	TAX			; AE26  AA             
	LDY #$00		; AE27  A0 00          
BDAE29:
	LDA $6369,X		; AE29  BD 69 63       
	CMP $A6			; AE2C  C5 A6          
	BNE BDAE43		; AE2E  D0 13          
	LDA $6359,X		; AE30  BD 59 63       
	AND #$10		; AE33  29 10          
	BNE BDAE43		; AE35  D0 0C          
	LDA $6359,X		; AE37  BD 59 63       
	AND #$40		; AE3A  29 40          
	BEQ BDAE43		; AE3C  F0 05          
	TXA			; AE3E  8A             
	STA $044C,Y		; AE3F  99 4C 04       
	INY			; AE42  C8             
BDAE43:
	INX			; AE43  E8             
	TXA			; AE44  8A             
	AND #$03		; AE45  29 03          
	BNE BDAE29		; AE47  D0 E0          
	STY $8F			; AE49  84 8F          
	LDX #$00		; AE4B  A2 00          
BDAE4D:
	STX $01			; AE4D  86 01          
	LDA $044C,X		; AE4F  BD 4C 04       
	BMI BDAE65		; AE52  30 11          
	AND #$03		; AE54  29 03          
	JSR $C56C		; AE56  20 6C C5       
	LDX $01			; AE59  A6 01          
	JSR $F3D9		; AE5B  20 D9 F3       
	LDX $01			; AE5E  A6 01          
	INX			; AE60  E8             
	CPX #$04		; AE61  E0 04          
	BCC BDAE4D		; AE63  90 E8          
BDAE65:
	JSR $FAF0		; AE65  20 F0 FA       
	LDA #$07		; AE68  A9 07          
	STA $91			; AE6A  85 91          
	JSR $8007		; AE6C  20 07 80       
	RTS			; AE6F  60             

; Name	:
	LDA #$D0		; AE70  A9 D0          
	STA $8C			; AE72  85 8C          
	LDA #$BF		; AE74  A9 BF          
	STA $89			; AE76  85 89          
	LDA #$C0		; AE78  A9 C0          
	STA $88			; AE7A  85 88          
	LDX $94			; AE7C  A6 94          
	LDA $0470,X		; AE7E  BD 70 04       
	BPL BDAE85		; AE81  10 02          
	LDA #$28		; AE83  A9 28          
BDAE85:
	TAX			; AE85  AA             
	LDA $D699,X		; AE86  BD 99 D6       
	STA $59			; AE89  85 59          
	LDA $D647,X		; AE8B  BD 47 D6       
	STA $8A			; AE8E  85 8A          
	LDA #$03		; AE90  A9 03          
	STA $8B			; AE92  85 8B          
	LDY #$1C		; AE94  A0 1C          
	JSR $D3EC		; AE96  20 EC D3       
	JSR $FB4F		; AE99  20 4F FB       
	LDA #$01		; AE9C  A9 01          
	STA $2F			; AE9E  85 2F          
	JSR $F3D0		; AEA0  20 D0 F3       
	RTS			; AEA3  60             

; Name	:
	LDY #$00		; AEA4  A0 00          
BDAEA6:
	LDA $00D1,Y		; AEA6  B9 D1 00       
	BNE BDAEB1		; AEA9  D0 06          
	STA $00D2,Y		; AEAB  99 D2 00       
	STX $D1,Y		; AEAE  96 D1          
	RTS			; AEB0  60             
BDAEB1:
	INY			; AEB1  C8             
	CPY #$1E		; AEB2  C0 1E          
	BCC BDAEA6		; AEB4  90 F0          
	RTS			; AEB6  60             

	JSR $F3C8		; AEB7  20 C8 F3       
	JSR $C6D9		; AEBA  20 D9 C6       
	LDA #$00		; AEBD  A9 00          
	STA $9D			; AEBF  85 9D          
	LDA $90			; AEC1  A5 90          
	PHA			; AEC3  48             
	LDA $92			; AEC4  A5 92          
	STA $A6			; AEC6  85 A6          
	JSR $D09C		; AEC8  20 9C D0       
	JSR $AC4D		; AECB  20 4D AC       
	PLA			; AECE  68             
	STA $90			; AECF  85 90          
	BCC BDAEE0		; AED1  90 0D          
	JSR $CE46		; AED3  20 46 CE       
	LDA #$FF		; AED6  A9 FF          
	STA $9D			; AED8  85 9D          
	JSR $CEE1		; AEDA  20 E1 CE       
	JSR $86A1		; AEDD  20 A1 86       
BDAEE0:
	LDX #$C0		; AEE0  A2 C0          
	JSR $FBC9		; AEE2  20 C9 FB       
	JSR $C2EF		; AEE5  20 EF C2       
	RTS			; AEE8  60             

; Name	:
	LDY $A5			; AEE9  A4 A5          
	CPY $A6			; AEEB  C4 A6          
	BEQ BDAF2F		; AEED  F0 40          
	TYA			; AEEF  98             
	ASL A			; AEF0  0A             
	TAX			; AEF1  AA             
	LDA $DC78,X		; AEF2  BD 78 DC       
	STA $10			; AEF5  85 10          
	LDA $DC79,X		; AEF7  BD 79 DC       
	STA $11			; AEFA  85 11          
	LDA $DCA2,X		; AEFC  BD A2 DC       
	STA $14			; AEFF  85 14          
	LDA $DCA3,X		; AF01  BD A3 DC       
	STA $15			; AF04  85 15          
	LDA ($10),Y		; AF06  B1 10          
	STA $620A		; AF08  8D 0A 62       
	LDA ($14),Y		; AF0B  B1 14          
	STA $620C		; AF0D  8D 0C 62       
	LDY $A6			; AF10  A4 A6          
	LDA ($10),Y		; AF12  B1 10          
	STA $6206		; AF14  8D 06 62       
	LDA ($14),Y		; AF17  B1 14          
	STA $6208		; AF19  8D 08 62       
	LDX $94			; AF1C  A6 94          
	LDA $6379,X		; AF1E  BD 79 63       
	SEC			; AF21  38             
	SBC #$2A		; AF22  E9 2A          
	STA $8A			; AF24  85 8A          
	JSR $D0BD		; AF26  20 BD D0       
	JSR $E672		; AF29  20 72 E6       
	JSR $D15C		; AF2C  20 5C D1       
BDAF2F:
	RTS			; AF2F  60             

;$AF30
.byte $90,$01,$60

	LDX $92			; AF33  A6 92          
	LDA $62A3,X		; AF35  BD A3 62       
	CMP $6213		; AF38  CD 13 62       
	BNE BDAF44		; AF3B  D0 07          
	LDA $624B,X		; AF3D  BD 4B 62       
	AND #$20		; AF40  29 20          
	BEQ BDAF48		; AF42  F0 04          
BDAF44:
	JSR $F2E6		; AF44  20 E6 F2       
	RTS			; AF47  60             
BDAF48:
	JSR $B077		; AF48  20 77 B0       
	JSR $B0E4		; AF4B  20 E4 B0       
	JSR $B8D1		; AF4E  20 D1 B8       
BDAF51:
	JSR $AFB6		; AF51  20 B6 AF       
	LDA #$10		; AF54  A9 10          
	BIT $7E			; AF56  24 7E          
	BEQ BDAF68		; AF58  F0 0E          
	LDA $61AB		; AF5A  AD AB 61       
	BEQ BDAF51		; AF5D  F0 F2          
	DEC $61AB		; AF5F  CE AB 61       
	JSR $F2CE		; AF62  20 CE F2       
	JMP $AF51		; AF65  4C 51 AF       
BDAF68:
	LDA #$20		; AF68  A9 20          
	BIT $7E			; AF6A  24 7E          
	BEQ BDAF7E		; AF6C  F0 10          
	LDA $61AB		; AF6E  AD AB 61       
	CMP #$04		; AF71  C9 04          
	BCS BDAF51		; AF73  B0 DC          
	INC $61AB		; AF75  EE AB 61       
	JSR $F2CE		; AF78  20 CE F2       
	JMP $AF51		; AF7B  4C 51 AF       
BDAF7E:
	LDA #$02		; AF7E  A9 02          
	BIT $7E			; AF80  24 7E          
	BEQ BDAF9C		; AF82  F0 18          
	JSR $F2DE		; AF84  20 DE F2       
	JSR $F3C8		; AF87  20 C8 F3       
	LDA $6213		; AF8A  AD 13 62       
	STA $95			; AF8D  85 95          
	JSR $895B		; AF8F  20 5B 89       
	JSR $986F		; AF92  20 6F 98       
	JSR $C2EF		; AF95  20 EF C2       
	JSR $86A1		; AF98  20 A1 86       
	RTS			; AF9B  60             

BDAF9C:
	LDA #$01		; AF9C  A9 01          
	BIT $7E			; AF9E  24 7E          
	BEQ BDAF51		; AFA0  F0 AF          
	JSR $F2D6		; AFA2  20 D6 F2       
	LDA $61AB		; AFA5  AD AB 61       
	BEQ BDAFB0		; AFA8  F0 06          
	JSR $AFEB		; AFAA  20 EB AF       
	JMP $AF51		; AFAD  4C 51 AF       
BDAFB0:
	JSR $B7AF		; AFB0  20 AF B7       
	JMP $AF87		; AFB3  4C 87 AF       

; Name	:
	LDA #$F8		; AFB6  A9 F8          
	STA $0200		; AFB8  8D 00 02       
	STA $0204		; AFBB  8D 04 02       
	STA $0208		; AFBE  8D 08 02       
	STA $020C		; AFC1  8D 0C 02       
	LDA $24			; AFC4  A5 24          
	AND #$10		; AFC6  29 10          
	BNE BDAFE2		; AFC8  D0 18          
	LDX $61AB		; AFCA  AE AB 61       
	LDA $AFE6,X		; AFCD  BD E6 AF       
	STA $0200		; AFD0  8D 00 02       
	LDA #$01		; AFD3  A9 01          
	STA $0201		; AFD5  8D 01 02       
	LDA #$01		; AFD8  A9 01          
	STA $0202		; AFDA  8D 02 02       
	LDA #$08		; AFDD  A9 08          
	STA $0203		; AFDF  8D 03 02       
BDAFE2:
	JSR $F3D0		; AFE2  20 D0 F3       
	RTS			; AFE5  60             

;$AFE6 - data block =
.byte $2f,$3f,$4f,$5f,$6f

; Name	:
	LDA $61AB		; AFEB  AD AB 61       
	SEC			; AFEE  38             
	SBC #$01		; AFEF  E9 01          
	ASL A			; AFF1  0A             
	STA $00			; AFF2  85 00          
	LDX $6213		; AFF4  AE 13 62       
	LDA $6242,X		; AFF7  BD 42 62       
	ASL A			; AFFA  0A             
	ASL A			; AFFB  0A             
	ASL A			; AFFC  0A             
	ADC $00			; AFFD  65 00          
	STA $61AC		; AFFF  8D AC 61       
	LDX $61AB		; B002  AE AB 61       
	LDA $61B8,X		; B005  BD B8 61       
	BPL BDB00C		; B008  10 02          
	LDA #$00		; B00A  A9 00          
BDB00C:
	STA $61AD		; B00C  8D AD 61       
	JSR $B3F7		; B00F  20 F7 B3       
	JSR $B507		; B012  20 07 B5       
	JSR $B2AC		; B015  20 AC B2       
BDB018:
	JSR $B42A		; B018  20 2A B4       
	JSR $B452		; B01B  20 52 B4       
	LDA #$80		; B01E  A9 80          
	BIT $7E			; B020  24 7E          
	BEQ BDB032		; B022  F0 0E          
	LDA $61BD		; B024  AD BD 61       
	BMI BDB018		; B027  30 EF          
	JSR $F2CE		; B029  20 CE F2       
	JSR $B4E1		; B02C  20 E1 B4       
	JMP $B018		; B02F  4C 18 B0       
BDB032:
	LDA #$40		; B032  A9 40          
	BIT $7E			; B034  24 7E          
	BEQ BDB046		; B036  F0 0E          
	LDA $61BE		; B038  AD BE 61       
	BMI BDB018		; B03B  30 DB          
	JSR $F2CE		; B03D  20 CE F2       
	JSR $B4F4		; B040  20 F4 B4       
	JMP $B018		; B043  4C 18 B0       
BDB046:
	LDA #$02		; B046  A9 02          
	BIT $7E			; B048  24 7E          
	BEQ BDB050		; B04A  F0 04          
	JSR $F2DE		; B04C  20 DE F2       
	RTS			; B04F  60             
BDB050:
	LDA #$01		; B050  A9 01          
	BIT $7E			; B052  24 7E          
	BEQ BDB018		; B054  F0 C2          
	LDA $61B1		; B056  AD B1 61       
	BNE BDB061		; B059  D0 06          
	JSR $F2E6		; B05B  20 E6 F2       

;$B05E
.byte $4c,$18
.byte $b0

BDB061:
	LDA $61AD		; B061  AD AD 61       
	LDX $61AB		; B064  AE AB 61       
	CMP $61B8,X		; B067  DD B8 61       
	BEQ BDB071		; B06A  F0 05          
	LDA #$00		; B06C  A9 00          
	STA $61B1,X		; B06E  9D B1 61       
BDB071:
	JSR $B527		; B071  20 27 B5       
	BCC BDB018		; B074  90 A2          
	RTS			; B076  60             

; Name	:
	LDA #$00		; B077  A9 00          
	LDY #$0D		; B079  A0 0D          
BDB07B:
	STA $61AB,Y		; B07B  99 AB 61       
	DEY			; B07E  88             
	BPL BDB07B		; B07F  10 FA          
	STA $8E			; B081  85 8E          
	STA $8D			; B083  85 8D          
	LDA #$FF		; B085  A9 FF          
	STA $61B9		; B087  8D B9 61       
	STA $61BA		; B08A  8D BA 61       
	STA $61BB		; B08D  8D BB 61       
	STA $61BC		; B090  8D BC 61       
	LDY $6213		; B093  AC 13 62       
	LDA $6242,Y		; B096  B9 42 62       
	ASL A			; B099  0A             
	ASL A			; B09A  0A             
	ASL A			; B09B  0A             
	STA $61AC		; B09C  8D AC 61       
	LDX $94			; B09F  A6 94          
	LDA $6379,X		; B0A1  BD 79 63       
	BEQ BDB0B0		; B0A4  F0 0A          
	STA $01			; B0A6  85 01          
	LDA #$00		; B0A8  A9 00          
	JSR $D4A9		; B0AA  20 A9 D4       
	STY $61B9		; B0AD  8C B9 61       
BDB0B0:
	LDX $94			; B0B0  A6 94          
	LDA $6399,X		; B0B2  BD 99 63       
	BEQ BDB0C1		; B0B5  F0 0A          
	STA $01			; B0B7  85 01          
	LDA #$02		; B0B9  A9 02          
	JSR $D4A9		; B0BB  20 A9 D4       
	STY $61BA		; B0BE  8C BA 61       
BDB0C1:
	LDX $94			; B0C1  A6 94          
	LDA $63B9,X		; B0C3  BD B9 63       
	BEQ BDB0D2		; B0C6  F0 0A          
	STA $01			; B0C8  85 01          
	LDA #$04		; B0CA  A9 04          
	JSR $D4A9		; B0CC  20 A9 D4       
	STY $61BB		; B0CF  8C BB 61       
BDB0D2:
	LDX $94			; B0D2  A6 94          
	LDA $63D9,X		; B0D4  BD D9 63       
	BEQ BDB0E3		; B0D7  F0 0A          
	STA $01			; B0D9  85 01          
	LDA #$06		; B0DB  A9 06          
	JSR $D4A9		; B0DD  20 A9 D4       
	STY $61BC		; B0E0  8C BC 61       
BDB0E3:
	RTS			; B0E3  60             

; Name	:
	JSR $F32B		; B0E4  20 2B F3       
	JSR $F3C8		; B0E7  20 C8 F3       
	LDA #$02		; B0EA  A9 02          
	STA $26			; B0EC  85 26          
	LDA #$80		; B0EE  A9 80          
	STA $5A			; B0F0  85 5A          
	LDA #$1A		; B0F2  A9 1A          
	STA $5B			; B0F4  85 5B          
	STA $5C			; B0F6  85 5C          
	LDX #$00		; B0F8  A2 00          
	STX $5D			; B0FA  86 5D          
	INX			; B0FC  E8             
	STX $5E			; B0FD  86 5E          
	INX			; B0FF  E8             
	STX $5F			; B100  86 5F          
	LDA #$A6		; B102  A9 A6          
	STA $44			; B104  85 44          
	LDA #$00		; B106  A9 00          
	STA $45			; B108  85 45          
	STA $46			; B10A  85 46          
	STA $42			; B10C  85 42          
	STA $3B			; B10E  85 3B          
	STA $40			; B110  85 40          
	STA $41			; B112  85 41          
	LDA #$20		; B114  A9 20          
	STA $2D			; B116  85 2D          
	LDA #$60		; B118  A9 60          
	STA $2C			; B11A  85 2C          
	JSR $F982		; B11C  20 82 F9       
	JSR $FCBF		; B11F  20 BF FC       
	LDA #$21		; B122  A9 21          
	LDY #$B2		; B124  A0 B2          
	JSR $FB09		; B126  20 09 FB       
	LDA $93			; B129  A5 93          
	CLC			; B12B  18             
	ADC #$31		; B12C  69 31          
	STA $0324		; B12E  8D 24 03       
	LDX $6213		; B131  AE 13 62       
	LDA $6222,X		; B134  BD 22 62       
	STA $18			; B137  85 18          
	LDA $6226,X		; B139  BD 26 62       
	STA $19			; B13C  85 19          
	LDA $622A,X		; B13E  BD 2A 62       
	STA $00			; B141  85 00          
	JSR $F8C3		; B143  20 C3 F8       
	LDY #$04		; B146  A0 04          
BDB148:
	LDA $0450,Y		; B148  B9 50 04       
	STA $0338,Y		; B14B  99 38 03       
	DEY			; B14E  88             
	BPL BDB148		; B14F  10 F7          
	JSR $CAB6		; B151  20 B6 CA       
	LDA #$3E		; B154  A9 3E          
	LDY #$B2		; B156  A0 B2          
	JSR $FB09		; B158  20 09 FB       
	JSR $CAB6		; B15B  20 B6 CA       
	LDA PpuStatus_2002	; B15E  AD 02 20       
	LDA #$21		; B161  A9 21          
	STA PpuAddr_2006	; B163  8D 06 20       
	LDA #$E0		; B166  A9 E0          
	STA PpuAddr_2006	; B168  8D 06 20       
	JSR $FC9F		; B16B  20 9F FC       
	LDA #$22		; B16E  A9 22          
	STA $2D			; B170  85 2D          
	LDA #$00		; B172  A9 00          
	STA $2C			; B174  85 2C          
	JSR $FCBF		; B176  20 BF FC       
	JSR $B203		; B179  20 03 B2       
	JSR $CAB6		; B17C  20 B6 CA       
	JSR $B203		; B17F  20 03 B2       
	JSR $CAB6		; B182  20 B6 CA       
	LDA PpuStatus_2002	; B185  AD 02 20       
	LDA #$22		; B188  A9 22          
	STA PpuAddr_2006	; B18A  8D 06 20       
	LDA #$80		; B18D  A9 80          
	STA PpuAddr_2006	; B18F  8D 06 20       
	JSR $FC9F		; B192  20 9F FC       
	JSR $FC8F		; B195  20 8F FC       
	LDA #$22		; B198  A9 22          
	STA $2D			; B19A  85 2D          
	LDA #$C0		; B19C  A9 C0          
	STA $2C			; B19E  85 2C          
	LDX $94			; B1A0  A6 94          
	LDA $6379,X		; B1A2  BD 79 63       
	BNE BDB1AD		; B1A5  D0 06          
	JSR $B263		; B1A7  20 63 B2       

;$B1AA
.byte $4c,$b0,$b1

BDB1AD:
	JSR $CAB6		; B1AD  20 B6 CA       
	JSR $CAB6		; B1B0  20 B6 CA       
	JSR $CAB6		; B1B3  20 B6 CA       
	LDA PpuStatus_2002	; B1B6  AD 02 20       
	LDA #$23		; B1B9  A9 23          
	STA PpuAddr_2006	; B1BB  8D 06 20       
	LDA #$80		; B1BE  A9 80          
	STA PpuAddr_2006	; B1C0  8D 06 20       
	JSR $FC9F		; B1C3  20 9F FC       
	LDA PpuStatus_2002	; B1C6  AD 02 20       
	LDA #$23		; B1C9  A9 23          
	STA PpuAddr_2006	; B1CB  8D 06 20       
	LDA #$E8		; B1CE  A9 E8          
	STA PpuAddr_2006	; B1D0  8D 06 20       
	LDY #$10		; B1D3  A0 10          
	LDX #$00		; B1D5  A2 00          
BDB1D7:
	LDA $B253,X		; B1D7  BD 53 B2       
	STA PpuData_2007	; B1DA  8D 07 20       
	INX			; B1DD  E8             
	DEY			; B1DE  88             
	BNE BDB1D7		; B1DF  D0 F6          
	LDA $03C1		; B1E1  AD C1 03       
	STA $03C9		; B1E4  8D C9 03       
	STA $03CD		; B1E7  8D CD 03       
	LDA #$30		; B1EA  A9 30          
	STA $03C3		; B1EC  8D C3 03       
	STA $03C7		; B1EF  8D C7 03       
	STA $03CB		; B1F2  8D CB 03       
	STA $03CF		; B1F5  8D CF 03       
	LDA #$01		; B1F8  A9 01          
	STA $2F			; B1FA  85 2F          
	JSR $F34A		; B1FC  20 4A F3       
	JSR $F3D0		; B1FF  20 D0 F3       
	RTS			; B202  60             

; Name	:
	LDY #$06		; B203  A0 06          
	LDA #$2D		; B205  A9 2D          
BDB207:
	STA $0322,Y		; B207  99 22 03       
	STA $0331,Y		; B20A  99 31 03       
	DEY			; B20D  88             
	BPL BDB207		; B20E  10 F7          
	LDA #$2A		; B210  A9 2A          
	STA $032A		; B212  8D 2A 03       
	STA $0339		; B215  8D 39 03       
	LDA #$30		; B218  A9 30          
	STA $032D		; B21A  8D 2D 03       
	STA $033C		; B21D  8D 3C 03       
	RTS			; B220  60             

;$B221 - data block = ($B221-$B23D)
.byte $00,$03,$22,$80,$23,$72,$25,$76,$26,$9d,$27,$80,$28,$72,$02
.byte $de,$31,$75,$32,$e8,$3d,$30,$3e,$5c,$20,$47,$3f,$48,$ff
;$B23E - data block = ($B23E-$B252)
.byte $00,$03
.byte $22,$79,$23,$6f,$24,$83,$25,$72,$31,$8b,$32,$96,$33,$73,$3d,$30
.byte $3e,$5c,$ff
;$B253 - $B2AB)
.byte $c0,$f0,$f0,$30,$a0,$a0,$a0,$00,$cc,$ff,$ff,$33,$00
.byte $00,$00,$00,$a9,$8d,$85,$10,$a9,$b2,$85,$11,$a9,$02,$85,$12,$a9
.byte $03,$85,$13,$20,$10,$f4,$20,$b6,$ca,$a9,$99,$85,$10,$a9,$b2,$85
.byte $11,$a9,$02,$85,$12,$a9,$03,$85,$13,$20,$10,$f4,$60,$77,$76,$9d
.byte $76,$de,$71,$98,$8f,$7e,$9d,$2e,$00,$8f,$7d,$de,$2c,$77,$76,$9d
.byte $a6,$82,$78,$6f,$83,$78,$80,$de,$7b,$72,$2e,$00

; Name	:
	JSR $B3C9		; B2AC  20 C9 B3       
	LDA $61AE		; B2AF  AD AE 61       
	JSR $C65F		; B2B2  20 5F C6       
	STA $60			; B2B5  85 60          
	JSR $F96D		; B2B7  20 6D F9       
	LDA #$88		; B2BA  A9 88          
	LDY #$B3		; B2BC  A0 B3          
	JSR $FB09		; B2BE  20 09 FB       
	JSR $FCBF		; B2C1  20 BF FC       
	LDA $61AE		; B2C4  AD AE 61       
	JSR $C57C		; B2C7  20 7C C5       
	LDA #$30		; B2CA  A9 30          
	STA $12			; B2CC  85 12          
	LDA #$03		; B2CE  A9 03          
	STA $13			; B2D0  85 13          
	JSR $F408		; B2D2  20 08 F4       
	LDA #$80		; B2D5  A9 80          
	STA $00			; B2D7  85 00          
	JSR $F9CA		; B2D9  20 CA F9       
	LDA $61AE		; B2DC  AD AE 61       
	JSR $C67B		; B2DF  20 7B C6       
	JSR $CEAD		; B2E2  20 AD CE       
	LDA #$22		; B2E5  A9 22          
	STA $2D			; B2E7  85 2D          
	LDA #$A0		; B2E9  A9 A0          
	STA $2C			; B2EB  85 2C          
	LDA #$01		; B2ED  A9 01          
	STA $33			; B2EF  85 33          
	JSR $F4DC		; B2F1  20 DC F4       
	LDA $61AE		; B2F4  AD AE 61       
	JSR $C695		; B2F7  20 95 C6       
	LDY #$03		; B2FA  A0 03          
BDB2FC:
	LDA $0450,Y		; B2FC  B9 50 04       
	STA $03CC,Y		; B2FF  99 CC 03       
	DEY			; B302  88             
	BPL BDB2FC		; B303  10 F7          
	LDA #$01		; B305  A9 01          
	STA $2F			; B307  85 2F          
	JSR $F4DC		; B309  20 DC F4       
	JSR $F96D		; B30C  20 6D F9       
	LDA #$88		; B30F  A9 88          
	LDY #$B3		; B311  A0 B3          
	JSR $FB09		; B313  20 09 FB       
	JSR $B3B4		; B316  20 B4 B3       
	LDA #$9B		; B319  A9 9B          
	LDY #$B3		; B31B  A0 B3          
	JSR $FB09		; B31D  20 09 FB       
	LDA $61AE		; B320  AD AE 61       
	JSR $C635		; B323  20 35 C6       
	JSR $F8D4		; B326  20 D4 F8       
	STA $0312		; B329  8D 12 03       
	STX $0313		; B32C  8E 13 03       
	STY $0314		; B32F  8C 14 03       
	LDA $61AE		; B332  AD AE 61       
	JSR $C615		; B335  20 15 C6       
	JSR $F8D4		; B338  20 D4 F8       
	STX $0317		; B33B  8E 17 03       
	STY $0318		; B33E  8C 18 03       
	LDA $61AE		; B341  AD AE 61       
	JSR $C627		; B344  20 27 C6       
	JSR $F8D4		; B347  20 D4 F8       
	STX $031C		; B34A  8E 1C 03       
	STY $031D		; B34D  8C 1D 03       
	LDA $61AF		; B350  AD AF 61       
	STA $18			; B353  85 18          
	LDA $61B0		; B355  AD B0 61       
	STA $19			; B358  85 19          
	JSR $F884		; B35A  20 84 F8       
	LDY #$03		; B35D  A0 03          
BDB35F:
	LDA $0451,Y		; B35F  B9 51 04       
	STA $0359,Y		; B362  99 59 03       
	DEY			; B365  88             
	BPL BDB35F		; B366  10 F7          
	LDA #$80		; B368  A9 80          
	STA $00			; B36A  85 00          
	JSR $F9CA		; B36C  20 CA F9       
	LDA $61AE		; B36F  AD AE 61       
	JSR $C67B		; B372  20 7B C6       
	JSR $CE9A		; B375  20 9A CE       
	LDA #$23		; B378  A9 23          
	STA $2D			; B37A  85 2D          
	LDA #$20		; B37C  A9 20          
	STA $2C			; B37E  85 2C          
	LDA #$01		; B380  A9 01          
	STA $33			; B382  85 33          
	JSR $F4DC		; B384  20 DC F4       
	RTS			; B387  60             

;$B388 - data block = ($B388-$B3B3)
.byte $00,$03,$00,$47,$20,$47,$40,$47
.byte $60,$47,$1f,$48,$3f,$48,$5f,$48,$7f,$48,$ff,$00,$03,$11,$f0,$16
.byte $f1,$19,$25,$1b,$f2,$1e,$25,$51,$88,$52,$80,$32,$de,$53,$9d,$5d
.byte $30,$5e,$5c,$ff

; Name	:
	LDA #$65		; B3B4  A9 65          
	STA $0360		; B3B6  8D 60 03       
	LDY #$1D		; B3B9  A0 1D          
	LDA #$4A		; B3BB  A9 4A          
BDB3BD:
	STA $0361,Y		; B3BD  99 61 03       
	DEY			; B3C0  88             
	BPL BDB3BD		; B3C1  10 FA          
	LDA #$66		; B3C3  A9 66          
	STA $037F		; B3C5  8D 7F 03       
	RTS			; B3C8  60             

; Name	:
	LDA $61AC		; B3C9  AD AC 61       
	JSR $C4F4		; B3CC  20 F4 C4       
	LDY $61AD		; B3CF  AC AD 61       
	JSR $C4E5		; B3D2  20 E5 C4       
	LDA $9B			; B3D5  A5 9B          
	STA $61AE		; B3D7  8D AE 61       
	LDA $61AC		; B3DA  AD AC 61       
	JSR $C50A		; B3DD  20 0A C5       
	LDA $61AD		; B3E0  AD AD 61       
	ASL A			; B3E3  0A             
	TAY			; B3E4  A8             
	JSR $C4E5		; B3E5  20 E5 C4       
	LDA $9B			; B3E8  A5 9B          
	STA $61AF		; B3EA  8D AF 61       
	INY			; B3ED  C8             
	JSR $C4E5		; B3EE  20 E5 C4       
	LDA $9B			; B3F1  A5 9B          
	STA $61B0		; B3F3  8D B0 61       
	RTS			; B3F6  60             

; Name	:
	LDA #$00		; B3F7  A9 00          
	STA $61B1		; B3F9  8D B1 61       
	LDA $61AB		; B3FC  AD AB 61       
	BEQ BDB426		; B3FF  F0 25          
	SEC			; B401  38             
	SBC #$01		; B402  E9 01          
	ASL A			; B404  0A             
	ASL A			; B405  0A             
	STA $00			; B406  85 00          
	LDA $6213		; B408  AD 13 62       
	SEC			; B40B  38             
	SBC #$01		; B40C  E9 01          
	CLC			; B40E  18             
	ADC $00			; B40F  65 00          
	TAX			; B411  AA             
	LDA $622F,X		; B412  BD 2F 62       
	STA $61BF		; B415  8D BF 61       
	LDA $61AD		; B418  AD AD 61       
	CMP $61BF		; B41B  CD BF 61       
	BCS BDB425		; B41E  B0 05          
	LDA #$FF		; B420  A9 FF          
	STA $61B1		; B422  8D B1 61       
BDB425:
	RTS			; B425  60             

BDB426:
.byte $8d,$bf,$61,$60

; Name	:
	LDA #$FF		; B42A  A9 FF          
	STA $61BD		; B42C  8D BD 61       
	STA $61BE		; B42F  8D BE 61       
	LDA $61AB		; B432  AD AB 61       
	BEQ BDB451		; B435  F0 1A          
	LDA $61AC		; B437  AD AC 61       
	JSR $C4F4		; B43A  20 F4 C4       
	LDA $61AD		; B43D  AD AD 61       
	BEQ BDB445		; B440  F0 03          
	INC $61BE		; B442  EE BE 61       
BDB445:
	TAY			; B445  A8             
	INY			; B446  C8             
	JSR $C4E5		; B447  20 E5 C4       
	LDA $9B			; B44A  A5 9B          
	BMI BDB451		; B44C  30 03          
	INC $61BD		; B44E  EE BD 61       
BDB451:
	RTS			; B451  60             

; Name	:
	LDA #$76		; B452  A9 76          
	STA $0300		; B454  8D 00 03       
	STA $0301		; B457  8D 01 03       
	LDA #$77		; B45A  A9 77          
	STA $0302		; B45C  8D 02 03       
	STA $0303		; B45F  8D 03 03       
	LDA #$F0		; B462  A9 F0          
	STA $0200		; B464  8D 00 02       
	STA $0204		; B467  8D 04 02       
	STA $0208		; B46A  8D 08 02       
	STA $020C		; B46D  8D 0C 02       
	LDA $24			; B470  A5 24          
	AND #$10		; B472  29 10          
	BEQ BDB4DA		; B474  F0 64          
	LDA $61BE		; B476  AD BE 61       
	BMI BDB485		; B479  30 0A          
	LDA #$56		; B47B  A9 56          
	STA $0300		; B47D  8D 00 03       
	LDA #$66		; B480  A9 66          
	STA $0301		; B482  8D 01 03       
BDB485:
	LDA $61BD		; B485  AD BD 61       
	BMI BDB494		; B488  30 0A          
	LDA #$57		; B48A  A9 57          
	STA $0302		; B48C  8D 02 03       
	LDA #$67		; B48F  A9 67          
	STA $0303		; B491  8D 03 03       
BDB494:
	LDA #$0A		; B494  A9 0A          
	STA $37			; B496  85 37          
	LDA #$A7		; B498  A9 A7          
	STA $0200		; B49A  8D 00 02       
	STA $0204		; B49D  8D 04 02       
	LDA #$DF		; B4A0  A9 DF          
	STA $0208		; B4A2  8D 08 02       
	STA $020C		; B4A5  8D 0C 02       
	LDA #$00		; B4A8  A9 00          
	STA $0203		; B4AA  8D 03 02       
	STA $020B		; B4AD  8D 0B 02       
	LDA #$F8		; B4B0  A9 F8          
	STA $0207		; B4B2  8D 07 02       
	STA $020F		; B4B5  8D 0F 02       
	LDA #$04		; B4B8  A9 04          
	STA $0201		; B4BA  8D 01 02       
	STA $0205		; B4BD  8D 05 02       
	STA $0209		; B4C0  8D 09 02       
	STA $020D		; B4C3  8D 0D 02       
	LDA #$00		; B4C6  A9 00          
	STA $0202		; B4C8  8D 02 02       
	ORA #$40		; B4CB  09 40          
	STA $0206		; B4CD  8D 06 02       
	ORA #$80		; B4D0  09 80          
	STA $020E		; B4D2  8D 0E 02       
	AND #$BF		; B4D5  29 BF          
	STA $020A		; B4D7  8D 0A 02       
BDB4DA:
	JSR $F3D0		; B4DA  20 D0 F3       
	JSR $F4DC		; B4DD  20 DC F4       
	RTS			; B4E0  60             

; Name	:
	JSR $FD6B		; B4E1  20 6B FD       
	INC $61AD		; B4E4  EE AD 61       
	JSR $B3F7		; B4E7  20 F7 B3       
	JSR $B2AC		; B4EA  20 AC B2       
	JSR $B507		; B4ED  20 07 B5       
	JSR $FD6B		; B4F0  20 6B FD       
	RTS			; B4F3  60             

; Name	:
	JSR $FD67		; B4F4  20 67 FD       
	DEC $61AD		; B4F7  CE AD 61       
	JSR $B3F7		; B4FA  20 F7 B3       
	JSR $B2AC		; B4FD  20 AC B2       
	JSR $B507		; B500  20 07 B5       
	JSR $FD67		; B503  20 67 FD       
	RTS			; B506  60             

; Name	:
	LDX #$30		; B507  A2 30          
	LDA $61B1		; B509  AD B1 61       
	BNE BDB51F		; B50C  D0 11          
	LDA #$00		; B50E  A9 00          
	STA $03CD		; B510  8D CD 03       
	LDA #$10		; B513  A9 10          
	STA $03CE		; B515  8D CE 03       
	LDA #$30		; B518  A9 30          
	STA $03CF		; B51A  8D CF 03       
	LDX #$00		; B51D  A2 00          
BDB51F:
	STX $03CB		; B51F  8E CB 03       
	LDA #$01		; B522  A9 01          
	STA $2F			; B524  85 2F          
	RTS			; B526  60             

; Name	:
	JSR $B8D1		; B527  20 D1 B8       
	JSR $B6BF		; B52A  20 BF B6       
	JSR $B60D		; B52D  20 0D B6       
BDB530:
	JSR $B776		; B530  20 76 B7       
	LDA #$10		; B533  A9 10          
	BIT $7E			; B535  24 7E          
	BEQ BDB541		; B537  F0 08          
	LDA #$01		; B539  A9 01          
	JSR $B709		; B53B  20 09 B7       
	JMP $B530		; B53E  4C 30 B5       
BDB541:
	LDA #$20		; B541  A9 20          
	BIT $7E			; B543  24 7E          
	BEQ BDB54F		; B545  F0 08          
	LDA #$01		; B547  A9 01          
	JSR $B72E		; B549  20 2E B7       
	JMP $B530		; B54C  4C 30 B5       
BDB54F:
	LDA #$40		; B54F  A9 40          
	BIT $7E			; B551  24 7E          
	BEQ BDB55D		; B553  F0 08          
	LDA #$0A		; B555  A9 0A          
	JSR $B709		; B557  20 09 B7       
	JMP $B530		; B55A  4C 30 B5       
BDB55D:
	LDA #$80		; B55D  A9 80          
	BIT $7E			; B55F  24 7E          
	BEQ BDB56B		; B561  F0 08          
	LDA #$0A		; B563  A9 0A          
	JSR $B72E		; B565  20 2E B7       
	JMP $B530		; B568  4C 30 B5       
BDB56B:
	LDA #$01		; B56B  A9 01          
	BIT $7E			; B56D  24 7E          
	BEQ BDB577		; B56F  F0 06          
	JSR $B749		; B571  20 49 B7       
	BCC BDB530		; B574  90 BA          
	RTS			; B576  60             
BDB577:
	LDA #$02		; B577  A9 02          
	BIT $7E			; B579  24 7E          
	BEQ BDB530		; B57B  F0 B3          
	LDA $61AB		; B57D  AD AB 61       
	PHA			; B580  48             
	LDA #$00		; B581  A9 00          
	STA $61AB		; B583  8D AB 61       
	JSR $B60D		; B586  20 0D B6       
	PLA			; B589  68             
	STA $61AB		; B58A  8D AB 61       
	CLC			; B58D  18             
	RTS			; B58E  60             

; Name	:
	LDY $61AD		; B58F  AC AD 61       
	LDX $61AE		; B592  AE AE 61       
	LDA $61B8		; B595  AD B8 61       
	STA $18			; B598  85 18          
	LDA $61AB		; B59A  AD AB 61       
	CMP $61B6		; B59D  CD B6 61       
	BEQ BDB5D5		; B5A0  F0 33          
	LDX #$00		; B5A2  A2 00          
	LDY #$FF		; B5A4  A0 FF          
	STX $18			; B5A6  86 18          
	LDA $61B7		; B5A8  AD B7 61       
	BMI BDB5D5		; B5AB  30 28          
	LDX $6213		; B5AD  AE 13 62       
	LDA $6242,X             ; B5B0  BD 42 62       
	ASL A			; B5B3  0A             
	ASL A			; B5B4  0A             
	ASL A			; B5B5  0A             
	STA $00			; B5B6  85 00          
	LDA $61B6		; B5B8  AD B6 61       
	SEC			; B5BB  38             
	SBC #$01		; B5BC  E9 01          
	ASL A			; B5BE  0A             
	CLC			; B5BF  18             
	ADC $00			; B5C0  65 00          
	JSR $C4F4		; B5C2  20 F4 C4       
	LDY $61B7		; B5C5  AC B7 61       
	JSR $C4E5		; B5C8  20 E5 C4       
	LDX $9B			; B5CB  A6 9B          
	LDY $61B7		; B5CD  AC B7 61       
	LDA $61B8		; B5D0  AD B8 61       
	STA $18			; B5D3  85 18          
BDB5D5:
	STY $9B			; B5D5  84 9B          
	TXA			; B5D7  8A             
	JSR $C57C		; B5D8  20 7C C5       
	JSR $F408		; B5DB  20 08 F4       
	RTS			; B5DE  60             

; Name	:
	LDA $61C6		; B5DF  AD C6 61       
	CLC			; B5E2  18             
	ADC #$30		; B5E3  69 30          
	STA $032D		; B5E5  8D 2D 03       
	LDA $61C7		; B5E8  AD C7 61       
	JSR $F8D4		; B5EB  20 D4 F8       
	STX $036C		; B5EE  8E 6C 03       
	STY $036D		; B5F1  8C 6D 03       
	LDA $61C8		; B5F4  AD C8 61       
	CLC			; B5F7  18             
	ADC #$30		; B5F8  69 30          
	STA $033C		; B5FA  8D 3C 03       
	LDA $61C9		; B5FD  AD C9 61       
	JSR $F8D4		; B600  20 D4 F8       
	STA $037A		; B603  8D 7A 03       
	STX $037B		; B606  8E 7B 03       
	STY $037C		; B609  8C 7C 03       
	RTS			; B60C  60             

; Name	:
	LDA #$00		; B60D  A9 00          
	STA $61CA		; B60F  8D CA 61       
	STA $61CB		; B612  8D CB 61       
	STA $61CC		; B615  8D CC 61       
	LDA #$03		; B618  A9 03          
	STA $04			; B61A  85 04          
BDB61C:
	LDA $04			; B61C  A5 04          
	ASL A			; B61E  0A             
	STA $00			; B61F  85 00          
	LDY $6213		; B621  AC 13 62       
	LDA $6242,Y		; B624  B9 42 62       
	ASL A			; B627  0A             
	ASL A			; B628  0A             
	ASL A			; B629  0A             
	ADC $00			; B62A  65 00          
	JSR $C50A		; B62C  20 0A C5       
	LDA #$00		; B62F  A9 00          
	STA $16			; B631  85 16          
	STA $17			; B633  85 17          
	LDX $04			; B635  A6 04          
	LDA $61C2,X		; B637  BD C2 61       
	BMI BDB669		; B63A  30 2D          
	ASL A			; B63C  0A             
	TAY			; B63D  A8             
	JSR $C4E5		; B63E  20 E5 C4       
	LDA $9B			; B641  A5 9B          
	STA $18			; B643  85 18          
	INY			; B645  C8             
	JSR $C4E5		; B646  20 E5 C4       
	LDA $9B			; B649  A5 9B          
	STA $19			; B64B  85 19          
	LDA $04			; B64D  A5 04          
	CLC			; B64F  18             
	ADC #$01		; B650  69 01          
	CMP $61AB		; B652  CD AB 61       
	BNE BDB65D		; B655  D0 06          
	LDA $61C1		; B657  AD C1 61       
	JMP $B662		; B65A  4C 62 B6       
BDB65D:
	LDX $04			; B65D  A6 04          
	LDA $61C6,X		; B65F  BD C6 61       
	BEQ BDB669		; B662  F0 05          
	STA $16			; B664  85 16          
	JSR $F7D0		; B666  20 D0 F7       
BDB669:
	LDA #$00		; B669  A9 00          
	STA $18			; B66B  85 18          
	LDA $61CA		; B66D  AD CA 61       
	STA $1A			; B670  85 1A          
	LDA $61CB		; B672  AD CB 61       
	STA $1B			; B675  85 1B          
	LDA $61CC		; B677  AD CC 61       
	STA $1C			; B67A  85 1C          
	JSR $FC4D		; B67C  20 4D FC       
	LDA $1A			; B67F  A5 1A          
	STA $61CA		; B681  8D CA 61       
	LDA $1B			; B684  A5 1B          
	STA $61CB		; B686  8D CB 61       
	LDA $1C			; B689  A5 1C          
	STA $61CC		; B68B  8D CC 61       
	DEC $04			; B68E  C6 04          
	BPL BDB61C		; B690  10 8A          
	LDA $61CA		; B692  AD CA 61       
	STA $18			; B695  85 18          
	LDA $61CB		; B697  AD CB 61       
	STA $19			; B69A  85 19          
	LDA $61CC		; B69C  AD CC 61       
	STA $00			; B69F  85 00          
	JSR $F8C3		; B6A1  20 C3 F8       
	JSR $F9B7		; B6A4  20 B7 F9       
	LDA #$50		; B6A7  A9 50          
	STA $2A			; B6A9  85 2A          
	LDA #$04		; B6AB  A9 04          
	STA $2B			; B6AD  85 2B          
	LDA #$D8		; B6AF  A9 D8          
	STA $2C			; B6B1  85 2C          
	LDA #$20		; B6B3  A9 20          
	STA $2D			; B6B5  85 2D          
	LDA #$05		; B6B7  A9 05          
	STA $32			; B6B9  85 32          
	JSR $F4DC		; B6BB  20 DC F4       
	RTS			; B6BE  60             

; Name	:
	LDA #$00		; B6BF  A9 00          
	STA $61C1		; B6C1  8D C1 61       
	LDA $61AB		; B6C4  AD AB 61       
	LSR A			; B6C7  4A             
	BCS BDB703		; B6C8  B0 39          
	LDX $94			; B6CA  A6 94          
	LSR A			; B6CC  4A             
	BCS BDB6E9		; B6CD  B0 1A          
	LDA $61B5		; B6CF  AD B5 61       
	STA $61C1		; B6D2  8D C1 61       
	LDY #$C8		; B6D5  A0 C8          
	LDA $63D9,X		; B6D7  BD D9 63       
	CMP $61AE		; B6DA  CD AE 61       
	BNE BDB6E5		; B6DD  D0 06          
	TYA			; B6DF  98             
	SEC			; B6E0  38             
	SBC $63E9,X		; B6E1  FD E9 63       
	TAY			; B6E4  A8             
BDB6E5:
	STY $61C0		; B6E5  8C C0 61       
	RTS      		; B6E8  60             
BDB6E9:
	LDA $61B3		; B6E9  AD B3 61       
	STA $61C1		; B6EC  8D C1 61       
	LDY #$28		; B6EF  A0 28          
	LDA $6399,X		; B6F1  BD 99 63       
	CMP $61AE		; B6F4  CD AE 61       
	BNE BDB6FF		; B6F7  D0 06          
	TYA			; B6F9  98             
	SEC			; B6FA  38             
	SBC $63A9,X		; B6FB  FD A9 63       
	TAY			; B6FE  A8             
BDB6FF:
	STY $61C0		; B6FF  8C C0 61       
	RTS			; B702  60             
BDB703:
	LDA #$01		; B703  A9 01          
	STA $61C0		; B705  8D C0 61       
	RTS			; B708  60             

; Name	:
	STA $00			; B709  85 00          
	LDA $61C1		; B70B  AD C1 61       
	CMP $61C0		; B70E  CD C0 61       
	BEQ BDB72D		; B711  F0 1A          
	CLC			; B713  18             
	ADC $00			; B714  65 00          
	STA $61C1		; B716  8D C1 61       
	LDA $61C0		; B719  AD C0 61       
	CMP $61C1		; B71C  CD C1 61       
	BCS BDB724		; B71F  B0 03          
	STA $61C1		; B721  8D C1 61       
BDB724:
	JSR $F2CE		; B724  20 CE F2       
	JSR $B894		; B727  20 94 B8       
	JSR $B60D		; B72A  20 0D B6       
BDB72D:
	RTS			; B72D  60             

; Name	:
	STA $00			; B72E  85 00          
	LDA $61C1		; B730  AD C1 61       
	BEQ BDB748		; B733  F0 13          
	SEC			; B735  38             
	SBC $00			; B736  E5 00          
	BCS BDB73C		; B738  B0 02          
	LDA #$00		; B73A  A9 00          
BDB73C:
	STA $61C1		; B73C  8D C1 61       
	JSR $F2CE		; B73F  20 CE F2       
	JSR $B894		; B742  20 94 B8       
	JSR $B60D		; B745  20 0D B6       
BDB748:
	RTS			; B748  60             

; Name	:
	LDA $61CA		; B749  AD CA 61       
	STA $A0			; B74C  85 A0          
	LDA $61CB		; B74E  AD CB 61       
	STA $A1			; B751  85 A1          
	LDA $61CC		; B753  AD CC 61       
	STA $A2			; B756  85 A2          
	JSR $FBF0		; B758  20 F0 FB       
	BCC BDB771		; B75B  90 14          
	LDX $61AB		; B75D  AE AB 61       
	LDA $61AD		; B760  AD AD 61       
	STA $61B8,X		; B763  9D B8 61       
	LDA $61C1		; B766  AD C1 61       
	STA $61B1,X		; B769  9D B1 61       
	JSR $F2D6		; B76C  20 D6 F2       
	SEC			; B76F  38             
	RTS			; B770  60             

BDB771:
.byte $20,$e6,$f2,$18,$60

; Name	:
	LDA #$F0		; B776  A9 F0          
	STA $0200		; B778  8D 00 02       
	STA $0204		; B77B  8D 04 02       
	STA $0208		; B77E  8D 08 02       
	STA $020C		; B781  8D 0C 02       
	LDA $24			; B784  A5 24          
	AND #$10		; B786  29 10          
	BNE BDB7A3		; B788  D0 19          
	LDX $61AB		; B78A  AE AB 61       
	LDA $B7A6,X		; B78D  BD A6 B7       
	STA $0200		; B790  8D 00 02       
	LDA #$01		; B793  A9 01          
	STA $0201		; B795  8D 01 02       
	LDA #$01		; B798  A9 01          
	STA $0202		; B79A  8D 02 02       
	LDA $B7AA,X		; B79D  BD AA B7       
	STA $0203		; B7A0  8D 03 02       
BDB7A3:
	JSR $F3D0		; B7A3  20 D0 F3       
	RTS			; B7A6  60             

;$B7A7 - data block = ($B7A7-$B7AE)
.byte $87,$97,$87,$97,$08,$08,$80,$80

; Name	:
	LDA $61CA		; B7AF  AD CA 61       
	STA $A0			; B7B2  85 A0          
	LDA $61CB		; B7B4  AD CB 61       
	STA $A1			; B7B7  85 A1          
	LDA $61CC		; B7B9  AD CC 61       
	STA $A2			; B7BC  85 A2          
	JSR $FC0E		; B7BE  20 0E FC       
	LDA $61B9		; B7C1  AD B9 61       
	BMI BDB7EC		; B7C4  30 26          
	LDA $61B2		; B7C6  AD B2 61       
	BEQ BDB7EC		; B7C9  F0 21          
	LDY $6213		; B7CB  AC 13 62       
	LDA $6242,Y		; B7CE  B9 42 62       
	ASL A			; B7D1  0A             
	ASL A			; B7D2  0A             
	ASL A			; B7D3  0A             
	JSR $C4F4		; B7D4  20 F4 C4       

;$B7D7
.byte $ac,$b9,$61,$20,$e5,$c4,$a5,$9b,$a6
.byte $94,$9d,$79,$63,$20,$35,$c6,$a6,$94,$9d,$89,$63

BDB7EC:
	LDA $61BB		; B7EC  AD BB 61       
	BMI BDB819		; B7EF  30 28          
	LDA $61B4		; B7F1  AD B4 61       
	BEQ BDB819		; B7F4  F0 23          
	LDY $6213		; B7F6  AC 13 62       
	LDA $6242,Y		; B7F9  B9 42 62       
	ASL A			; B7FC  0A             
	ASL A			; B7FD  0A             
	ASL A			; B7FE  0A             
	ADC #$04		; B7FF  69 04          
	JSR $C4F4		; B801  20 F4 C4       

;$B804
.byte $ac,$bb,$61,$20,$e5,$c4,$a5,$9b,$a6,$94,$9d,$b9
.byte $63,$20,$35,$c6,$a6,$94,$9d,$c9,$63

BDB819:
	LDA $61BA		; B819  AD BA 61       
	BMI BDB856		; B81C  30 38          
	LDA $61B3		; B81E  AD B3 61       
	BEQ BDB856		; B821  F0 33          
	LDY $6213		; B823  AC 13 62       
	LDA $6242,Y		; B826  B9 42 62       
	ASL A			; B829  0A             
	ASL A			; B82A  0A             
	ASL A			; B82B  0A             
	ADC #$02		; B82C  69 02          
	JSR $C4F4		; B82E  20 F4 C4       
	LDY $61BA		; B831  AC BA 61       
	JSR $C4E5		; B834  20 E5 C4       
	LDA $9B			; B837  A5 9B          
	LDX $94			; B839  A6 94          
	CMP $6399,X		; B83B  DD 99 63       
	BEQ BDB84C		; B83E  F0 0C          
	STA $6399,X		; B840  9D 99 63       
	LDA $61B3		; B843  AD B3 61       
	STA $63A9,X		; B846  9D A9 63       
	JMP $B856		; B849  4C 56 B8       
BDB84C:
	LDA $61B3		; B84C  AD B3 61       
	CLC			; B84F  18             
	ADC $63A9,X		; B850  7D A9 63       
	STA $63A9,X		; B853  9D A9 63       
BDB856:
	LDA $61BC		; B856  AD BC 61       
	BMI BDB893		; B859  30 38          
	LDA $61B5		; B85B  AD B5 61       
	BEQ BDB893		; B85E  F0 33          
	LDY $6213		; B860  AC 13 62       
	LDA $6242,Y		; B863  B9 42 62       
	ASL A			; B866  0A             
	ASL A			; B867  0A             
	ASL A			; B868  0A             
	ADC #$06		; B869  69 06          
	JSR $C4F4		; B86B  20 F4 C4       
	LDY $61BC		; B86E  AC BC 61       
	JSR $C4E5		; B871  20 E5 C4       
	LDA $9B			; B874  A5 9B          
	LDX $94			; B876  A6 94          
	CMP $63D9,X		; B878  DD D9 63       
	BEQ BDB889		; B87B  F0 0C          
	STA $63D9,X		; B87D  9D D9 63       
	LDA $61B5		; B880  AD B5 61       
	STA $63E9,X		; B883  9D E9 63       
	JMP $B893		; B886  4C 93 B8       
BDB889:
	LDA $61B5		; B889  AD B5 61       
	CLC			; B88C  18             
	ADC $63E9,X		; B88D  7D E9 63       
	STA $63E9,X		; B890  9D E9 63       
BDB893:
	RTS			; B893  60             

; Name	:
	LDA $61AB		; B894  AD AB 61       
	ASL A			; B897  0A             
	TAX			; B898  AA             
	LDA $B8C7,X		; B899  BD C7 B8       
	STA $2C			; B89C  85 2C          
	LDA $B8C8,X		; B89E  BD C8 B8       
	STA $2D			; B8A1  85 2D          
	LDA $61C1		; B8A3  AD C1 61       
	JSR $F8D4		; B8A6  20 D4 F8       
	STA $0300		; B8A9  8D 00 03       
	STX $0301		; B8AC  8E 01 03       
	STY $0302		; B8AF  8C 02 03       
	LDA #$03		; B8B2  A9 03          
	STA $00			; B8B4  85 00          
	JSR $F9CA		; B8B6  20 CA F9       
	LDA #$00		; B8B9  A9 00          
	STA $2A			; B8BB  85 2A          
	LDA #$03		; B8BD  A9 03          
	STA $2B			; B8BF  85 2B          
	LDA #$03		; B8C1  A9 03          
	STA $32			; B8C3  85 32          
	JSR $F4DC		; B8C5  20 DC F4       
	RTS			; B8C8  60             

;$B8C9 - data block = ($B8C9-$B8D0)
.byte $2b,$22,$6b,$22,$3a,$22,$7a
.byte $22

; Name	:
	JSR $F96D		; B8D1  20 6D F9       
	JSR $FCBF		; B8D4  20 BF FC       
	LDA #$90		; B8D7  A9 90          
	LDY #$B9		; B8D9  A0 B9          
	JSR $FB09		; B8DB  20 09 FB       
	LDA #$02		; B8DE  A9 02          
	STA $12			; B8E0  85 12          
	LDA #$03		; B8E2  A9 03          
	STA $13			; B8E4  85 13          
	LDA #$01		; B8E6  A9 01          
	STA $61B6		; B8E8  8D B6 61       
	LDA $61B9		; B8EB  AD B9 61       
	STA $61B7		; B8EE  8D B7 61       
	LDA $61B2		; B8F1  AD B2 61       
	STA $61B8		; B8F4  8D B8 61       
	JSR $B58F		; B8F7  20 8F B5       
	LDA $9B			; B8FA  A5 9B          
	STA $61C2		; B8FC  8D C2 61       
	LDA $18			; B8FF  A5 18          
	STA $61C6		; B901  8D C6 61       
	LDA #$42		; B904  A9 42          
	STA $12			; B906  85 12          
	LDA #$03		; B908  A9 03          
	STA $13			; B90A  85 13          
	LDA #$02		; B90C  A9 02          
	STA $61B6		; B90E  8D B6 61       
	LDA $61BA		; B911  AD BA 61       
	STA $61B7		; B914  8D B7 61       
	LDA $61B3		; B917  AD B3 61       
	STA $61B8		; B91A  8D B8 61       
	JSR $B58F		; B91D  20 8F B5       
	LDA $9B			; B920  A5 9B          
	STA $61C3		; B922  8D C3 61       
	LDA $18			; B925  A5 18          
	STA $61C7		; B927  8D C7 61       
	LDA #$11		; B92A  A9 11          
	STA $12			; B92C  85 12          
	LDA #$03		; B92E  A9 03          
	STA $13			; B930  85 13          
	LDA #$03		; B932  A9 03          
	STA $61B6		; B934  8D B6 61       
	LDA $61BB		; B937  AD BB 61       
	STA $61B7		; B93A  8D B7 61       
	LDA $61B4		; B93D  AD B4 61       
	STA $61B8		; B940  8D B8 61       
	JSR $B58F		; B943  20 8F B5       
	LDA $9B			; B946  A5 9B          
	STA $61C4		; B948  8D C4 61       
	LDA $18			; B94B  A5 18          
	STA $61C8		; B94D  8D C8 61       
	LDA #$51		; B950  A9 51          
	STA $12			; B952  85 12          
	LDA #$03		; B954  A9 03          
	STA $13			; B956  85 13          
	LDA #$04		; B958  A9 04          
	STA $61B6		; B95A  8D B6 61       
	LDA $61BC		; B95D  AD BC 61       
	STA $61B7		; B960  8D B7 61       
	LDA $61B5		; B963  AD B5 61       
	STA $61B8		; B966  8D B8 61       
	JSR $B58F		; B969  20 8F B5       
	LDA $9B			; B96C  A5 9B          
	STA $61C5		; B96E  8D C5 61       
	LDA $18			; B971  A5 18          
	STA $61C9		; B973  8D C9 61       
	JSR $B5DF		; B976  20 DF B5       
	LDA #$80		; B979  A9 80          
	STA $00			; B97B  85 00          
	JSR $F9CA		; B97D  20 CA F9       
	LDA #$22		; B980  A9 22          
	STA $2D			; B982  85 2D          
	LDA #$00		; B984  A9 00          
	STA $2C			; B986  85 2C          
	LDA #$01		; B988  A9 01          
	STA $33			; B98A  85 33          
	JSR $F4DC		; B98C  20 DC F4       
	RTS			; B98F  60             

;$B990 - data block = ($B990-$B9B1)
.byte $00,$03,$20,$47,$40,$47,$60,$47,$3f,$48,$5f,$48,$7f,$48,$2a,$2a
.byte $2d,$30,$6a,$2a,$6d,$30,$39,$2a,$3c,$30,$79,$2a,$7c,$30,$ff,$90
.byte $01,$60

; Name	:
	CMP #$C7		; B9B2  C9 C7          
	BCC BDB9BE		; B9B4  90 08          
	LDA #$FA		; B9B6  A9 FA          
	SEC			; B9B8  38             
	SBC $628D,X		; B9B9  FD 8D 62       
	BNE BDB9C0		; B9BC  D0 02          
BDB9BE:
	LDA #$32		; B9BE  A9 32          
BDB9C0:
	STA $05			; B9C0  85 05          
	STA $18			; B9C2  85 18          
	LDA #$0A		; B9C4  A9 0A          
	STA $16			; B9C6  85 16          
	JSR $F7CA		; B9C8  20 CA F7       
	LDA $16			; B9CB  A5 16          
	STA $A0			; B9CD  85 A0          
	LDA $17			; B9CF  A5 17          
	STA $A1			; B9D1  85 A1          
	LDA #$00		; B9D3  A9 00          
	STA $A2			; B9D5  85 A2          
	LDA #$DC		; B9D7  A9 DC          
	STA $10			; B9D9  85 10          
	LDA #$88		; B9DB  A9 88          
	STA $11			; B9DD  85 11          
	JSR $F99F		; B9DF  20 9F F9       
	LDA $16			; B9E2  A5 16          
	STA $18			; B9E4  85 18          
	LDA $17			; B9E6  A5 17          
	STA $19			; B9E8  85 19          
	JSR $F884		; B9EA  20 84 F8       
	LDY #$03		; B9ED  A0 03          
BDB9EF:
	LDA $0451,Y		; B9EF  B9 51 04       
	STA $031D,Y		; B9F2  99 1D 03       
	DEY			; B9F5  88             
	BPL BDB9EF		; B9F6  10 F7          
	JSR $FAFE		; B9F8  20 FE FA       
	JSR $CFE6		; B9FB  20 E6 CF       
	LDA #$30		; B9FE  A9 30          
	STA $10			; BA00  85 10          
	LDA #$89		; BA02  A9 89          
	STA $11			; BA04  85 11          
	JSR $FAED		; BA06  20 ED FA       
	JSR $812D		; BA09  20 2D 81       
	BMI BDBA3B		; BA0C  30 2D          
	JSR $FBF0		; BA0E  20 F0 FB       
	BCC BDBA44		; BA11  90 31          
	JSR $F2D6		; BA13  20 D6 F2       
	JSR $FC0E		; BA16  20 0E FC       
	LDX $92			; BA19  A6 92          
	LDA $05			; BA1B  A5 05          
	BEQ BDBA2D		; BA1D  F0 0E          
	JSR $F2D6		; BA1F  20 D6 F2       
	DEC $05			; BA22  C6 05          
	INC $628D,X		; BA24  FE 8D 62       
	JSR $BA4A		; BA27  20 4A BA       
	JMP $BA19		; BA2A  4C 19 BA       
BDBA2D:
	LDA $624B,X		; BA2D  BD 4B 62       
	ORA #$80		; BA30  09 80          
	STA $624B,X		; BA32  9D 4B 62       
	LDX #$C0		; BA35  A2 C0          
	JSR $FBC9		; BA37  20 C9 FB       
	RTS			; BA3A  60             
BDBA3B:
	JSR $F2DE		; BA3B  20 DE F2       
	LDX #$C0		; BA3E  A2 C0          
	JSR $FBC9		; BA40  20 C9 FB       
	RTS			; BA43  60             

BDBA44:
.byte $20,$e6,$f2,$4c,$09,$ba

; Name	:
	LDX $92			; BA4A  A6 92          
	LDA $628D,X		; BA4C  BD 8D 62       
	STA $19			; BA4F  85 19          
	LDA #$FA		; BA51  A9 FA          
	STA $16			; BA53  85 16          
	JSR $FD7B		; BA55  20 7B FD       
	JSR $F9B7		; BA58  20 B7 F9       
	LDA #$50		; BA5B  A9 50          
	STA $2A			; BA5D  85 2A          
	LDA #$04		; BA5F  A9 04          
	STA $2B			; BA61  85 2B          
	LDA #$87		; BA63  A9 87          
	STA $2C			; BA65  85 2C          
	LDA #$22		; BA67  A9 22          
	STA $2D			; BA69  85 2D          
	LDA #$08		; BA6B  A9 08          
	STA $32			; BA6D  85 32          
	JSR $F4DC		; BA6F  20 DC F4       
	JSR $F4D3		; BA72  20 D3 F4       
	RTS			; BA75  60             

;$BA76
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$BB00
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$BC00
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$BD00
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$BE00
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$BF00
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
