.include "Constants.inc"

.segment "BANK_0B"

;$A000
.byte $40,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$10,$11,$12,$13
.byte $20,$21,$22,$23,$30,$31,$32,$33,$04,$05,$06,$07,$14,$15,$16,$17
.byte $24,$25,$26,$27,$34,$35,$36,$37,$08,$09,$0a,$0b,$18,$19,$1a,$1b
.byte $28,$29,$2a,$2b,$38,$39,$3a,$3b,$07,$06,$05,$04,$17,$16,$15,$14
.byte $27,$26,$25,$24,$37,$36,$35,$34,$0c,$0d,$ff,$ff,$1c,$1d,$1e,$1f
.byte $2c,$2d,$2e,$2f,$3c,$3d,$3e,$3f,$ff,$ff,$4c,$4d,$ff,$ff,$ff,$5d
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$4e,$4f,$ff,$ff,$ff,$5f
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$5c,$ff,$ff,$ff,$5e
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$40,$41,$42,$43,$50,$51,$52,$53
.byte $60,$61,$62,$63,$70,$71,$72,$73,$44,$45,$46,$47,$54,$55,$56,$57
.byte $64,$65,$66,$67,$74,$75,$76,$77,$48,$49,$4a,$4b,$58,$59,$5a,$5b
.byte $68,$69,$6a,$6b,$78,$79,$7a,$7b,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $6c,$6d,$6e,$6f,$7c,$7d,$7e,$7f,$78,$20,$2b,$f3,$20,$71,$f3,$20
.byte $aa,$f3,$20,$c8,$f3,$a9,$00,$85,$5a,$a2,$00,$a0,$60,$8e,$00,$80
.byte $8c,$01,$80,$84,$5b,$e8,$c8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5c
.byte $e8,$a0,$65,$8e,$00,$80,$8c,$01,$80,$84,$5d,$e8,$c8,$8e,$00,$80
;$A100
.byte $8c,$01,$80,$84,$5e,$a9,$00,$85,$26,$a9,$5b,$85,$10,$a9,$a1,$85
.byte $11,$ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d,$06,$20,$20,$da
.byte $f6,$20,$a9,$87,$a2,$0f,$bd,$4b,$a1,$9d,$c0,$03,$ca,$10,$f7,$a9
.byte $01,$85,$2f,$a9,$00,$85,$72,$a5,$3c,$29,$fc,$85,$3c,$20,$4a,$f3
.byte $a9,$07,$20,$86,$f2,$a5,$72,$f0,$fc,$78,$60,$0f,$07,$17,$30,$0f
.byte $07,$17,$30,$0f,$07,$17,$30,$0f,$07,$17,$30,$fd,$00,$00,$e3,$00
.byte $00,$05,$00,$3d,$41,$a6,$a7,$83,$41,$04,$3d,$5d,$43,$60,$c2,$43
.byte $7c,$08,$43,$43,$60,$43,$43,$60,$5e,$3d,$86,$41,$06,$3d,$00,$00
.byte $41,$a6,$a7,$85,$41,$03,$98,$60,$90,$84,$91,$01,$6c,$83,$43,$03
.byte $60,$43,$88,$87,$41,$05,$a6,$00,$00,$a6,$a7,$8c,$41,$01,$2d,$8d
.byte $41,$05,$a6,$a7,$00,$00,$a7,$43,$41,$01,$72,$43,$42,$07,$42,$74
.byte $44,$42,$43,$72,$2d,$44,$41,$11,$73,$41,$73,$42,$43,$72,$45,$43
.byte $2f,$a7,$a8,$00,$00,$41,$41,$52,$41,$c2,$41,$52,$84,$52,$03,$41
.byte $41,$2d,$c2,$41,$52,$15,$52,$41,$52,$52,$41,$41,$52,$a6,$52,$a8
.byte $a9,$00,$00,$41,$41,$52,$63,$75,$54,$43,$55,$83,$52,$04,$54,$43
.byte $72,$2d,$c2,$41,$52,$0e,$52,$41,$52,$54,$43,$72,$54,$43,$64,$a9
;$A200
.byte $41,$00,$00,$41,$c2,$41,$52,$02,$52,$41,$85,$52,$03,$41,$41,$2d
.byte $c2,$41,$52,$43,$66,$11,$52,$41,$a6,$52,$65,$44,$41,$41,$00,$00
.byte $41,$41,$62,$43,$64,$53,$41,$84,$53,$08,$62,$43,$72,$2d,$41,$62
.byte $43,$64,$43,$76,$0a,$62,$43,$72,$3f,$a9,$53,$41,$41,$00,$00,$8e
.byte $41,$01,$2d,$87,$41,$44,$a6,$84,$41,$03,$00,$00,$3d,$8c,$41,$03
.byte $3d,$2d,$3d,$85,$41,$44,$a6,$84,$41,$01,$3d,$fd,$00,$00,$fd,$00
.byte $00,$fd,$00,$00,$fd,$00,$00,$99,$00,$ff,$a9,$01,$05,$5a,$aa,$a0
.byte $5e,$8e,$00,$80,$8c,$01,$80,$84,$5c,$20,$bd,$f3,$a2,$07,$bd,$b4
.byte $a2,$9d,$d0,$03,$ca,$10,$f7,$a9,$01,$85,$2f,$a9,$00,$85,$00,$a9
.byte $80,$85,$02,$a9,$c8,$85,$03,$a5,$00,$c9,$18,$d0,$05,$a9,$4a,$20
.byte $ee,$f2,$20,$bc,$a2,$e6,$00,$a5,$00,$c9,$19,$90,$ea,$20,$0b,$f5
.byte $20,$f8,$f2,$60,$0f,$0f,$19,$29,$0f,$0f,$27,$29,$20,$bd,$f3,$a9
.byte $00,$85,$09,$a6,$00,$a5,$02,$18,$7d,$e7,$a2,$85,$02,$a5,$03,$18
.byte $7d,$00,$a3,$85,$03,$bd,$19,$a3,$85,$04,$20,$4b,$a3,$a6,$00,$bd
.byte $32,$a3,$aa,$20,$af,$85,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$fc,$00,$00,$00,$00,$00,$00,$00
;$A300
.byte $f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$f8,$fc,$fe,$00,$02
.byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$04,$05,$06
.byte $07,$08,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
.byte $02,$04,$10,$04,$04,$04,$04,$10,$04,$04,$40,$20,$bd,$f3,$a0,$1c
.byte $a9,$ac,$99,$00,$02,$a9,$00,$99,$01,$02,$a9,$00,$99,$02,$02,$99
.byte $03,$02,$88,$88,$88,$88,$10,$e8,$a5,$04,$85,$16,$a9,$2a,$85,$18
.byte $a9,$00,$85,$17,$85,$19,$20,$d0,$f7,$a5,$16,$18,$69,$21,$85,$10
.byte $a5,$17,$69,$a4,$85,$11,$a5,$16,$18,$69,$9b,$85,$12,$a5,$17,$69
.byte $a5,$85,$13,$a2,$20,$a0,$00,$b1,$10,$30,$26,$b9,$f7,$a3,$18,$65
.byte $03,$c9,$ac,$b0,$1c,$9d,$00,$02,$b1,$10,$09,$80,$9d,$01,$02,$b1
.byte $12,$9d,$02,$02,$b9,$cd,$a3,$18,$65,$02,$9d,$03,$02,$e8,$e8,$e8
.byte $e8,$c8,$c0,$2a,$90,$d1,$86,$06,$a9,$01,$85,$2e,$60,$f0,$f8,$00
.byte $08,$10,$18,$f0,$f8,$00,$08,$10,$18,$f0,$f8,$00,$08,$10,$18,$f0
.byte $f8,$00,$08,$10,$18,$f0,$f8,$00,$08,$10,$18,$f0,$f8,$00,$08,$10
.byte $18,$f0,$f8,$00,$08,$10,$18,$d8,$d8,$d8,$d8,$d8,$d8,$e0,$e0,$e0
;$A400
.byte $e0,$e0,$e0,$e8,$e8,$e8,$e8,$e8,$e8,$f0,$f0,$f0,$f0,$f0,$f0,$f8
.byte $f8,$f8,$f8,$f8,$f8,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08
.byte $08,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$00,$01,$02,$03,$ff,$ff,$0e,$0f,$10,$11,$ff,$ff,$1d
.byte $1e,$1f,$20,$ff,$ff,$29,$2a,$2b,$2c,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$04,$05,$06
.byte $07,$ff,$ff,$12,$13,$14,$15,$ff,$ff,$21,$22,$23,$24,$ff,$ff,$2d
.byte $2e,$2f,$30,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$04,$05,$18,$19,$ff,$ff,$12,$13,$14
.byte $15,$ff,$ff,$21,$22,$23,$24,$ff,$ff,$2d,$2e,$2f,$30,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$08,$09,$ff
.byte $ff,$04,$05,$16,$17,$ff,$ff,$12,$13,$14,$15,$ff,$ff,$21,$22,$23
.byte $24,$ff,$ff,$2d,$2e,$2f,$30,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$08,$25,$26,$ff,$04,$05,$31,$32,$33
.byte $ff,$12,$13,$14,$15,$ff,$ff,$21,$22,$23,$24,$ff,$ff,$2d,$2e,$2f
.byte $30,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$A500
.byte $ff,$08,$25,$ff,$ff,$04,$05,$31,$40,$ff,$ff,$12,$13,$14,$47,$ff
.byte $ff,$21,$22,$23,$24,$ff,$ff,$2d,$2e,$2f,$30,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$08,$36,$37,$ff,$04
.byte $05,$31,$39,$3a,$ff,$12,$13,$14,$41,$42,$43,$21,$22,$23,$48,$49
.byte $4a,$2d,$2e,$2f,$30,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$08,$3c,$3d,$ff,$04,$05,$31,$44,$45,$46,$12
.byte $13,$14,$4b,$4c,$4d,$21,$22,$23,$24,$ff,$ff,$2d,$2e,$2f,$30,$ff
.byte $ff,$ff,$ff,$ff,$0b,$0c,$0d,$ff,$ff,$ff,$1a,$1b,$1c,$ff,$ff,$08
.byte $27,$28,$ff,$04,$05,$31,$34,$35,$ff,$12,$13,$14,$15,$ff,$ff,$21
.byte $22,$23,$24,$ff,$ff,$2d,$2e,$2f,$30,$ff,$ff,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$A600
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01
.byte $01,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$A700
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00
; Name	:
	JSR $F528		; A715	$20 $28 $f5
	JSR $F32B		; A718	$20 $2b $f3
	JSR $F3C8		; A71B	$20 $c8 $f3
	JSR $F346		; A71E	$20 $46 $f3
	JSR $F371		; A721	$20 $71 $f3
	JSR $F536		; A724	$20 $36 $f5	DEBUG - to New + scenario
	LDA #$00		; A727	$a9 $00
;$F729
	STA $26			; A729	$85 $26
	STA $44			; A72B	$85 $44
	STA $6210		; A72D	$8d $10 $62
	LDX #$1F		; A730	$a2 $1f
BBA732:
	LDA $A968,X		; A732	$bd $68 $a9
	STA $03C0,X		; A735	$9d $c0 $03
	DEX			; A738	$ca
	BPL BBA732		; A739	$10 $f7
	LDA #$01		; A73B	$a9 $01
	STA $2F			; A73D	$85 $2f
	LDA PpuStatus_2002	; A73F	$ad $02 $20
	LDA #$20		; A742	$a9 $20
	STA PpuAddr_2006	; A744	$8d $06 $20
	LDA #$00		; A747	$a9 $00
	STA PpuAddr_2006	; A749	$8d $06 $20
	LDA #$D8		; A74C	$a9 $d8
	STA $10			; A74E	$85 $10
	LDA #$A7		; A740	$a9 $a7
	STA $11			; A742	$85 $11
	JSR $F6DA		; A744	$20 $da $f6
	JSR $F34A		; A747	$20 $4a $f3
	JSR $F4DC		; A74A	$20 $dc $f4
	LDA #$09		; A74D	$a9 $09
;$A74F
.byte $20
.byte $86,$f2,$20,$23,$f5,$20,$e0,$fc,$20,$a5,$a7,$a9,$10,$24,$7e,$f0
.byte $0e,$ad,$10,$62,$f0,$ef,$20,$ce,$f2,$ce,$10,$62,$4c,$65,$a7,$a9
.byte $20,$24,$7e,$f0,$11,$ae,$10,$62,$e8,$e0,$0b,$b0,$d8,$8e,$10,$62
.byte $20,$ce,$f2,$4c,$65,$a7,$a9,$09,$24,$7e,$f0,$c9,$20,$d6,$f2,$a9
.byte $00,$8d,$61,$05,$60,$ad,$10,$62,$c9,$0b,$90,$05,$a9,$00,$8d,$10
.byte $62,$ae,$10,$62,$bd,$cd,$a7,$8d,$00,$02,$a9,$01,$8d,$01,$02,$a9
.byte $01,$8d,$02,$02,$a9,$04,$8d,$03,$02,$20,$d0,$f3,$60,$28,$38,$48
.byte $58,$68,$78,$88,$98,$a8,$b8,$c8,$eb,$00,$00,$01,$30,$84,$00,$01
.byte $30,$98,$00,$0c,$96,$ad,$8d,$83,$00,$8e,$82,$89,$ad,$10,$32,$2d
.byte $a2,$00,$07,$1c,$28,$32,$0c,$15,$28,$05,$8c,$00,$03,$43,$32,$45
;$A800
.byte $83,$00,$02,$95,$8c,$8c,$00,$c2,$30,$00,$02,$00,$30,$93,$00,$1d
.byte $0c,$15,$28,$05,$00,$42,$00,$06,$2d,$10,$21,$00,$90,$82,$91,$96
.byte $90,$92,$00,$00,$43,$00,$00,$41,$41,$49,$44,$4d,$42,$a3,$00,$1d
.byte $0c,$15,$28,$05,$00,$43,$00,$0f,$2b,$23,$2d,$8a,$83,$a8,$bc,$88
.byte $8e,$ad,$00,$00,$43,$00,$00,$41,$41,$49,$44,$4d,$48,$8d,$00,$c2
.byte $30,$00,$92,$00,$0e,$0c,$15,$28,$05,$00,$44,$00,$88,$ab,$82,$06
.byte $2d,$10,$21,$86,$00,$09,$43,$00,$00,$41,$41,$4a,$43,$4d,$42,$8e
.byte $00,$01,$30,$94,$00,$0c,$0c,$15,$28,$05,$00,$45,$00,$8f,$a7,$99
.byte $83,$8d,$88,$00,$09,$44,$00,$00,$41,$41,$4a,$42,$4d,$48,$8d,$00
.byte $01,$30,$95,$00,$0e,$0c,$15,$28,$05,$00,$46,$00,$01,$16,$22,$8c
.byte $bc,$95,$82,$86,$00,$09,$43,$00,$00,$41,$41,$4a,$45,$4d,$44,$92
.byte $00,$01,$30,$90,$00,$10,$0c,$15,$28,$05,$00,$47,$00,$89,$bf,$8e
.byte $ad,$00,$01,$08,$0c,$0d,$84,$00,$09,$43,$00,$00,$41,$41,$4a,$44
.byte $4d,$48,$8d,$00,$01,$30,$95,$00,$1d,$0c,$15,$28,$05,$00,$48,$00
.byte $0d,$10,$32,$10,$0d,$14,$00,$22,$23,$28,$32,$00,$00,$43,$00,$00
.byte $41,$41,$4a,$44,$4d,$42,$92,$00,$01,$30,$90,$00,$10,$0c,$15,$28
;$A900
.byte $05,$00,$49,$00,$1b,$32,$2b,$32,$9a,$00,$85,$aa,$90,$84,$00,$09
.byte $45,$00,$00,$41,$41,$4a,$49,$4d,$42,$8c,$00,$01,$30,$96,$00,$10
.byte $0c,$15,$28,$05,$00,$4a,$00,$81,$88,$86,$00,$8b,$86,$84,$a9,$9b
.byte $84,$00,$09,$45,$00,$00,$41,$41,$49,$49,$4d,$42,$8f,$00,$02,$30
.byte $30,$92,$00,$0f,$0c,$15,$28,$05,$42,$41,$00,$85,$ad,$95,$99,$00
.byte $8c,$90,$82,$85,$00,$09,$45,$00,$00,$41,$41,$4a,$41,$4d,$42,$fd
.byte $00,$00,$e3,$00,$00,$01,$00,$ff,$0f,$0f,$20,$30,$0f,$05,$20,$30
.byte $0f,$17,$20,$30,$0f,$1a,$20,$30,$0f,$12,$21,$30,$0f,$16,$24,$30
.byte $0f,$28,$37,$30,$0f,$2a,$3a,$30,$90,$01,$60,$20,$c2,$ac,$a9,$01
.byte $85,$04,$a9,$00,$85,$05,$20,$c8,$f3,$20,$d0,$f3,$20,$23,$f5,$a9
.byte $00,$85,$24,$20,$e0,$fc,$20,$56,$ac,$a9,$08,$24,$7e,$f0,$0c,$20
.byte $2b,$d2,$90,$01,$60,$20,$e6,$f2,$4c,$9f,$a9,$a9,$80,$24,$7e,$f0
.byte $11,$a6,$05,$e0,$03,$b0,$dc,$e6,$05,$20,$ce,$f2,$20,$8a,$ad,$4c
.byte $9f,$a9,$a9,$40,$24,$7e,$f0,$0f,$a6,$05,$f0,$c7,$c6,$05,$20,$ce
.byte $f2,$20,$8a,$ad,$4c,$9f,$a9,$a9,$20,$24,$7e,$f0,$1a,$a6,$04,$e0
.byte $06,$b0,$b0,$ad,$10,$62,$f0,$04,$e0,$03,$b0,$a7,$e6,$04,$20,$ce
;$AA00
.byte $f2,$20,$11,$b1,$4c,$9f,$a9,$a9,$10,$24,$7e,$f0,$18,$a6,$04,$f0
.byte $92,$ad,$10,$62,$f0,$04,$e0,$01,$f0,$89,$c6,$04,$20,$ce,$f2,$20
.byte $11,$b1,$4c,$9f,$a9,$a9,$01,$24,$7e,$f0,$0c,$20,$ce,$f2,$20,$4c
.byte $aa,$20,$b5,$ab,$4c,$a3,$a9,$a9,$02,$24,$7e,$f0,$0c,$20,$ce,$f2
.byte $20,$c5,$aa,$20,$b5,$ab,$4c,$a3,$a9,$4c,$a3,$a9,$a4,$04,$f0,$20
.byte $88,$f0,$2e,$88,$f0,$36,$88,$f0,$39,$88,$f0,$47,$88,$f0,$55,$a6
.byte $05,$bc,$47,$62,$c8,$c0,$05,$90,$02,$a0,$04,$98,$9d,$47,$62,$60
.byte $a6,$05,$bc,$1a,$62,$c8,$c0,$09,$90,$02,$a0,$00,$98,$9d,$1a,$62
.byte $60,$a6,$05,$bd,$1e,$62,$49,$ff,$9d,$1e,$62,$60,$a6,$05,$20,$38
.byte $ab,$60,$a6,$05,$bc,$3f,$62,$c8,$c0,$64,$90,$02,$a0,$63,$98,$9d
.byte $3f,$62,$60,$a6,$05,$bc,$37,$62,$c8,$c0,$0b,$90,$02,$a0,$0a,$98
.byte $9d,$37,$62,$60,$a6,$05,$bc,$43,$62,$c8,$c0,$05,$90,$02,$a0,$00
.byte $98,$9d,$43,$62,$60,$a4,$04,$f0,$20,$88,$f0,$2c,$88,$f0,$34,$88
.byte $f0,$37,$88,$f0,$43,$88,$f0,$51,$a6,$05,$bc,$47,$62,$88,$c0,$01
.byte $b0,$02,$a0,$01,$98,$9d,$47,$62,$60,$a6,$05,$bc,$1a,$62,$88,$10
.byte $02,$a0,$08,$98,$9d,$1a,$62,$60,$a6,$05,$bd,$1e,$62,$49,$ff,$9d
;$AB00
.byte $1e,$62,$60,$a6,$05,$20,$7b,$ab,$60,$a6,$05,$bc,$3f,$62,$88,$10
.byte $02,$a0,$00,$98,$9d,$3f,$62,$60,$a6,$05,$bc,$37,$62,$88,$c0,$01
.byte $b0,$02,$a0,$01,$98,$9d,$37,$62,$60,$a6,$05,$bc,$43,$62,$88,$10
.byte $02,$a0,$04,$98,$9d,$43,$62,$60,$bd,$23,$62,$18,$69,$64,$9d,$23
.byte $62,$90,$03,$fe,$27,$62,$bd,$23,$62,$c9,$10,$bd,$27,$62,$e9,$27
.byte $90,$28,$bc,$2b,$62,$c0,$09,$f0,$17,$c8,$98,$9d,$2b,$62,$38,$bd
.byte $23,$62,$e9,$10,$9d,$23,$62,$bd,$27,$62,$e9,$27,$9d,$27,$62,$60
.byte $a9,$ac,$9d,$23,$62,$a9,$26,$9d,$27,$62,$60,$bd,$23,$62,$38,$e9
.byte $64,$9d,$23,$62,$b0,$08,$bd,$27,$62,$f0,$04,$de,$27,$62,$60,$bd
.byte $2b,$62,$f0,$18,$de,$2b,$62,$de,$27,$62,$a9,$10,$18,$7d,$23,$62
.byte $9d,$23,$62,$a9,$27,$7d,$27,$62,$9d,$27,$62,$60,$a9,$00,$9d,$27
.byte $62,$9d,$23,$62,$60,$20,$82,$f9,$a9,$47,$8d,$00,$03,$8d,$20,$03
.byte $a9,$48,$8d,$1f,$03,$8d,$3f,$03,$a4,$04,$f0,$1d,$88,$f0,$28,$88
.byte $f0,$33,$88,$f0,$3e,$88,$f0,$49,$88,$f0,$54,$20,$ad,$b0,$a9,$22
.byte $85,$2d,$a9,$a0,$85,$2c,$4c,$3a,$ac,$20,$ba,$ae,$a9,$20,$85,$2d
.byte $a9,$60,$85,$2c,$4c,$3a,$ac,$20,$5f,$af,$a9,$20,$85,$2d,$a9,$c0
;$AC00
.byte $85,$2c,$4c,$3a,$ac,$20,$b1,$af,$a9,$21,$85,$2d,$a9,$20,$85,$2c
.byte $4c,$3a,$ac,$20,$e1,$af,$a9,$21,$85,$2d,$a9,$80,$85,$2c,$4c,$3a
.byte $ac,$20,$0f,$b0,$a9,$21,$85,$2d,$a9,$e0,$85,$2c,$4c,$3a,$ac,$20
.byte $38,$b0,$a9,$22,$85,$2d,$a9,$40,$85,$2c,$a9,$00,$85,$10,$a9,$03
.byte $85,$11,$a9,$40,$85,$00,$20,$d2,$f9,$a9,$00,$85,$2a,$a9,$03,$85
.byte $2b,$a9,$40,$85,$32,$60,$a9,$f0,$8d,$00,$02,$8d,$04,$02,$8d,$08
.byte $02,$8d,$0c,$02,$a5,$24,$29,$10,$d0,$4a,$a6,$04,$bd,$b7,$ac,$8d
.byte $00,$02,$8d,$04,$02,$18,$69,$08,$8d,$08,$02,$8d,$0c,$02,$a6,$05
.byte $bd,$be,$ac,$8d,$03,$02,$8d,$0b,$02,$18,$69,$28,$8d,$07,$02,$8d
.byte $0f,$02,$a9,$05,$8d,$01,$02,$8d,$05,$02,$8d,$09,$02,$8d,$0d,$02
.byte $a9,$01,$8d,$02,$02,$09,$40,$8d,$06,$02,$09,$80,$8d,$0e,$02,$29
.byte $bf,$8d,$0a,$02,$4c,$d0,$f3,$18,$30,$48,$60,$78,$90,$a8,$08,$48
.byte $88,$c8
; Name	:
	JSR $F32B		; ACC2	$20 $2b $f3
	JSR $F371		; ACC5	$20 $71 $f3
.if ORIGINAL
	JSR $F536		; ACC8	$20 $36 $f5	DEBUG - to map(start)
.else
	JSR $F536		; ACC8	$20 $36 $f5
.endif
	LDA #$20		; ACCB	$a9 $20
	STA $2D			; ACCD	$85 $2d
;$ACCF
.byte $a9
.byte $40,$85,$2c,$20,$82,$f9,$a9,$62,$a2,$1d,$9d,$21,$03,$ca,$10,$fa
.byte $a9,$5d,$a0,$ad,$20,$09,$fb,$20,$f8,$ca,$20,$ba,$ae,$20,$b6,$ca
.byte $20,$2d,$ae,$20,$5f,$af,$20,$b6,$ca,$20,$2d,$ae,$20,$b1,$af,$20
;$AD00
.byte $b6,$ca,$20,$2d,$ae,$20,$e1,$af,$20,$b6,$ca,$20,$2d,$ae,$20,$0f
.byte $b0,$20,$b6,$ca,$20,$2d,$ae,$20,$38,$b0,$20,$b6,$ca,$20,$2d,$ae
.byte $20,$ad,$b0,$20,$b6,$ca,$20,$59,$ae,$20,$c8,$b0,$ad,$02,$20,$a9
.byte $23,$8d,$06,$20,$a9,$c0,$8d,$06,$20,$a0,$3f,$a2,$00,$bd,$ba,$ad
.byte $8d,$07,$20,$e8,$88,$10,$f6,$a2,$1f,$bd,$6a,$ad,$9d,$c0,$03,$ca
.byte $10,$f7,$a9,$01,$85,$2f,$58,$20,$4a,$f3,$4c,$46,$f3,$00,$03,$20
.byte $61,$27,$16,$2f,$16,$37,$16,$3f,$63,$ff,$0f,$01,$20,$30,$0f,$05
.byte $20,$30,$0f,$17,$20,$30,$0f,$1a,$20,$30,$0f,$12,$21,$30,$0f,$16
.byte $24,$30,$0f,$28,$37,$30,$0f,$2a,$3a,$30,$a0,$2f,$b9,$ba,$ad,$99
.byte $80,$03,$88,$10,$f7,$a5,$05,$0a,$a8,$b9,$b2,$ad,$85,$10,$b9,$b3
.byte $ad,$85,$11,$a0,$0f,$b1,$10,$99,$b0,$03,$88,$10,$f8,$a9,$01,$85
.byte $30,$60,$ea,$ad,$fa,$ad,$0a,$ae,$1a,$ae,$00,$00,$55,$55,$aa,$aa
.byte $ff,$ff,$00,$00,$55,$55,$aa,$aa,$ff,$ff,$00,$00,$55,$55,$aa,$aa
.byte $ff,$ff,$00,$00,$55,$55,$aa,$aa,$ff,$ff,$00,$00,$55,$55,$aa,$aa
.byte $ff,$ff,$00,$00,$55,$55,$aa,$aa,$ff,$ff,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55
;$AE00
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$aa,$aa,$aa,$aa,$aa,$aa
.byte $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$90,$01,$60,$a9,$5a,$8d
.byte $07,$20,$a9,$5b,$20,$73,$f2,$a0,$03,$a9,$e4,$8d,$07,$20,$a9,$5b
.byte $20,$70,$f2,$88,$d0,$f3,$a9,$5c,$8d,$07,$20,$18,$a5,$2c,$69,$20
.byte $85,$2c,$a5,$2d,$69,$00,$85,$2d,$60,$a9,$73,$8d,$07,$20,$a9,$75
.byte $20,$73,$f2,$a0,$03,$a9,$e5,$8d,$07,$20,$a9,$75,$20,$70,$f2,$88
.byte $d0,$f3,$a9,$74,$8d,$07,$20,$18,$a5,$2c,$69,$20,$85,$2c,$a5,$2d
.byte $69,$00,$85,$2d,$60,$a9,$8c,$a0,$ae,$4c,$09,$fb,$00,$03,$07,$14
.byte $0f,$14,$17,$14,$27,$14,$2f,$14,$37,$14,$ff,$a6,$01,$bd,$a8,$ae
.byte $85,$10,$bd,$ac,$ae,$85,$11,$60,$01,$09,$11,$19,$03,$03,$03,$03
.byte $00,$06,$0c,$12,$18,$1e,$24,$2a,$30,$36,$20,$85,$ae,$a9,$03,$85
.byte $01,$20,$9b,$ae,$a6,$01,$bd,$1a,$62,$aa,$bd,$b0,$ae,$aa,$a9,$00
.byte $85,$02,$a9,$20,$85,$00,$bd,$f3,$ae,$a4,$02,$91,$10,$bd,$29,$af
.byte $a4,$00,$91,$10,$e6,$00,$e6,$02,$e8,$c8,$c0,$26,$d0,$e8,$c6,$01
.byte $10,$cf,$60,$20,$20,$20,$20,$20,$20,$20,$20,$20,$df,$20,$20,$20
;$AF00
.byte $de,$20,$20,$20,$20,$20,$20,$de,$20,$20,$20,$20,$20,$20,$20,$20
.byte $de,$20,$20,$20,$20,$de,$20,$20,$20,$de,$20,$20,$20,$20,$20,$20
.byte $20,$20,$20,$20,$20,$20,$de,$20,$20,$20,$2d,$2d,$2d,$2d,$20,$20
.byte $9a,$9d,$8e,$73,$20,$20,$bc,$b5,$dd,$20,$20,$c8,$b5,$bc,$b5,$dd
.byte $20,$c3,$a8,$c0,$b0,$dd,$bd,$20,$b4,$b3,$b0,$ba,$20,$b1,$d9,$cb
.byte $b5,$dd,$20,$20,$cb,$b0,$db,$b0,$20,$20,$d7,$b2,$ca,$d9,$20,$20
.byte $85,$ae,$a9,$03,$85,$01,$20,$9b,$ae,$a6,$01,$bd,$1e,$62,$aa,$e8
.byte $bd,$b0,$ae,$aa,$a9,$00,$85,$02,$a9,$20,$85,$00,$bd,$99,$af,$a4
.byte $02,$91,$10,$bd,$a5,$af,$a4,$00,$91,$10,$e6,$00,$e6,$02,$e8,$c8
.byte $c0,$26,$d0,$e8,$c6,$01,$10,$ce,$60,$20,$20,$df,$20,$20,$20,$20
.byte $20,$20,$de,$20,$20,$ba,$dd,$cb,$ad,$b0,$c0,$20,$86,$9d,$79,$9d
.byte $20,$20,$85,$ae,$a9,$03,$85,$01,$20,$9b,$ae,$a6,$01,$bd,$23,$62
.byte $85,$18,$bd,$27,$62,$85,$19,$bd,$2b,$62,$85,$00,$20,$c3,$f8,$a2
.byte $05,$a0,$25,$bd,$50,$04,$91,$10,$88,$ca,$10,$f7,$c6,$01,$10,$d8
.byte $60,$20,$85,$ae,$a9,$03,$85,$01,$20,$9b,$ae,$a6,$01,$bd,$3f,$62
.byte $85,$18,$a9,$00,$85,$19,$20,$84,$f8,$a9,$25,$8d,$55,$04,$a0,$22
;$B000
.byte $b9,$31,$04,$91,$10,$c8,$c0,$25,$d0,$f6,$c6,$01,$10,$da,$60,$20
.byte $85,$ae,$a9,$03,$85,$01,$20,$9b,$ae,$a6,$01,$bd,$37,$62,$85,$18
.byte $a9,$00,$85,$19,$20,$84,$f8,$a0,$22,$b9,$31,$04,$91,$10,$c8,$c0
.byte $24,$d0,$f6,$c6,$01,$10,$df,$60,$20,$85,$ae,$a9,$03,$85,$01,$20
.byte $9b,$ae,$a6,$01,$bd,$43,$62,$aa,$bd,$b0,$ae,$aa,$a9,$00,$85,$02
.byte $a9,$20,$85,$00,$bd,$71,$b0,$a4,$02,$91,$10,$bd,$8f,$b0,$a4,$00
.byte $91,$10,$e6,$00,$e6,$02,$e8,$c8,$c0,$26,$d0,$e8,$c6,$01,$10,$cf
.byte $60,$20,$20,$20,$20,$20,$df,$20,$20,$20,$df,$20,$20,$20,$20,$20
.byte $df,$20,$20,$20,$20,$20,$df,$20,$20,$20,$20,$20,$df,$20,$20,$b5
.byte $b0,$d9,$c0,$b2,$cc,$20,$c0,$b2,$cc,$31,$20,$20,$c0,$b2,$cc,$32
.byte $20,$20,$c0,$b2,$cc,$33,$20,$20,$c0,$b2,$cc,$34,$20,$20,$85,$ae
.byte $a9,$03,$85,$01,$20,$9b,$ae,$a6,$01,$bd,$47,$62,$18,$69,$30,$a0
.byte $23,$91,$10,$c6,$01,$10,$ed,$60,$20,$bf,$fc,$a9,$d6,$85,$10,$a9
.byte $b1,$85,$11,$a9,$05,$85,$12,$a9,$03,$85,$13,$20,$59,$f4,$a9,$25
.byte $85,$12,$a9,$03,$85,$13,$20,$20,$f4,$20,$b6,$ca,$a9,$e5,$85,$10
.byte $a9,$b1,$85,$11,$a9,$05,$85,$12,$a9,$03,$85,$13,$20,$59,$f4,$a9
;$B100
.byte $25,$85,$12,$a9,$03,$85,$13,$20,$20,$f4,$20,$b6,$ca,$20,$9f,$fc
.byte $60,$20,$6d,$f9,$20,$bf,$fc,$a9,$7e,$a0,$b1,$20,$09,$fb,$a6,$04
.byte $bd,$8d,$b1,$85,$10,$bd,$94,$b1,$85,$11,$a9,$05,$85,$12,$a9,$03
.byte $85,$13,$20,$59,$f4,$a9,$25,$85,$12,$a9,$03,$85,$13,$20,$20,$f4
.byte $a6,$04,$bd,$9b,$b1,$85,$10,$bd,$a2,$b1,$85,$11,$a9,$45,$85,$12
.byte $a9,$03,$85,$13,$20,$59,$f4,$a9,$65,$85,$12,$a9,$03,$85,$13,$20
.byte $20,$f4,$a9,$80,$85,$00,$a9,$00,$85,$10,$a9,$03,$85,$11,$20,$d2
.byte $f9,$a9,$23,$85,$2d,$a9,$00,$85,$2c,$a9,$01,$85,$33,$60,$00,$03
.byte $20,$47,$3f,$48,$40,$47,$5f,$48,$60,$47,$7f,$48,$ff,$a9,$d6,$02
.byte $33,$5d,$8b,$b0,$b1,$b1,$b2,$b2,$b2,$b2,$b2,$ba,$e5,$17,$45,$6e
.byte $9b,$c3,$b1,$b1,$b2,$b2,$b2,$b2,$b2,$7a,$73,$93,$78,$31,$20,$7c
.byte $96,$73,$7d,$99,$8a,$8a,$de,$82,$2e,$00,$20,$20,$20,$20,$20,$20
.byte $7e,$de,$9d,$8c,$de,$83,$de,$38,$7c,$6d,$99,$72,$76,$97,$74,$97
.byte $8d,$de,$8f,$7d,$2e,$00,$7a,$73,$93,$78,$32,$20,$7f,$73,$7b,$7d
.byte $99,$8b,$84,$2e,$00,$20,$20,$20,$20,$20,$20,$86,$9d,$79,$de,$9d
.byte $76,$ba,$dd,$cb,$df,$ad,$b0,$c0,$76,$a6,$74,$97,$8d,$de,$8f,$7d
;$B200
.byte $2e,$00,$7a,$73,$93,$78,$33,$20,$7b,$72,$7c,$6e,$86,$93,$6f,$83
.byte $72,$99,$75,$76,$88,$2e,$00,$20,$20,$20,$20,$20,$20,$75,$75,$79
.byte $9a,$8a,$de,$75,$75,$72,$8e,$84,$de,$95,$73,$98,$86,$85,$98,$8f
.byte $7d,$2e,$00,$7a,$73,$93,$78,$34,$20,$ca,$dd,$c3,$de,$a8,$b7,$ac
.byte $af,$cc,$df,$2e,$00,$20,$20,$20,$20,$20,$20,$75,$75,$72,$84,$7e
.byte $9d,$84,$73,$83,$de,$95,$73,$98,$83,$de,$7d,$2e,$00,$7a,$73,$93
.byte $78,$35,$20,$77,$de,$7c,$de,$6d,$82,$98,$6e,$78,$2e,$00,$20,$20
.byte $20,$20,$20,$20,$80,$76,$79,$9a,$8a,$de,$4d,$53,$89,$7e,$72,$7b
.byte $9d,$76,$de,$95,$73,$98,$83,$de,$7d,$2e,$00,$7a,$73,$93,$78,$36
.byte $20,$7e,$72,$7b,$9d,$c0,$b2,$cc,$df,$2e,$00,$20,$20,$20,$20,$20
.byte $20,$35,$7c,$6d,$99,$72,$76,$97,$74,$97,$8d,$de,$8f,$7d,$2e,$00
.byte $7a,$73,$93,$78,$37,$20,$7b,$72,$7c,$6e,$89,$8c,$de,$80,$72,$7d
.byte $73,$2e,$00,$20,$20,$20,$20,$20,$20,$94,$6f,$8a,$df,$98,$75,$75
.byte $79,$9a,$8a,$de,$95,$73,$98,$83,$de,$7d,$2e,$00,$90,$01,$60,$c0
.byte $b3,$f3,$b3,$55,$b5,$7a,$b4,$dc,$b5,$db,$b4,$3d,$b6,$df,$b6,$99
.byte $b7,$38,$b8,$78,$b8,$ce,$b8,$a9,$8b,$25,$3c,$8d,$00,$20,$ad,$02
;$B300
.byte $20,$a9,$3f,$8d,$06,$20,$a9,$00,$8d,$06,$20,$a2,$a0,$20,$64,$f1
.byte $a9,$3f,$8d,$06,$20,$a9,$00,$8d,$06,$20,$8d,$06,$20,$8d,$06,$20
.byte $85,$2f,$a5,$3c,$8d,$00,$20,$60,$a2,$02,$b5,$6f,$95,$75,$49,$ff
.byte $95,$72,$ca,$10,$f5,$a2,$01,$8e,$16,$40,$ca,$8e,$16,$40,$a2,$08
.byte $ad,$16,$40,$4a,$66,$6f,$4a,$66,$71,$ca,$d0,$f4,$a2,$08,$ad,$17
.byte $40,$29,$03,$c9,$01,$66,$70,$ca,$d0,$f4,$a2,$02,$b5,$6f,$35,$72
.byte $95,$72,$ca,$10,$f7,$a5,$70,$29,$f3,$85,$70,$a5,$73,$29,$f3,$85
.byte $73,$a2,$00,$20,$93,$b3,$a2,$01,$20,$93,$b3,$a2,$02,$20,$93,$b3
.byte $a6,$7c,$a5,$72,$29,$0c,$15,$72,$85,$7e,$a5,$6f,$29,$0c,$15,$6f
.byte $85,$7d,$60,$b5,$6f,$f0,$24,$b5,$75,$55,$6f,$29,$f0,$d0,$1c,$f6
.byte $78,$b5,$78,$30,$15,$c9,$06,$90,$11,$a9,$00,$95,$78,$a0,$f0,$a5
.byte $26,$d0,$02,$a0,$ff,$98,$35,$6f,$95,$72,$60,$a9,$fb,$95,$78,$60
.byte $ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$c0,$8d,$06,$20,$a9,$00,$a2
.byte $20,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20
.byte $8d,$07,$20,$8d,$07,$20,$8d,$07,$20,$ca,$d0,$e5,$a9,$00,$85,$37
.byte $4c,$2e,$ec,$a9,$04,$05,$3c,$8d,$00,$20,$ad,$02,$20,$a9,$22,$8d
;$B400
.byte $06,$20,$a9,$e0,$8d,$06,$20,$a9,$76,$8d,$07,$20,$8d,$07,$20,$8d
.byte $07,$20,$8d,$07,$20,$8d,$07,$20,$ad,$02,$20,$a9,$22,$8d,$06,$20
.byte $a9,$cf,$8d,$06,$20,$a9,$77,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20
.byte $8d,$07,$20,$8d,$07,$20,$a5,$3c,$8d,$00,$20,$ad,$02,$20,$a9,$22
.byte $8d,$06,$20,$a9,$c0,$8d,$06,$20,$a9,$70,$8d,$07,$20,$a9,$71,$20
.byte $5b,$f2,$a9,$72,$8d,$07,$20,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9
.byte $80,$8d,$06,$20,$a9,$73,$8d,$07,$20,$a9,$75,$20,$5b,$f2,$a9,$74
.byte $8d,$07,$20,$a9,$04,$85,$37,$4c,$2e,$ec,$ad,$02,$20,$a9,$22,$8d
.byte $06,$20,$a9,$e1,$8d,$06,$20,$a9,$00,$20,$5b,$f2,$ad,$02,$20,$a9
.byte $23,$8d,$06,$20,$a9,$01,$8d,$06,$20,$a9,$00,$20,$5b,$f2,$ad,$02
.byte $20,$a9,$23,$8d,$06,$20,$a9,$21,$8d,$06,$20,$a9,$00,$20,$5b,$f2
.byte $ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$41,$8d,$06,$20,$a9,$00,$20
.byte $5b,$f2,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$61,$8d,$06,$20,$a9
.byte $00,$20,$5b,$f2,$a9,$00,$85,$37,$4c,$2e,$ec,$a9,$22,$85,$2d,$a9
.byte $c0,$85,$2c,$a5,$3c,$8d,$00,$20,$ad,$02,$20,$a5,$2d,$05,$3b,$8d
.byte $06,$20,$a5,$2c,$8d,$06,$20,$a0,$00,$a2,$0e,$20,$b7,$b6,$a9,$05
;$B500
.byte $85,$21,$ad,$02,$20,$a5,$2c,$18,$69,$20,$85,$2c,$a5,$2d,$69,$00
.byte $85,$2d,$05,$3b,$8d,$06,$20,$a5,$2c,$8d,$06,$20,$a2,$0e,$20,$cb
.byte $b6,$c6,$21,$d0,$dd,$ad,$02,$20,$a5,$2c,$18,$69,$20,$85,$2c,$a5
.byte $2d,$69,$00,$85,$2d,$05,$3b,$8d,$06,$20,$a5,$2c,$8d,$06,$20,$a9
.byte $73,$8d,$07,$20,$a9,$75,$20,$5b,$f2,$a9,$74,$8d,$07,$20,$a9,$00
.byte $85,$37,$4c,$2e,$ec,$a9,$04,$05,$3c,$8d,$00,$20,$ad,$02,$20,$a9
.byte $22,$8d,$06,$20,$a9,$f0,$8d,$06,$20,$a9,$76,$8d,$07,$20,$8d,$07
.byte $20,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20,$ad,$02,$20,$a9,$22,$8d
.byte $06,$20,$a9,$ff,$8d,$06,$20,$a9,$77,$8d,$07,$20,$8d,$07,$20,$8d
.byte $07,$20,$8d,$07,$20,$8d,$07,$20,$a5,$3c,$8d,$00,$20,$ad,$02,$20
.byte $a9,$22,$8d,$06,$20,$a9,$d0,$8d,$06,$20,$a9,$70,$8d,$07,$20,$a9
.byte $71,$20,$5b,$f2,$a9,$72,$8d,$07,$20,$ad,$02,$20,$a9,$23,$8d,$06
.byte $20,$a9,$90,$8d,$06,$20,$a9,$73,$8d,$07,$20,$a9,$75,$20,$5b,$f2
.byte $a9,$74,$8d,$07,$20,$a9,$05,$85,$37,$4c,$2e,$ec,$ad,$02,$20,$a9
.byte $22,$8d,$06,$20,$a9,$f1,$8d,$06,$20,$a9,$00,$20,$5b,$f2,$ad,$02
.byte $20,$a9,$23,$8d,$06,$20,$a9,$11,$8d,$06,$20,$a9,$00,$20,$5b,$f2
;$B600
.byte $ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$31,$8d,$06,$20,$a9,$00,$20
.byte $5b,$f2,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$51,$8d,$06,$20,$a9
.byte $00,$20,$5b,$f2,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$71,$8d,$06
.byte $20,$a9,$00,$20,$5b,$f2,$a9,$00,$85,$37,$4c,$2e,$ec,$a9,$22,$85
.byte $2d,$a9,$d0,$85,$2c,$a5,$3c,$8d,$00,$20,$ad,$02,$20,$a5,$2d,$05
.byte $3b,$8d,$06,$20,$a5,$2c,$8d,$06,$20,$a0,$00,$a2,$0e,$20,$b7,$b6
.byte $a9,$05,$85,$21,$ad,$02,$20,$a5,$2c,$18,$69,$20,$85,$2c,$a5,$2d
.byte $69,$00,$85,$2d,$05,$3b,$8d,$06,$20,$a5,$2c,$8d,$06,$20,$a2,$0e
.byte $20,$cb,$b6,$c6,$21,$d0,$dd,$ad,$02,$20,$a5,$2c,$18,$69,$20,$85
.byte $2c,$a5,$2d,$69,$00,$85,$2d,$05,$3b,$8d,$06,$20,$a5,$2c,$8d,$06
.byte $20,$a9,$73,$8d,$07,$20,$a9,$75,$20,$5b,$f2,$a9,$74,$8d,$07,$20
.byte $a9,$00,$85,$37,$4c,$2e,$ec,$a9,$70,$8d,$07,$20,$b1,$2a,$8d,$07
.byte $20,$c8,$ca,$d0,$f7,$a9,$72,$8d,$07,$20,$60,$a9,$76,$8d,$07,$20
.byte $b1,$2a,$8d,$07,$20,$c8,$ca,$d0,$f7,$a9,$77,$8d,$07,$20,$60,$a2
.byte $00,$ad,$02,$20,$a9,$21,$8d,$06,$20,$a9,$a1,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$01,$8d,$06,$20,$20,$8c
;$B700
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$61,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$e1,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$21,$8d,$06,$20,$a9,$b7,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$17,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$77,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$f7,$8d,$06,$20,$20,$8c
.byte $b7,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$ae,$8d,$06,$20,$a0,$05
.byte $20,$8e,$b7,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$0e,$8d,$06,$20
.byte $a0,$05,$20,$8e,$b7,$a9,$00,$85,$37,$4c,$2e,$ec,$a0,$08,$bd,$00
.byte $03,$8d,$07,$20,$e8,$88,$d0,$f6,$60,$ad,$02,$20,$a9,$22,$8d,$06
.byte $20,$a9,$4b,$8d,$06,$20,$ad,$00,$03,$8d,$07,$20,$ad,$02,$20,$a9
.byte $22,$8d,$06,$20,$a9,$8b,$8d,$06,$20,$ad,$01,$03,$8d,$07,$20,$ad
.byte $02,$20,$a9,$22,$8d,$06,$20,$a9,$cb,$8d,$06,$20,$ad,$02,$03,$8d
.byte $07,$20,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$0b,$8d,$06,$20,$ad
.byte $03,$03,$8d,$07,$20,$ad,$02,$20,$a9,$22,$8d,$06,$20,$a9,$54,$8d
.byte $06,$20,$ad,$04,$03,$8d,$07,$20,$ad,$02,$20,$a9,$22,$8d,$06,$20
;$B800
.byte $a9,$94,$8d,$06,$20,$ad,$05,$03,$8d,$07,$20,$ad,$02,$20,$a9,$22
.byte $8d,$06,$20,$a9,$d4,$8d,$06,$20,$ad,$06,$03,$8d,$07,$20,$ad,$02
.byte $20,$a9,$23,$8d,$06,$20,$a9,$14,$8d,$06,$20,$ad,$07,$03,$8d,$07
.byte $20,$a9,$00,$85,$37,$4c,$2e,$ec,$a9,$04,$05,$3c,$8d,$00,$20,$ad
.byte $02,$20,$a9,$23,$8d,$06,$20,$a9,$00,$8d,$06,$20,$ad,$00,$03,$8d
.byte $07,$20,$ad,$01,$03,$8d,$07,$20,$ad,$02,$20,$a9,$23,$8d,$06,$20
.byte $a9,$1f,$8d,$06,$20,$ad,$02,$03,$8d,$07,$20,$ad,$03,$03,$8d,$07
.byte $20,$a9,$00,$85,$37,$4c,$2e,$ec,$a2,$00,$ad,$02,$20,$a9,$21,$8d
.byte $06,$20,$a9,$d5,$8d,$06,$20,$20,$c1,$b8,$ad,$02,$20,$a9,$22,$8d
.byte $06,$20,$a9,$15,$8d,$06,$20,$20,$c1,$b8,$ad,$02,$20,$a9,$22,$8d
.byte $06,$20,$a9,$55,$8d,$06,$20,$20,$c1,$b8,$ad,$02,$20,$a9,$22,$8d
.byte $06,$20,$a9,$95,$8d,$06,$20,$20,$c1,$b8,$a9,$00,$85,$37,$4c,$2e
.byte $ec,$a0,$04,$bd,$00,$03,$8d,$07,$20,$e8,$88,$d0,$f6,$60,$a5,$37
.byte $20,$4e,$ef,$90,$01,$60,$a6,$92,$bd,$a3,$62,$cd,$13,$62,$d0,$07
.byte $bd,$4b,$62,$29,$20,$f0,$04,$20,$e6,$f2,$60,$20,$f3,$ba,$90,$24
.byte $20,$bf,$b9,$a9,$00,$85,$8e,$20,$59,$b9,$20,$32,$b9,$a9,$30,$24
;$B900
.byte $7e,$f0,$0b,$20,$ce,$f2,$a5,$8e,$49,$01,$85,$8e,$10,$e9,$a9,$02
.byte $24,$7e,$f0,$0f,$20,$de,$f2,$a2,$c0,$20,$c9,$fb,$20,$dc,$f4,$20
.byte $ef,$c2,$60,$a9,$01,$24,$7e,$f0,$06,$20,$3f,$ba,$4c,$f7,$b8,$4c
.byte $fa,$b8,$a9,$f0,$8d,$10,$02,$a5,$24,$29,$10,$d0,$17,$a6,$8e,$bd
.byte $57,$b9,$8d,$10,$02,$a9,$38,$8d,$13,$02,$a9,$01,$8d,$11,$02,$a9
.byte $01,$8d,$12,$02,$4c,$d0,$f3,$c7,$d7,$a6,$94,$a5,$8e,$f0,$0d,$bd
.byte $b9,$63,$85,$0f,$bd,$c9,$63,$85,$0e,$4c,$76,$b9,$bd,$79,$63,$85
.byte $0f,$bd,$89,$63,$85,$0e,$a9,$00,$85,$a0,$85,$a1,$85,$a2,$85,$02
.byte $a5,$0f,$f0,$20,$20,$35,$c6,$38,$e5,$0e,$f0,$18,$85,$16,$a5,$0f
.byte $20,$43,$c6,$85,$18,$20,$ca,$f7,$a5,$16,$85,$a0,$a5,$17,$85,$a1
.byte $20,$97,$cd,$60,$a9,$ff,$85,$02,$85,$a2,$30,$f4,$00,$03,$0f,$75
.byte $10,$e8,$1a,$5c,$35,$30,$36,$5c,$2b,$8b,$2c,$96,$2d,$73,$ff,$a9
.byte $ec,$85,$10,$a9,$84,$85,$11,$20,$9f,$f9,$a6,$94,$bd,$79,$63,$20
.byte $7c,$c5,$a9,$d1,$85,$10,$a9,$00,$85,$11,$a9,$23,$85,$12,$a9,$03
.byte $85,$13,$20,$59,$f4,$a9,$31,$85,$12,$a9,$03,$85,$13,$20,$20,$f4
.byte $a6,$94,$bd,$b9,$63,$20,$7c,$c5,$a9,$d1,$85,$10,$a9,$00,$85,$11
;$BA00
.byte $a9,$3f,$85,$12,$a9,$03,$85,$13,$20,$59,$f4,$a9,$4d,$85,$12,$a9
.byte $03,$85,$13,$20,$20,$f4,$20,$f0,$fa,$a9,$40,$85,$8a,$a9,$10,$85
.byte $8c,$a9,$bf,$85,$89,$a9,$00,$85,$8b,$a9,$c0,$85,$88,$20,$4f,$fb
.byte $a2,$00,$a0,$10,$20,$01,$d4,$a9,$01,$85,$2f,$20,$d0,$f3,$60,$a5
.byte $02,$d0,$05,$20,$f0,$fb,$b0,$04,$20,$e6,$f2,$60,$20,$d6,$f2,$a6
.byte $94,$a5,$8e,$f0,$15,$bd,$c9,$63,$85,$0f,$bd,$b9,$63,$20,$35,$c6
.byte $85,$0e,$a6,$94,$9d,$c9,$63,$4c,$7c,$ba,$bd,$89,$63,$85,$0f,$bd
.byte $79,$63,$20,$35,$c6,$85,$0e,$a6,$94,$9d,$89,$63,$a5,$8e,$f0,$0b
.byte $a9,$21,$85,$2d,$a9,$91,$85,$2c,$4c,$93,$ba,$a9,$21,$85,$2d,$a9
.byte $11,$85,$2c,$a9,$50,$85,$2a,$a9,$04,$85,$2b,$a5,$0f,$85,$19,$a5
.byte $0e,$85,$16,$20,$7b,$fd,$20,$b7,$f9,$a9,$08,$85,$32,$20,$d6,$f2
.byte $20,$dc,$f4,$a5,$0f,$85,$18,$a9,$00,$85,$19,$20,$84,$f8,$20,$b7
.byte $f9,$a9,$53,$85,$2a,$a9,$04,$85,$2b,$a5,$8e,$f0,$0b,$a9,$21,$85
.byte $2d,$a9,$9c,$85,$2c,$4c,$e0,$ba,$a9,$21,$85,$2d,$a9,$1c,$85,$2c
.byte $a9,$02,$85,$32,$20,$dc,$f4,$e6,$0f,$a5,$0e,$c5,$0f,$b0,$8d,$20
.byte $0e,$fc,$60,$a6,$94,$bd,$79,$63,$85,$00,$bd,$b9,$63,$85,$01,$05
;$BB00
.byte $00,$f0,$1a,$a5,$00,$20,$35,$c6,$a6,$94,$dd,$89,$63,$d0,$0c,$a5
.byte $01,$20,$35,$c6,$a6,$94,$dd,$c9,$63,$f0,$02,$38,$60,$a9,$40,$85
.byte $10,$a9,$85,$85,$11,$20,$fb,$fa,$a9,$40,$85,$8a,$a9,$d0,$85,$8c
.byte $a9,$bf,$85,$89,$a9,$00,$85,$8b,$a9,$c0,$85,$88,$20,$4f,$fb,$a2
.byte $00,$a0,$10,$20,$01,$d4,$a9,$01,$85,$2f,$20,$d0,$f3,$20,$0b,$f5
.byte $18,$60,$90,$01,$60

; Name	:
	JSR $F3C8		; BB55	$20 $c8 $f3
	JSR $F32B		; BB58	$20 $2b $f3
	JSR $F371		; BB5B	$20 $71 $f3
.if ORIGINAL
	JSR $F536		; BB5E	$20 $36 $f5	DEBUG - to option
.else
	JSR $FF27		; BB5E	$20 $27 $ff
.endif
	LDA #$F0		; BB61	$a9 $f0
;$BB63
.byte $85,$10,$a9,$bc,$85,$11,$ad,$02,$20,$a9,$20,$8d,$06
.byte $20,$a9,$00,$8d,$06,$20,$20,$da,$f6,$20,$ca,$d5,$a9,$01,$8d,$c1
.byte $03,$20,$4a,$f3,$20,$dc,$f4,$a9,$00,$85,$8e,$20,$07,$bc,$a9,$10
.byte $24,$7e,$f0,$0c,$a5,$8e,$f0,$f3,$20,$ce,$f2,$c6,$8e,$4c,$8b,$bb
.byte $a9,$20,$24,$7e,$f0,$0e,$a5,$8e,$c9,$04,$b0,$df,$20,$ce,$f2,$e6
.byte $8e,$4c,$8b,$bb,$a9,$0a,$24,$7e,$f0,$01,$60,$a9,$01,$24,$7e,$f0
.byte $ca,$20,$d6,$f2,$a0,$01,$a6,$8e,$f0,$1c,$a0,$02,$ca,$f0,$17,$a0
.byte $04,$ca,$f0,$12,$a0,$08,$ca,$f0,$0d,$ad,$0f,$62,$49,$01,$29,$01
.byte $8d,$0f,$62,$4c,$8b,$bb,$98,$4d,$11,$62,$8d,$11,$62,$c0,$08,$d0
.byte $9a,$98,$2d,$11,$62,$f0,$08,$a9,$00,$20,$86,$f2,$4c,$8b,$bb,$a9
;$BC00
.byte $04,$8d,$42,$07,$4c,$8b,$bb,$a5,$8e,$c9,$05,$90,$04,$a9,$00,$85
.byte $8e,$a9,$f0,$8d,$00,$02,$a5,$24,$29,$10,$d0,$17,$a6,$8e,$bd,$e3
.byte $bc,$8d,$00,$02,$a9,$01,$8d,$01,$02,$a9,$00,$8d,$02,$02,$a9,$3f
.byte $8d,$03,$02,$a9,$b0,$8d,$04,$02,$8d,$08,$02,$a9,$b8,$8d,$0c,$02
.byte $8d,$10,$02,$a9,$a8,$8d,$07,$02,$8d,$0f,$02,$a9,$b0,$8d,$0b,$02
.byte $8d,$13,$02,$a9,$03,$8d,$06,$02,$8d,$0a,$02,$8d,$0e,$02,$8d,$12
.byte $02,$a2,$09,$ad,$0f,$62,$f0,$02,$a2,$19,$8e,$05,$02,$e8,$8e,$09
.byte $02,$e8,$8e,$0d,$02,$e8,$8e,$11,$02,$ad,$0f,$62,$29,$01,$8d,$0f
.byte $62,$0a,$0a,$aa,$a0,$00,$bd,$e8,$bc,$99,$dc,$03,$e8,$c8,$c0,$04
.byte $90,$f4,$20,$da,$bd,$a0,$00,$a2,$00,$ad,$11,$62,$29,$01,$d0,$01
.byte $e8,$20,$e5,$bd,$a0,$04,$a2,$00,$ad,$11,$62,$29,$02,$d0,$01,$e8
.byte $20,$e5,$bd,$a0,$08,$a2,$00,$ad,$11,$62,$29,$04,$d0,$01,$e8,$20
.byte $02,$be,$a0,$0c,$a2,$00,$ad,$11,$62,$29,$08,$d0,$01,$e8,$20,$1f
.byte $be,$a9,$10,$85,$00,$20,$ca,$f9,$a9,$01,$85,$2e,$85,$2f,$a9,$0b
.byte $4c,$da,$f4,$70,$80,$90,$a0,$b0,$0f,$2a,$3a,$30,$0f,$0c,$21,$30
.byte $fd,$00,$00,$e8,$00,$00,$02,$00,$70,$87,$71,$01,$72,$97,$00,$04
;$BD00
.byte $76,$40,$40,$31,$84,$40,$01,$77,$97,$00,$09,$76,$40,$05,$1c,$0c
.byte $3e,$2d,$40,$77,$97,$00,$01,$73,$87,$75,$01,$74,$e9,$00,$00,$01
.byte $70,$92,$71,$01,$72,$8c,$00,$04,$76,$40,$40,$30,$8f,$40,$01,$77
.byte $8c,$00,$14,$76,$40,$40,$1a,$14,$29,$01,$16,$22,$32,$0c,$3e,$2d
.byte $40,$40,$a0,$a9,$40,$40,$77,$8c,$00,$01,$76,$84,$40,$01,$31,$83
.byte $40,$01,$30,$89,$40,$01,$77,$8c,$00,$0c,$76,$40,$40,$0a,$2d,$1b
.byte $3d,$32,$10,$1a,$14,$29,$83,$40,$05,$a0,$95,$82,$40,$77,$8c,$00
.byte $01,$76,$92,$40,$01,$77,$8c,$00,$07,$76,$40,$40,$9e,$83,$8a,$88
.byte $88,$40,$05,$8d,$a9,$40,$40,$77,$8c,$00,$01,$76,$84,$40,$01,$30
.byte $8d,$40,$01,$77,$8c,$00,$07,$76,$40,$40,$85,$ad,$86,$88,$88,$40
.byte $05,$87,$88,$40,$40,$77,$8c,$00,$01,$76,$88,$40,$01,$31,$89,$40
.byte $01,$77,$8c,$00,$0a,$76,$40,$40,$06,$32,$0f,$29,$10,$02,$1c,$89
.byte $40,$01,$77,$8c,$00,$01,$76,$92,$40,$01,$77,$8c,$00,$01,$73,$92
.byte $75,$01,$74,$fd,$00,$00,$f6,$00,$00,$ff,$a9,$40,$a2,$0f,$9d,$00
.byte $03,$ca,$10,$fa,$60,$8a,$0a,$0a,$aa,$a9,$04,$85,$00,$bd,$fa,$bd
.byte $99,$00,$03,$e8,$c8,$c6,$00,$d0,$f4,$60,$90,$99,$20,$20,$90,$85
;$BE00
.byte $72,$20,$8a,$0a,$0a,$aa,$a9,$04,$85,$00,$bd,$17,$be,$99,$00,$03
.byte $e8,$c8,$c6,$00,$d0,$f4,$60,$7d,$99,$20,$20,$7c,$85,$72,$20,$8a
.byte $0a,$0a,$aa,$a9,$04,$85,$00,$bd,$34,$be,$99,$00,$03,$e8,$c8,$c6
.byte $00,$d0,$f4,$60,$77,$78,$20,$20,$77,$76,$85,$72,$ff,$ff,$ff,$ff
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
