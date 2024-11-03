.include "Constants.inc"

.segment "BANK_09"

;$A000
.byte $02,$8a,$02,$52,$03,$84,$03,$40,$06,$6c,$07,$fc,$08,$5e,$01,$84
.byte $03,$b6,$03,$4c,$04,$46,$05,$dc,$05,$0e,$06,$34,$08,$98,$08,$c4
.byte $09,$90,$01,$a4,$01,$da,$02,$84,$03,$b6,$03,$b0,$04,$e2,$04,$aa
.byte $05,$a4,$06,$08,$07,$90,$01,$f4,$01,$bc,$02,$20,$03,$4c,$04,$b0
.byte $04,$ff,$90,$01,$bc,$02,$4c,$04,$ff,$f4,$01,$20,$03,$b0,$04,$ff
.byte $14,$00,$14,$00,$1c,$00,$1f,$00,$26,$00,$28,$00,$ff,$14,$00,$1c
.byte $00,$26,$00,$ff,$14,$00,$1f,$00,$28,$00,$ff,$0a,$00,$0a,$00,$0c
.byte $00,$0d,$00,$10,$00,$11,$00,$13,$00,$14,$00,$ff,$0a,$00,$0c,$00
.byte $10,$00,$13,$00,$ff,$0a,$00,$0d,$00,$11,$00,$14,$00,$ff
;$A08E - data block =
.byte $05,$00
.byte $00,$80,$80,$af,$85,$00,$03,$ae,$00,$80,$84,$00,$02,$af,$80,$84
.byte $00,$03,$be,$00,$80,$83,$00,$08,$80,$00,$ae,$00,$00,$be,$80,$bc
.byte $83,$00,$05,$ae,$80,$00,$00,$ae,$85,$00,$04,$80,$00,$ae,$80,$83
.byte $00,$05,$ae,$00,$be,$00,$ae,$8b,$00,$01,$af,$83,$00,$01,$be,$88
.byte $00,$c2,$be,$00,$03,$00,$00,$be,$83,$00,$11,$be,$00,$80,$be,$00
.byte $82,$83,$00,$ad,$00,$00,$be,$ad,$00,$00,$8e,$8f,$45,$54,$05,$bc
.byte $00,$00,$a0,$a1,$85,$00,$85,$80,$03,$92,$93,$01,$84,$00,$43,$02
;$A100
.byte $05,$9e,$9f,$05,$06,$0d,$84,$00,$20,$08,$b0,$b1,$4f,$5f,$43,$80
.byte $be,$ae,$80,$80,$be,$4f,$5f,$52,$00,$09,$82,$83,$11,$0b,$00,$af
.byte $00,$0a,$07,$ad,$34,$0f,$84,$85,$10,$84,$00,$02,$80,$00,$84,$80
.byte $01,$af,$85,$80,$0f,$00,$92,$93,$4f,$5f,$51,$80,$bc,$1a,$00,$82
.byte $83,$35,$94,$95,$43,$4c,$1d,$80,$80,$ad,$80,$80,$af,$be,$80,$bc
.byte $80,$ae,$80,$80,$be,$00,$12,$00,$07,$00,$00,$ad,$80,$1a,$af,$92
.byte $93,$00,$00,$13,$83,$00,$04,$80,$be,$00,$00,$85,$80,$16,$be,$80
.byte $80,$00,$80,$14,$15,$af,$80,$07,$bc,$ad,$80,$1a,$4f,$5f,$50,$07
.byte $ad,$16,$17,$bc,$85,$80,$01,$be,$86,$80,$0c,$fe,$80,$80,$18,$00
.byte $80,$ae,$00,$07,$80,$be,$0c,$84,$00,$09,$07,$00,$19,$80,$00,$bc
.byte $80,$80,$bc,$83,$80,$04,$be,$80,$ae,$80,$83,$00,$01,$1b,$85,$00
.byte $44,$a2,$08,$00,$bc,$af,$00,$07,$1c,$00,$00,$85,$80,$01,$ae,$84
.byte $80,$43,$49,$03,$86,$87,$25,$83,$23,$01,$24,$44,$b2,$01,$25,$83
.byte $23,$08,$24,$88,$89,$00,$80,$af,$80,$be,$84,$80,$02,$be,$80,$83
.byte $00,$07,$96,$97,$00,$bc,$ad,$80,$be,$44,$a6,$83,$00,$04,$80,$00
.byte $98,$99,$43,$59,$88,$80,$0a,$00,$af,$00,$00,$20,$07,$00,$ae,$80
;$A200
.byte $80,$44,$b6,$06,$00,$bc,$be,$bc,$00,$21,$84,$00,$03,$80,$80,$af
.byte $83,$80,$09,$ad,$80,$ae,$80,$80,$00,$22,$00,$07,$83,$00,$0a,$bc
.byte $80,$0a,$af,$07,$00,$80,$ad,$00,$1d,$84,$80,$20,$be,$00,$00,$ae
.byte $80,$ad,$80,$bc,$80,$80,$bc,$80,$1e,$1f,$ae,$07,$00,$af,$80,$af
.byte $1a,$80,$00,$07,$bc,$80,$26,$27,$80,$af,$80,$bc,$84,$00,$05,$80
.byte $bc,$80,$80,$00,$83,$80,$0f,$00,$28,$00,$00,$07,$00,$00,$80,$1a
.byte $ad,$80,$80,$07,$00,$29,$83,$00,$85,$80,$1d,$be,$80,$80,$af,$00
.byte $80,$af,$80,$ae,$00,$8c,$8d,$00,$00,$07,$80,$bc,$1a,$80,$80,$be
.byte $00,$82,$83,$4f,$5f,$42,$ae,$be,$85,$80,$83,$00,$14,$4f,$5f,$53
.byte $00,$08,$9c,$9d,$2a,$2b,$af,$07,$00,$0c,$00,$00,$2c,$2d,$92,$93
.byte $01,$84,$00,$0d,$80,$80,$be,$80,$bc,$80,$80,$ae,$00,$82,$83,$10
.byte $00,$43,$5c,$43,$2e,$02,$8a,$8b,$43,$31,$84,$00,$06,$09,$82,$83
.byte $4f,$5f,$41,$83,$80,$01,$ae,$83,$00,$04,$92,$93,$00,$bc,$84,$80
.byte $04,$be,$00,$9a,$9b,$45,$44,$05,$80,$bc,$00,$92,$93,$83,$00,$02
.byte $80,$af,$fd,$00,$00,$fd,$00,$00,$ac,$00,$2d,$14,$50,$50,$90,$61
.byte $10,$50,$40,$15,$55,$55,$59,$56,$aa,$55,$45,$45,$91,$65,$c5,$75
;$A300
.byte $85,$25,$55,$45,$49,$16,$4d,$57,$58,$46,$55,$15,$54,$aa,$90,$61
.byte $55,$51,$55,$01,$05,$05,$09,$06,$83,$05,$90,$00,$ff
;$A31D - data block = Earth city map ??(compressed $A31D-$A43D)
.byte $f6,$00,$00
.byte $43,$00,$93,$00,$01,$03,$8b,$00,$47,$04,$8d,$00,$46,$0b,$02,$00
.byte $00,$43,$11,$02,$00,$04,$85,$00,$44,$14,$8b,$00,$02,$0b,$0c,$83
.byte $00,$49,$18,$02,$00,$00,$46,$21,$8b,$00,$03,$0b,$0c,$00,$44,$27
.byte $83,$1c,$02,$2b,$1c,$4a,$2c,$01,$00,$43,$36,$01,$0a,$86,$00,$47
.byte $39,$09,$1c,$1c,$2b,$40,$00,$41,$00,$42,$00,$46,$43,$83,$48,$01
.byte $49,$86,$00,$49,$4a,$05,$2b,$53,$54,$00,$00,$47,$55,$8b,$00,$4e
.byte $5c,$83,$00,$44,$6a,$87,$00,$43,$6e,$01,$0a,$50,$71,$02,$00,$00
.byte $45,$81,$02,$00,$86,$83,$00,$43,$87,$05,$88,$8a,$8b,$1c,$1c,$48
.byte $8c,$84,$93,$83,$00,$47,$94,$84,$00,$45,$9b,$05,$8b,$a0,$a1,$00
.byte $00,$43,$a2,$83,$00,$46,$a5,$01,$1c,$43,$ab,$02,$93,$ae,$83,$00
.byte $01,$af,$83,$93,$01,$00,$47,$b0,$01,$00,$45,$b7,$85,$00,$04,$6a
.byte $1c,$bc,$bd,$89,$00,$04,$be,$1c,$1c,$bf,$83,$93,$49,$c0,$84,$00
.byte $04,$c9,$ca,$af,$bd,$86,$00,$05,$cb,$00,$00,$cc,$cd,$84,$00,$04
.byte $ce,$1c,$1c,$cf,$84,$d0,$01,$d1,$84,$00,$05,$d2,$00,$00,$af,$d3
;$A400
.byte $85,$00,$01,$d4,$88,$00,$44,$d5,$89,$00,$08,$d9,$00,$0d,$0e,$da
.byte $10,$00,$00,$45,$db,$88,$00,$02,$e0,$e1,$89,$00,$01,$e2,$89,$00
.byte $01,$e3,$8b,$00,$46,$e4,$8e,$00,$01,$ea,$8a,$00,$02,$eb,$ec,$fd
.byte $00,$00,$fd,$00,$00,$bb,$00,$a8,$ff,$88,$0f,$90,$00,$ff,$68,$a4
.byte $d7,$a4,$7a,$a5,$e7,$a5,$76,$a6,$16,$a7,$85,$a7,$f4,$a7,$85,$a8
.byte $32,$a9,$cf,$a9,$7a,$aa,$1e,$ab,$be,$ab,$2b,$ac,$a8,$ac,$1d,$ad
.byte $97,$ad,$1b,$ae,$97,$ae,$17,$af,$f0,$00,$00,$01,$00,$8e,$bf,$92
.byte $00,$83,$bf,$48,$c0,$83,$bf,$85,$00,$05,$82,$83,$4f,$5f,$42,$88
.byte $00,$83,$bf,$48,$d0,$83,$bf,$85,$00,$02,$92,$93,$8b,$00,$83,$bf
.byte $48,$e0,$83,$bf,$87,$00,$01,$07,$8a,$00,$83,$bf,$48,$f0,$83,$bf
.byte $88,$00,$02,$82,$83,$88,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$02
.byte $92,$93,$88,$00,$83,$bf,$48,$d8,$83,$bf,$88,$00,$03,$4f,$5f,$41
.byte $87,$00,$83,$bf,$48,$e8,$83,$bf,$92,$00,$83,$bf,$48,$f8,$83,$bf
.byte $92,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$83,$00
.byte $44,$b2,$8b,$00,$83,$bf,$48,$c0,$83,$bf,$83,$00,$44,$a6,$84,$00
.byte $02,$88,$89,$43,$59,$02,$00,$00,$83,$bf,$48,$d0,$83,$bf,$83,$00
;$A500
.byte $44,$b6,$84,$00,$02,$98,$99,$85,$00,$83,$bf,$48,$e0,$83,$bf,$83
.byte $00,$43,$69,$05,$7b,$07,$00,$00,$0e,$87,$00,$83,$bf,$48,$f0,$83
.byte $bf,$88,$00,$05,$82,$81,$4f,$5f,$42,$85,$00,$83,$bf,$48,$c8,$83
.byte $bf,$88,$00,$02,$92,$93,$88,$00,$83,$bf,$48,$d8,$83,$bf,$87,$00
.byte $04,$0e,$00,$00,$07,$87,$00,$83,$bf,$48,$e8,$83,$bf,$85,$00,$02
.byte $8a,$8b,$84,$00,$02,$82,$83,$85,$00,$83,$bf,$48,$f8,$83,$bf,$85
.byte $00,$02,$9a,$9b,$84,$00,$02,$92,$93,$85,$00,$8e,$bf,$83,$00,$45
.byte $44,$83,$00,$03,$4f,$5f,$41,$a3,$00,$ff,$f0,$00,$00,$01,$00,$8e
.byte $bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0,$83
.byte $bf,$92,$00,$83,$bf,$48,$e0,$83,$bf,$92,$00,$83,$bf,$48,$f0,$83
.byte $bf,$88,$00,$05,$a0,$a1,$4f,$5f,$43,$85,$00,$83,$bf,$48,$c8,$83
.byte $bf,$88,$00,$02,$b0,$b1,$88,$00,$83,$bf,$48,$d8,$83,$bf,$87,$00
.byte $01,$0e,$8a,$00,$83,$bf,$48,$e8,$83,$bf,$85,$00,$02,$84,$85,$8b
.byte $00,$83,$bf,$48,$f8,$83,$bf,$85,$00,$02,$ba,$95,$8b,$00,$8e,$bf
.byte $84,$00,$43,$4c,$aa,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00
.byte $83,$bf,$48,$c0,$83,$bf,$85,$00,$02,$8e,$8f,$84,$00,$02,$84,$85
;$A600
.byte $43,$4c,$02,$00,$00,$83,$bf,$48,$d0,$83,$bf,$85,$00,$02,$9e,$9f
.byte $84,$00,$02,$94,$95,$85,$00,$83,$bf,$48,$e0,$83,$bf,$02,$00,$00
.byte $45,$54,$04,$07,$00,$00,$0e,$87,$00,$83,$bf,$48,$f0,$83,$bf,$88
.byte $00,$02,$82,$81,$88,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$02,$92
.byte $93,$88,$00,$83,$bf,$48,$d8,$83,$bf,$86,$00,$05,$4f,$5f,$50,$00
.byte $07,$87,$00,$83,$bf,$48,$e8,$83,$bf,$8b,$00,$02,$88,$89,$85,$00
.byte $83,$bf,$48,$f8,$83,$bf,$8b,$00,$02,$98,$99,$85,$00,$8e,$bf,$8b
.byte $00,$43,$59,$a3,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00,$83
.byte $bf,$48,$c0,$83,$bf,$85,$00,$02,$82,$83,$84,$00,$02,$8e,$8f,$85
.byte $00,$83,$bf,$48,$d0,$83,$bf,$07,$00,$00,$4f,$5f,$52,$92,$93,$84
.byte $00,$02,$9e,$9f,$85,$00,$83,$bf,$48,$e0,$83,$bf,$87,$00,$04,$07
.byte $00,$00,$0e,$45,$54,$02,$00,$00,$83,$bf,$48,$f0,$83,$bf,$88,$00
.byte $02,$82,$81,$88,$00,$83,$bf,$48,$c8,$83,$bf,$85,$00,$05,$4f,$5f
.byte $51,$92,$93,$88,$00,$83,$bf,$48,$d8,$83,$bf,$87,$00,$05,$0e,$00
.byte $00,$07,$00,$45,$73,$01,$00,$83,$bf,$48,$e8,$83,$bf,$85,$00,$02
.byte $86,$87,$84,$00,$44,$a2,$83,$00,$83,$bf,$48,$f8,$83,$bf,$85,$00
;$A700
.byte $02,$96,$97,$84,$00,$44,$b2,$83,$00,$8e,$bf,$84,$00,$43,$49,$84
.byte $00,$44,$a6,$a2,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00,$83
.byte $bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0,$83,$bf,$92,$00,$83
.byte $bf,$48,$e0,$83,$bf,$92,$00,$83,$bf,$48,$f0,$83,$bf,$88,$00,$05
.byte $82,$83,$4f,$5f,$52,$85,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$02
.byte $92,$93,$88,$00,$83,$bf,$48,$d8,$83,$bf,$8a,$00,$01,$07,$87,$00
.byte $83,$bf,$48,$e8,$83,$bf,$8b,$00,$02,$82,$83,$85,$00,$83,$bf,$48
.byte $f8,$83,$bf,$8b,$00,$02,$92,$93,$85,$00,$8e,$bf,$8b,$00,$03,$4f
.byte $5f,$51,$a3,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00,$83,$bf
.byte $48,$c0,$83,$bf,$8b,$00,$02,$8c,$8d,$85,$00,$83,$bf,$48,$d0,$83
.byte $bf,$8b,$00,$02,$9c,$9d,$85,$00,$83,$bf,$48,$e0,$83,$bf,$8a,$00
.byte $02,$0e,$00,$43,$5c,$83,$00,$83,$bf,$48,$f0,$83,$bf,$88,$00,$02
.byte $82,$81,$88,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$02,$92,$93,$88
.byte $00,$83,$bf,$48,$d8,$83,$bf,$87,$00,$03,$4f,$5f,$53,$88,$00,$83
.byte $bf,$48,$e8,$83,$bf,$92,$00,$83,$bf,$48,$f8,$83,$bf,$92,$00,$8e
.byte $bf,$b1,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00,$83,$bf,$48
;$A800
.byte $c0,$83,$bf,$02,$00,$00,$43,$49,$02,$86,$87,$8b,$00,$83,$bf,$48
.byte $d0,$83,$bf,$85,$00,$02,$96,$97,$8b,$00,$83,$bf,$48,$e0,$83,$bf
.byte $87,$00,$02,$07,$00,$43,$5c,$86,$00,$83,$bf,$48,$f0,$83,$bf,$88
.byte $00,$02,$8c,$8d,$88,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$02,$9c
.byte $9d,$88,$00,$83,$bf,$48,$d8,$83,$bf,$87,$00,$04,$0e,$00,$00,$07
.byte $87,$00,$83,$bf,$48,$e8,$83,$bf,$85,$00,$02,$82,$81,$84,$00,$02
.byte $8a,$8b,$85,$00,$83,$bf,$48,$f8,$83,$bf,$85,$00,$02,$92,$93,$84
.byte $00,$02,$9a,$9b,$85,$00,$8e,$bf,$84,$00,$03,$4f,$5f,$53,$83,$00
.byte $45,$44,$a2,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$0a,$00,$4f,$5f
.byte $50,$82,$83,$00,$00,$84,$ab,$88,$00,$83,$bf,$48,$c0,$83,$bf,$84
.byte $00,$06,$92,$93,$00,$00,$ba,$95,$43,$4c,$85,$00,$83,$bf,$48,$d0
.byte $83,$bf,$86,$00,$04,$07,$00,$00,$0a,$88,$00,$83,$bf,$48,$e0,$83
.byte $bf,$02,$00,$00,$43,$a3,$05,$00,$00,$07,$00,$1a,$88,$00,$83,$bf
.byte $48,$f0,$83,$bf,$02,$00,$00,$43,$b3,$05,$25,$23,$24,$88,$89,$88
.byte $00,$83,$bf,$48,$c8,$83,$bf,$02,$00,$00,$43,$a7,$83,$00,$02,$98
.byte $99,$43,$59,$85,$00,$83,$bf,$48,$d8,$83,$bf,$05,$00,$00,$b7,$b8
;$A900
.byte $bd,$84,$00,$01,$0a,$88,$00,$83,$bf,$48,$e8,$83,$bf,$02,$00,$00
.byte $44,$78,$83,$00,$01,$1a,$88,$00,$83,$bf,$48,$f8,$83,$bf,$88,$00
.byte $02,$82,$83,$88,$00,$8e,$bf,$88,$00,$05,$92,$93,$4f,$5f,$42,$a4
.byte $00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00,$83,$bf,$48,$c0,$83
.byte $bf,$92,$00,$83,$bf,$48,$d0,$83,$bf,$92,$00,$83,$bf,$48,$e0,$83
.byte $bf,$87,$00,$45,$54,$86,$00,$83,$bf,$48,$f0,$83,$bf,$83,$00,$0c
.byte $82,$83,$25,$23,$24,$8e,$8f,$25,$23,$24,$84,$ab,$83,$00,$83,$bf
.byte $48,$c8,$83,$bf,$83,$00,$02,$92,$93,$83,$00,$02,$9e,$9f,$83,$00
.byte $02,$ba,$95,$83,$00,$83,$bf,$48,$d8,$83,$bf,$05,$00,$00,$4f,$5f
.byte $51,$84,$00,$04,$1a,$07,$00,$00,$43,$4c,$02,$00,$00,$83,$bf,$48
.byte $e8,$83,$bf,$87,$00,$01,$ac,$43,$a3,$01,$07,$86,$00,$83,$bf,$48
.byte $f8,$83,$bf,$87,$00,$44,$b2,$07,$00,$82,$83,$4f,$5f,$50,$00,$8e
.byte $bf,$02,$00,$00,$45,$64,$44,$a6,$03,$00,$92,$93,$a3,$00,$ff,$f0
.byte $00,$00,$01,$00,$8e,$bf,$88,$00,$02,$82,$83,$88,$00,$83,$bf,$48
.byte $c0,$83,$bf,$85,$00,$05,$4f,$5f,$51,$92,$93,$88,$00,$83,$bf,$48
.byte $d0,$83,$bf,$89,$00,$01,$0a,$83,$00,$43,$70,$02,$00,$00,$83,$bf
;$AA00
.byte $48,$e0,$83,$bf,$89,$00,$01,$1a,$83,$00,$05,$ac,$a3,$a4,$00,$00
.byte $83,$bf,$48,$f0,$83,$bf,$88,$00,$05,$86,$87,$25,$23,$24,$43,$b2
.byte $02,$00,$00,$83,$bf,$48,$c8,$83,$bf,$85,$00,$43,$49,$02,$96,$97
.byte $83,$00,$43,$a6,$02,$00,$00,$83,$bf,$48,$d8,$83,$bf,$89,$00,$04
.byte $0a,$07,$00,$00,$43,$b6,$02,$00,$00,$83,$bf,$48,$e8,$83,$bf,$89
.byte $00,$03,$1a,$00,$07,$45,$44,$01,$00,$83,$bf,$48,$f8,$83,$bf,$88
.byte $00,$06,$8c,$8d,$00,$00,$8a,$8b,$84,$00,$8e,$bf,$85,$00,$43,$5c
.byte $06,$9c,$9d,$00,$00,$9a,$9b,$a3,$00,$ff,$f0,$00,$00,$01,$00,$8e
.byte $bf,$84,$00,$03,$86,$87,$00,$44,$b2,$87,$00,$83,$bf,$48,$c0,$83
.byte $bf,$84,$00,$03,$96,$97,$00,$44,$a6,$02,$64,$65,$43,$6c,$02,$00
.byte $00,$83,$bf,$48,$d0,$83,$bf,$02,$00,$00,$43,$49,$02,$00,$07,$43
.byte $b6,$01,$bd,$87,$00,$83,$bf,$48,$e0,$83,$bf,$87,$00,$03,$07,$00
.byte $1a,$83,$00,$05,$4f,$5f,$42,$00,$00,$83,$bf,$48,$f0,$83,$bf,$83
.byte $00,$0c,$8c,$8d,$25,$23,$24,$8a,$8b,$25,$23,$24,$82,$83,$83,$00
.byte $83,$bf,$48,$c8,$83,$bf,$83,$00,$02,$9c,$9d,$83,$00,$02,$9a,$9b
.byte $83,$00,$02,$92,$93,$83,$00,$83,$bf,$48,$d8,$83,$bf,$02,$00,$00
;$AB00
.byte $43,$5c,$02,$00,$00,$45,$44,$86,$00,$83,$bf,$48,$e8,$83,$bf,$92
.byte $00,$83,$bf,$48,$f8,$83,$bf,$92,$00,$8e,$bf,$b1,$00,$ff,$f0,$00
.byte $00,$01,$00,$8e,$bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$85,$00,$02
.byte $8e,$8f,$84,$00,$07,$a0,$a1,$4f,$5f,$43,$00,$00,$83,$bf,$48,$d0
.byte $83,$bf,$85,$00,$02,$9e,$9f,$84,$00,$02,$b0,$b1,$85,$00,$83,$bf
.byte $48,$e0,$83,$bf,$02,$00,$00,$45,$54,$04,$07,$00,$00,$0e,$87,$00
.byte $83,$bf,$48,$f0,$83,$bf,$88,$00,$02,$84,$ab,$43,$4c,$85,$00,$83
.byte $bf,$48,$c8,$83,$bf,$88,$00,$02,$ba,$95,$88,$00,$83,$bf,$48,$d8
.byte $83,$bf,$87,$00,$04,$0e,$00,$00,$07,$87,$00,$83,$bf,$48,$e8,$83
.byte $bf,$85,$00,$02,$82,$81,$84,$00,$02,$88,$89,$85,$00,$83,$bf,$48
.byte $f8,$83,$bf,$85,$00,$02,$92,$93,$84,$00,$02,$98,$99,$85,$00,$8e
.byte $bf,$84,$00,$03,$4f,$5f,$50,$84,$00,$43,$59,$a3,$00,$ff,$f0,$00
.byte $00,$01,$00,$8e,$bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$92,$00,$83
.byte $bf,$48,$d0,$83,$bf,$85,$00,$43,$70,$02,$00,$00,$43,$61,$85,$00
.byte $83,$bf,$48,$e0,$83,$bf,$86,$00,$01,$91,$83,$00,$01,$91,$87,$00
.byte $83,$bf,$48,$f0,$83,$bf,$87,$00,$03,$07,$00,$0e,$88,$00,$83,$bf
;$AC00
.byte $48,$c8,$83,$bf,$88,$00,$01,$91,$89,$00,$83,$bf,$48,$d8,$83,$bf
.byte $86,$00,$44,$7c,$88,$00,$83,$bf,$48,$e8,$83,$bf,$92,$00,$83,$bf
.byte $48,$f8,$83,$bf,$92,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00
.byte $8e,$bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0
.byte $83,$bf,$88,$00,$01,$91,$45,$73,$84,$00,$83,$bf,$48,$e0,$83,$bf
.byte $88,$00,$01,$3e,$89,$00,$83,$bf,$48,$f0,$83,$bf,$88,$00,$01,$3e
.byte $89,$00,$83,$bf,$48,$c8,$83,$bf,$04,$00,$00,$86,$87,$84,$3f,$01
.byte $91,$89,$00,$83,$bf,$48,$d8,$83,$bf,$06,$00,$00,$96,$97,$00,$00
.byte $43,$70,$01,$07,$88,$00,$83,$bf,$48,$e8,$83,$bf,$02,$00,$00,$43
.byte $49,$85,$00,$01,$91,$87,$00,$83,$bf,$48,$f8,$83,$bf,$89,$00,$44
.byte $7c,$85,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92
.byte $00,$83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0,$83,$bf,$84
.byte $00,$45,$73,$89,$00,$83,$bf,$48,$e0,$83,$bf,$86,$00,$01,$91,$8b
.byte $00,$83,$bf,$48,$f0,$83,$bf,$87,$00,$01,$07,$43,$61,$87,$00,$83
.byte $bf,$48,$c8,$83,$bf,$88,$00,$01,$91,$84,$3f,$01,$91,$84,$00,$83
.byte $bf,$48,$d8,$83,$bf,$87,$00,$01,$0e,$83,$00,$45,$64,$02,$00,$00
;$AD00
.byte $83,$bf,$48,$e8,$83,$bf,$86,$00,$01,$91,$8b,$00,$83,$bf,$48,$f8
.byte $83,$bf,$84,$00,$44,$7c,$8a,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00
.byte $01,$00,$8e,$bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$84,$00,$05,$82
.byte $83,$4f,$5f,$51,$89,$00,$83,$bf,$48,$d0,$83,$bf,$84,$00,$02,$92
.byte $93,$8c,$00,$83,$bf,$48,$e0,$83,$bf,$86,$00,$01,$07,$8b,$00,$83
.byte $bf,$48,$f0,$83,$bf,$87,$00,$01,$07,$8a,$00,$83,$bf,$48,$c8,$83
.byte $bf,$83,$00,$45,$73,$04,$91,$3f,$3f,$91,$43,$61,$83,$00,$83,$bf
.byte $48,$d8,$83,$bf,$87,$00,$01,$0e,$8a,$00,$83,$bf,$48,$e8,$83,$bf
.byte $86,$00,$01,$91,$8b,$00,$83,$bf,$48,$f8,$83,$bf,$85,$00,$43,$70
.byte $8a,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00
.byte $83,$bf,$48,$c0,$83,$bf,$02,$00,$00,$45,$54,$02,$8e,$8f,$89,$00
.byte $83,$bf,$48,$d0,$83,$bf,$87,$00,$03,$9e,$9f,$00,$44,$78,$84,$00
.byte $83,$bf,$48,$e0,$83,$bf,$88,$00,$03,$3e,$00,$91,$87,$00,$83,$bf
.byte $48,$f0,$83,$bf,$88,$00,$02,$3e,$0e,$88,$00,$83,$bf,$48,$c8,$83
.byte $bf,$02,$00,$00,$43,$61,$04,$91,$3f,$3f,$91,$45,$64,$84,$00,$83
.byte $bf,$48,$d8,$83,$bf,$89,$00,$01,$07,$88,$00,$83,$bf,$48,$e8,$83
;$AE00
.byte $bf,$8a,$00,$01,$91,$87,$00,$83,$bf,$48,$f8,$83,$bf,$89,$00,$02
.byte $64,$65,$43,$6c,$84,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00
.byte $8e,$bf,$92,$00,$83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0
.byte $83,$bf,$92,$00,$83,$bf,$48,$e0,$83,$bf,$92,$00,$83,$bf,$48,$f0
.byte $83,$bf,$87,$00,$44,$78,$87,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00
.byte $01,$91,$85,$3f,$04,$88,$89,$00,$00,$83,$bf,$48,$d8,$83,$bf,$02
.byte $00,$00,$45,$64,$03,$0e,$00,$07,$84,$00,$04,$98,$99,$00,$00,$83
.byte $bf,$48,$e8,$83,$bf,$86,$00,$01,$91,$83,$00,$03,$91,$00,$00,$43
.byte $59,$02,$00,$00,$83,$bf,$48,$f8,$83,$bf,$89,$00,$43,$69,$01,$7b
.byte $85,$00,$8e,$bf,$b1,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00
.byte $83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0,$83,$bf,$83,$00
.byte $45,$64,$8a,$00,$83,$bf,$48,$e0,$83,$bf,$86,$00,$01,$91,$83,$00
.byte $01,$91,$43,$69,$01,$7b,$83,$00,$83,$bf,$48,$f0,$83,$bf,$87,$00
.byte $03,$07,$00,$0e,$88,$00,$83,$bf,$48,$c8,$83,$bf,$88,$00,$03,$91
.byte $64,$65,$43,$6c,$84,$00,$83,$bf,$48,$d8,$83,$bf,$88,$00,$01,$3e
.byte $89,$00,$83,$bf,$48,$e8,$83,$bf,$88,$00,$01,$3e,$89,$00,$83,$bf
;$AF00
.byte $48,$f8,$83,$bf,$88,$00,$02,$8a,$8b,$88,$00,$8e,$bf,$88,$00,$02
.byte $9a,$9b,$45,$44,$a2,$00,$ff,$f0,$00,$00,$01,$00,$8e,$bf,$92,$00
.byte $83,$bf,$48,$c0,$83,$bf,$92,$00,$83,$bf,$48,$d0,$83,$bf,$84,$00
.byte $44,$78,$8a,$00,$83,$bf,$48,$e0,$83,$bf,$86,$00,$01,$91,$8b,$00
.byte $83,$bf,$48,$f0,$83,$bf,$87,$00,$01,$07,$8a,$00,$83,$bf,$48,$c8
.byte $83,$bf,$88,$00,$01,$91,$43,$69,$01,$7b,$85,$00,$83,$bf,$48,$d8
.byte $83,$bf,$87,$00,$03,$0e,$00,$07,$88,$00,$83,$bf,$48,$e8,$83,$bf
.byte $86,$00,$01,$91,$83,$00,$01,$07,$87,$00,$83,$bf,$48,$f8,$83,$bf
.byte $84,$00,$02,$64,$65,$43,$6c,$04,$00,$00,$82,$83,$85,$00,$8e,$bf
.byte $8b,$00,$05,$92,$93,$4f,$5f,$42,$a1,$00,$ff,$00,$24,$24,$26,$26
.byte $0a,$0e,$26,$24,$24,$08,$24,$26,$26,$24,$26,$24,$24,$26,$24,$24
.byte $24,$26,$24,$14,$26,$26,$26,$26,$14,$16,$04,$26,$18,$00,$02,$00
.byte $02,$00,$02,$00,$02,$1e,$20,$06,$10,$0c,$1c,$22,$12,$22,$22,$1a
.byte $22,$79,$b4,$c1,$b4,$f9,$af,$41,$b0,$89,$b0,$d1,$b0,$19,$b1,$61
.byte $b1,$a9,$b1,$f1,$b1,$39,$b2,$81,$b2,$c9,$b2,$11,$b3,$59,$b3,$a1
.byte $b3,$e9,$b3,$31,$b4,$09,$b5,$51,$b5,$c0,$c0,$c0,$c0,$c0,$c7,$c8
;$B000
.byte $c9,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$e0,$c1,$c2,$c3,$c4,$c5,$c6,$c0
.byte $c0,$c0,$c0,$c0,$f0,$d1,$d2,$d3,$d4,$d5,$d6,$c0,$c0,$c0,$c0,$c0
.byte $c0,$e1,$e2,$e3,$e4,$e5,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$f1,$f2,$f3
.byte $f4,$f5,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$f6,$f7,$f8,$f9,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c4,$c5,$c6,$c7,$c8,$c9,$c0,$c0,$c0,$c0,$d2,$d3,$d4,$d5,$d6
.byte $d7,$d8,$d9,$da,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$ea
.byte $c0,$c0,$c0,$c0,$f3,$f4,$f5,$f6,$f7,$f8,$f9,$fa,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c1,$c2,$c3,$c4,$c5,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$d1,$d2,$d3,$d4,$d5,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$e1,$e2,$e3,$e4,$e5,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$f1,$f2,$f3
.byte $f4,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$cb,$cc,$cd,$ce,$cf,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$ce,$cf,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$d0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c1,$c2,$c3,$c4
.byte $c5,$c6,$c0,$c0,$c0,$c0,$c0,$c0,$d1,$d2,$d3,$d4,$d5,$d6,$c0,$c0
;$B100
.byte $c0,$c0,$c0,$c0,$e1,$e2,$e3,$e4,$e5,$e6,$c0,$c0,$c0,$c0,$c0,$f0
.byte $f1,$f2,$f3,$f4,$f5,$f6,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c4,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c3,$c0,$c5,$c6,$c7
.byte $c0,$c0,$c0,$c0,$c0,$c0,$d2,$d3,$d4,$d5,$d6,$d7,$c0,$c0,$c1,$c2
.byte $e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0,$c0,$c0,$d1,$f0,$f1,$f2,$f3
.byte $f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c1,$c2,$c0,$c3,$c4,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$d0,$d1,$d2
.byte $d3,$d4,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$e0,$e1,$e2,$e3,$e4,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$f0,$f1,$f2,$f3,$f4,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$ca,$cb,$cc,$cd,$ce,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c2,$c3,$c4,$c5,$c6,$c7,$c0,$c0
.byte $c0,$c0,$c0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$c0,$c0,$c0,$e0,$e1
.byte $e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$c0,$c0,$f0,$f1,$f2,$f3,$f4,$f5
.byte $f6,$f7,$f8,$f9,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c1,$c2,$c0,$c0,$c0,$c0,$c0,$c0
;$B200
.byte $c0,$c0,$c3,$c4,$c5,$c6,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$d3,$d4
.byte $d5,$d6,$c0,$c0,$c0,$c0,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0
.byte $c0,$c0,$c0,$f0,$f1,$f2,$f3,$f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c0
.byte $d1,$d2,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$cb,$cc,$cd,$ce,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$db,$dc,$dd,$de,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$eb,$ec,$ed,$ee,$ef,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$fb,$fc,$fd
.byte $fe,$ff,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$d6,$d7,$d8,$d9,$da,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c9,$ca,$cb,$cc,$cd,$ce,$c0,$c0,$c0,$c0,$c0,$c0,$d9,$da,$db,$dc
.byte $dd,$de,$df,$c0,$c0,$c0,$c0,$c0,$e9,$ea,$eb,$ec,$ed,$ee,$ef,$c0
.byte $c0,$c0,$c0,$c0,$f9,$fa,$fb,$fc,$fd,$fe,$ff,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c7,$c8,$d7,$d8,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c1,$c2,$c3,$c4
.byte $c5,$c6,$c7,$c7,$c0,$c0,$c0,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$c0
.byte $c0,$c0,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0,$c0,$c0,$c0,$f0
.byte $f1,$f2,$f3,$f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c8,$c9,$ca,$cb,$cc
;$B300
.byte $cd,$ce,$cf,$c0,$c0,$c0,$c0,$d8,$d9,$da,$db,$dc,$dd,$de,$df,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c1,$f0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c2,$c3,$c4
.byte $c5,$c6,$c7,$c0,$c0,$c0,$c0,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$c0
.byte $c0,$c0,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0,$c0,$c0,$c0,$c0
.byte $f1,$f2,$f3,$f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c4,$c5,$c6,$c7
.byte $c0,$c0,$c0,$c0,$c0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$c0,$c0,$c1,$c2
.byte $e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0,$c0,$c0,$d0,$f0,$f1,$f2,$f3
.byte $f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$d0,$c1,$c2,$c0,$c8,$c9,$c0,$c0,$c0,$c0,$c0,$c0,$c3,$c4,$c5
.byte $c6,$c7,$d9,$c0,$c0,$c0,$c0,$c0,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$c0
.byte $c0,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$c0,$c0,$f0,$f1
.byte $f2,$f3,$f4,$f5,$f6,$f7,$f8,$f9,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$ca
;$B400
.byte $c0,$c0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$d9,$c0,$c0,$c0,$e1,$e2
.byte $e3,$e4,$e5,$e6,$e7,$e8,$e9,$c0,$c0,$c0,$f1,$f2,$f3,$f4,$f5,$f6
.byte $f7,$f8,$f9,$fa,$c0,$c0,$d0,$e0,$f0,$c0,$c0,$c0,$c0,$c0,$da,$ea
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0
.byte $c1,$c2,$c3,$c4,$c5,$c6,$c7,$c0,$c0,$c0,$c0,$d0,$d1,$d2,$d3,$d4
.byte $d5,$d6,$d7,$c0,$c0,$c0,$c0,$e0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$c0
.byte $c0,$c0,$c0,$f0,$f1,$f2,$f3,$f4,$f5,$f6,$f7,$c0,$c0,$c0,$c0,$c0
.byte $c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$c0,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$c1,$c2,$c3,$00,$00,$00,$00,$00,$00,$00
.byte $ca,$cb,$d1,$d2,$d3,$00,$00,$00,$00,$00,$00,$00,$da,$db,$c4,$c5
.byte $c6,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e1,$e2
.byte $e3,$00,$00,$00,$00,$00,$00,$00,$ea,$eb,$f1,$f2,$f3,$00,$00,$00
.byte $00,$00,$00,$00,$fa,$fb,$e4,$e5,$e6,$00,$00,$00,$00,$00,$00,$00
;$B500
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$e0,$c1,$c2,$c3,$00,$00,$00,$00,$00,$00,$00,$00
.byte $e0,$d1,$d2,$d3,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$c7,$c8,$c9
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0,$e1,$e2,$e3
.byte $00,$00,$00,$00,$00,$00,$00,$00,$e0,$f1,$f2,$f3,$00,$00,$00,$00
.byte $00,$00,$00,$00,$e0,$e7,$e8,$e9,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$90,$01,$60,$20,$00,$80,$de
.byte $72,$00,$76,$9d,$80,$72,$00,$89,$00,$76,$de,$00,$a6,$00,$86,$00
.byte $72,$84,$de,$73,$00,$7a,$73,$79,$de,$77,$00,$7e,$9d,$98,$6e,$73
.byte $00,$7e,$de,$9d,$92,$82,$00,$7c,$8f,$00,$7b,$9a,$8f,$00,$7c,$80
.byte $2e,$00,$e9,$83,$de,$00,$b9,$de,$b0,$d1,$7c,$6d,$73,$98,$6e,$73
.byte $83,$de,$7d,$2e,$00,$e4,$e0,$e5,$e1,$e6,$e2,$e7,$e3,$00,$7c,$8a
.byte $72,$84,$7c,$20,$00,$84,$00,$76,$7d,$de,$00,$76,$97,$00,$c1,$b0
;$B600
.byte $d1,$00,$7c,$6e,$73,$98,$83,$de,$7d,$2e,$00,$7b,$9d,$20,$75,$92
.byte $83,$de,$84,$73,$7a,$de,$7b,$de,$72,$8f,$7d,$21,$00,$20,$75,$85
.byte $7c,$de,$85,$89,$83,$de,$00,$ea,$eb,$00,$75,$e8,$00,$86,$96,$6f
.byte $83,$20,$7c,$6e,$73,$8a,$72,$a6,$20,$79,$6f,$83,$72,$7c,$8f,$7d
.byte $00,$89,$7a,$98,$89,$d2,$dd,$ca,$de,$b0,$83,$de,$20,$b9,$de,$b0
.byte $d1,$a6,$82,$82,$de,$79,$8f,$7d,$76,$3f,$00,$20,$20,$75,$9c,$99
.byte $00,$20,$20,$82,$82,$de,$79,$99,$00,$7e,$de,$9d,$81,$00,$ef,$e9
.byte $83,$de,$7d,$2e,$00,$8c,$7c,$6e,$73,$00,$ca,$df,$b2,$db,$af,$c4
.byte $da,$cd,$de,$d9,$00,$71,$76,$de,$98,$8f,$7c,$80,$2e,$00,$7c,$77
.byte $89,$73,$98,$6e,$78,$00,$83,$6f,$80,$72,$00,$80,$72,$72,$9d,$00
.byte $7c,$6d,$84,$00,$77,$76,$9d,$00,$7c,$7d,$de,$90,$8f,$00,$83,$de
.byte $7d,$21,$00,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
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
