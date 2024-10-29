.include "Constants.inc"

.segment "BANK_0F"

;$E000
.byte $00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$4c,$3c
.byte $00,$4c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$b8,$00
.byte $00,$00,$00,$00,$a4,$00,$b4,$c4,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$58,$00,$00,$00,$00,$00,$2c,$00,$3c,$2c,$00,$00
.byte $d0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$a4,$a4,$b4,$00,$00,$58,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$2c,$4c,$3c,$01,$01,$00,$00,$01,$78
.byte $c8,$a8,$c8,$90,$48,$28,$28,$48,$b8,$78,$38,$78,$a8,$00,$70,$00
.byte $70,$78,$80,$78,$80,$57,$97,$87,$17,$2f,$27,$17,$97,$87,$57,$17
.byte $57,$97,$27,$00,$58,$00,$50,$50,$58,$60,$60,$00,$00,$e8,$00,$00
.byte $08,$00,$00,$00,$e8,$69,$01,$78,$00,$40,$24,$43,$29,$69,$b1,$78
.byte $cd,$00,$00,$80,$00,$00,$20,$00,$00,$00,$3c,$10,$5a,$9e,$00,$6a
.byte $5a,$47,$3d,$52,$3c,$6a,$5c,$00,$00,$00,$04,$00,$00,$00,$00,$04
.byte $00,$02,$02,$02,$04,$08,$04,$02,$08,$04,$08,$04,$06,$09,$19,$07
.byte $17,$0b,$1b,$1a,$2b,$1a,$10,$00,$28,$28,$33,$28,$28,$28,$28,$2c
.byte $29,$2a,$2b,$2e,$2d,$30,$31,$32,$30,$31,$30,$31,$2f,$00,$00,$00
;$E100
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $04,$01,$05,$02,$06,$03,$07,$00,$03,$01,$05,$02,$04,$00,$03,$01
.byte $05,$02,$04,$00,$00,$00,$0b,$00,$00,$00,$00,$04,$01,$02,$03,$06
.byte $05,$08,$09,$0a,$08,$09,$08,$08,$07,$02,$00,$00,$00,$00,$00,$00
.byte $01,$01,$04,$03,$02,$00,$00,$04,$04,$08,$08,$04,$0c,$10,$08,$04
.byte $08,$0f,$09,$19,$30,$0f,$07,$17,$30,$0f,$0b,$1b,$30,$0f,$1a,$2b
.byte $30,$0f,$1a,$10,$30,$a9,$04,$20,$da,$f4,$20,$a8,$e1,$4c,$88,$e1
.byte $a9,$05,$20,$da,$f4,$20,$ab,$e1,$a9,$d1,$85,$2a,$a9,$00,$85,$2b
.byte $a9,$06,$8d,$62,$05,$a0,$00,$20,$b4,$e1,$86,$32,$20,$dc,$f4,$20
.byte $c8,$e1,$ce,$62,$05,$d0,$f0,$60,$a9,$e1,$2c,$a9,$f1,$85,$2c,$a9
.byte $22,$85,$2d,$60,$a2,$ff,$b1,$10,$f0,$09,$20,$e2,$f9,$e8,$95,$d1
.byte $c8,$d0,$f3,$e8,$95,$d1,$c8,$60,$a9,$20,$18,$65,$2c,$85,$2c,$90
.byte $02,$e6,$2d,$60,$20,$0b,$f5,$a9,$01,$20,$da,$f4,$20,$95,$e2,$20
.byte $d3,$f4,$20,$41,$a9,$20,$d3,$f4,$20,$5a,$a9,$20,$d3,$f4,$20,$bd
.byte $a9,$20,$d3,$f4,$20,$2e,$aa,$20,$d3,$f4,$20,$96,$aa,$20,$d3,$f4
;$E200
.byte $20,$91,$ad,$20,$d3,$f4,$20,$ed,$ae,$20,$d3,$f4,$20,$7d,$b0,$20
.byte $d3,$f4,$20,$32,$b1,$20,$d3,$f4,$20,$23,$a8,$20,$d3,$f4,$20,$e2
.byte $a2,$20,$d3,$f4,$20,$78,$c2,$20,$ef,$c2,$20,$0b,$f5,$a2,$00,$8e
.byte $cd,$61,$bd,$cf,$61,$85,$93,$ad,$13,$62,$0a,$0a,$38,$e9,$04,$18
.byte $65,$93,$85,$94,$a6,$94,$bd,$59,$63,$29,$40,$f0,$1e,$20,$e4,$a5
.byte $a6,$94,$bd,$69,$63,$85,$a5,$a5,$a6,$9d,$69,$63,$20,$df,$a8,$20
.byte $d3,$f4,$20,$9c,$d0,$20,$d3,$f4,$20,$ec,$a6,$20,$d3,$f4,$20,$e1
.byte $ce,$20,$d3,$f4,$20,$6e,$f5,$20,$a1,$86,$20,$d3,$f4,$20,$65,$f5
.byte $20,$d3,$f4,$ae,$cd,$61,$e8,$e0,$04,$90,$a4,$20,$d3,$f4,$20,$6e
.byte $f5,$20,$5d,$86,$60,$ae,$13,$62,$bd,$1a,$f9,$85,$01,$a6,$01,$a0
.byte $14,$bd,$b9,$62,$f0,$0e,$e8,$88,$d0,$f7,$20,$d4,$fc,$a5,$84,$c9
.byte $19,$90,$01,$60,$20,$e2,$a2,$20,$34,$e3,$20,$50,$e3,$20,$ea,$e3
.byte $b0,$65,$ae,$4c,$04,$a9,$80,$95,$db,$0d,$4c,$04,$99,$b9,$62,$20
.byte $fc,$e3,$ad,$4c,$04,$aa,$09,$84,$99,$b9,$62,$b5,$db,$09,$40,$95
.byte $db,$20,$ea,$e3,$b0,$41,$84,$00,$20,$fc,$e3,$b0,$3a,$a6,$00,$bd
.byte $1d,$63,$d9,$f5,$62,$90,$17,$20,$0e,$e4,$b0,$2b,$98,$09,$80,$a6
;$E300
.byte $00,$9d,$b9,$62,$a9,$80,$19,$db,$00,$99,$db,$00,$d0,$d3,$84,$00
.byte $20,$21,$e4,$b0,$12,$98,$09,$84,$a6,$00,$9d,$b9,$62,$a9,$40,$19
.byte $db,$00,$99,$db,$00,$d0,$ba,$20,$6e,$f5,$20,$a1,$86,$20,$d3,$f4
.byte $20,$65,$f5,$60,$a6,$01,$a0,$05,$bd,$b9,$62,$10,$05,$a9,$00,$9d
.byte $b9,$62,$e8,$88,$d0,$f2,$a2,$03,$a9,$00,$95,$db,$ca,$10,$fb,$60
.byte $a2,$00,$a4,$01,$94,$d1,$94,$d6,$c8,$e8,$e0,$05,$90,$f6,$a2,$00
.byte $86,$02,$e8,$86,$03,$20,$7a,$e3,$20,$b2,$e3,$a6,$03,$e8,$e0,$05
.byte $90,$f1,$a6,$02,$e8,$e0,$04,$90,$e7,$60,$a6,$02,$b5,$d1,$aa,$a4
.byte $03,$b9,$d1,$00,$a8,$bd,$1d,$63,$d9,$1d,$63,$90,$14,$d0,$22,$bd
.byte $f5,$62,$d9,$f5,$62,$90,$1a,$d0,$08,$bd,$31,$63,$d9,$31,$63,$b0
.byte $10,$a6,$02,$a4,$03,$b5,$d1,$48,$b9,$d1,$00,$95,$d1,$68,$99,$d1
.byte $00,$60,$a6,$02,$b5,$d6,$aa,$a4,$03,$b9,$d6,$00,$a8,$bd,$f5,$62
.byte $d9,$f5,$62,$90,$14,$d0,$22,$bd,$1d,$63,$d9,$1d,$63,$90,$1a,$d0
.byte $08,$bd,$31,$63,$d9,$31,$63,$b0,$10,$a6,$02,$a4,$03,$b5,$d6,$48
.byte $b9,$d6,$00,$95,$d6,$68,$99,$d6,$00,$60,$a2,$00,$b5,$d1,$a8,$b9
.byte $b9,$62,$f0,$06,$e8,$e0,$05,$90,$f3,$60,$18,$60,$a2,$00,$b5,$d6
;$E400
.byte $a8,$b9,$b9,$62,$f0,$06,$e8,$e0,$05,$90,$f3,$60,$18,$60,$a2,$00
.byte $bd,$4c,$04,$a8,$b9,$db,$00,$10,$06,$e8,$e0,$04,$90,$f2,$60,$18
.byte $60,$a2,$00,$bd,$4c,$04,$a8,$b9,$db,$00,$0a,$10,$06,$e8,$e0,$04
.byte $90,$f1,$60,$18,$60,$90,$01,$60,$20,$8c,$e4,$a9,$e0,$85,$12,$a9
.byte $03,$85,$13,$a0,$00,$84,$01,$84,$02,$b1,$14,$10,$1e,$aa,$e8,$f0
.byte $34,$e8,$f0,$06,$20,$9d,$e4,$4c,$6e,$e4,$18,$a5,$12,$69,$24,$85
.byte $12,$a5,$13,$69,$00,$85,$13,$a0,$00,$f0,$13,$20,$36,$c5,$a4,$01
.byte $a2,$00,$b5,$d1,$f0,$08,$91,$12,$c8,$e8,$e0,$1e,$90,$f4,$84,$01
.byte $a4,$02,$c8,$10,$c2,$a4,$01,$a9,$00,$91,$12,$60,$a9,$00,$a0,$23
.byte $99,$e0,$03,$99,$04,$04,$99,$28,$04,$88,$10,$f4,$60,$e8,$f0,$27
.byte $e8,$f0,$2e,$e8,$f0,$37,$e8,$f0,$1a,$e8,$f0,$21,$e8,$f0,$33,$e8
.byte $f0,$4d,$e8,$f0,$59,$e8,$f0,$5e,$e8,$f0,$60,$e8,$f0,$69,$a9,$00
.byte $85,$d1,$60,$a5,$af,$10,$03,$ad,$13,$62,$4c,$5c,$c5,$a5,$ab,$10
.byte $02,$a5,$93,$18,$69,$31,$85,$d1,$a9,$00,$85,$d2,$60,$a5,$a6,$4c
.byte $8c,$c5,$ad,$14,$62,$85,$18,$ad,$15,$62,$85,$19,$20,$8a,$f8,$a0
.byte $03,$b9,$51,$04,$99,$d1,$00,$88,$10,$f7,$a9,$00,$85,$d5,$60,$ad
;$E500
.byte $16,$62,$20,$d4,$f8,$86,$d1,$84,$d2,$a9,$00,$85,$d3,$60,$a5,$95
.byte $18,$69,$01,$4c,$5c,$c5,$a5,$96,$4c,$c2,$c5,$a5,$99,$18,$69,$30
.byte $85,$d1,$a9,$00,$85,$d2,$60,$a5,$a5,$4c,$8c,$c5,$90,$01,$60,$ad
.byte $11,$62,$29,$04,$d0,$01,$60,$20,$69,$e5,$a9,$78,$85,$7f,$a5,$91
.byte $c9,$09,$f0,$03,$20,$e9,$c0,$a5,$7f,$f0,$04,$a5,$7e,$f0,$ef,$20
.byte $c8,$f3,$20,$d0,$f3,$ae,$13,$62,$bd,$1d,$62,$10,$05,$a9,$01,$4c
.byte $da,$f4,$20,$78,$c2,$20,$ef,$c2,$60,$20,$d3,$f4,$a5,$62,$4a,$48
.byte $20,$6e,$f5,$20,$a1,$86,$68,$20,$70,$f5,$20,$6d,$f9,$20,$bf,$fc
.byte $a9,$34,$a0,$e6,$20,$09,$fb,$a9,$e0,$85,$10,$a9,$03,$85,$11,$a9
.byte $07,$85,$12,$a9,$03,$85,$13,$20,$10,$f4,$a9,$04,$85,$10,$a9,$04
.byte $85,$11,$a9,$47,$85,$12,$a9,$03,$85,$13,$20,$10,$f4,$a9,$80,$85
.byte $00,$20,$ca,$f9,$20,$d3,$f4,$a9,$c0,$85,$2c,$a9,$22,$85,$2d,$a9
.byte $01,$85,$33,$20,$dc,$f4,$20,$6d,$f9,$a0,$1f,$a9,$4a,$99,$40,$03
.byte $a9,$00,$99,$60,$03,$88,$10,$f3,$a9,$53,$a0,$e6,$20,$09,$fb,$a9
.byte $28,$85,$10,$a9,$04,$85,$11,$a9,$07,$85,$12,$a9,$03,$85,$13,$20
.byte $10,$f4,$a9,$80,$85,$00,$20,$ca,$f9,$a9,$40,$85,$2c,$a9,$23,$85
;$E600
.byte $2d,$a9,$01,$85,$33,$20,$dc,$f4,$20,$ca,$d5,$a9,$c4,$85,$8a,$a9
.byte $10,$85,$8c,$a9,$bf,$85,$89,$a9,$02,$85,$8b,$a9,$c0,$85,$88,$20
.byte $4f,$fb,$a2,$01,$a0,$18,$20,$01,$d4,$a9,$01,$85,$2f,$20,$d0,$f3
.byte $20,$d0,$f3,$60,$00,$03,$20,$47,$40,$47,$60,$47,$3f,$48,$5f,$48
.byte $7f,$48,$42,$00,$43,$00,$44,$00,$45,$00,$62,$00,$63,$00,$64,$00
.byte $65,$00,$ff,$00,$03,$00,$47,$20,$47,$1f,$48,$3f,$48,$02,$00,$03
.byte $00,$04,$00,$05,$00,$22,$00,$23,$00,$24,$00,$25,$00,$40,$65,$5f
.byte $66,$ff,$a9,$00,$8d,$05,$62,$8d,$07,$62,$8d,$09,$62,$8d,$0b,$62
.byte $ad,$06,$62,$38,$ed,$0a,$62,$20,$76,$f7,$85,$00,$ad,$08,$62,$38
.byte $ed,$0c,$62,$20,$76,$f7,$c5,$00,$b0,$5e,$a9,$00,$8d,$ff,$61,$38
.byte $ad,$06,$62,$ed,$0a,$62,$85,$16,$ad,$05,$62,$ed,$09,$62,$10,$16
.byte $a9,$ff,$8d,$0d,$62,$a9,$00,$38,$e5,$16,$8d,$03,$62,$8d,$02,$62
.byte $8d,$00,$62,$4c,$d6,$e6,$a9,$01,$8d,$0d,$62,$a5,$16,$8d,$03,$62
.byte $8d,$02,$62,$8d,$00,$62,$ad,$08,$62,$38,$ed,$0c,$62,$b0,$10,$85
.byte $16,$a9,$00,$38,$e5,$16,$8d,$01,$62,$a9,$ff,$8d,$0e,$62,$60,$8d
.byte $01,$62,$a9,$01,$8d,$0e,$62,$60,$a9,$01,$8d,$ff,$61,$38,$ad,$08
;$E700
.byte $62,$ed,$0c,$62,$85,$16,$ad,$07,$62,$ed,$0b,$62,$10,$16,$a9,$ff
.byte $8d,$0e,$62,$a9,$00,$38,$e5,$16,$8d,$04,$62,$8d,$02,$62,$8d,$01
.byte $62,$4c,$34,$e7,$a9,$01,$8d,$0e,$62,$a5,$16,$8d,$04,$62,$8d,$02
.byte $62,$8d,$01,$62,$ad,$06,$62,$38,$ed,$0a,$62,$b0,$10,$85,$16,$a9
.byte $00,$38,$e5,$16,$8d,$00,$62,$a9,$ff,$8d,$0d,$62,$60,$8d,$00,$62
.byte $a9,$01,$8d,$0d,$62,$60,$ad,$ff,$61,$30,$05,$f0,$04,$4c,$ae,$e7
.byte $60,$ce,$02,$62,$d0,$08,$ad,$ff,$61,$09,$80,$8d,$ff,$61,$ad,$0d
.byte $62,$20,$fb,$e7,$18,$85,$16,$ad,$0a,$62,$6d,$0d,$62,$8d,$0a,$62
.byte $ad,$09,$62,$65,$16,$8d,$09,$62,$38,$ad,$03,$62,$ed,$01,$62,$b0
.byte $19,$a0,$00,$c8,$6d,$00,$62,$8d,$03,$62,$90,$f7,$ad,$0c,$62,$18
.byte $6d,$0e,$62,$88,$d0,$f9,$8d,$0c,$62,$60,$8d,$03,$62,$60,$ce,$02
.byte $62,$d0,$08,$ad,$ff,$61,$09,$80,$8d,$ff,$61,$ad,$0e,$62,$20,$fb
.byte $e7,$18,$85,$16,$ad,$0c,$62,$6d,$0e,$62,$8d,$0c,$62,$ad,$0b,$62
.byte $65,$16,$8d,$0b,$62,$38,$ad,$04,$62,$ed,$00,$62,$b0,$19,$a0,$00
.byte $c8,$6d,$01,$62,$8d,$04,$62,$90,$f7,$ad,$0a,$62,$18,$6d,$0d,$62
.byte $88,$d0,$f9,$8d,$0a,$62,$60,$8d,$04,$62,$60,$49,$80,$0a,$a9,$00
;$E800
.byte $69,$ff,$60,$90,$01,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09
.byte $0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19
.byte $1a,$1b,$1c,$1d,$1e,$1f,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09
.byte $0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19
.byte $1a,$1b,$1c,$1d,$1e,$1f,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
.byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
;$E900
.byte $20,$20,$20,$20,$20,$20,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24
.byte $24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24
.byte $24,$24,$24,$24,$24,$24,$d0,$23,$e8,$23,$d8,$23,$e0,$23,$d1,$23
.byte $e9,$23,$d9,$23,$e1,$23,$d2,$23,$ea,$23,$da,$23,$e2,$23,$d3,$23
.byte $eb,$23,$db,$23,$e3,$23,$d4,$23,$ec,$23,$dc,$23,$e4,$23,$d5,$23
.byte $ed,$23,$dd,$23,$e5,$23,$d6,$23,$ee,$23,$de,$23,$e6,$23,$d7,$23
.byte $ef,$23,$df,$23,$e7,$23,$d0,$27,$e8,$27,$d8,$27,$e0,$27,$d1,$27
.byte $e9,$27,$d9,$27,$e1,$27,$d2,$27,$ea,$27,$da,$27,$e2,$27,$d3,$27
.byte $eb,$27,$db,$27,$e3,$27,$d4,$27,$ec,$27,$dc,$27,$e4,$27,$d5,$27
.byte $ed,$27,$dd,$27,$e5,$27,$d6,$27,$ee,$27,$de,$27,$e6,$27,$d7,$27
.byte $ef,$27,$df,$27,$e7,$27,$5f,$ff,$55,$55,$a5,$c2,$c9,$40,$90,$01
.byte $60,$86,$bf,$84,$c0,$a6,$c1,$a0,$00,$b1,$bd,$85,$06,$d0,$08,$c8
.byte $b1,$bd,$85,$05,$c8,$b1,$bd,$85,$00,$c8,$b1,$bd,$85,$01,$c8,$b1
.byte $bd,$18,$65,$bf,$85,$bf,$c8,$b1,$bd,$18,$65,$c0,$85,$c0,$c8,$a5
.byte $06,$f0,$03,$4c,$30,$ea,$a5,$c0,$85,$03,$a5,$bf,$85,$02,$a5,$00
.byte $85,$04,$b1,$bd,$c8,$c9,$00,$f0,$1e,$9d,$01,$02,$a5,$03,$9d,$00
;$EA00
.byte $02,$e8,$e8,$a5,$05,$9d,$00,$02,$e8,$a5,$02,$9d,$00,$02,$e8,$e6
.byte $c2,$a5,$c2,$c9,$40,$b0,$16,$a5,$02,$18,$69,$08,$85,$02,$c6,$04
.byte $d0,$d0,$a5,$03,$18,$69,$08,$85,$03,$c6,$01,$d0,$bd,$86,$c1,$60
.byte $a5,$c0,$85,$03,$a5,$bf,$85,$02,$a5,$00,$85,$04,$b1,$bd,$c8,$9d
.byte $01,$02,$a5,$03,$9d,$00,$02,$e8,$e8,$b1,$bd,$c8,$9d,$00,$02,$e8
.byte $a5,$02,$9d,$00,$02,$e8,$e6,$c2,$a5,$c2,$c9,$40,$b0,$15,$a5,$02
.byte $69,$08,$85,$02,$c6,$04,$d0,$d4,$a5,$03,$18,$69,$08,$85,$03,$c6
.byte $01,$d0,$c1,$86,$c1,$60,$60,$a5,$bc,$18,$69,$a4,$85,$bc,$85,$c1
.byte $a2,$00,$a9,$f8,$9d,$00,$02,$9d,$04,$02,$9d,$08,$02,$9d,$0c,$02
.byte $9d,$10,$02,$9d,$14,$02,$9d,$18,$02,$9d,$1c,$02,$9d,$20,$02,$9d
.byte $24,$02,$9d,$28,$02,$9d,$2c,$02,$9d,$30,$02,$9d,$34,$02,$9d,$38
.byte $02,$9d,$3c,$02,$18,$8a,$69,$40,$aa,$d0,$c7,$86,$c2,$60
; Name	: OnNMI
OnNMI:
	STA $1E			; EABE	$85 $1e
	STX $1F			; EAC0	$86 $1f
	STY $20			; EAC2	$84 $20
	LDA PpuStatus_2002	; EAC4	$ad $02 $20
	BMI BFEACC		; EAC7	$30 $03
	JMP $ECF1		; EAC9	$4c $f1 $ec
BFEACC:
	LDA $3C			; EACC	$a5 $3c
	ORA #$08		; EACE	$09 $08
	AND #$EF		; EAD0	$29 $ef
	STA PpuControl_2000	; EAD2	$8d $00 $20
	LDA $2E			; EAD5	$a5 $2e
	BEQ BFEAE5		; EAD7	$f0 $0c
	LDA #$00		; EAD9	$a9 $00
	STA OamAddr_2003	; EADB	$8d $03 $20
	LDX #$02		; EADE	$a2 $02
	STX SpriteDma_4014	; EAE0	$8e $14 $40
	STA $2E			; EAE3	$85 $2e
BFEAE5:
	LDY #$0A		; EAE5	$a0 $0a		PRG BANK A
	LDX #$06		; EAE7	$a2 $06
	STX $8000		; EAE9	$8e $00 $80
	STY $8001		; EAEC	$8c $01 $80
	INY			; EAEF	$c8		PRG BANK B
	LDX #$07		; EAF0	$a2 $07
	STX $8000		; EAF2	$8e $00 $80
	STY $8001		; EAF4	$8c $01 $80
	LDA $36			; EAF8	$a5 $36
	BEQ BFEB03		; EAFA	$f0 $07
	JSR $EFEE		; EAFC	$20 $ee $ef
;$EAFF
.byte $a9
;$EB00
.byte $00,$85,$36
BFEB03:
	LDX $35			; EB03  A6 35          
	BEQ BFEB38		; EB05  F0 31          
	DEX			; EB07  CA             
	BEQ BFEB19		; EB08  F0 0F          
	DEX			; EB0A  CA             
	BEQ BFEB10		; EB0B  F0 03          
	JMP $EB22		; EB0D  4C 22 EB       

BFEB10:
.byte $ad,$02,$20,$20,$5b,$f0,$4c,$34,$eb
BFEB19:
.byte $ad,$02,$20,$20,$13,$f0,$4c
.byte $34,$eb,$ad,$02,$20,$a5,$2d,$8d,$06,$20,$a5,$2c,$8d,$06,$20,$a2
.byte $00,$20,$a4,$f0,$a9,$00,$85,$35
BFEB38:
	LDX $33			; EB38  A6 33          
	BEQ BFEB57		; EB3A  F0 1B          
	LDA PpuStatus_2002	; EB3C  AD 02 20       
	LDA $2D			; EB3F  A5 2D          
	ORA $3B			; EB41  05 3B          
	STA PpuAddr_2006	; EB43  8D 06 20       
	LDA $2C			; EB46  A5 2C          
	STA PpuAddr_2006	; EB48  8D 06 20       
	LDX #$00		; EB4B  A2 00          
	STX $33			; EB4D  86 33          
	JSR $F0A4		; EB4F  20 A4 F0       

;$EB52
.byte $a2,$40,$20,$a4,$f0

BFEB57:
	LDX $30			; EB57  A6 30          
	BEQ BFEB7B		; EB59  F0 20          
	LDA #$8B		; EB5B  A9 8B          
	AND $3C			; EB5D  25 3C          
	STA PpuControl_2000	; EB5F  8D 00 20       
	LDA PpuStatus_2002	; EB62  AD 02 20       
	LDA #$23		; EB65  A9 23          
	STA PpuAddr_2006	; EB67  8D 06 20       
	LDA #$C0		; EB6A  A9 C0          
	STA PpuAddr_2006	; EB6C  8D 06 20       
	LDX #$80		; EB6F  A2 80          
	JSR $F0A4		; EB71  20 A4 F0       

;$EB74
.byte $a9,$00,$85,$30,$4c,$2e,$ec
BFEB7B:
	LDX $31			; EB7B  A6 31          
	BEQ BFEB9F		; EB7D  F0 20          
	LDA #$8B		; EB7F  A9 8B          
	AND $3C			; EB81  25 3C          
	STA PpuControl_2000	; EB83  8D 00 20       
	LDA PpuStatus_2002	; EB86  AD 02 20       
	LDA #$2F		; EB89  A9 2F          
	STA PpuAddr_2006	; EB8B  8D 06 20       
	LDA #$C0		; EB8E  A9 C0          
	STA PpuAddr_2006	; EB90  8D 06 20       
	LDX #$80		; EB93  A2 80          
	JSR $F0A4		; EB95  20 A4 F0       

;$EB98
.byte $a9,$00,$85,$31,$4c,$2e,$ec

BFEB9F:
	LDA $2F			; EB9F  A5 2F          
	BEQ BFEBA6		; EBA1  F0 03          
	JSR $B2F7		; EBA3  20 F7 B2       
BFEBA6:
	LDX $32			; EBA6  A6 32          
	BEQ BFEBC9		; EBA8  F0 1F          
	LDA PpuStatus_2002	; EBAA  AD 02 20       
	LDA $2D			; EBAD  A5 2D          
	ORA $3B			; EBAF  05 3B          
	STA PpuAddr_2006	; EBB1  8D 06 20       
	LDA $2C			; EBB4  A5 2C          
	STA PpuAddr_2006	; EBB6  8D 06 20       
	LDY #$00		; EBB9  A0 00          
BFEBBB:
	LDA ($2A),Y		; EBBB  B1 2A          
	STA PpuData_2007	; EBBD  8D 07 20       
	INY			; EBC0  C8             
	DEX			; EBC1  CA             
	BNE BFEBBB		; EBC2  D0 F7          
	STX $32			; EBC4  86 32          
	JMP $EC2E		; EBC6  4C 2E EC       
BFEBC9:
	LDX $34			; EBC9  A6 34          
	BEQ BFEC13		; EBCB  F0 46          
	LDA PpuStatus_2002	; EBCD  AD 02 20       
	LDA $2D			; EBD0  A5 2D          
	ORA $3B			; EBD2  05 3B          
	STA PpuAddr_2006	; EBD4  8D 06 20       
	LDA $2C			; EBD7  A5 2C          
	STA PpuAddr_2006	; EBD9  8D 06 20       
	LDY #$00		; EBDC  A0 00          
BFEBDE:
	LDA ($2A),Y		; EBDE  B1 2A          
	STA PpuData_2007	; EBE0  8D 07 20       
	INY			; EBE3  C8             
	DEX			; EBE4  CA             
	BNE BFEBDE		; EBE5  D0 F7          
	CLC			; EBE7  18             
	LDA $2C			; EBE8  A5 2C          
	ADC #$20		; EBEA  69 20          
	STA $2C			; EBEC  85 2C          
	LDA $2D			; EBEE  A5 2D          
	ADC #$00		; EBF0  69 00          
	STA $2D			; EBF2  85 2D          
	LDA PpuStatus_2002	; EBF4  AD 02 20       
	LDA $2D			; EBF7  A5 2D          
	ORA $3B			; EBF9  05 3B          
	STA PpuAddr_2006	; EBFB  8D 06 20       
	LDA $2C			; EBFE  A5 2C          
	STA PpuAddr_2006	; EC00  8D 06 20       
	LDX $34			; EC03  A6 34          
BFEC05:
	LDA ($2A),Y		; EC05  B1 2A          
	STA PpuData_2007	; EC07  8D 07 20       
	INY			; EC0A  C8             
	DEX			; EC0B  CA             
	BNE BFEC05		; EC0C  D0 F7          
	STX $34			; EC0E  86 34          
	JMP $EC2E		; EC10  4C 2E EC       
BFEC13:
	LDA $37			; EC13  A5 37          
	BEQ BFEC2E		; EC15  F0 17          
	CMP #$0C		; EC17  C9 0C          
	BCS BFEC2A		; EC19  B0 0F          
	ASL A			; EC1B  0A             
	TAX			; EC1C  AA             
	LDA $B2DD,X		; EC1D  BD DD B2       
	STA $28			; EC20  85 28          
	LDA $B2DE,X		; EC22  BD DE B2       
	STA $29			; EC25  85 29          
	JMP ($0028)		; EC27  6C 28 00       

BFEC2A:
.byte $a9,00,$85,$37
BFEC2E:
	LDA $44			; EC2E	$a5 $44
	STA $E000		; EC30	$8d $00 $e0
	BEQ BFEC49		; EC33	$f0 $14
	STA $C000		; EC35	$8d $00 $c0
	STA $C001		; EC38	$8d $01 $c0
	STA $E001		; EC3B	$8d $01 $e0
	LDA PpuStatus_2002	; EC3E	$ad $02 $20
	LDA #$00		; EC41	$a9 $00
	STA PpuAddr_2006	; EC43	$8d $06 $20
	STA PpuAddr_2006	; EC46	$8d $06 $20
BFEC49:
	LDA $27			; EC49	$a5 $27
	BEQ BFEC59		; EC4B	$f0 $0c
	LDA $22			; EC4D	$a5 $22
	AND #$1F		; EC4F	$29 $1f
	BNE BFEC59		; EC51	$d0 $06
	LDA $5F			; EC53	$a5 $5f
	EOR #$01		; EC55	$49 $01
	STA $5F			; EC57	$85 $5f
BFEC59:
	LDY #$00		; EC59	$a0 $00
	STY $8000		; EC5B	$8c $00 $80	BANK CHR $0000-$07FF
	LDA $5B			; EC5E	$a5 $5b
	STA $8001		; EC60	$8d $01 $80
	INY			; EC63	$c8
	STY $8000		; EC64	$8c $00 $80	BANK CHR $0800-$0FFF
	LDA $5C			; EC67	$a5 $5c
	STA $8001		; EC69	$8d $01 $80
	INY			; EC6A	$c8
	STY $8000		; EC6B	$8c $00 $80	BANK CHR $1000-$13FF
	LDA $5D			; EC70	$a5 $5d
	STA $8001		; EC72	$8d $01 $80
	INY			; EC75	$c8
	STY $8000		; EC76	$8c $00 $80	BANK CHR $1400-$17FF
	LDA $5E			; EC79	$a5 $5e
	STA $8001		; EC7B	$8d $01 $80
	INY			; EC7E	$c8
	STY $8000		; EC7F	$8c $00 $80	BANK CHR $1800-$1BFF
	LDA $5F			; EC82	$a5 $5f
	STA $8001		; EC84	$8d $01 $80
	INY			; EC87	$c8
	STY $8000		; EC88	$8c $00 $80	BANK CHR $1C00-$1FFF
	LDA $60			; EC8B	$a5 $60
	STA $8001		; EC8D	$8d $01 $80
	LDA $3E			; EC90	$a5 $3e
	STA PpuScroll_2005	; EC92	$8d $05 $20
	LDA $3F			; EC95	$a5 $3f
	STA PpuScroll_2005	; EC97	$8d $05 $20
	LDA $3C			; EC9A	$a5 $3c
	STA PpuControl_2000	; EC9C	$8d $00 $20
	LDA $3D			; EC9F	$a5 $3d
	STA PpuMask_2001	; ECA1	$8d $01 $20
	JSR $B328		; ECA4	$20 $28 $b3
	INC $22			; ECA7	$e6 $22
	BNE BFECAD		; ECA9	$d0 $02
	INC $23			; ECAB	$e6 $23
BFECAD:
	INC $24			; ECAD	$e6 $24
	LDA $7F			; ECAF	$a5 $7f
	BEQ BFECB5		; ECB1	$f0 $02
	DEC $7F			; ECB3	$c6 $7f
BFECB5:
	LDA #$00		; ECB5	$a9 $00
	STA $25			; ECB7	$85 $25
	LDA #$06		; ECB9	$a9 $06
	ORA $5A			; ECBB	$05 $5a
	TAX			; ECBD	$aa
	STX $8000		; ECBE	$8e $00 $80	PRG ROM BANK(6 or 7)
	LDY #$00		; ECC1	$a0 $00		PRG ROM BANK 00
	STY $8001		; ECC3	$8c $01 $80
	INX			; ECC6	$e8
	INY			; ECC7	$c8
	STX $8000		; ECC8	$8e $00 $80
	STY $8001		; ECCB	$8c $01 $80	PRG ROM BANK 01
	JSR $8003		; ECCE	$20 $03 $80
	LDA #$06		; ECD1	$a9 $06
	ORA $5A			; ECD3	$05 $5a
	TAX			; ECD5	$aa
	STX $8000		; ECD6	$8e $00 $80
	LDY $62			; ECD9	$a4 $62		PRG ROM BANK ??
	STY $8001		; ECDB	$8c $01 $80
	INX			; ECDE	$e8
	INY			; ECDF	$c8
	STX $8000		; ECE0	$8e $00 $80
	LDY $63			; ECE3	$a4 $63		PRG ROM BANK ??
	STY $8001		; ECE5	$8c $01 $80
	LDA $61			; ECE8	$a5 $61
	AND #$7F		; ECEA	$29 $7f
	ORA $5A			; ECEC	$05 $5a
	STA $8000		; ECEE	$8d $00 $80
	LDA $1E			; ECF1	$a5 $1e
	LDX $1F			; ECF3	$a6 $1f
	LDY $20			; ECF5	$a4 $20
	RTI			; ECF7	$40

BFECF8:
.byte $4c,$b1,$ed

BFECFB:
	LDA #$00		; ECFB  A9 00          
	STA $3E			; ECFD  85 3E          
	STA $3F			; ECFF  85 3F          
	LDX $25			; ED01  A6 25          
	BNE BFECF8		; ED03  D0 F3          
	LDA $3C			; ED05  A5 3C          
	AND #$FE		; ED07  29 FE          
	STA PpuControl_2000	; ED09  8D 00 20       
	LDX $25			; ED0C  A6 25          
	LDA PpuStatus_2002	; ED0E  AD 02 20       
	LDA $3E			; ED11  A5 3E          
	STA PpuScroll_2005	; ED13  8D 05 20       
	LDA $3F			; ED16  A5 3F          
	STA PpuScroll_2005	; ED18  8D 05 20       
	LDY #$00		; ED1B  A0 00          
	STY $8000		; ED1D  8C 00 80       
	LDX #$00		; ED20  A2 00          
	STX $8001		; ED22  8E 01 80       
	INY			; ED25  C8             
	STY $8000		; ED26  8C 00 80       
	LDX #$02		; ED29  A2 02          
	STX $8001		; ED2B  8E 01 80       
	INY			; ED2E  C8             
	STY $8000		; ED2F  8C 00 80       
	LDX #$1A		; ED32  A2 1A          
	STX $8001		; ED34  8E 01 80       
	INY			; ED37  C8             
	INY			; ED38  C8             
	STY $8000		; ED39  8C 00 80       
	LDX $59			; ED3C  A6 59          
	STX $8001		; ED3E  8E 01 80       
	INY			; ED41  C8             
	STY $8000		; ED42  8C 00 80       
	LDX #$0F		; ED45  A2 0F          
	STX $8001		; ED47  8E 01 80       
	LDA $61			; ED4A  A5 61          
	AND #$7F		; ED4C  29 7F          
	STA $8000		; ED4E  8D 00 80       
	JMP $EDB1		; ED51  4C B1 ED       

; Name	: OnIRQ
OnIRQ:
	PHA			; ED54	$48
	TXA			; ED55	$8a
	PHA			; ED56	$48
	TYA			; ED57	$98
	PHA			; ED58	$48
	STA $E000		; ED59	$8d $00 $e0
	LDX $26			; ED5C	$a6 $26
	DEX			; ED5E	$ca
	BEQ BFECFB		; ED60	$f0 $9a
	DEX			; ED62	$ca
	BEQ BFEDCD		; ED63	$f0 $69
	DEX			; ED64	$ca
	BNE BFED6A		; ED65	$d0 $03
	JMP $EE33		; ED67	$4c $33 $ee
BFED6A:
	DEX			; ED6A	$ca
	BNE BFED70		; ED6B	$d0 $03
	JMP $EE95		; ED6D	$4c $95 $ee
BFED70:
	DEX			; ED70	$ca
	BNE BFED76		; ED71	$d0 $03
	JMP $EECD		; ED73	$4c $cd $ee
BFED76:
	DEX			; ED76	$ca
	BNE BFED7C		; ED77	$d0 $03
	JMP $EE1A		; ED79	$4c $1a $ee

BFED7C:
.byte $a6,$25,$ad,$02
.byte $20,$a5,$3e,$8d,$05,$20,$a5,$3f,$8d,$05,$20,$a5,$3c,$8d,$00,$20
.byte $a6,$25,$a9,$00,$05,$5a,$a8,$8c,$00,$80,$b5,$47,$8d,$01,$80,$c8
.byte $8c,$00,$80,$b5,$4a,$8d,$01,$80,$a5,$61,$29,$7f,$05,$5a,$8d,$00
.byte $80

	LDX $25			; EDB1  A6 25          
	LDA $45,X		; EDB3  B5 45          
	BEQ BFEDC5		; EDB5  F0 0E          
	CLC			; EDB7  18             
	SBC $44,X		; EDB8  F5 44          
	BCC BFEDC5		; EDBA  90 09          
	STA $C000		; EDBC  8D 00 C0       
	STA $C001		; EDBF  8D 01 C0       
	STA $E001		; EDC2  8D 01 E0       
BFEDC5:
	INC $25			; EDC5  E6 25          
	PLA			; EDC7  68             
	TAY			; EDC8  A8             
	PLA			; EDC9  68             
	TAX			; EDCA  AA             
	PLA			; EDCB  68             
	RTI			; EDCC  40             

BFEDCD:
.byte $a2,$07,$ca
.byte $d0,$fd,$a5,$25,$f0,$03,$4c,$05,$ed,$a5,$42,$f0,$26,$30,$13,$c6
.byte $42,$a5,$40,$38,$e5,$43,$85,$40,$b0,$19,$a5,$41,$49,$01,$85,$41
.byte $10,$11,$e6,$42,$a5,$40,$18,$65,$43,$85,$40,$90,$06,$a5,$41,$49
;$EE00
.byte $01,$85,$41,$a5,$3c,$29,$8e,$05,$41,$8d,$00,$20,$ad,$02,$20,$a5
.byte $40,$8d,$05,$20,$ad,$02,$20,$4c,$a8,$ed

; Marks	:
	LDA #$00		; EE1A	$a9 $00
	ORA $5A			; EE1C	$05 $5a
	TAY			; EE1E	$a8
	STY $8000		; EE1F	$8c $00 $80
	LDA $47			; EE22	$a5 $47
	STA $8001		; EE24	$8d $01 $80
	INY			; EE27	$c8
	STY $8000		; EE28	$8c $00 $80
	LDA $4A			; EE2B	$a5 $4a
	STA $8001		; EE2D	$8d $01 $80
	JMP $EDA8		; EE30	$4c $a8 $ed

;$EE33
.byte $ad,$02,$20,$a5,$25,$f0,$09,$c9,$01,$f0,$14,$f0,$03
.byte $4c,$92,$ee,$a9,$00,$8d,$05,$20,$a5,$3c,$29,$fe,$8d,$00,$20,$4c
.byte $68,$ee,$ad,$6a,$05,$8d,$05,$20,$a5,$3c,$29,$fe,$85,$ba,$ad,$6b
.byte $05,$29,$01,$05,$ba,$8d,$00,$20,$a6,$25,$a9,$02,$05,$5a,$a8,$8c
.byte $00,$80,$b5,$47,$8d,$01,$80,$c8,$8c,$00,$80,$b5,$4a,$8d,$01,$80
.byte $c8,$8c,$00,$80,$b5,$4d,$8d,$01,$80,$c8,$8c,$00,$80,$b5,$50,$8d
.byte $01,$80,$4c,$a8,$ed,$ad,$02,$20,$a5,$25,$f0,$06,$c9,$01,$f0,$1b
.byte $d0,$28,$ad,$68,$05,$8d,$05,$20,$a5,$3c,$29,$fe,$85,$ba,$ad,$69
.byte $05,$29,$01,$05,$ba,$8d,$00,$20,$4c,$c7,$ee,$a9,$00,$8d,$05,$20
.byte $a5,$3c,$29,$fe,$8d,$00,$20,$20,$0e,$ef,$4c,$a8,$ed,$ad,$02,$20
.byte $a5,$25,$f0,$06,$c9,$01,$f0,$22,$d0,$31,$ad,$68,$05,$8d,$05,$20
.byte $a5,$3c,$29,$fe,$85,$ba,$ad,$69,$05,$29,$01,$05,$ba,$8d,$00,$20
.byte $a9,$80,$85,$5a,$20,$0e,$ef,$4c,$0b,$ef,$a9,$00,$85,$5a,$8d,$05
;$EF00
.byte $20,$a5,$3c,$29,$fe,$8d,$00,$20,$20,$0e,$ef,$4c,$a8,$ed,$a6,$25
.byte $a9,$00,$05,$5a,$a8,$8c,$00,$80,$b5,$53,$8d,$01,$80,$c8,$8c,$00
.byte $80,$b5,$56,$8d,$01,$80,$c8,$8c,$00,$80,$b5,$47,$8d,$01,$80,$c8
.byte $8c,$00,$80,$b5,$4a,$8d,$01,$80,$c8,$8c,$00,$80,$b5,$4d,$8d,$01
.byte $80,$c8,$8c,$00,$80,$b5,$50,$8d,$01,$80,$60,$90,$01,$60,$8d,$00
.byte $01,$8e,$01,$01,$8c,$02,$01,$08,$68,$8d,$03,$01,$68,$8d,$04,$01
.byte $68,$8d,$05,$01,$78,$a9,$00,$8d,$00,$20,$8d,$01,$20,$ad,$02,$20
.byte $a9,$22,$8d,$06,$20,$a9,$08,$8d,$06,$20,$a0,$00,$a2,$06,$b9,$da
.byte $ef,$8d,$07,$20,$c8,$ca,$d0,$f6,$ad,$00,$01,$4a,$4a,$4a,$4a,$c9
.byte $0a,$90,$05,$18,$69,$41,$d0,$03,$18,$69,$30,$8d,$07,$20,$ad,$00
.byte $01,$29,$0f,$c9,$0a,$90,$05,$18,$69,$01,$d0,$03,$18,$69,$41,$8d
.byte $07,$20,$a9,$88,$8d,$00,$20,$a9,$1e,$8d,$01,$20,$a9,$00,$8d,$05
.byte $20,$8d,$05,$20,$a0,$00,$8c,$00,$80,$a9,$00,$8d,$01,$80,$c8,$8c
.byte $00,$80,$a9,$02,$8d,$01,$80,$4c,$d7,$ef,$04,$27,$32,$00,$00,$90
.byte $01,$60,$03,$0c,$30,$c0,$fc,$f3,$cf,$3f,$00,$55,$aa,$ff,$ad,$19
.byte $03,$8d,$06,$20,$ad,$18,$03,$8d,$06,$20,$ad,$1a,$03,$8d,$07,$20
;$F000
.byte $ad,$1c,$03,$8d,$06,$20,$ad,$1b,$03,$8d,$06,$20,$ad,$1d,$03,$8d
.byte $07,$20,$60,$ad,$01,$03,$8d,$06,$20,$ad,$00,$03,$8d,$06,$20,$ad
.byte $02,$03,$8d,$07,$20,$ad,$03,$03,$8d,$07,$20,$ad,$04,$03,$8d,$07
.byte $20,$ad,$05,$03,$8d,$07,$20,$ad,$06,$03,$8d,$07,$20,$ad,$07,$03
.byte $8d,$07,$20,$ad,$08,$03,$8d,$07,$20,$ad,$09,$03,$8d,$07,$20,$ad
.byte $0a,$03,$8d,$07,$20,$ad,$0b,$03,$8d,$07,$20,$ad,$0d,$03,$8d,$06
.byte $20,$ad,$0c,$03,$8d,$06,$20,$ad,$0e,$03,$8d,$07,$20,$ad,$0f,$03
.byte $8d,$07,$20,$ad,$10,$03,$8d,$07,$20,$ad,$11,$03,$8d,$07,$20,$ad
.byte $12,$03,$8d,$07,$20,$ad,$13,$03,$8d,$07,$20,$ad,$14,$03,$8d,$07
.byte $20,$ad,$15,$03,$8d,$07,$20,$ad,$16,$03,$8d,$07,$20,$ad,$17,$03
.byte $8d,$07,$20,$60

; Name	:
	LDA $0300,X		; F0A4  BD 00 03       
	STA PpuData_2007	; F0A7  8D 07 20       
	LDA $0301,X		; F0AA  BD 01 03       
	STA PpuData_2007	; F0AD  8D 07 20       
	LDA $0302,X		; F0B0  BD 02 03       
	STA PpuData_2007	; F0B3  8D 07 20       
	LDA $0303,X		; F0B6  BD 03 03       
	STA PpuData_2007	; F0B9  8D 07 20       
	LDA $0304,X		; F0BC  BD 04 03       
	STA PpuData_2007	; F0BF  8D 07 20       
	LDA $0305,X		; F0C2  BD 05 03       
	STA PpuData_2007	; F0C5  8D 07 20       
	LDA $0306,X		; F0C8  BD 06 03       
	STA PpuData_2007	; F0CB  8D 07 20       
	LDA $0307,X		; F0CE  BD 07 03       
	STA PpuData_2007	; F0D1  8D 07 20       
	LDA $0308,X		; F0D4  BD 08 03       
	STA PpuData_2007	; F0D7  8D 07 20       
	LDA $0309,X		; F0DA  BD 09 03       
	STA PpuData_2007	; F0DD  8D 07 20       
	LDA $030A,X		; F0E0  BD 0A 03       
	STA PpuData_2007	; F0E3  8D 07 20       
	LDA $030B,X		; F0E6  BD 0B 03       
	STA PpuData_2007	; F0E9  8D 07 20       
	LDA $030C,X		; F0EC  BD 0C 03       
	STA PpuData_2007	; F0EF  8D 07 20       
	LDA $030D,X		; F0F2  BD 0D 03       
	STA PpuData_2007	; F0F5  8D 07 20       
	LDA $030E,X		; F0F8  BD 0E 03       
	STA PpuData_2007	; F0FB  8D 07 20       
	LDA $030F,X		; F0FE  BD 0F 03       
	STA PpuData_2007	; F101  8D 07 20       
	LDA $0310,X		; F104  BD 10 03       
	STA PpuData_2007	; F107  8D 07 20       
	LDA $0311,X		; F10A  BD 11 03       
	STA PpuData_2007	; F10D  8D 07 20       
	LDA $0312,X		; F110  BD 12 03       
	STA PpuData_2007	; F113  8D 07 20       
	LDA $0313,X		; F116  BD 13 03       
	STA PpuData_2007	; F119  8D 07 20       
	LDA $0314,X		; F11C  BD 14 03       
	STA PpuData_2007	; F11F  8D 07 20       
	LDA $0315,X		; F122  BD 15 03       
	STA PpuData_2007	; F125  8D 07 20       
	LDA $0316,X		; F128  BD 16 03       
	STA PpuData_2007	; F12B  8D 07 20       
	LDA $0317,X		; F12E  BD 17 03       
	STA PpuData_2007	; F131  8D 07 20       
	LDA $0318,X		; F134  BD 18 03       
	STA PpuData_2007	; F137  8D 07 20       
	LDA $0319,X		; F13A  BD 19 03       
	STA PpuData_2007	; F13D  8D 07 20       
	LDA $031A,X		; F140  BD 1A 03       
	STA PpuData_2007	; F143  8D 07 20       
	LDA $031B,X		; F146  BD 1B 03       
	STA PpuData_2007	; F149  8D 07 20       
	LDA $031C,X		; F14C  BD 1C 03       
	STA PpuData_2007	; F14F  8D 07 20       
	LDA $031D,X		; F152  BD 1D 03       
	STA PpuData_2007	; F155  8D 07 20       
	LDA $031E,X		; F158  BD 1E 03       
	STA PpuData_2007	; F15B  8D 07 20       
	LDA $031F,X		; F15E  BD 1F 03       
	STA PpuData_2007	; F161  8D 07 20       
; Name	:
	LDA $0320,X		; F164  BD 20 03       
	STA PpuData_2007	; F167  8D 07 20       
	LDA $0321,X		; F16A  BD 21 03       
	STA PpuData_2007	; F16D  8D 07 20       
	LDA $0322,X		; F170  BD 22 03       
	STA PpuData_2007	; F173  8D 07 20       
	LDA $0323,X		; F176  BD 23 03       
	STA PpuData_2007	; F179  8D 07 20       
	LDA $0324,X		; F17C  BD 24 03       
	STA PpuData_2007	; F17F  8D 07 20       
	LDA $0325,X		; F182  BD 25 03       
	STA PpuData_2007	; F185  8D 07 20       
	LDA $0326,X		; F188  BD 26 03       
	STA PpuData_2007	; F18B  8D 07 20       
	LDA $0327,X		; F18E  BD 27 03       
	STA PpuData_2007	; F191  8D 07 20       
	LDA $0328,X		; F194  BD 28 03       
	STA PpuData_2007	; F197  8D 07 20       
	LDA $0329,X		; F19A  BD 29 03       
	STA PpuData_2007	; F19D  8D 07 20       
	LDA $032A,X		; F1A0  BD 2A 03       
	STA PpuData_2007	; F1A3  8D 07 20       
	LDA $032B,X		; F1A6  BD 2B 03       
	STA PpuData_2007	; F1A9  8D 07 20       
	LDA $032C,X		; F1AC  BD 2C 03       
	STA PpuData_2007	; F1AF  8D 07 20       
	LDA $032D,X		; F1B2  BD 2D 03       
	STA PpuData_2007	; F1B5  8D 07 20       
	LDA $032E,X		; F1B8  BD 2E 03       
	STA PpuData_2007	; F1BB  8D 07 20       
	LDA $032F,X		; F1BE  BD 2F 03       
	STA PpuData_2007	; F1C1  8D 07 20       
	LDA $0330,X		; F1C4  BD 30 03       
	STA PpuData_2007	; F1C7  8D 07 20       
	LDA $0331,X		; F1CA  BD 31 03       
	STA PpuData_2007	; F1CD  8D 07 20       
	LDA $0332,X		; F1D0  BD 32 03       
	STA PpuData_2007	; F1D3  8D 07 20       
	LDA $0333,X		; F1D6  BD 33 03       
	STA PpuData_2007	; F1D9  8D 07 20       
	LDA $0334,X		; F1DC  BD 34 03       
	STA PpuData_2007	; F1DF  8D 07 20       
	LDA $0335,X		; F1E2  BD 35 03       
	STA PpuData_2007	; F1E5  8D 07 20       
	LDA $0336,X		; F1E8  BD 36 03       
	STA PpuData_2007	; F1EB  8D 07 20       
	LDA $0337,X		; F1EE  BD 37 03       
	STA PpuData_2007	; F1F1  8D 07 20       
	LDA $0338,X		; F1F4  BD 38 03       
	STA PpuData_2007	; F1F7  8D 07 20       
	LDA $0339,X		; F1FA  BD 39 03       
	STA PpuData_2007	; F1FD  8D 07 20       
	LDA $033A,X		; F200  BD 3A 03       
	STA PpuData_2007	; F203  8D 07 20       
	LDA $033B,X		; F206  BD 3B 03       
	STA PpuData_2007	; F209  8D 07 20       
	LDA $033C,X		; F20C  BD 3C 03       
	STA PpuData_2007	; F20F  8D 07 20       
	LDA $033D,X		; F212  BD 3D 03       
	STA PpuData_2007	; F215  8D 07 20       
	LDA $033E,X		; F218  BD 3E 03       
	STA PpuData_2007	; F21B  8D 07 20       
	LDA $033F,X		; F21E  BD 3F 03       
	STA PpuData_2007	; F221  8D 07 20       
	RTS			; F224  60             

; Name	:
	STA PpuData_2007	; F225  8D 07 20       
	STA PpuData_2007	; F228  8D 07 20       
; Name	:
	STA PpuData_2007	; F22B  8D 07 20       
	STA PpuData_2007	; F22E  8D 07 20       
	STA PpuData_2007	; F231  8D 07 20       
	STA PpuData_2007	; F234  8D 07 20       
	STA PpuData_2007	; F237  8D 07 20       
	STA PpuData_2007	; F23A  8D 07 20       
	STA PpuData_2007	; F23D  8D 07 20       
	STA PpuData_2007	; F240  8D 07 20       
	STA PpuData_2007	; F243  8D 07 20       
	STA PpuData_2007	; F246  8D 07 20       
	STA PpuData_2007	; F249  8D 07 20       
	STA PpuData_2007	; F24C  8D 07 20       
	STA PpuData_2007	; F24F  8D 07 20       
	STA PpuData_2007	; F252  8D 07 20       
	STA PpuData_2007	; F255  8D 07 20       
	STA PpuData_2007	; F258  8D 07 20       
; Name	:
	STA PpuData_2007	; F25B  8D 07 20       
	STA PpuData_2007	; F25E  8D 07 20       
	STA PpuData_2007	; F261  8D 07 20       
	STA PpuData_2007	; F264  8D 07 20       
	STA PpuData_2007	; F267  8D 07 20       
	STA PpuData_2007	; F26A  8D 07 20       
	STA PpuData_2007	; F26D  8D 07 20       
; Name	:
	STA PpuData_2007	; F270  8D 07 20       
; Name	:
	STA PpuData_2007	; F273  8D 07 20       
	STA PpuData_2007	; F276  8D 07 20       
	STA PpuData_2007	; F279  8D 07 20       
	STA PpuData_2007	; F27C  8D 07 20       
	STA PpuData_2007	; F27F  8D 07 20       
	STA PpuData_2007	; F282  8D 07 20       
	RTS			; F285  60             

; Name	:
	STA $0743		; F286  8D 43 07       
	LDX #$01		; F289  A2 01          
	LDA $6211		; F28B  AD 11 62       
	AND #$08		; F28E  29 08          
	BNE BFF294		; F290  D0 02          
	LDX #$04		; F292  A2 04          
BFF294:
	STX $0742		; F294  8E 42 07       
	JMP $F4D3		; F297  4C D3 F4       

;$F29A
.byte $a9,$04,$8d,$42,$07,$4c
.byte $d3,$f4,$8d,$43,$07,$a9,$09,$8d,$42,$07,$cd,$42,$07,$f0,$fb,$ad
.byte $42,$07,$29,$20,$d0,$f9,$60,$ad,$42,$07,$10,$11,$a9,$0c,$8d,$42
.byte $07,$cd,$42,$07,$f0,$fb,$ad,$42,$07,$29,$40,$d0,$f9,$60,$48,$a9
.byte $0f,$20,$ee,$f2,$68,$60,$48,$a9,$0d,$20,$ee,$f2,$68,$60,$48,$a9
.byte $0e,$20,$ee,$f2,$68,$60,$48,$a9,$10,$20,$ee,$f2,$68,$60,$c9,$4e
.byte $b0,$05,$09,$80,$8d,$44,$07,$60,$48,$a9,$ff,$8d,$44,$07,$68,$60
;$F300
.byte $ad,$44,$07,$d0,$fb,$60,$a2,$02,$2c,$02,$20,$10,$fb,$2c,$02,$20
.byte $30,$fb,$ca,$d0,$f3,$60,$a9,$88,$05,$3c,$85,$3c,$8d,$00,$20,$8d
.byte $00,$20,$60,$a9,$0c,$d0,$f1,$a9,$09,$d0,$ed,$a9,$00,$8d,$01,$20
.byte $8d,$01,$20,$85,$3d,$a9,$0f,$25,$3c,$85,$3c,$8d,$00,$20,$8d,$00
.byte $20,$60,$a9,$8b,$d0,$f1,$a9,$8e,$d0,$ed,$a9,$01,$85,$2e,$20,$16
.byte $f3,$a9,$1e,$85,$3d,$60,$20,$16,$f3,$a9,$0a,$05,$3d,$85,$3d,$60
.byte $a9,$01,$85,$2e,$20,$06,$f3,$20,$16,$f3,$a9,$14,$05,$3d,$85,$3d
.byte $60,$20,$42,$f3,$ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d,$06
.byte $20,$a2,$f0,$a9,$00,$8d,$07,$20,$8d,$07,$20,$8d,$07,$20,$8d,$07
.byte $20,$ca,$d0,$f1,$a2,$3f,$a9,$00,$8d,$07,$20,$9d,$80,$03,$ca,$10
.byte $f7,$85,$32,$85,$33,$85,$34,$85,$5a,$60,$20,$42,$f3,$ad,$02,$20
.byte $a9,$2c,$8d,$06,$20,$a9,$00,$8d,$06,$20,$4c,$81,$f3,$a2,$00,$a9
.byte $f0,$9d,$00,$02,$e8,$d0,$f8,$60,$20,$bd,$f3,$a9,$ff,$85,$2e,$60
.byte $a9,$01,$85,$2e,$a5,$2e,$d0,$fc,$60,$bd,$fe,$f3,$85,$12,$bd,$03
.byte $f4,$85,$13,$a9,$d1,$85,$10,$a9,$00,$85,$11,$20,$59,$f4,$18,$a5
.byte $12,$69,$0e,$85,$12,$a5,$13,$69,$00,$85,$13,$4c,$20,$f4,$1d,$39
;$F400
.byte $24,$40,$02,$03,$03,$03,$03,$03

; Name	:
	LDA #$D1		; F408  $A9 $D1
	STA $10			; F40A  $85 $10
	LDA #$00		; F40C  $A9 $00
	STA $11			; F40E  $85 $11
	JSR $F459		; F410  $20 $59 $F4
	CLC			; F413  $18
	LDA $12			; F414  $A5 $12
	ADC #$20		; F416  $69 $20
	STA $12			; F418  $85 $12
	LDA $13			; F41A  $A5 $13
	ADC #$00		; F41C  $69 $00
	STA $13			; F41E  $85 $13
; Name	:
	LDA $00			; F420  $A5 $00
	PHA			; F422  $48
	LDA $01			; F423  $A5 $01
	PHA			; F425  $48
	LDY #$00		; F426  $A0 $00
	STY $00			; F428  $84 $00
	STY $01			; F42A  $84 $01
	LDY $00			; F42C  $A4 $00
	LDA ($10),Y		; F42E  $B1 $10
	BEQ BFF452		; F430  $F0 $20
	CMP #$DE		; F432  $C9 $DE
	BEQ BFF442		; F434  $F0 $0C
	CMP #$DF		; F436  $C9 $DF
	BEQ BFF442		; F438  $F0 $08
	CMP #$E0		; F43A  $C9 $E0
	BCC BFF447		; F43C  $90 $09
	CMP #$E4		; F43E  $C9 $E4
	BCS BFF447		; F440  $B0 $05
BFF442:
	INC $00			; F442  $E6 $00
	JMP $F42C		; F444  $4C $2C $F4
BFF447:
	LDY $01			; F447  $A4 $01
	STA ($12),Y		; F449  $91 $12
	INC $00			; F44B  $E6 $00
	INC $01			; F44D  $E6 $01
	JMP $F42C		; F44F  $4C $2C $F4
BFF452:
	PLA			; F452  $68
	STA $01			; F453  $85 $01
	PLA			; F455  $68
	STA $00			; F456  $85 $00
	RTS			; F458  $60

; Name	:
	LDA $00			; F459  $A5 $00
	PHA			; F45B  $48
	LDA $01			; F45C  $A5 $01
	PHA			; F45E  $48
	LDY #$00		; F45F  $A0 $00
	STY $00			; F461  $84 $00
	STY $01			; F463  $84 $01
	LDY $00			; F465  $A4 $00
	LDA ($10),Y		; F467  $B1 $10
	BEQ BFF4AA		; F469  $F0 $3F
	CMP #$DE		; F46B  $C9 $DE
	BEQ BFF481		; F46D  $F0 $12
	CMP #$DF		; F46F  $C9 $DF
	BEQ BFF481		; F471  $F0 $0E
	CMP #$E0		; F473  $C9 $E0
	BCC BFF4A3		; F475  $90 $2C
	CMP #$E4		; F477  $C9 $E4
	BCS BFF4A3		; F479  $B0 $28
	LDY $01			; F47B  $A4 $01
	DEY			; F47D  $88
	JMP $F49C		; F47E  $4C $9C $F4
BFF481:
	LDY $01			; F481  $A4 $01
	DEY			; F483  $88
	PHA			; F484  $48
	LDA ($12),Y		; F485  $B1 $12
	CMP #$62		; F487  $C9 $62
	BEQ BFF495		; F489  $F0 $0A
	CMP #$49		; F48B  $C9 $49
	BNE BFF49B		; F48D  $D0 $0C
	PLA			; F48F  $68
	SEC			; F490  $38
	SBC #$40		; F491  $E9 $40
	BNE BFF49C		; F493  $D0 $07
BFF495:
	PLA			; F495  $68
	SEC			; F496  $38
	SBC #$80		; F497  $E9 $80
	BNE BFF49C		; F499  $D0 $01
BFF49B:
	PLA			; F49B  $68
BFF49C:
	STA ($12),Y		; F49C  $91 $12
	INC $00			; F49E  $E6 $00
	JMP $F465		; F4A0  $4C $65 $F4
BFF4A3:
	INC $00			; F4A3  $E6 $00
	INC $01			; F4A5  $E6 $01
	JMP $F465		; F4A7  $4C $65 $F4
BFF4AA:
	PLA			; F4AA  $68
	STA $01			; F4AB  $85 $01
	PLA			; F4AD  $68
	STA $00			; F4AE  $85 $00
	RTS			; F4B0  $60

;$F4B1
.byte $a5,$00,$48,$8a,$4a,$48,$29,$01,$85,$00,$98,$48,$29,$02,$05
.byte $00,$aa,$68,$0a,$29,$38,$85,$00,$68,$4a,$29,$07,$05,$00,$a8,$68
.byte $85,$00,$60

; Name	:
	LDA $22			; F4D3  $A5 $22
BFF4D5:
	CMP $22			; F4D5  $C5 $22
	BEQ BFF4D5		; F4D7  $F0 $FC
	RTS			; F4D9  $60
	STA $37			; F4DA  $85 $37
; Name	:
BFF4DC:
	LDA $32			; F4DC  $A5 $32
	ORA $33			; F4DE  $05 $33
	ORA $34			; F4E0  $05 $34
	ORA $2F			; F4E2  $05 $2F
	ORA $30			; F4E4  $05 $30
	ORA $31			; F4E6  $05 $31
	ORA $37			; F4E8  $05 $37
	ORA $38			; F4EA  $05 $38
	BNE BFF4DC		; F4EC  $D0 $EE
	RTS			; F4EE  $60

;$F4EF
.byte $a5
.byte $32,$05,$33,$05,$34,$05,$2f,$05,$30,$05,$31,$05,$37,$05,$38,$05
;$F500
.byte $2e,$d0,$ec,$60,$20,$d0,$f3,$ca,$d0,$fa,$60,$a9,$78,$85,$7f,$20
.byte $d0,$f3,$a5,$7f,$f0,$04,$a5,$7e,$f0,$f5,$60,$20,$d0,$f3,$a5,$7e
.byte $f0,$f9,$60

; Name	:
BFF523:
	LDA $7D			; F523  $A5 $7D
	BNE BFF523		; F525  $D0 $FC
	RTS			; F527  $60

; Name	:
	LDX #$00		; F528  $A2 $00
	STX $7E			; F52A  $86 $7E
	STX $72			; F52C  $86 $72
	STX $73			; F52E  $86 $73
	DEX			; F530  $CA
	STX $75			; F531  $86 $75
	STX $76			; F533  $86 $76
	RTS			; F535  $60

; Name	:
; Marks	: 21 bytes
	LDA #$00		; F536	$a9 $00
	STA $44			; F538	$85 $44
	STA $5A			; F53A	$85 $5a
	STA $27			; F53C	$85 $27
	LDA #$00		; F53E	$a9 $00
	STA $5B			; F540	$85 $5b		R0 CHR ROM $0000-$07FF
	LDA #$02		; F542	$a9 $02
	STA $5C			; F544	$85 $5c		R1 CHR ROM $0800-$0FFF
	LDA #$1A		; F546	$a9 $1a
	STA $5D			; F548	$85 $5d		R2 CHR ROM $1000-$13FF
	RTS			; F54A	$60

;$F54B
.byte $a2,$1f,$a9,$0f,$9d
.byte $c0,$03,$ca,$10,$fa,$a9,$01,$85,$2f,$4c,$dc,$f4

; Name	:
; Marks	: BANK SWAP
	LDA #$00		; F55C  A9 00          
	BIT $01A9               ; F55E  2C A9 01       
	BIT $02A9               ; F561  2C A9 02       
	;BIT $03A9               ; F564  2C A9 03       
.byte $2C

; Name	:
	LDA #$03		; F565  A9 03          
	;BIT $04A9               ; F567  2C A9 04       
.byte $2C

; Name	:
	LDA #$04		; F568  A9 04          
	;BIT $05A9               ; F56A  2C A9 05       
.byte $2C

; Name	:
	LDA #$05		; F56B  A9 05          
	;BIT $06A9               ; F56D  2C A9 06       
.byte $2C

; Name	:
	LDA #$06		; F56E  A9 06          

; Name	:
; Marks	:
	STX $64			; F570  86 64          
	STY $65                 ; F572  84 65          
	ASL A                   ; F574  0A             
	TAY                     ; F575  A8             
	LDA #$06                ; F576  A9 06          
	ORA $5A                 ; F578  05 5A          
	TAX                     ; F57A  AA             
	STX $61                 ; F57B  86 61          
	STX $8000               ; F57D  8E 00 80       
	STY $62                 ; F580  84 62          
	STY $8001               ; F582  8C 01 80       
	INX                     ; F585  E8             
	INY                     ; F586  C8             
	STX $61                 ; F587  86 61          
	STX $8000               ; F589  8E 00 80       
	STY $63                 ; F58C  84 63          
	STY $8001               ; F58E  8C 01 80       
	LDX $64                 ; F591  A6 64          
	LDY $65                 ; F593  A4 65          
	RTS                     ; F595  60             

;$F596
.byte $6c,$66,$00,$a5,$62,$4a,$48,$a5,$68,$20
.byte $70,$f5,$20,$a9,$f5,$68,$4c,$70,$f5,$6c,$66,$00,$20,$ef,$f5,$68
.byte $18,$69,$01,$85,$69,$68,$69,$00,$85,$6a,$a0,$02,$b1,$69,$85,$67
.byte $88,$b1,$69,$85,$66,$88,$a5,$62,$4a,$48,$b1,$69,$20,$70,$f5,$20
.byte $fa,$f5,$20,$ec,$f5,$20,$ef,$f5,$a5,$69,$18,$69,$03,$85,$66,$a5
.byte $6a,$69,$00,$85,$67,$68,$20,$70,$f5,$20,$fa,$f5,$6c,$66,$00,$08
.byte $85,$6b,$68,$85,$6c,$86,$6d,$84,$6e,$60,$a4,$6e,$a6,$6d,$a5,$6c
;$F600
.byte $48,$a5,$6b,$28,$60

; Name	:
	PHP			; F605  $08
	PHA			; F606  $48
	TYA			; F607  $98
	PHA			; F608  $48
	TXA			; F609  $8A
	TAY			; F60A  $A8
	PLA			; F60B  $68
	TAX			; F60C  $AA
	PLA			; F60D  $68
	PLP			; F60E  $28
	RTS			; F60F  $60

;$F610
.byte $20,$cc,$f6,$a2,$03,$bd,$69,$f6,$dd,$02,$70,$d0,$18,$ca,$10,$f5
.byte $20,$80,$f6,$a2,$03,$20,$cc,$f6,$b5,$00,$dd,$06,$70,$d0,$06,$ca
.byte $10,$f6,$4c,$d4,$f6,$20,$d0,$f6,$a9,$60,$85,$01,$a2,$20,$a0,$00
.byte $84,$00,$98,$91,$00,$c8,$d0,$fb,$e6,$01,$ca,$d0,$f6,$a2,$03,$bd
.byte $69,$f6,$9d,$02,$70,$ca,$10,$f7,$a9,$0d,$8d,$11,$62,$a9,$00,$8d
.byte $0f,$62,$20,$6d,$f6,$20,$56,$f3,$60,$53,$44,$47,$35,$20,$80,$f6
.byte $20,$d0,$f6,$a2,$03,$b5,$00,$9d,$06,$70,$ca,$10,$f8,$4c,$d4,$f6
.byte $20,$d0,$f6,$a9,$ff,$8d,$00,$60,$8d,$01,$60,$8d,$00,$70,$8d,$01
.byte $70,$20,$cc,$f6,$a9,$00,$85,$00,$85,$01,$85,$02,$85,$03,$a9,$0a
.byte $85,$04,$a9,$70,$85,$05,$a0,$00,$b1,$04,$45,$00,$85,$00,$a5,$03
.byte $0a,$26,$00,$26,$01,$26,$02,$26,$03,$e6,$04,$d0,$02,$e6,$05,$a5
.byte $04,$c9,$5a,$a5,$05,$e9,$78,$d0,$dd,$4c,$d4,$f6,$a9,$c0,$d0,$06
.byte $a9,$80,$d0,$02,$a9,$40,$8d,$01,$a0,$60

; Name	:
; Marks	: Decode and set screen tile map
;	  ?cdd dddd
;	  if c == 1 || ? == 1
;	   dd dddd is count
;	   tile index(2) is 2nd, 3rd byte of ($10),Y
;	  1111 1111 is end of tilemap decode
;	  if c == 0 || ? == 1
;	   dd dddd is count
;	   tile index is 2nd, repeat for count
;	  if c == 0 || ? == 0
;	   tile index is next for count
;	  Y = count
	LDY #$00		; F6DA	$a0 $00
	LDA ($10),Y		; F6DC	$b1 $10
	CMP #$FF		; F6DE  C9 FF          
	BEQ BFF759		; F6E0  F0 77          
	TAX			; F6E2  AA             
	BPL BFF6EB		; F6E3  10 06		branch if ? is 0
	AND #$40		; F6E5  29 40          
	BEQ BFF72D		; F6E7  F0 44          
	BNE BFF6F1		; F6E9  D0 06          
BFF6EB:
	AND #$40		; F6EB  29 40          
	BEQ BFF716		; F6ED  F0 27          
	BNE BFF748		; F6EF  D0 57          
BFF6F1:
	TXA			; F6F1  8A             
	AND #$3F		; F6F2  29 3F          
	TAX			; F6F4  AA             
	LDY #$01		; F6F5  A0 01		2nd data
	LDA ($10),Y		; F6F7  B1 10          
	PHA			; F6F9  48             
	INY			; F6FA  C8		3rd data
	LDA ($10),Y		; F6FB  B1 10          
	TAY			; F6FD  A8             
	PLA			; F6FE  68             
BFF6FF:
	STA PpuData_2007	; F6FF  8D 07 20       
	STY PpuData_2007	; F702  8C 07 20       
	DEX			; F705  CA             
	BNE BFF6FF		; F706  D0 F7          
	CLC			; F708  18             
	LDA #$03		; F709  A9 03          
	ADC $10			; F70B  65 10          
	STA $10			; F70D  85 10          
	BCC BFF713		; F70F  90 02          
	INC $11			; F711  E6 11          
BFF713:
	JMP $F6DA		; F713  4C DA F6       
BFF716:
	INY			; F716  C8             
BFF717:
	LDA ($10),Y		; F717  B1 10          
	STA PpuData_2007	; F719  8D 07 20       
	INY			; F71C  C8             
	DEX			; F71D  CA             
	BNE BFF717		; F71E  D0 F7          
	CLC			; F720  18             
	TYA			; F721  98             
	ADC $10			; F722  65 10          
	STA $10			; F724  85 10          
	BCC BFF72A		; F726  90 02          
	INC $11			; F728  E6 11          
BFF72A:
	JMP $F6DA		; F72A  4C DA F6       
BFF72D:
	TXA			; F72D  8A             
	AND #$3F		; F72E  29 3F          
	TAX			; F730  AA             
	INY			; F731  C8             
	LDA ($10),Y		; F732  B1 10          
BFF734:
	STA PpuData_2007	; F734  8D 07 20       
	DEX			; F737  CA             
	BNE BFF734		; F738  D0 FA          
BFF73A:
	CLC			; F73A  18             
	LDA #$02		; F73B  A9 02          
	ADC $10			; F73D  65 10          
	STA $10			; F73F  85 10          
	BCC BFF745		; F741  90 02          
	INC $11			; F743  E6 11          
BFF745:
	JMP $F6DA		; F745  4C DA F6       
BFF748:
	TXA			; F748  8A             
	AND #$3F		; F749  29 3F          
	TAX			; F74B  AA             
	INY			; F74C  C8             
	LDA ($10),Y		; F74D  B1 10          
	TAY			; F74F  A8             
BFF750:
	STY PpuData_2007	; F750  8C 07 20       
	INY			; F753  C8             
	DEX			; F754  CA             
	BNE BFF750		; F755  D0 F9          
	BEQ BFF73A		; F757  F0 E1          
BFF759:
	RTS                     ; F759  60             

;$F75A
.byte $a9,$00,$38,$e5,$16,$85
.byte $16,$a9,$00,$e5,$17,$85,$17,$60,$a9,$00,$38,$e5,$18,$85,$18,$a9
.byte $00,$e5,$19,$85,$19,$60,$09,$00,$10,$05,$49,$ff,$18,$69,$01,$60
.byte $a2,$00,$86,$1a,$86,$1b,$a5,$17,$10,$04,$20,$5a,$f7,$e8,$a5,$19
.byte $10,$04,$20,$68,$f7,$e8,$8a,$48,$a2,$0f,$46,$17,$66,$16,$90,$0f
.byte $18,$a5,$1a,$65,$18,$85,$1a,$a5,$1b,$65,$19,$85,$1b,$70,$18,$06
.byte $18,$26,$19,$ca,$d0,$e4,$a5,$1a,$85,$16,$a5,$1b,$85,$17,$68,$4a
.byte $90,$03,$20,$5a,$f7,$18,$60,$68,$38,$60,$a9,$00,$85,$17,$85,$19
.byte $a9,$00,$85,$1a,$85,$1b,$a2,$10,$46,$17,$66,$16,$90,$0f,$18,$a5
.byte $1a,$65,$18,$85,$1a,$a5,$1b,$65,$19,$85,$1b,$b0,$11,$06,$18,$26
.byte $19,$ca,$d0,$e4,$a5,$1a,$85,$16,$a5,$1b,$85,$17,$18,$60,$38,$60
;$F800
.byte $85,$18,$a9,$0a,$85,$16,$a9,$00,$85,$19,$85,$17,$a5,$16,$05,$17
.byte $f0,$33,$a9,$00,$85,$1a,$85,$1b,$a2,$10,$18,$26,$18,$26,$19,$26
.byte $1a,$26,$1b,$a5,$1a,$c5,$16,$a5,$1b,$e5,$17,$90,$0f,$38,$a5,$1a
.byte $e5,$16,$85,$1a,$a5,$1b,$e5,$17,$85,$1b,$e6,$18,$ca,$d0,$db,$a5
.byte $1a,$85,$16,$18,$60,$38,$60,$a2,$00,$a5,$17,$10,$04,$20,$5a,$f7
.byte $e8,$a5,$19,$10,$04,$20,$68,$f7,$e8,$8a,$48,$20,$0c,$f8,$b0,$0c
.byte $68,$4a,$90,$06,$20,$5a,$f7,$20,$68,$f7,$18,$60,$68,$60,$a9,$00
.byte $85,$17,$a5,$16,$10,$02,$c6,$17,$60,$a9,$00,$85,$19,$a5,$18,$10
.byte $02,$c6,$19,$60

; Name	:
	JSR $F88A		; F884  $20 $8A $F8
	JMP $F8AF		; F887  $4C $AF $F8
; Name	:
	LDA $05			; F88A  $A5 $05
	PHA			; F88C  $48
	LDA #$04		; F88D  $A9 $04
	STA $05			; F88F  $85 $05
BFF891:
	LDA #$0A		; F891  $A9 $0A
	STA $16			; F893  $85 $16
	LDA #$00		; F895  $A9 $00
	STA $17			; F897  $85 $17
	JSR $F80C		; F899  $20 $0C $F8
	LDA $16			; F89C  $A5 $16
	CLC			; F89E  $18
	ADC #$30		; F89F  $69 $30
	LDX $05			; F8A1  $A6 $05
	STA $0450,X		; F8A3  $9D $50 $04
	DEX			; F8A6  $CA
	STX $05			; F8A7  $86 $05
	BPL BFF891		; F8A9  $10 $E6
	PLA			; F8AB  $68
	STA $05			; F8AC  $85 $05
	RTS			; F8AE  $60
	LDX #$00		; F8AF  $A2 $00
BFF8B1:
	LDA $0450,X		; F8B1  $BD $50 $04
	CMP #$30		; F8B4  $C9 $30
	BNE BFF8C2		; F8B6  $D0 $0A
	LDA #$20		; F8B8  $A9 $20
	STA $0450,X		; F8BA  $9D $50 $04
	INX			; F8BD  $E8
	CPX #$04		; F8BE  $E0 $04
	BCC BFF8B1		; F8C0  $90 $EF
BFF8C2:
	RTS			; F8C2  $60

; Name	:
	JSR $F88A		; F8C3  $20 $8A $F8
	LDA #$30		; F8C6  $A9 $30
	STA $0455		; F8C8  $8D $55 $04
	CLC			; F8CB  $18
	ADC $00			; F8CC  $65 $00
	STA $0450		; F8CE  $8D $50 $04
	JMP $F8AF		; F8D1  $4C $AF $F8

; Name	:
	STA $18			; F8D4  $85 $18
	LDA #$00		; F8D6  $A9 $00
	STA $19			; F8D8  $85 $19
	JSR $F884		; F8DA  $20 $84 $F8
	LDA $0452		; F8DD  $AD $52 $04
	LDX $0453		; F8E0  $AE $53 $04
	LDY $0454		; F8E3  $AC $54 $04
	RTS			; F8E6  $60

;$F8E7
.byte $00,$1e,$3c,$5a,$78,$96,$b4,$d2,$f0
.byte $00,$0f,$1e,$2d,$3c,$4b,$5a,$69,$78,$87,$96,$a5,$b4,$c3,$d2,$e1
;$F900
.byte $f0,$00,$0a,$14,$1e,$28,$32,$3c,$46,$50,$5a,$64,$6e,$78,$82,$8c
.byte $96,$a0,$aa,$b4,$be,$c8,$d2,$dc,$e6,$f0,$fa,$00,$05,$0a,$0f,$14
.byte $19,$1e,$23,$00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$00,$01,$02
.byte $03,$04,$00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$00,$01,$02,$03
.byte $04,$00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$00,$00,$00,$00,$00
.byte $01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03

; Name	:
	JSR $F96D		; F95F	$20 $6D $F9
	LDX #$0D		; F962	$A2 $0D
	LDA #$62		; F964	$A9 $62
BFF966:
	STA $0300,X		; F966	$9D $00 $03
	DEX			; F969	$CA
	BPL BFF966		; F96A	$10 $FA
	RTS			; F96C	$60

; Name	:
; Marks	: Write tile to buffer for initialization
	LDX #$7F		; F96D	$a2 $7f
	LDA #$20		; F96F	$a9 $20
BFF971:
	STA $0300,X		; F971	$9d $00 $03
	DEX			; F974	$ca
	BPL BFF971		; F975	$10 $fa
	RTS			; F977	$60

.byte $a2,$1d,$a9,$00,$95,$d1,$ca,$10
.byte $fb,$60

; Name	:
; Marks	: Reset tile buffer ??
	LDX #$3F		; F982  A2 3F          
	LDA #$20		; F984  A9 20          
BFF986:
	STA $0300,X		; F986  9D 00 03       
	DEX			; F989  CA             
	BPL BFF986		; F98A  10 FA          
	RTS			; F98C  60             

; Name	:
	LDA #$00		; F98D  A9 00          
	STA $2A			; F98F  85 2A          
	LDA #$03		; F991  A9 03          
	STA $2B			; F993  85 2B          
	RTS			; F995  60             

; Name	:
	LDA #$D1		; F996	$a9 $d1
	STA $2A			; F998	$85 $2a
	LDA #$00		; F99A	$a9 $00
	STA $2B			; F99C	$85 $2b
	RTS			; F99E	$60

; Name	:
; Marks	: Load string from table ??
;	  Copy to $0300
;	  X is Size of copy
	LDA $62			; F99F	$a5 $62
	LSR A			; F9A1	$4a
	PHA			; F9A2	$48
	JSR $F565		; F9A3	$20 $65 $f5
	LDX #$54		; F9A6	$a2 $54
	LDY #$00		; F9A8	$a0 $00
BFF9AA:
	LDA ($10),Y		; F9AA	$b1 $10
	STA $0300,Y		; F9AC	$99 $00 $03
	INY			; F9AF	$c8
	DEX			; F9B0	$ca
	BNE BFF9AA		; F9B1	$d0 $f7
	PLA			; F9B3	$68
	JMP $F570		; F9B4	$4c $70 $f5

; Name	:
	LDA #$50		; F9B7	$a9 $50
	STA $10			; F9B9	$85 $10
	LDA #$04		; F9BB	$a9 $04
	STA $11			; F9BD	$85 $11
	LDA #$08		; F9BF	$a9 $08
	STA $00			; F9C1	$85 $00
	JMP $F9D2		; F9C3	$4c $d2 $f9

; Name	:
; Marks	: text table to tile table ??
;	  $0300 convert $0300
	LDA #$54		; F9C6	$a9 $54
	STA $00			; F9C8	$85 $00
; Name	:
	LDA #$00		; F9CA	$a9 $00
	STA $10			; F9CC	$85 $10
	LDA #$03		; F9CE	$a9 $03
	STA $11			; F9D0	$85 $11
; Name	:
	LDX $00			; F9D2	$a6 $00
	LDY #$00		; F9D4	$a0,$00
BFF9D6:
	LDA ($10),Y		; F9D6	$b1 $10
	JSR $F9E2		; F9D8	$20 $e2 $f9
	STA ($10),Y		; F9DB	$91 $10
	INY			; F9DD	$c8
	DEX			; F9DE	$ca
	BNE BFF9D6		; F9DF	$d0 $f5
	RTS			; F9E1	$60

; Name	:
; Marks	: Convert table ??
	STX $0563		; F9E2	$8e $63 $05
	TAX			; F9E5	$aa
	LDA $F9ED,X		; F9E6	$bd $ed $f9
	LDX $0563		; F9E9	$ae $63 $05
	RTS			; F9EC	$60

;$F9ED - data block =
.byte $00,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$f0,$f1,$f2
;$FA00
.byte $f3,$d4,$e4,$d5,$e5,$b0,$b1,$b2,$b3,$fc,$fd,$fe,$ff,$40,$af,$ff
.byte $ff,$ff,$78,$ff,$ff,$c4,$c5,$4c,$c2,$4f,$32,$33,$4d,$41,$42,$43
.byte $44,$45,$46,$47,$48,$49,$4a,$4b,$ff,$ff,$ff,$ff,$ae,$50,$56,$57
.byte $51,$58,$59,$52,$76,$77,$5b,$75,$64,$65,$53,$6d,$36,$ff,$66,$67
.byte $54,$68,$69,$ff,$ff,$ff,$ff,$55,$ff,$79,$ff,$62,$63,$c1,$70,$71
.byte $72,$5f,$73,$74,$5a,$5c,$5d,$5e,$6a,$bc,$bd,$be,$bf,$ff,$81,$82
.byte $83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$8e,$8f,$90,$91,$92
.byte $93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f,$a0,$a1,$a2
.byte $a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$60,$61,$ff,$33,$ff
.byte $ff,$4f,$4e,$b6,$37,$38,$39,$3a,$3b,$3c,$3d,$3e,$3f,$32,$01,$02
.byte $03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f,$10,$11,$12
.byte $13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22
.byte $23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$30,$31,$d0,$d1,$d2
.byte $d3,$e0,$e1,$e2,$e3,$2f,$2e,$6b,$6c,$b4,$b5,$ba,$35,$b7,$b8,$b9
.byte $bb,$6e,$6f,$7a,$7b,$7c,$7d,$7e,$7f,$34,$ff,$ff,$ff
; Name	:
	JSR $F99F		; FAED	$20 $9f $f9
; Name	:
	JSR $F9C6		; FAF0	$20 $c6 $f9
	JSR $F98D		; FAF3	$20 $8d $f9
	LDA #$06		; FAF6	$a9 $06
	JMP $F4DA		; FAF8	$4c $da $f4

;$FAFB
.byte $20,$9f,$f9

; Name	:
	JSR $F9C6		; FAFE  $20 $C6 $F9
	JSR $F98D		; FB01  $20 $8D $F9
	LDA #$07		; FB04  $A9 $07
	JMP $F4DA		; FB06  $4C $DA $F4

; Name	:
; A	: Address low
; Y	: Address high
; Marks	: Load compressed text
	STA $12			; FB09  $85 $12
	STY $13			; FB0B  $84 $13
	LDY #$00		; FB0D  $A0 $00
	LDA ($12),Y		; FB0F  $B1 $12
	STA $10			; FB11  $85 $10
	INY			; FB13  $C8
	LDA ($12),Y		; FB14  $B1 $12
	STA $11			; FB16  $85 $11
	INY			; FB18  $C8
BFFB19:
	LDA ($12),Y		; FB19  $B1 $12
	CMP #$FF		; FB1B  $C9 $FF
	BEQ BFFB4E		; FB1D  $F0 $2F
	TAX			; FB1F  $AA
	INY			; FB20  $C8
	LDA ($12),Y		; FB21  $B1 $12
	JSR $F605		; FB23  $20 $05 $F6
	CMP #$DE		; FB26  $C9 $DE
	BEQ BFFB2E		; FB28  $F0 $04
	CMP #$DF		; FB2A  $C9 $DF
	BNE BFFB46		; FB2C  $D0 $18
BFFB2E:
	PHA			; FB2E  $48
	LDA ($10),Y		; FB2F  $B1 $10
	CMP #$62		; FB31  $C9 $62
	BEQ BFFB3F		; FB33  $F0 $0A
	CMP #$49		; FB35  $C9 $49
	BNE BFFB45		; FB37  $D0 $0C
	PLA			; FB39  $68
	SEC			; FB3A  $38
	SBC #$40		; FB3B  $E9 $40
	BNE BFFB46		; FB3D  $D0 $07
BFFB3F:
	PLA			; FB3F  $68
	SEC			; FB40  $38
	SBC #$80		; FB41  $E9 $80
	BNE BFFB46		; FB43  $D0 $01
BFFB45:
	PLA			; FB45  $68
BFFB46:
	STA ($10),Y		; FB46  $91 $10
	JSR $F605		; FB48  $20 $05 $F6
	INY			; FB4B  $C8
	BNE BFFB19		; FB4C  $D0 $CB
BFFB4E:
	RTS			; FB4E  $60

; Name	:
	LDA $00			; FB4F  $A5 $00
	PHA			; FB51  $48
	LDA $01			; FB52  $A5 $01
	PHA			; FB54  $48
	LDA $02			; FB55  $A5 $02
	PHA			; FB57  $48
	LDA $03			; FB58  $A5 $03
	PHA			; FB5A  $48
	LDA $04			; FB5B  $A5 $04
	PHA			; FB5D  $48
	LDA $05			; FB5E  $A5 $05
	PHA			; FB60  $48
	LDA #$04		; FB61  $A9 $04
	STA $01			; FB63  $85 $01
	LDA $89			; FB65  $A5 $89
	STA $02			; FB67  $85 $02
	LDY $88			; FB69  $A4 $88
	LDA $8A			; FB6B  $A5 $8A
	STA $04			; FB6D  $85 $04
	LDA $8C			; FB6F  $A5 $8C
	STA $03			; FB71  $85 $03
	LDA #$04		; FB73  $A9 $04
	STA $00			; FB75  $85 $00
	LDA $02			; FB77  $A5 $02
	STA $0200,Y		; FB79  $99 $00 $02
	INY			; FB7C  $C8
	LDA $04			; FB7D  $A5 $04
	STA $0200,Y		; FB7F  $99 $00 $02
	INY			; FB82  $C8
	LDA $8B			; FB83  $A5 $8B
	STA $0200,Y		; FB85  $99 $00 $02
	INY			; FB88  $C8
	LDA $03			; FB89  $A5 $03
	STA $0200,Y		; FB8B  $99 $00 $02
	INY			; FB8E  $C8
	DEC $00			; FB8F  $C6 $00
	BEQ BFFB9F		; FB91  $F0 $0C
	INC $04			; FB93  $E6 $04
	LDA $03			; FB95  $A5 $03
	CLC			; FB97  $18
	ADC #$08		; FB98  $69 $08
	STA $03			; FB9A  $85 $03
	JMP $FB77		; FB9C  $4C $77 $FB
BFFB9F:
	DEC $01			; FB9F  $C6 $01
	BEQ BFFBB6		; FBA1  $F0 $13
	LDA $04			; FBA3  $A5 $04
	AND #$FC		; FBA5  $29 $FC
	CLC			; FBA7  $18
	ADC #$10		; FBA8  $69 $10
	STA $04			; FBAA  $85 $04
	LDA $02			; FBAC  $A5 $02
	CLC			; FBAE  $18
	ADC #$08		; FBAF  $69 $08
	STA $02			; FBB1  $85 $02
	JMP $FB6F		; FBB3  $4C $6F $FB
BFFBB6:
	PLA			; FBB6  $68
	STA $05			; FBB7  $85 $05
	PLA			; FBB9  $68
	STA $04			; FBBA  $85 $04
	PLA			; FBBC  $68
	STA $03			; FBBD  $85 $03
	PLA			; FBBF  $68
	STA $02			; FBC0  $85 $02
	PLA			; FBC2  $68
	STA $01			; FBC3  $85 $01
	PLA			; FBC5  $68
	STA $00			; FBC6  $85 $00
	RTS			; FBC8  $60

;$FBC9
.byte $a9,$f8,$a0,$40,$9d,$00,$02
.byte $e8,$88,$d0,$f9,$60,$a5,$7e,$a0,$00,$4a,$b0,$08,$c8,$c8,$c0,$10
.byte $90,$f7,$18,$60,$b1,$10,$85,$66,$c8,$b1,$10,$85,$67,$6c,$66,$00
.byte $ae,$13,$62,$bd,$2a,$62,$c5,$a2,$90,$13,$d0,$10,$bd,$26,$62,$c5
;$FC00
.byte $a1,$90,$0a,$d0,$07,$bd,$22,$62,$c5,$a0,$90,$01,$60,$60,$ae,$13
.byte $62,$38,$bd,$22,$62,$e5,$a0,$9d,$22,$62,$bd,$26,$62,$e5,$a1,$9d
.byte $26,$62,$b0,$12,$bd,$22,$62,$18,$69,$10,$9d,$22,$62,$bd,$26,$62
.byte $69,$27,$9d,$26,$62,$18,$bd,$2a,$62,$e5,$a2,$9d,$2a,$62,$90,$01
.byte $60,$a9,$00,$9d,$22,$62,$9d,$26,$62,$9d,$2a,$62,$60,$a5,$16,$18
.byte $65,$1a,$85,$1a,$a5,$17,$65,$1b,$85,$1b,$a5,$1b,$c9,$27,$90,$15
.byte $d0,$1f,$a9,$10,$c5,$1a,$b0,$0d,$38,$a5,$1a,$e9,$10,$85,$1a,$a5
.byte $1b,$e9,$27,$85,$1b,$a5,$1c,$65,$18,$c9,$0a,$b0,$04,$85,$1c,$18
.byte $60,$a9,$0f,$85,$1a,$a9,$27,$85,$1b,$a9,$09,$85,$1c,$38,$60

; Name	:
	LDA #$70		; FC8F  $A9 $70
	STA PpuData_2007	; FC91  $8D $07 $20
	LDA #$71		; FC94  $A9 $71
	JSR $F22B		; FC96  $20 $2B $F2
	LDA #$72		; FC99  $A9 $72
	STA PpuData_2007	; FC9B  $8D $07 $20
	RTS			; FC9E  $60

; Name	:
	LDA #$73		; FC9F  $A9 $73
	STA PpuData_2007	; FCA1  $8D $07 $20
	LDA #$75		; FCA4  $A9 $75
	JSR $F22B		; FCA6  $20 $2B $F2
	LDA #$74		; FCA9  $A9 $74
	STA PpuData_2007	; FCAB  $8D $07 $20
	RTS			; FCAE  $60

; Name	:
	LDA #$5A		; FCAF  $A9 $5A
	STA PpuData_2007	; FCB1  $8D $07 $20
	LDA #$5B		; FCB4  $A9 $5B
	JSR $F22B		; FCB6  $20 $2B $F2
	LDA #$5C		; FCB9  $A9 $5C
	STA PpuData_2007	; FCBB  $8D $07 $20
	RTS			; FCBE  $60

; Name	:
	LDA #$61		; FCBF  $A9 $61
	STA $0300		; FCC1  $8D $00 $03
	LDA #$62		; FCC4  $A9 $62
	LDY #$1D		; FCC6  $A0 $1D
BFFCC8:
	STA $0301,Y		; FCC8  $99 $01 $03
	DEY			; FCCB  $88
	BPL BFFCC8		; FCCC  $10 $FA
	LDA #$63		; FCCE  $A9 $63
	STA $031F		; FCD0  $8D $1F $03
	RTS			; FCD3  $60

;$FCD4
.byte $a9,$64,$85,$84,$20,$e0,$fc,$e6,$84,$a5,$84,$60

; Name	:
	TYA			; FCE0	$98
	PHA			; FCE1	$48
	LDA $18			; FCE2	$a5 $18
	PHA			; FCE4	$48
	LDA $19			; FCE5	$a5 $19
	PHA			; FCE7	$48
	JSR $FD03		; FCE8	$20 $03 $fd
	BEQ BFFCFA		; FCEB	$f0 $0d
	STA $18			; FCED	$85 $18
	JSR $FD1B		; FCEF	$20 $1b $fd
;$FCF2
.byte $25,$18,$c5,$84,$b0,$f7,$85,$84
BFFCFA:
	PLA			; FCFA	$68
	STA $19			; FCFB	$85 $19
	PLA			; FCFD	$68
	STA $18			; FCFE	$85 $18
;$FD00
	PLA			; FD00	$68
	TAY			; FD01	$a8
	RTS			; FD02	$60

; Name	:
	LDA $84			; FD03	$a5 $84
	BEQ BFFD12		; FD05	$f0 $0b
	LDY #$00		; FD07	$a0 $00
BFFD09:
	ASL A			; FD09	$0a
	BCS BFFD0F		; FD0A	$b0 $03
	INY			; FD0C	$c8
	BNE BFFD09		; FD0D	$d0 $fa
BFFD0F:
	LDA $FD13,Y		; FD0F	$b9 $13 $fd
BFFD12:
	RTS			; FD12	$60

;$FD13
.byte $ff,$7f,$3f,$1f,$0f,$07,$03,$01,$a5,$80,$85,$82,$a5
.byte $81,$85,$83,$06,$82,$26,$83,$06,$82,$26,$83,$20,$59,$fd,$06,$82
.byte $26,$83,$20,$59,$fd,$06,$82,$26,$83,$06,$82,$26,$83,$20,$59,$fd
.byte $06,$82,$26,$83,$a0,$07,$06,$82,$26,$83,$20,$59,$fd,$88,$d0,$f6
.byte $e6,$80,$d0,$02,$e6,$81,$a5,$81,$60,$a5,$82,$18,$65,$80,$85,$80
.byte $a5,$83,$65,$81,$85,$81,$60,$a9,$10,$d0,$02,$a9,$f0,$85,$42,$a9
.byte $10,$85,$43,$20,$d3,$f4,$a5,$42,$d0,$f9,$60,$a5,$19,$85,$9b,$a9
.byte $00,$a0,$07,$99,$50,$04,$88,$10,$fa,$a9,$00,$85,$17,$85,$18,$46
.byte $19,$66,$18,$46,$19,$66,$18,$46,$19,$66,$18,$20,$0c,$f8,$a5,$18
.byte $d0,$06,$a5,$9b,$f0,$02,$e6,$18,$a5,$18,$29,$03,$85,$16,$a5,$18
.byte $4a,$4a,$a8,$f0,$06,$aa,$a9,$1b,$20,$c6,$fd,$a5,$16,$f0,$06,$18
.byte $69,$17,$99,$50,$04,$60,$9d,$4f,$04,$ca,$d0,$fa,$60,$a5,$18,$85
.byte $9b,$a9,$00,$a0,$05,$99,$50,$04,$88,$10,$fa,$a9,$00,$85,$17,$85
.byte $19,$a5,$16,$48,$a9,$18,$85,$16,$20,$d0,$f7,$a5,$16,$85,$18,$a5
.byte $17,$85,$19,$68,$85,$16,$a9,$00,$85,$17,$20,$0c,$f8,$a5,$18,$d0
;$FE00
.byte $06,$a5,$9b,$f0,$02,$e6,$18,$a5,$18,$29,$03,$85,$16,$a5,$18,$4a
.byte $4a,$a8,$f0,$06,$aa,$a9,$1f,$20,$c6,$fd,$a5,$16,$f0,$06,$18,$69
.byte $1b,$99,$50,$04,$60
OnRESET:
	SEI			; FE25	$78
	LDA #$08		; FE26	$a9 $08
	STA PpuControl_2000	; FE28	$8d $00 $20
	CLD			; FE2B	$d8
	LDX #$00		; FE2C	$a2 $00
	STX PpuMask_2001	; FE2E	$8e $01 $20
	STX OamAddr_2003	; FE31	$8e $03 $20
	STX DmcFreq_4010	; FE34	$8e $10 $40
	STX ApuStatus_4015	; FE37	$8e $15 $40
	STX $E000		; FE3A	$8e $00 $e0
	LDA #$40		; FE3D	$a9 $40
	STA $A001		; FE3F	$8d $01 $a0
	STA Ctrl2_FrameCtr_4017	; FE42	$8d $17 $40
	LDA #$00		; FE45	$a9 $00
	STA $5A			; FE47	$85 $5a
	LDA #$06		; FE49	$a9 $06
	STA $8000		; FE4B	$8d $00 $80
	LDA #$00		; FE4E	$a9 $00
	STA $8001		; FE50  8D 01 80       
	LDA PpuStatus_2002	; FE53  AD 02 20       
	LDA #$10		; FE56  A9 10          
	TAX			; FE58  AA             
BFFE59:
	STA PpuAddr_2006	; FE59  8D 06 20       
	STA PpuAddr_2006	; FE5C  8D 06 20       
	EOR #$10		; FE5F  49 10          
	DEX			; FE61  CA             
	BNE BFFE59		; FE62  D0 F5          
	LDX #$01		; FE64  A2 01          
BFFE66:
	LDA PpuStatus_2002	; FE66  AD 02 20       
	BPL BFFE66		; FE69  10 FB          
	DEX			; FE6B  CA             
	BPL BFFE66		; FE6C  10 F8          
	TXS			; FE6E  9A             
	LDA #$00		; FE6F  A9 00          
	TAX			; FE71  AA             
BFFE72:
	STA $00,X		; FE72  95 00          
	STA $0100,X		; FE74  9D 00 01       
	STA $0300,X		; FE77  9D 00 03
	STA $0400,X		; FE7A  9D 00 04       
	STA $0500,X		; FE7D  9D 00 05       
	STA $0600,X		; FE80  9D 00 06       
	STA $0700,X		; FE83  9D 00 07       
	INX			; FE86  E8             
	BNE BFFE72		; FE87  D0 E9          
	LDA #$08		; FE89  A9 08          
	STA $3C			; FE8B  85 3C          
	STA PpuControl_2000	; FE8D  8D 00 20       
	STA PpuControl_2000	; FE90  8D 00 20       
	LDA #$00		; FE93  A9 00          
	STA $3D			; FE95  85 3D          
	STA PpuMask_2001	; FE97  8D 01 20       
	STA PpuMask_2001	; FE9A  8D 01 20       
	STA $3E			; FE9D  85 3E          
	STA $3F			; FE9F  85 3F          
	STA $26			; FEA1  85 26          
	LDA #$00		; FEA3  A9 00          
	STA $A000		; FEA5  8D 00 A0       
	JSR $F55C		; FEA8  20 5C F5       
	JSR $8000		; FEAB  20 00 80       
	JSR $F56E		; FEAE  20 6E F5       
	JSR $F32B		; FEB1  20 2B F3       
	LDX #$1F		; FEB4  A2 1F          
BFFEB6:
	LDA $FF07,X		; FEB6  BD 07 FF       
	STA $03C0,X		; FEB9  9D C0 03       
	DEX			; FEBC  CA             
	BPL BFFEB6		; FEBD  10 F7          
	LDA #$01		; FEBF  A9 01          
	STA $2F			; FEC1  85 2F          
	JSR $F371		; FEC3  20 71 F3       
	JSR $F3AA		; FEC6  20 AA F3       
	JSR $F3C8		; FEC9  20 C8 F3       
	JSR $F610		; FECC  20 10 F6       
	JSR $F6D0		; FECF  20 D0 F6       
	JSR $F56B		; FED2  20 6B F5       
	JSR $8000		; FED5  20 00 80       
	LDX $00			; FED8	$a6 $00
	BEQ BFFEEB		; FEDA	$f0 $0f
	DEX			; FEDC	$ca
	BEQ BFFEE5		; FEDD	$f0 $06
	JSR $BB55		; FEFD	$20 $55 $bb
	JMP $FED2		; FEE2	$4c $d2 $fe
BFFEE5:
	JSR $D369		; FEE6	$20 $69 $d3
	JMP $FED2		; FEE8	$4c $d2 $fe
BFFEEB:
	JSR $A715		; FEEB	$20 $15 $a7
	JSR $C17D		; FEEE	$20 $7d $c1
	JSR $A98B		; FEF1	$20 $8b $a9
	JSR $C1C7		; FEF4	$20 $c7 $c1
	JSR $F56E		; FEF7	$20 $6e $f5
	CLI			; FEFA	$58
	JSR $F3C8		; FEFB	$20 $c8 $f3
	JSR $F34A		; FEFE	$20 $4a $f3
	JSR $F4D3		; FF01	$20 $d3 $f4
	JMP $C003		; FF04	$4c $03 $c0

;$FF07 - data(size = 1Fh)
.byte $0f,$01,$20,$30,$0f,$05,$20,$30,$0f
.byte $17,$20,$30,$0f,$1a,$20,$30,$0f,$12,$21,$30,$0f,$16,$24,$30,$0f
.byte $28,$37,$30,$0f,$2a,$3a,$30

.if ORIGINAL
;$FF27
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.else
; Name	:
; Marks	: To menu / To choose the scenario
	LDA #$00		; FF27	$a9 $00
	STA $44			; FF29	$85 $44
	STA $5A			; FF2B	$85 $5a
	STA $27			; FF2D	$85 $27
	LDA #$80		; FF2F	$a9 $00
	STA $5B			; FF31	$85 $5b		R0 CHR ROM $0000-$07FF
	LDA #$82		; FF33	$a9 $02
	STA $5C			; FF35	$85 $5c		R1 CHR ROM $0800-$0FFF
	LDA #$1A		; FF37	$a9 $1a
	STA $5D			; FF39	$85 $5d		R2 CHR ROM $1000-$13FF
	RTS			; FF3B	$60
.endif
;$FF3C- about 7 left (164 bytes)
.byte $ff,$ff,$ff,$ff
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

.byte $20,$20,$20,$20,$20,$53,$44,$20,$47,$55,$4e,$44,$41,$4d,$20,$35
.byte $00,$00,$00,$00,$44,$04,$01,$0a,$e2,$00
.word OnNMI			; FFFA	$be $ea
.word OnRESET			; FFFC	$25 $fe
.word OnIRQ			; FFFE	$54 $ed
