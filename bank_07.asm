.include "Constants.inc"

.segment "BANK_07"

;$A000
.byte $20,$ce,$f2,$e6,$8e,$4c,$e1,$9f,$a9,$01,$24,$7e,$f0,$d3,$20,$d6
.byte $f2,$a5,$8e,$4a,$60,$a9,$f0,$8d,$00,$02,$a5,$24,$29,$10,$d0,$17
.byte $a6,$8e,$bd,$3b,$a0,$8d,$00,$02,$a9,$00,$8d,$02,$02,$a9,$01,$8d
.byte $01,$02,$a9,$40,$8d,$03,$02,$20,$d0,$f3,$60,$c8,$d8
;$A03D - data block = string table
.byte $1c,$fe,$1d
.byte $fe,$1e,$ff

; Name	:
	LDA $A4			; A043  A5 A4          
	CMP #$80		; A045  C9 80          
	BEQ B7A087		; A047  F0 3E          
	LDA $61A1		; A049  AD A1 61       
	BEQ B7A05B		; A04C  F0 0D          
	LDA $B2			; A04E  A5 B2          
	BMI B7A05B		; A050  30 09          
	LDA $AE			; A052  A5 AE          
	STA $95			; A054  85 95          
	LDX $B6			; A056  A6 B6          
	JSR $A088		; A058  20 88 A0       
B7A05B:
	LDA $61A2		; A05B  AD A2 61       
	BEQ B7A06D		; A05E  F0 0D          
	LDA $B3			; A060  A5 B3          
	BMI B7A06D		; A062  30 09          
	LDA $AF			; A064  A5 AF          
	STA $95			; A066  85 95          
	LDX $B7			; A068  A6 B7          
	JSR $A088		; A06A  20 88 A0       
B7A06D:
	LDA $B0			; A06D  A5 B0          
	BMI B7A07A		; A06F  30 09          
	LDA $AE			; A071  A5 AE          
	STA $95			; A073  85 95          
	LDX $B4			; A075  A6 B4          
	JSR $A088		; A077  20 88 A0       
B7A07A:
	LDA $B1			; A07A  A5 B1          
	BMI B7A087		; A07C  30 09          
	LDA $AF			; A07E  A5 AF          
	STA $95			; A080  85 95          
	LDX $B5			; A082  A6 B5          
	JSR $A088		; A084  20 88 A0       
B7A087:
	RTS			; A087  60             

; Name	:
; X	:
	STX $00			; A088  86 00          
	JSR $FCD4		; A08A  20 D4 FC	Some calcuration
	LDX $00			; A08D  A6 00          
	LDA $6345,X		; A08F  BD 45 63       
	CMP $84			; A092  C5 84          
	BCC B7A0C7		; A094  90 31          
	LDA #$09		; A096  A9 09          
	STA $84			; A098  85 84          
	JSR $FCE0		; A09A  20 E0 FC       
	INC $84			; A09D  E6 84          
	LDX $00			; A09F  A6 00          
	LDA $84			; A0A1  A5 84          
	STA $62B9,X		; A0A3  9D B9 62       
	CLC			; A0A6  18             
	ADC $62CD,X		; A0A7  7D CD 62       
	STA $62CD,X		; A0AA  9D CD 62       
	LDA $F923,X		; A0AD  BD 23 F9       
	STA $00			; A0B0  85 00          
	LDX $95			; A0B2  A6 95          
	LDA $6219,X		; A0B4  BD 19 62       
	TAX			; A0B7  AA             
	LDA $F91A,X		; A0B8  BD 1A F9       
	CLC			; A0BB  18             
	ADC $00			; A0BC  65 00          
	STA $96			; A0BE  85 96          
	LDA $84			; A0C0  A5 84          
	STA $99			; A0C2  85 99          
	JSR $A0C8		; A0C4  20 C8 A0       
B7A0C7:
	RTS			; A0C7  60             

; Name	:
; Marks	: +$14 = string table address
	LDA $91			; A0C8  A5 91          
	PHA			; A0CA  48             
	LDA #$09		; A0CB  A9 09          
	STA $91			; A0CD  85 91          
	LDA #$E3		; A0CF  A9 E3          
	STA $14			; A0D1  85 14          
	LDA #$A0		; A0D3  A9 A0          
	STA $15			; A0D5  85 15		07/A0E3
	DEC $95			; A0D7  C6 95          
	JSR $E438		; A0D9  20 38 E4	Write string to buffer
	JSR $E52F		; A0DC  20 2F E5       
	PLA			; A0DF  68             
	STA $91			; A0E0  85 91          
	RTS			; A0E2  60             

;$A0E3 - data block = string table, 00h-7Fh : fixed word, 80h-FFh : variable word
.byte $f6,$03,$f5,$04,$fe,$21,$0b,$0d,$fe,$1f,$f4,$20,$ff

;$A0F0
.byte $bd,$23,$f9,$85,$00,$a6,$95,$bd,$19,$62,$aa,$bd,$1a,$f9,$18,$65
;$A100
.byte $00,$85,$96,$a9,$14,$85,$14,$a9,$a1,$85,$15,$c6,$95

;	LDA #$14		; A103
;	STA $14			; A105
;	LDA #$A1		; A107			07/A114
;	STA $15			; A109
;	DEC $95			; A10B
;	JSR $E438		; A10D
.byte $20,$38,$e4
.byte $20,$2f,$e5,$60

;$A114 - data block = string table
.byte $f6,$03,$f5,$03,$fe,$22,$04,$23,$ff

;$A11D
.byte $bd,$23,$f9
.byte $85,$00,$a6,$95,$bd,$19,$62,$aa,$bd,$1a,$f9,$18,$65,$00,$85,$96
.byte $a9,$41,$85,$14,$a9,$a1,$85,$15,$c6,$95

;	LDA #$41		; A130  A9 41          
;	STA $14			; A132  85 14          
;	LDA #$A1		; A134  A9 A1          
;	STA $15			; A136  85 15		07/A141
;	DEC $95			; A138  C6 95          
;	JSR $E438		; A13A
.byte $20,$38,$e4,$20,$2f,$e5
.byte $60

;$A141 - data block = string table
.byte $f6,$03,$f5,$03,$fe,$24,$04,$23,$ff

;$A14A
.byte $90,$01,$60,$00,$04,$08
.byte $0c,$00,$40,$44,$48,$4c,$04,$00,$04,$08,$0c,$08,$40,$44,$48,$4c
.byte $0c,$00,$04,$08,$0c,$40,$40,$44,$48,$4c,$44,$00,$04,$08,$0c,$48
.byte $40,$44,$48,$4c,$4c,$4c,$61,$62,$62,$62,$62,$62,$62,$62,$62,$62
.byte $62,$63,$47,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$48,$47,$20
.byte $75,$93,$72,$6f,$77,$98,$72,$79,$20,$48,$47,$20,$20,$20,$20,$20
.byte $20,$20,$20,$20,$20,$48,$47,$20,$8c,$82,$73,$86,$80,$80,$76,$74
.byte $20,$48,$47,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$48,$47,$20
.byte $84,$86,$76,$78,$20,$8f,$93,$9a,$20,$48,$47,$20,$20,$20,$20,$20
.byte $20,$20,$20,$20,$20,$48,$47,$20,$20,$83,$6f,$80,$72,$7c,$9b,$20
.byte $20,$48,$65,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$66,$c0,$c1
.byte $c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7
;$A200
.byte $d8,$d9,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$f0,$f1,$f2,$f3
.byte $f4,$f5,$f6,$f7,$f8,$f9,$ca,$cb,$cc,$cd,$ce,$cf,$ea,$eb,$ec,$ed
.byte $da,$db,$dc,$dd,$de,$df,$fa,$fb,$fc,$fd,$00,$00,$00,$00,$55,$55
.byte $55,$55,$00,$00,$00,$00,$55,$55,$55,$55,$00,$00,$cc,$ff,$ff,$77
.byte $55,$55,$00,$00,$cc,$ff,$ff,$77,$55,$55,$00,$00,$88,$aa,$aa,$66
.byte $55,$55,$00,$00,$88,$aa,$aa,$66,$55,$55,$00,$00,$88,$aa,$aa,$66
.byte $55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$61,$62,$62,$62,$62,$62
.byte $62,$62,$62,$62,$62,$63,$47,$20,$20,$20,$20,$de,$20,$de,$20,$20
.byte $20,$48,$47,$20,$20,$7f,$9d,$76,$72,$76,$78,$20,$20,$48,$47,$20
.byte $20,$de,$20,$de,$20,$20,$20,$20,$20,$48,$47,$7a,$73,$79,$77,$76
.byte $9c,$3a,$20,$20,$20,$48,$47,$20,$20,$20,$20,$20,$20,$20,$20,$30
.byte $5c,$48,$47,$de,$20,$de,$20,$de,$20,$20,$20,$20,$20,$48,$47,$8e
.byte $73,$77,$6e,$76,$9c,$3a,$20,$20,$20,$48,$47,$20,$20,$20,$20,$20
.byte $20,$20,$20,$30,$5c,$48,$65,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$4a,$4a
.byte $4a,$66,$ad,$13,$62,$0a,$0a,$38,$e9,$04,$aa,$a0,$00,$98,$99,$4c
.byte $04,$bd,$90,$04,$99,$d1,$00,$bd,$a0,$04,$99,$d5,$00,$e8,$c8,$c0
;$A300
.byte $04,$90,$ea,$20,$dd,$a7,$ad,$4d,$04,$8d,$cf,$61,$ad,$4e,$04,$8d
.byte $d0,$61,$ad,$4f,$04,$8d,$d1,$61,$ad,$4c,$04,$8d,$d2,$61,$60,$a2
.byte $0f,$86,$01,$20,$d3,$f4,$a9,$00,$9d,$90,$04,$9d,$a0,$04,$bd,$59
.byte $63,$29,$10,$d0,$36,$bd,$59,$63,$29,$40,$f0,$2f,$bd,$e9,$63,$85
.byte $16,$bd,$d9,$63,$20,$6f,$a3,$bd,$a9,$63,$85,$16,$bd,$99,$63,$20
.byte $6f,$a3,$a9,$00,$85,$17,$bd,$79,$63,$20,$6d,$c6,$a6,$01,$20,$7b
.byte $a3,$a9,$05,$85,$16,$bd,$b9,$63,$20,$6f,$a3,$ca,$10,$b3,$60,$20
.byte $6d,$c6,$85,$18,$20,$ca,$f7,$a6,$01,$a5,$16,$18,$7d,$90,$04,$9d
.byte $90,$04,$a5,$17,$7d,$a0,$04,$9d,$a0,$04,$60,$a9,$04,$85,$00,$a5
.byte $92,$0a,$0a,$aa,$bd,$32,$d8,$30,$10,$a8,$b9,$a3,$62,$f0,$05,$cd
.byte $13,$62,$d0,$07,$e8,$c6,$00,$d0,$eb,$18,$60,$38,$60,$a9,$04,$85
.byte $00,$a5,$92,$0a,$0a,$aa,$bd,$32,$d8,$30,$0e,$a8,$b9,$a3,$62,$cd
.byte $13,$62,$d0,$07,$e8,$c6,$00,$d0,$ed,$18,$60,$38,$60,$8a,$48,$98
.byte $48,$a9,$00,$85,$07,$a6,$94,$bd,$59,$63,$29,$10,$d0,$07,$bd,$59
.byte $63,$29,$40,$d0,$17,$a6,$92,$bd,$a3,$62,$cd,$13,$62,$f0,$03,$4c
.byte $51,$a5,$bd,$4b,$62,$29,$20,$f0,$03,$4c,$51,$a5,$20,$8c,$a7,$90
;$A400
.byte $03,$4c,$51,$a5,$20,$58,$a5,$a6,$92,$bd,$77,$62,$85,$18,$20,$ca
.byte $f7,$a5,$16,$85,$18,$a5,$17,$85,$19,$a9,$4b,$85,$16,$a9,$00,$85
.byte $17,$20,$0c,$f8,$a5,$18,$18,$65,$07,$85,$07,$a2,$0f,$a9,$00,$85
.byte $02,$85,$03,$85,$04,$85,$05,$bd,$69,$63,$c5,$92,$d0,$36,$20,$fe
.byte $cd,$90,$1b,$bd,$59,$63,$10,$2c,$29,$10,$d0,$28,$bd,$90,$04,$18
.byte $65,$02,$85,$02,$bd,$a0,$04,$65,$03,$85,$03,$4c,$74,$a4,$bd,$59
.byte $63,$29,$10,$d0,$0f,$bd,$90,$04,$18,$65,$04,$85,$04,$bd,$a0,$04
.byte $65,$05,$85,$05,$ca,$10,$c0,$a5,$02,$85,$18,$a5,$03,$85,$19,$a9
.byte $80,$85,$16,$a9,$00,$85,$17,$20,$0c,$f8,$a5,$07,$38,$e5,$18,$b0
.byte $02,$a9,$00,$85,$07,$a5,$05,$18,$65,$07,$85,$07,$20,$23,$ce,$a0
.byte $03,$a9,$00,$18,$79,$58,$04,$88,$10,$f9,$c9,$00,$f0,$10,$a5,$06
.byte $f0,$03,$4c,$51,$a5,$a9,$00,$85,$07,$d0,$03,$4c,$51,$a5,$a6,$92
.byte $bd,$a3,$62,$cd,$13,$62,$d0,$03,$4c,$51,$a5,$a4,$94,$b9,$e9,$63
.byte $c9,$c8,$b0,$37,$85,$16,$a9,$04,$85,$84,$20,$e0,$fc,$a5,$84,$85
.byte $18,$20,$ca,$f7,$a5,$16,$85,$18,$a5,$17,$85,$19,$a9,$0a,$85,$16
.byte $a9,$00,$85,$17,$20,$0c,$f8,$a5,$18,$a6,$92,$dd,$8d,$62,$b0,$0b
;$A500
.byte $a5,$07,$38,$e9,$1e,$b0,$02,$a9,$00,$85,$07,$a4,$94,$b9,$e9,$63
.byte $c9,$3c,$90,$11,$4a,$4a,$dd,$8d,$62,$90,$0a,$a5,$07,$18,$69,$1e
.byte $85,$07,$4c,$51,$a5,$b9,$e9,$63,$c9,$50,$90,$10,$4a,$dd,$8d,$62
.byte $90,$0a,$a5,$07,$18,$69,$14,$85,$07,$4c,$51,$a5,$b9,$e9,$63,$c9
.byte $64,$90,$0e,$bd,$8d,$62,$c9,$64,$b0,$07,$a5,$07,$18,$69,$0a,$85
.byte $07,$68,$a8,$68,$aa,$a5,$07,$60,$a9,$00,$85,$09,$8d,$dd,$61,$20
.byte $72,$a6,$a6,$92,$bd,$a3,$62,$f0,$35,$cd,$13,$62,$d0,$4b,$20,$8b
.byte $a3,$90,$0d,$c6,$09,$a9,$a0,$a6,$08,$18,$7d,$c6,$a5,$4c,$c1,$a5
.byte $20,$ad,$a3,$b0,$0e,$ce,$dd,$61,$a9,$40,$a6,$08,$18,$7d,$df,$a5
.byte $4c,$c1,$a5,$a9,$7a,$a6,$08,$18,$7d,$da,$a5,$4c,$c1,$a5,$20,$8b
.byte $a3,$90,$0b,$a9,$94,$a6,$08,$18,$7d,$d0,$a5,$4c,$c1,$a5,$a9,$8e
.byte $a6,$08,$18,$7d,$d5,$a5,$4c,$c1,$a5,$a9,$9e,$a6,$08,$18,$7d,$cb
.byte $a5,$85,$07,$85,$16,$60,$28,$24,$1c,$14,$0c,$28,$28,$20,$18,$14
.byte $28,$28,$18,$0f,$0d,$28,$28,$14,$0c,$0c,$0f,$1e,$1e,$10,$0b,$00
.byte $04,$06,$08,$0a,$a0,$04,$a9,$00,$99,$d3,$61,$99,$d8,$61,$88,$10
.byte $f7,$a6,$94,$bd,$69,$63,$85,$92,$85,$a6,$8d,$d8,$61,$aa,$a9,$00
;$A600
.byte $85,$0e,$bd,$a3,$62,$cd,$13,$62,$d0,$02,$c6,$0e,$20,$cd,$a3,$8d
.byte $d3,$61,$ad,$dd,$61,$f0,$05,$a9,$00,$8d,$d3,$61,$a0,$00,$a5,$92
.byte $0a,$0a,$aa,$86,$0f,$bd,$32,$d8,$30,$24,$85,$92,$85,$a6,$aa,$bd
.byte $a3,$62,$cd,$13,$62,$f0,$04,$a5,$0e,$f0,$0b,$a5,$92,$99,$d9,$61
.byte $20,$cd,$a3,$99,$d4,$61,$a6,$0f,$e8,$c8,$c0,$04,$90,$d5,$20,$52
.byte $a6,$60,$a2,$00,$a0,$01,$b9,$d8,$61,$f0,$0c,$bd,$d3,$61,$d9,$d3
.byte $61,$90,$02,$b0,$02,$98,$aa,$c8,$c0,$05,$90,$ea,$bd,$d8,$61,$85
.byte $a6,$60,$98,$48,$ad,$13,$62,$0a,$a8,$b9,$8a,$a6,$85,$10,$b9,$8b
.byte $a6,$85,$11,$a4,$92,$b1,$10,$85,$08,$68,$a8,$60,$94,$a6,$aa,$a6
.byte $c0,$a6,$d6,$a6,$00,$04,$03,$04,$04,$03,$04,$00,$01,$04,$04,$02
.byte $02,$04,$04,$03,$04,$04,$04,$04,$03,$04,$00,$04,$03,$00,$02,$03
.byte $04,$04,$04,$02,$02,$04,$04,$01,$04,$04,$04,$04,$03,$03,$04,$04
.byte $00,$00,$01,$04,$03,$04,$04,$04,$03,$02,$04,$03,$02,$03,$04,$04
.byte $04,$04,$04,$03,$03,$02,$00,$04,$04,$04,$03,$01,$00,$04,$03,$04
.byte $02,$02,$03,$03,$04,$03,$03,$02,$03,$04,$04,$04,$a6,$94,$bd,$59
.byte $63,$29,$40,$f0,$52,$bd,$59,$63,$29,$10,$d0,$42,$a5,$a4,$f0,$3e
;$A700
.byte $c9,$80,$f0,$1f,$20,$48,$a7,$20,$15,$d0,$20,$4c,$d0,$20,$83,$a8
.byte $20,$46,$ce,$ad,$64,$05,$d0,$0a,$a9,$00,$85,$92,$8d,$60,$05,$20
.byte $d0,$d4,$60,$20,$84,$d0,$20,$a3,$a8,$20,$46,$ce,$a5,$9b,$f0,$0d
.byte $a9,$00,$85,$92,$8d,$60,$05,$20,$d0,$d4,$20,$c1,$a8,$60,$a5,$a5
.byte $c5,$a6,$f0,$03,$20,$43,$a8,$60,$a2,$0f,$a9,$ff,$85,$01,$85,$02
.byte $85,$03,$bd,$69,$63,$c5,$a6,$d0,$2b,$20,$fe,$cd,$b0,$26,$bd,$59
.byte $63,$29,$10,$d0,$1f,$bd,$59,$63,$29,$40,$f0,$18,$a5,$02,$dd,$90
.byte $04,$a5,$03,$fd,$a0,$04,$90,$0c,$86,$01,$bd,$90,$04,$85,$02,$bd
.byte $a0,$04,$85,$03,$ca,$10,$cb,$a5,$01,$85,$ad,$60,$a2,$0f,$a9,$00
.byte $85,$01,$85,$02,$85,$03,$bd,$69,$63,$c5,$92,$d0,$2b,$20,$fe,$cd
.byte $b0,$26,$bd,$59,$63,$29,$10,$d0,$1f,$bd,$59,$63,$29,$40,$f0,$18
.byte $a5,$02,$dd,$90,$04,$a5,$03,$fd,$a0,$04,$b0,$0c,$86,$01,$bd,$90
.byte $04,$85,$02,$bd,$a0,$04,$85,$03,$ca,$10,$cb,$a6,$94,$bd,$90,$04
.byte $c5,$02,$bd,$a0,$04,$e5,$03,$b0,$02,$38,$60,$18,$60,$a2,$00,$8a
.byte $a8,$c8,$b5,$d5,$d9,$d5,$00,$90,$09,$d0,$2d,$b5,$d1,$d9,$d1,$00
.byte $b0,$26,$b5,$d1,$48,$b9,$d1,$00,$95,$d1,$68,$99,$d1,$00,$b5,$d5
;$A800
.byte $48,$b9,$d5,$00,$95,$d5,$68,$99,$d5,$00,$bd,$4c,$04,$48,$b9,$4c
.byte $04,$9d,$4c,$04,$68,$99,$4c,$04,$c8,$c0,$04,$90,$c5,$e8,$e0,$03
.byte $90,$bd,$60,$20,$1f,$a3,$20,$ef,$f4,$ad,$13,$62,$0a,$0a,$aa,$ca
.byte $a0,$04,$bd,$90,$04,$9d,$f9,$63,$bd,$a0,$04,$9d,$09,$64,$ca,$88
.byte $d0,$f0,$60,$a6,$93,$bd,$59,$63,$29,$10,$f0,$0b,$a9,$73,$85,$14
.byte $a9,$a8,$85,$15,$4c,$5f,$a8,$a9,$66,$85,$14,$a9,$a8,$85,$15

;	LDA #$66		; A857  A9 66          
;	STA $14			; A859  85 14          
;	LDA #$A8		; A85B  A9 A8          
;	STA $15			; A85D  85 15		07/A866
;	JSR $E438		; A85F
.byte $20
.byte $38,$e4,$20,$2f,$e5,$60

;$A866 - data block = string table
.byte $fd,$03,$01,$fc,$02,$04,$fe,$fb,$06,$07
.byte $0b,$0d,$ff

;$A873
.byte $fd,$03,$01,$fc,$02,$04,$fe,$f3,$14,$fb,$06,$fe,$25
.byte $0b,$0d,$ff,$a9,$92,$85,$14,$a9,$a8,$85,$15

;	LDA #$92		; A883  A9 92          
;	STA $14			; A885  85 14          
;	LDA #$A8		; A887  A9 A8          
;	STA $15			; A889  85 15		07/A892
;	JSR $E438		; A88B
.byte $20,$38,$e4,$20,$2f
.byte $e5,$60

;$A892 - data block = string table
.byte $fd,$03,$01,$fc,$02,$04,$fe,$fa,$03,$01,$f9,$02,$05,$08
.byte $0b,$0d,$ff

;$A9A3
.byte $a9,$b2,$85,$14,$a9,$a8,$85,$15

;	LDA #$B2		; A8A3  A9 B2          
;	STA $14			; A8A5  85 14          
;	LDA #$A8		; A8A7  A9 A8          
;	STA $15			; A8A9  85 15		07/A8B2
;	JSR $E438		; A8AB
.byte $20,$38,$e4,$20,$2f
.byte $e5,$60

;$ABB2 - data block = string table
.byte $fd,$03,$01,$fc,$02,$04,$fe,$fa,$03,$fb,$05,$08,$0b,$0d
.byte $ff

;$ABC1
.byte $a9,$d0,$85,$14,$a9,$a8,$85,$15

;	LDA #$D0		; A8C1  A9 D0          
;	STA $14			; A8C3  85 14          
;	LDA #$A8		; A8C5  A9 A8          
;	STA $15			; A8C7  85 15		07/A8D0
;	JSR $E438		; A8C9
.byte $20,$38,$e4,$20,$2f,$e5,$60

;$A8D0 - data block = string table
.byte $fd,$03,$01,$fc,$02,$04,$fe,$fa,$03,$fb,$05,$09,$0b,$0d,$ff

;$A8DF
.byte $a6
.byte $a5,$e4,$a6,$f0,$5b,$e0,$0e,$b0,$22,$a9,$00,$8d,$60,$05,$bd,$6f
.byte $e0,$8d,$0a,$62,$bd,$85,$e0,$8d,$0c,$62,$a6,$a6,$bd,$6f,$e0,$8d
;$A900
.byte $06,$62,$bd,$85,$e0,$8d,$08,$62,$4c,$2a,$a9,$a9,$ff,$8d,$60,$05
.byte $bd,$9b,$e0,$8d,$0a,$62,$bd,$b1,$e0,$8d,$0c,$62,$a6,$a6,$bd,$9b
.byte $e0,$8d,$06,$62,$bd,$b1,$e0,$8d,$08,$62,$20,$d0,$d4,$a6,$94,$bd
.byte $79,$63,$38,$e9,$2a,$85,$8a,$20,$bd,$d0,$20,$72,$e6,$20,$5c,$d1
.byte $60,$a9,$00,$a0,$02,$99,$de,$61,$88,$10,$fa,$a0,$03,$99,$e1,$61
.byte $99,$e5,$61,$99,$e9,$61,$88,$10,$f4,$60,$ad,$13,$62,$0a,$0a,$38
.byte $e9,$04,$85,$9a,$a6,$9a,$86,$94,$a6,$94,$bd,$59,$63,$29,$20,$d0
.byte $2a,$bd,$59,$63,$29,$08,$f0,$23,$bd,$79,$63,$f0,$1e,$20,$35,$c6
.byte $a6,$94,$38,$fd,$89,$63,$f0,$13,$85,$01,$bd,$79,$63,$20,$43,$c6
.byte $85,$a0,$20,$a4,$a9,$7d,$89,$63,$9d,$89,$63,$e6,$94,$a5,$94,$29
.byte $03,$d0,$c5,$60,$a9,$00,$85,$a1,$85,$a2,$a8,$20,$f0,$fb,$90,$08
.byte $20,$0e,$fc,$c8,$c6,$01,$d0,$f3,$a6,$94,$18,$98,$60,$a6,$9a,$86
.byte $94,$a6,$94,$bd,$59,$63,$29,$20,$d0,$38,$bd,$59,$63,$29,$08,$f0
.byte $31,$bd,$b9,$63,$f0,$2c,$20,$35,$c6,$a6,$94,$38,$fd,$c9,$63,$f0
.byte $21,$85,$01,$bd,$b9,$63,$20,$43,$c6,$85,$a0,$20,$0b,$aa,$a5,$94
.byte $29,$03,$aa,$a5,$1a,$9d,$e1,$61,$a5,$1b,$9d,$e5,$61,$a5,$1c,$9d
;$AA00
.byte $e9,$61,$e6,$94,$a5,$94,$29,$03,$d0,$b7,$60,$85,$16,$a9,$00,$85
.byte $17,$85,$18,$85,$a1,$85,$a2,$85,$1a,$85,$1b,$85,$1c,$20,$f0,$fb
.byte $90,$0b,$20,$0e,$fc,$20,$4d,$fc,$c6,$01,$d0,$f1,$38,$60,$a5,$9a
.byte $85,$94,$29,$03,$85,$93,$a6,$94,$a4,$93,$8a,$99,$4c,$04,$38,$bd
.byte $f9,$63,$fd,$90,$04,$99,$d1,$00,$bd,$09,$64,$fd,$a0,$04,$99,$d5
.byte $00,$e8,$c8,$c0,$04,$90,$e3,$20,$dd,$a7,$a0,$03,$b9,$4c,$04,$aa
.byte $bd,$59,$63,$99,$50,$04,$88,$10,$f3,$a0,$00,$a2,$00,$b9,$50,$04
.byte $29,$40,$f0,$07,$b9,$4c,$04,$9d,$cf,$61,$e8,$c8,$c0,$04,$90,$ed
.byte $a0,$00,$b9,$50,$04,$29,$40,$d0,$07,$b9,$4c,$04,$9d,$cf,$61,$e8
.byte $c8,$c0,$04,$90,$ed,$60,$ac,$13,$62,$b9,$42,$62,$0a,$0a,$0a,$8d
.byte $ac,$61,$a9,$00,$85,$93,$a4,$93,$b9,$cf,$61,$85,$94,$aa,$bd,$59
.byte $63,$29,$20,$d0,$57,$bd,$59,$63,$29,$08,$f0,$50,$bd,$79,$63,$d0
.byte $03,$20,$15,$ab,$a6,$94,$bd,$a9,$63,$85,$16,$a9,$05,$85,$18,$20
.byte $ca,$f7,$a6,$94,$bd,$e9,$63,$38,$e5,$16,$f0,$2d,$90,$25,$85,$18
.byte $a9,$05,$85,$16,$a9,$00,$85,$17,$85,$19,$20,$0c,$f8,$a5,$16,$f0
.byte $0a,$a9,$05,$38,$e5,$16,$20,$6b,$ab,$e6,$18,$a5,$18,$20,$93,$ab
;$AB00
.byte $4c,$09,$ab,$20,$7a,$f7,$20,$33,$ac,$20,$d3,$ac,$e6,$93,$a5,$93
.byte $c9,$04,$90,$92,$60,$ac,$13,$62,$b9,$2e,$62,$8d,$ad,$61,$ce,$ad
.byte $61,$30,$47,$ad,$ac,$61,$20,$f4,$c4,$ac,$ad,$61,$20,$e5,$c4,$a5
.byte $9b,$8d,$ae,$61,$ad,$ac,$61,$20,$0a,$c5,$ad,$ad,$61,$0a,$a8,$20
.byte $e5,$c4,$a5,$9b,$85,$a0,$c8,$20,$e5,$c4,$a5,$9b,$85,$a1,$a9,$00
.byte $85,$a2,$20,$f0,$fb,$90,$c7,$20,$0e,$fc,$a6,$94,$ad,$ae,$61,$9d
.byte $79,$63,$20,$35,$c6,$a6,$94,$9d,$89,$63,$60,$8d,$c1,$61,$a6,$94
.byte $bd,$d9,$63,$85,$00,$a9,$06,$20,$b0,$ae,$a9,$06,$20,$cd,$ae,$20
.byte $f0,$fb,$90,$0e,$20,$0e,$fc,$a6,$94,$fe,$e9,$63,$ce,$c1,$61,$d0
.byte $ee,$38,$60,$8d,$c1,$61,$a6,$94,$bd,$a9,$63,$f0,$4a,$bd,$99,$63
.byte $85,$00,$a9,$02,$20,$b0,$ae,$a6,$94,$bd,$a9,$63,$85,$16,$a9,$64
.byte $85,$18,$20,$ca,$f7,$a5,$16,$85,$18,$a5,$17,$85,$19,$a9,$28,$85
.byte $16,$a9,$00,$85,$17,$20,$0c,$f8,$a5,$18,$85,$01,$ae,$13,$62,$bd
.byte $32,$62,$18,$ed,$ad,$61,$f0,$42,$85,$16,$a9,$0a,$85,$18,$20,$ca
.byte $f7,$a5,$01,$c5,$16,$b0,$33,$ae,$13,$62,$bd,$32,$62,$8d,$ad,$61
.byte $ce,$ad,$61,$a6,$94,$bd,$a9,$63,$18,$6d,$c1,$61,$8d,$c1,$61,$a9
;$AC00
.byte $00,$9d,$a9,$63,$ad,$ac,$61,$18,$69,$02,$20,$f4,$c4,$ac,$ad,$61
.byte $20,$e5,$c4,$a5,$9b,$a6,$94,$9d,$99,$63,$a9,$02,$20,$cd,$ae,$20
.byte $f0,$fb,$90,$0e,$20,$0e,$fc,$a6,$94,$fe,$a9,$63,$ce,$c1,$61,$d0
.byte $ee,$38,$60,$8d,$c1,$61,$a6,$94,$bd,$e9,$63,$f0,$4a,$bd,$d9,$63
.byte $85,$00,$a9,$06,$20,$b0,$ae,$a6,$94,$bd,$e9,$63,$85,$16,$a9,$64
.byte $85,$18,$20,$ca,$f7,$a5,$16,$85,$18,$a5,$17,$85,$19,$a9,$c8,$85
.byte $16,$a9,$00,$85,$17,$20,$0c,$f8,$a5,$18,$85,$01,$ae,$13,$62,$bd
.byte $3a,$62,$18,$ed,$ad,$61,$f0,$42,$85,$16,$a9,$0a,$85,$18,$20,$ca
.byte $f7,$a5,$01,$c5,$16,$b0,$33,$ae,$13,$62,$bd,$3a,$62,$8d,$ad,$61
.byte $ce,$ad,$61,$a6,$94,$bd,$e9,$63,$18,$6d,$c1,$61,$8d,$c1,$61,$a9
.byte $00,$9d,$e9,$63,$ad,$ac,$61,$18,$69,$06,$20,$f4,$c4,$ac,$ad,$61
.byte $20,$e5,$c4,$a5,$9b,$a6,$94,$9d,$d9,$63,$a9,$06,$20,$cd,$ae,$20
.byte $f0,$fb,$90,$0e,$20,$0e,$fc,$a6,$94,$fe,$e9,$63,$ce,$c1,$61,$d0
.byte $ee,$38,$60,$a6,$94,$bd,$d9,$63,$d0,$24,$ac,$13,$62,$b9,$3a,$62
.byte $a8,$88,$8c,$ad,$61,$ad,$ac,$61,$18,$69,$06,$20,$f4,$c4,$ac,$ad
.byte $61,$20,$e5,$c4,$a5,$9b,$a6,$94,$9d,$d9,$63,$4c,$08,$ad,$bd,$d9
;$AD00
.byte $63,$85,$00,$a9,$06,$20,$b0,$ae,$a9,$06,$20,$cd,$ae,$a5,$a0,$85
.byte $16,$a5,$a1,$85,$17,$a9,$05,$85,$18,$a9,$00,$85,$19,$20,$d0,$f7
.byte $a6,$94,$bd,$99,$63,$d0,$24,$ac,$13,$62,$b9,$32,$62,$a8,$88,$8c
.byte $ad,$61,$ad,$ac,$61,$18,$69,$02,$20,$f4,$c4,$ac,$ad,$61,$20,$e5
.byte $c4,$a5,$9b,$a6,$94,$9d,$99,$63,$4c,$55,$ad,$bd,$99,$63,$85,$00
.byte $a9,$02,$20,$b0,$ae,$a9,$02,$20,$cd,$ae,$a5,$16,$18,$65,$a0,$85
.byte $a0,$a5,$17,$65,$a1,$85,$a1,$20,$f0,$fb,$90,$24,$a6,$94,$bd,$a9
.byte $63,$c9,$28,$b0,$1b,$bd,$e9,$63,$c9,$c4,$b0,$14,$20,$0e,$fc,$a6
.byte $94,$fe,$a9,$63,$bd,$e9,$63,$18,$69,$05,$9d,$e9,$63,$4c,$67,$ad
.byte $60,$a9,$00,$85,$93,$a4,$93,$b9,$cf,$61,$85,$94,$29,$03,$aa,$bd
.byte $e1,$61,$85,$16,$bd,$e5,$61,$85,$17,$bd,$e9,$61,$85,$18,$ae,$13
.byte $62,$bd,$22,$62,$85,$1a,$bd,$26,$62,$85,$1b,$bd,$2a,$62,$85,$1c
.byte $20,$4d,$fc,$ae,$13,$62,$a5,$1a,$9d,$22,$62,$a5,$1b,$9d,$26,$62
.byte $a5,$1c,$9d,$2a,$62,$a6,$94,$bd,$59,$63,$29,$20,$f0,$03,$4c,$a4
.byte $ae,$bd,$59,$63,$29,$08,$d0,$03,$4c,$a4,$ae,$bd,$c9,$63,$f0,$4d
.byte $85,$18,$a9,$64,$85,$16,$20,$ca,$f7,$a5,$16,$85,$18,$a5,$17,$85
;$AE00
.byte $19,$a6,$94,$bd,$b9,$63,$20,$35,$c6,$85,$16,$a9,$00,$85,$17,$20
.byte $0c,$f8,$a5,$18,$85,$01,$a6,$94,$bd,$b9,$63,$85,$00,$a9,$04,$20
.byte $b0,$ae,$ae,$13,$62,$bd,$36,$62,$18,$ed,$ad,$61,$f0,$49,$85,$16
.byte $a9,$0a,$85,$18,$20,$ca,$f7,$a5,$01,$c5,$16,$b0,$3a,$ae,$13,$62
.byte $bd,$36,$62,$8d,$ad,$61,$ce,$ad,$61,$a9,$04,$20,$cd,$ae,$20,$f0
.byte $fb,$90,$24,$20,$0e,$fc,$ad,$ac,$61,$18,$69,$04,$20,$f4,$c4,$ac
.byte $ad,$61,$20,$e5,$c4,$a5,$9b,$a6,$94,$9d,$b9,$63,$20,$35,$c6,$a6
.byte $94,$9d,$c9,$63,$4c,$a4,$ae,$a6,$94,$bd,$b9,$63,$f0,$26,$20,$35
.byte $c6,$a6,$94,$38,$fd,$c9,$63,$f0,$1b,$85,$01,$bd,$b9,$63,$20,$43
.byte $c6,$85,$a0,$a9,$c9,$85,$12,$a9,$63,$85,$13,$20,$a4,$a9,$7d,$c9
.byte $63,$9d,$c9,$63,$e6,$93,$a5,$93,$c9,$04,$b0,$03,$4c,$95,$ad,$60
.byte $18,$6d,$ac,$61,$20,$f4,$c4,$a0,$00,$20,$e5,$c4,$a5,$9b,$30,$07
.byte $c5,$00,$f0,$05,$c8,$d0,$f2,$a0,$00,$8c,$ad,$61,$60,$18,$6d,$ac
.byte $61,$20,$0a,$c5,$ad,$ad,$61,$0a,$a8,$20,$e5,$c4,$a5,$9b,$85,$a0
.byte $c8,$20,$e5,$c4,$a5,$9b,$85,$a1,$a9,$00,$85,$a2,$60,$a9,$04,$20
.byte $11,$af,$b0,$1c,$20,$d3,$f4,$a9,$00,$20,$11,$af,$b0,$12,$20,$d3
;$AF00
.byte $f4,$a9,$06,$20,$11,$af,$b0,$08,$20,$d3,$f4,$a9,$02,$20,$11,$af
.byte $60,$20,$88,$b1,$a4,$03,$20,$d3,$f4,$84,$01,$b1,$10,$8d,$ad,$61
.byte $ce,$ad,$61,$b9,$43,$62,$0a,$0a,$0a,$6d,$bf,$61,$8d,$ac,$61,$20
.byte $f4,$c4,$20,$d3,$f4,$ac,$ad,$61,$20,$e5,$c4,$a5,$9b,$20,$6d,$c6
.byte $a4,$01,$99,$50,$04,$88,$10,$ce,$ac,$13,$62,$a9,$00,$99,$4f,$04
.byte $a0,$03,$a9,$00,$85,$18,$85,$16,$85,$17,$85,$19,$b9,$1a,$62,$30
.byte $0a,$e6,$16,$a5,$18,$18,$79,$50,$04,$85,$18,$88,$10,$ee,$c6,$16
.byte $20,$0c,$f8,$ac,$13,$62,$88,$b1,$10,$8d,$ad,$61,$ce,$ad,$61,$b9
.byte $43,$62,$0a,$0a,$0a,$6d,$bf,$61,$8d,$ac,$61,$20,$f4,$c4,$ac,$ad
.byte $61,$20,$e5,$c4,$a5,$9b,$20,$6d,$c6,$85,$16,$c5,$18,$90,$2c,$a2
.byte $03,$20,$d3,$f4,$bd,$1e,$62,$10,$05,$a9,$00,$9d,$50,$04,$ca,$10
.byte $f0,$a2,$00,$a0,$01,$bd,$50,$04,$d9,$50,$04,$b0,$02,$98,$aa,$c8
.byte $c0,$04,$90,$f1,$a5,$16,$dd,$50,$04,$b0,$07,$20,$f4,$af,$20,$d4
.byte $af,$60,$18,$60,$20,$d3,$f4,$a0,$02,$b9,$de,$61,$99,$a0,$00,$88
.byte $10,$f7,$20,$f0,$fb,$b0,$0b,$20,$d4,$fc,$a5,$84,$c9,$1e,$b0,$02
.byte $38,$60,$18,$60,$20,$d3,$f4,$ac,$13,$62,$88,$b1,$10,$85,$97,$c6
;$B000
.byte $97,$b9,$43,$62,$0a,$0a,$0a,$8d,$ac,$61,$6d,$bf,$61,$4a,$aa,$a5
.byte $97,$dd,$22,$d8,$b0,$62,$20,$d3,$f4,$ad,$ac,$61,$6d,$bf,$61,$20
.byte $20,$c5,$a5,$97,$0a,$a8,$c8,$c8,$20,$e5,$c4,$a5,$9b,$85,$a0,$c8
.byte $20,$e5,$c4,$a5,$9b,$85,$a1,$a9,$00,$85,$a2,$20,$f0,$fb,$90,$38
.byte $20,$d3,$f4,$20,$0e,$fc,$a0,$02,$b9,$a0,$00,$99,$16,$00,$b9,$de
.byte $61,$99,$1a,$00,$88,$10,$f1,$20,$4d,$fc,$a0,$02,$b9,$1a,$00,$99
.byte $de,$61,$88,$10,$f7,$ac,$13,$62,$88,$b1,$10,$18,$69,$01,$91,$10
.byte $a9,$00,$85,$9b,$ee,$b8,$61,$60,$a9,$ff,$85,$9b,$60,$a9,$03,$85
.byte $0a,$20,$a4,$b0,$20,$d9,$b0,$86,$92,$b5,$d1,$f0,$16,$20,$ec,$b0
.byte $a6,$92,$a9,$00,$95,$d1,$20,$d4,$fc,$a5,$84,$c9,$32,$90,$04,$c6
.byte $0a,$d0,$e1,$60,$a9,$ff,$85,$06,$a2,$15,$86,$92,$a9,$00,$95,$d1
.byte $bd,$a3,$62,$cd,$13,$62,$d0,$1b,$bd,$4b,$62,$29,$a0,$d0,$14,$bd
.byte $8d,$62,$c9,$fa,$b0,$0d,$20,$58,$a5,$a5,$09,$f0,$06,$a5,$16,$a6
.byte $92,$95,$d1,$a6,$92,$ca,$d0,$d2,$60,$a2,$00,$a0,$01,$b5,$d1,$d9
.byte $d1,$00,$b0,$02,$98,$aa,$c8,$c0,$16,$90,$f2,$60,$a6,$92,$bd,$8d
.byte $62,$c9,$c7,$90,$08,$a9,$fa,$38,$fd,$8d,$62,$d0,$02,$a9,$32,$85
;$B100
.byte $01,$85,$18,$a9,$0a,$85,$16,$20,$ca,$f7,$a5,$16,$85,$a0,$a5,$17
.byte $85,$a1,$a9,$00,$85,$a2,$20,$f0,$fb,$90,$16,$20,$0e,$fc,$a6,$92
.byte $a5,$01,$18,$7d,$8d,$62,$9d,$8d,$62,$bd,$4b,$62,$09,$80,$9d,$4b
.byte $62,$60,$a9,$ff,$85,$9b,$20,$d4,$af,$b0,$4c,$90,$05,$ad,$b8,$61
.byte $f0,$45,$a9,$00,$8d,$b8,$61,$20,$d3,$f4,$a9,$04,$20,$88,$b1,$20
.byte $f4,$af,$20,$d4,$af,$b0,$30,$20,$d3,$f4,$a9,$00,$20,$88,$b1,$20
.byte $f4,$af,$20,$d4,$af,$b0,$20,$20,$d3,$f4,$a9,$06,$20,$88,$b1,$20
.byte $f4,$af,$20,$d4,$af,$b0,$10,$20,$d3,$f4,$a9,$02,$20,$88,$b1,$20
.byte $f4,$af,$20,$d4,$af,$90,$b6,$60,$8d,$bf,$61,$ad,$bf,$61,$0a,$69
.byte $2f,$85,$10,$a9,$00,$69,$62,$85,$11,$60,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$B200
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
;$B300
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
;$B400
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
;$B500
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
;$B600
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
;$B700
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
;$B800
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
;$B900
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
;$BA00
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
