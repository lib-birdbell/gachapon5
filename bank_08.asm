.include "Constants.inc"
.if ORIGINAL
.else
.include "text/text_list.inc"
.endif

.segment "BANK_08"

;$8000
.byte $90,$01,$60,$19,$80,$1e,$82,$03,$84,$e8,$85,$cd,$87,$b2,$89,$97
.byte $8b,$7c,$8d,$61,$8f,$46,$91,$2b,$93,$4d,$00,$01,$ff,$ff,$ff,$01
.byte $02,$03,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$01,$01,$00,$00,$00,$00,$01,$02,$03,$04,$04,$04,$04,$04
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$f4,$f4,$20,$f4,$bc,$bc,$e8,$dc,$2c
.byte $2c,$2c,$e8,$d0,$6c,$d0,$a0,$d0,$c4,$a4,$08,$c4,$00,$01,$01,$03
.byte $01,$02,$02,$03,$05,$01,$01,$01,$03,$07,$07,$07,$0f,$07,$09,$06
.byte $07,$09,$00,$64,$64,$fa,$64,$64,$64,$64,$c8,$fa,$fa,$c8,$64,$fa
.byte $32,$1e,$32,$32,$1e,$1e,$1e,$96,$00,$03,$00,$02,$00,$00,$04,$01
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$01,$04,$00,$04,$07
;$8100
.byte $03,$04,$01,$03,$06,$05,$05,$03,$04,$06,$04,$04,$00,$08,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$01,$06,$00,$02,$00,$05,$00,$04,$03,$00,$04,$00,$02,$03
.byte $02,$04,$00,$00,$04,$00,$07,$01,$04,$02,$02,$05,$07,$00,$00,$05
.byte $06,$05,$02,$01,$02,$06,$03,$05,$00,$00,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$07
.byte $07,$07,$03,$03,$03,$03,$01,$01,$01,$01,$06,$06,$06,$06,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$8200
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4f,$00
.byte $01,$53,$00,$02,$01,$02,$00,$00,$00,$00,$ff,$ff,$00,$e8,$e8,$00
.byte $00,$03,$03,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01
.byte $01,$01,$02,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$01,$02,$00
.byte $00,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f4,$f4,$d0,$f4
.byte $bc,$bc,$e8,$dc,$2c,$2c,$2c,$e8,$20,$90,$90,$20,$90,$f4,$5e,$5e
.byte $f4,$00,$01,$01,$07,$01,$02,$02,$03,$05,$01,$01,$01,$03,$03,$01
.byte $01,$03,$01,$01,$01,$01,$01,$00,$64,$64,$fa,$64,$64,$64,$64,$c8
.byte $fa,$fa,$96,$64,$fa,$32,$1e,$32,$32,$1e,$1e,$1e,$96,$00,$00,$00
.byte $02,$00,$00,$00,$01,$01,$02,$02,$00,$00,$02,$01,$01,$01,$01,$01
.byte $01,$01,$01,$84,$80,$00,$00,$00,$85,$09,$81,$80,$07,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
;$8300
.byte $00,$01,$00,$02,$05,$00,$03,$01,$03,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$01,$00,$04,$00,$03,$03
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$00,$03,$01,$01
.byte $05,$07,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$07,$08,$08,$15,$03,$09,$0d,$03,$01,$01,$01,$01,$06
.byte $06,$06,$06,$2a,$2a,$2a,$00,$2b,$2b,$2b,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$0a,$0a,$0a,$00,$0b,$0b,$0b,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$30,$30,$30,$00,$31,$31,$31,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$1e,$1e,$1e,$00,$1e,$1e,$1e,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$03,$00,$00,$00,$01,$02,$01,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$05,$00,$00,$00,$03,$03,$03,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$23,$23,$23,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$96,$96,$96,$00,$00,$00,$00,$00,$00
;$8400
.byte $00,$00,$00,$4f,$00,$07,$53,$00,$08,$01,$02,$00,$00,$00,$00,$ff
.byte $ff,$00,$e8,$e8,$00,$00,$03,$03,$00,$00,$00,$00,$00,$00,$01,$02
.byte $01,$01,$01,$01,$01,$01,$01,$03,$01,$01,$01,$02,$01,$01,$00,$00
.byte $00,$00,$01,$02,$00,$00,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$f4,$f4,$d0,$f4,$bc,$bc,$e8,$dc,$2c,$2c,$2c,$e8,$20,$90,$90
.byte $20,$90,$f4,$5e,$5e,$f4,$00,$01,$01,$07,$01,$02,$02,$03,$05,$01
.byte $01,$01,$03,$03,$01,$01,$03,$01,$01,$01,$01,$01,$00,$64,$64,$fa
.byte $64,$64,$64,$64,$c8,$96,$96,$96,$64,$fa,$32,$1e,$32,$32,$1e,$1e
.byte $1e,$96,$00,$00,$00,$02,$00,$00,$00,$01,$01,$02,$02,$00,$00,$02
.byte $00,$01,$01,$01,$00,$00,$00,$01,$84,$80,$00,$00,$00,$86,$02,$82
.byte $80,$84,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$06,$00,$04,$00,$04,$07,$03,$04,$01,$03,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$8500
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$02
.byte $00,$05,$00,$04,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $07,$00,$04,$02,$02,$05,$07,$00,$00,$05,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$15,$15,$10,$10,$0a,$0a,$09,$09
.byte $01,$01,$01,$01,$06,$06,$06,$06,$2a,$2a,$2a,$2a,$2d,$2b,$2b,$2b
.byte $00,$00,$00,$00,$00,$00,$00,$00,$0a,$0a,$0a,$0a,$0d,$0b,$0b,$0b
.byte $00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$30,$30,$31,$31,$31,$31
.byte $00,$00,$00,$00,$00,$00,$00,$00,$28,$28,$28,$28,$28,$28,$28,$28
.byte $00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$03,$03,$05,$01,$05,$01
.byte $00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$03,$03,$03,$03
.byte $00,$00,$00,$00,$00,$00,$00,$00,$22,$22,$22,$22,$25,$23,$25,$23
.byte $00,$00,$00,$00,$00,$00,$00,$00,$c8,$c8,$c8,$c8,$c8,$c8,$c8,$c8
.byte $00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$01,$5c,$00,$02,$00,$05
.byte $00,$04,$ff,$00,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$8600
.byte $00,$00,$00,$01,$02,$01,$02,$01,$01,$01,$01,$01,$04,$01,$04,$01
.byte $02,$01,$02,$00,$00,$00,$00,$00,$01,$00,$04,$00,$03,$00,$03,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$f4,$f4,$f4,$f4,$bc,$bc,$e8,$dc,$2c,$2c
.byte $2c,$e8,$d0,$a0,$c4,$6c,$d0,$c4,$a4,$08,$c4,$00,$01,$01,$01,$01
.byte $02,$02,$03,$05,$01,$01,$01,$03,$07,$0f,$09,$07,$07,$09,$06,$07
.byte $09,$00,$32,$32,$64,$32,$32,$32,$32,$96,$96,$c8,$c8,$32,$fa,$fa
.byte $64,$96,$64,$32,$c8,$64,$c8,$00,$00,$00,$02,$02,$00,$04,$00,$04
.byte $00,$00,$00,$00,$02,$04,$00,$00,$00,$00,$02,$00,$04,$00,$00,$00
.byte $00,$00,$01,$80,$84,$02,$09,$00,$00,$00,$00,$00,$02,$04,$06,$82
.byte $86,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00
.byte $05,$02,$01,$00,$00,$00,$00,$00,$05,$04,$04,$00,$06,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$05,$04,$00,$00,$00,$00,$00,$00,$00
;$8700
.byte $04,$00,$00,$04,$00,$00,$00,$00,$00,$00,$06,$00,$05,$02,$02,$00
.byte $00,$00,$00,$00,$06,$03,$05,$00,$00,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$07,$07
.byte $07,$0d,$04,$13,$03,$01,$01,$01,$01,$0e,$06,$08,$06,$00,$00,$00
.byte $00,$2c,$2a,$2a,$00,$00,$00,$00,$00,$2a,$2a,$2c,$00,$00,$00,$00
.byte $00,$0a,$0a,$0a,$00,$00,$00,$00,$00,$0a,$0a,$0a,$00,$00,$00,$00
.byte $00,$30,$30,$30,$00,$00,$00,$00,$00,$30,$30,$30,$00,$00,$00,$00
.byte $00,$1e,$1e,$1e,$1e,$00,$00,$00,$00,$1e,$1e,$1e,$1e,$00,$00,$00
.byte $00,$08,$08,$08,$00,$00,$00,$00,$00,$09,$09,$09,$00,$00,$00,$00
.byte $00,$07,$07,$07,$00,$00,$00,$00,$00,$07,$07,$07,$00,$00,$00,$00
.byte $00,$24,$24,$24,$00,$00,$00,$00,$00,$24,$24,$24,$00,$00,$00,$00
.byte $00,$96,$96,$96,$00,$00,$00,$00,$00,$96,$96,$96,$00,$57,$00,$07
.byte $5b,$00,$08,$03,$05,$00,$04,$00,$00,$ff,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$01,$03,$02,$02,$01,$02
.byte $03,$07,$01,$09,$03,$02,$01,$02,$00,$00,$00,$00,$03,$01,$00,$04
;$8800
.byte $03,$03,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f4,$2c,$f4,$f4,$e8
.byte $e8,$e8,$dc,$2c,$2c,$2c,$e8,$d0,$d0,$d0,$d0,$c4,$a4,$e8,$08,$a4
.byte $00,$01,$01,$01,$01,$03,$03,$03,$05,$01,$01,$01,$03,$07,$07,$07
.byte $07,$09,$06,$03,$07,$06,$00,$32,$32,$64,$64,$64,$64,$64,$64,$32
.byte $fa,$fa,$96,$96,$96,$c8,$c8,$c8,$c8,$96,$c8,$96,$00,$00,$00,$02
.byte $02,$04,$04,$01,$01,$00,$04,$01,$00,$02,$01,$00,$00,$04,$00,$02
.byte $00,$00,$84,$09,$85,$86,$80,$84,$81,$80,$85,$86,$00,$00,$00,$00
.byte $00,$84,$85,$87,$80,$86,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$01
.byte $04,$01,$03,$06,$00,$05,$04,$01,$00,$00,$00,$00,$00,$06,$04,$04
.byte $00,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$04,$00,$01,$00,$01,$00,$07,$05,$00,$00
.byte $00,$00,$00,$00,$00,$04,$00,$00,$04,$00,$06,$05,$00,$00,$00,$06
.byte $00,$05,$02,$01,$00,$00,$00,$00,$00,$06,$03,$05,$00,$00,$14,$14
;$8900
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$0b,$08,$0e,$07,$0d,$04,$13,$03,$01,$01,$01,$01,$05,$0a
.byte $06,$11,$2d,$2d,$2d,$00,$2c,$2c,$2c,$00,$00,$00,$00,$00,$2e,$2c
.byte $2c,$2c,$0d,$0d,$0d,$00,$0a,$0a,$0a,$00,$00,$00,$00,$00,$0f,$0a
.byte $0a,$0a,$33,$33,$33,$00,$32,$32,$32,$00,$00,$00,$00,$00,$32,$32
.byte $32,$32,$28,$28,$28,$00,$28,$28,$28,$00,$00,$00,$00,$00,$28,$28
.byte $28,$28,$0f,$0f,$0f,$00,$12,$09,$0e,$00,$00,$00,$00,$00,$11,$14
.byte $0d,$18,$08,$08,$08,$00,$09,$07,$07,$00,$00,$00,$00,$00,$05,$0a
.byte $06,$0e,$27,$27,$27,$00,$24,$24,$24,$00,$00,$00,$00,$00,$24,$24
.byte $24,$24,$c8,$c8,$c8,$00,$c8,$c8,$c8,$00,$00,$00,$00,$00,$c8,$c8
.byte $c8,$c8,$58,$00,$01,$5e,$00,$04,$03,$07,$00,$00,$00,$00,$ff,$ff
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$01
.byte $01,$02,$02,$01,$01,$03,$07,$01,$01,$03,$03,$01,$01,$00,$00,$00
.byte $00,$03,$01,$00,$00,$03,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$8A00
.byte $f4,$f4,$f4,$f4,$bc,$bc,$e8,$dc,$2c,$2c,$2c,$e8,$d0,$a0,$c4,$6c
.byte $d0,$c4,$a4,$08,$c4,$00,$01,$01,$01,$01,$02,$02,$03,$05,$01,$01
.byte $01,$03,$07,$0f,$09,$07,$07,$09,$06,$07,$09,$00,$32,$32,$64,$32
.byte $32,$32,$32,$96,$96,$c8,$fa,$32,$fa,$fa,$64,$96,$64,$32,$c8,$64
.byte $c8,$00,$00,$00,$02,$00,$00,$00,$01,$01,$02,$00,$01,$00,$02,$00
.byte $00,$00,$00,$00,$00,$00,$00,$09,$08,$84,$86,$85,$84,$04,$00,$00
.byte $85,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$06,$04,$04,$01,$03,$02,$03,$01,$01,$01,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$01,$00,$01
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06
.byte $05,$00,$00,$00,$07,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$8B00
.byte $00,$00,$00,$00,$00,$00,$00,$0b,$0b,$08,$07,$0d,$09,$03,$03,$01
.byte $01,$01,$01,$06,$06,$06,$06,$2d,$2d,$2d,$00,$2c,$2c,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$0d,$0d,$0d,$00,$0a,$0a,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$33,$33,$33,$00,$32,$32,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$1e,$1e,$1e,$00,$1e,$1e,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$0f,$0f,$0f,$00,$12,$0e,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$00,$09,$07,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$27,$27,$27,$00,$26,$26,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$96,$96,$96,$00,$96,$96,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$58,$00,$07,$5d,$00,$08,$03,$07,$00
.byte $00,$00,$00,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$02,$02,$01,$01,$02,$02,$01,$01,$06,$08,$01,$01,$03,$03
.byte $01,$01,$00,$00,$00,$00,$03,$01,$00,$00,$04,$03,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$f4,$f4,$f4,$f4,$bc,$bc,$e8,$dc,$2c,$2c,$2c
.byte $e8,$d0,$a0,$c4,$6c,$d0,$c4,$a4,$08,$c4,$00,$01,$01,$01,$01,$02
;$8C00
.byte $02,$03,$05,$01,$01,$01,$03,$07,$0f,$09,$07,$07,$09,$06,$07,$09
.byte $00,$32,$32,$64,$32,$32,$32,$32,$96,$96,$fa,$fa,$32,$fa,$fa,$64
.byte $96,$64,$32,$c8,$64,$c8,$00,$00,$00,$02,$02,$00,$00,$01,$01,$02
.byte $02,$01,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$83,$84,$86,$80
.byte $85,$84,$86,$87,$00,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$06,$05,$05,$03,$04,$04,$05,$03
.byte $02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $04,$00,$02,$03,$02,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$06,$05,$02,$01,$02,$07,$05,$02,$01,$01,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0b,$0c,$08,$07
.byte $0a,$09,$0d,$03,$01,$01,$01,$01,$06,$06,$06,$06,$2d,$2d,$2d,$2d
;$8D00
.byte $2c,$2c,$2c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0d,$0d,$0d,$0d
.byte $0a,$0a,$0a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$33,$33,$33,$33
.byte $32,$32,$32,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$28,$28,$28
.byte $28,$28,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$16,$15,$13,$0f
.byte $1a,$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$09,$0a,$08
.byte $0b,$09,$09,$00,$00,$00,$00,$00,$00,$00,$00,$00,$27,$27,$27,$27
.byte $26,$26,$26,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c8,$c8,$c8,$c8
.byte $c8,$c8,$c8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$53,$00,$01,$5d
.byte $00,$02,$00,$00,$06,$08,$ff,$ff,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$02,$01,$01,$01,$01,$01
.byte $01,$05,$07,$01,$01,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00
.byte $00,$04,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f4,$f4,$f4,$f4,$bc,$bc
.byte $e8,$dc,$2c,$2c,$2c,$e8,$d0,$90,$90,$20,$90,$f4,$5e,$5e,$f4,$00
.byte $01,$01,$01,$01,$02,$02,$03,$05,$01,$01,$01,$03,$07,$01,$01,$03
.byte $01,$01,$01,$01,$01,$00,$32,$32,$64,$32,$32,$32,$32,$c8,$c8,$c8
;$8E00
.byte $c8,$64,$fa,$32,$1e,$32,$32,$1e,$1e,$1e,$96,$00,$03,$03,$00,$00
.byte $04,$04,$00,$00,$03,$00,$00,$03,$00,$00,$03,$03,$03,$00,$03,$00
.byte $03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$84,$00,$81,$00,$00
.byte $80,$81,$00,$84,$85,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$04,$03,$00,$06,$04,$00,$00,$02,$08
.byte $03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$05,$01,$00,$06,$05,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$07,$07,$07,$07,$03,$03,$03,$03,$13,$11,$10,$15,$05,$05,$06
.byte $06,$00,$00,$00,$00,$00,$00,$00,$00,$2a,$2a,$2a,$2a,$2d,$2d,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0a,$0a,$0a,$0a,$0d,$0d,$00
;$8F00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$30,$30,$31,$31,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$1e,$14,$14,$28,$28,$28,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0b,$03,$03,$04,$0c,$0a,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$05,$05,$05,$08,$09,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$22,$22,$22,$25,$25,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$96,$64,$64,$c8,$c8,$c8,$00
.byte $00,$58,$00,$01,$62,$00,$02,$01,$06,$07,$05,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01
.byte $01,$01,$01,$01,$02,$05,$03,$04,$01,$01,$01,$01,$00,$00,$00,$00
.byte $01,$01,$01,$01,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$f4
.byte $f4,$20,$f4,$bc,$bc,$e8,$dc,$2c,$2c,$2c,$e8,$d0,$6c,$d0,$a0,$d0
.byte $c4,$a4,$08,$c4,$00,$01,$01,$03,$01,$02,$02,$03,$05,$01,$01,$01
.byte $03,$07,$07,$07,$0f,$07,$09,$06,$07,$09,$00,$64,$64,$fa,$64,$64
.byte $64,$64,$c8,$fa,$fa,$96,$64,$fa,$32,$1e,$32,$32,$1e,$1e,$1e,$96
.byte $00,$03,$03,$02,$00,$04,$04,$01,$01,$02,$02,$01,$01,$02,$00,$00
;$9000
.byte $00,$04,$00,$00,$00,$03,$84,$80,$85,$82,$00,$84,$85,$80,$81,$00
.byte $84,$85,$00,$00,$00,$84,$80,$81,$85,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$07,$01,$04,$00,$04,$05,$04,$00,$07,$05,$03,$05,$06,$05
.byte $06,$06,$00,$05,$04,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$06,$00,$02,$00,$00
.byte $00,$06,$01,$01,$00,$00,$00,$00,$00,$00,$07,$05,$00,$00,$07,$01
.byte $04,$02,$02,$03,$02,$01,$01,$01,$07,$05,$00,$04,$00,$06,$00,$05
.byte $02,$02,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$07,$08,$07,$07,$03,$0d,$03,$03,$01,$02
.byte $01,$01,$06,$05,$06,$06,$2a,$2a,$00,$00,$2a,$2a,$00,$00,$2a,$2a
.byte $00,$00,$2a,$2a,$00,$00,$0a,$0a,$00,$00,$0a,$0a,$00,$00,$0a,$0a
.byte $00,$00,$0a,$0a,$00,$00,$30,$30,$00,$00,$30,$30,$00,$00,$30,$30
.byte $00,$00,$30,$30,$00,$00,$1e,$1e,$00,$00,$28,$28,$00,$00,$1e,$1e
;$9100
.byte $00,$00,$1e,$1e,$00,$00,$04,$03,$00,$00,$0b,$09,$00,$00,$08,$08
.byte $00,$00,$09,$08,$00,$00,$05,$05,$00,$00,$08,$07,$00,$00,$07,$07
.byte $00,$00,$07,$07,$00,$00,$22,$22,$00,$00,$22,$22,$00,$00,$22,$22
.byte $00,$00,$22,$22,$00,$00,$96,$96,$00,$00,$c8,$c8,$00,$00,$96,$96
.byte $00,$00,$96,$96,$00,$00,$4e,$00,$01,$58,$00,$02,$03,$08,$02,$04
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$0c,$07,$03,$02,$02,$02
.byte $02,$00,$00,$00,$00,$03,$00,$02,$04,$02,$02,$02,$02,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$f4,$f4,$20,$f4,$bc,$bc,$e8,$dc,$2c,$2c,$2c,$e8
.byte $d0,$6c,$d0,$a0,$d0,$c4,$a4,$08,$c4,$00,$01,$01,$03,$01,$02,$02
.byte $03,$05,$01,$01,$01,$03,$07,$07,$07,$0f,$07,$09,$06,$07,$09,$00
.byte $64,$64,$fa,$64,$64,$64,$64,$c8,$fa,$fa,$96,$64,$fa,$32,$1e,$32
.byte $32,$1e,$1e,$1e,$96,$00,$03,$03,$02,$00,$04,$04,$01,$01,$02,$02
.byte $04,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$80,$84,$85,$00,$81
.byte $80,$81,$00,$84,$85,$84,$85,$80,$81,$00,$80,$00,$85,$81,$84,$00
;$9200
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$06,$05,$05,$03,$04,$00,$00,$04,$08
.byte $09,$07,$03,$04,$01,$03,$06,$04,$04,$00,$06,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
.byte $00,$02,$03,$02,$06,$05,$04,$01,$00,$05,$00,$04,$03,$00,$04,$00
.byte $00,$04,$00,$06,$05,$02,$01,$02,$00,$00,$04,$01,$00,$05,$07,$00
.byte $00,$05,$06,$03,$05,$00,$00,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$08,$07,$07,$03
.byte $0d,$03,$03,$01,$02,$01,$01,$06,$05,$06,$06,$2b,$2b,$00,$00,$2b
.byte $2b,$00,$00,$2b,$2b,$00,$00,$2a,$2a,$00,$00,$0b,$0b,$00,$00,$0b
.byte $0b,$00,$00,$0b,$0b,$00,$00,$0a,$0a,$00,$00,$31,$31,$00,$00,$31
.byte $31,$00,$00,$31,$31,$00,$00,$30,$30,$00,$00,$28,$28,$00,$00,$28
.byte $28,$00,$00,$28,$28,$00,$00,$28,$28,$00,$00,$0c,$0c,$00,$00,$0c
.byte $0b,$00,$00,$0c,$0a,$00,$00,$0b,$0b,$00,$00,$08,$08,$00,$00,$08
;$9300
.byte $08,$00,$00,$08,$09,$00,$00,$08,$08,$00,$00,$25,$25,$00,$00,$25
.byte $25,$00,$00,$25,$25,$00,$00,$24,$24,$00,$00,$c8,$c8,$00,$00,$c8
.byte $c8,$00,$00,$c8,$c8,$00,$00,$c8,$c8,$00,$00,$50,$00,$01,$5a,$00
.byte $02,$01,$03,$04,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$06,$01
.byte $07,$06,$01,$01,$01,$01,$00,$00,$00,$00,$01,$03,$04,$01,$02,$02
.byte $02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$f4,$f4,$20,$f4,$bc,$bc,$e8
.byte $dc,$2c,$2c,$2c,$e8,$d0,$6c,$d0,$a0,$d0,$c4,$a4,$08,$c4,$00,$01
.byte $01,$03,$01,$02,$02,$03,$05,$01,$01,$01,$03,$07,$07,$07,$0f,$07
.byte $09,$06,$07,$09,$00,$64,$64,$fa,$64,$64,$64,$64,$c8,$96,$96,$96
.byte $64,$fa,$32,$1e,$32,$32,$1e,$1e,$1e,$96,$00,$03,$03,$02,$00,$04
.byte $04,$01,$01,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00
.byte $85,$81,$84,$80,$00,$80,$84,$00,$81,$85,$80,$00,$85,$81,$84,$00
.byte $81,$80,$84,$85,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$9400
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$05,$00
.byte $01,$06,$05,$01,$00,$04,$01,$04,$04,$00,$06,$01,$00,$01,$05,$04
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$01,$00,$03,$00,$04,$00,$00,$01,$02,$01,$00
.byte $00,$01,$00,$00,$01,$01,$00,$00,$01,$00,$05,$03,$00,$06,$05,$00
.byte $00,$02,$01,$03,$05,$00,$00,$01,$00,$01,$04,$03,$14,$14,$14,$14
.byte $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $07,$08,$07,$07,$03,$0d,$03,$03,$01,$02,$01,$01,$06,$05,$06,$06
.byte $2a,$2a,$00,$00,$2b,$2b,$00,$00,$2a,$2a,$00,$00,$2a,$2a,$00,$00
.byte $0a,$0a,$00,$00,$0b,$0b,$00,$00,$0a,$0a,$00,$00,$0a,$0a,$00,$00
.byte $30,$30,$00,$00,$31,$31,$00,$00,$30,$30,$00,$00,$30,$30,$00,$00
.byte $28,$28,$00,$00,$28,$28,$00,$00,$28,$28,$00,$00,$28,$28,$00,$00
.byte $0e,$0b,$00,$00,$0c,$0c,$00,$00,$0c,$0c,$00,$00,$0e,$0e,$00,$00
.byte $07,$08,$00,$00,$08,$08,$00,$00,$08,$08,$00,$00,$07,$07,$00,$00
.byte $22,$22,$00,$00,$23,$23,$00,$00,$22,$22,$00,$00,$22,$22,$00,$00
;$9500
.byte $c8,$c8,$00,$00,$c8,$c8,$00,$00,$c8,$c8,$00,$00,$c8,$c8,$00,$00
.byte $90,$01,$60
;$9513 - data block = pilot first name
.if ORIGINAL
.byte $b1,$d1,$db,$20,$00,$cc,$de,$d7,$b2,$c4,$20,$00,$be
.byte $b2,$d7,$20,$00,$d0,$d7,$b2,$20,$00,$b6,$b2,$20,$00,$bc,$ac,$b1
.byte $20,$00,$d7,$d7,$b1,$20,$00,$c4,$de,$bd,$de,$d9,$20,$00,$cf,$b8
.byte $cd,$de,$20,$00,$bc,$ac,$d8,$b1,$cc,$de,$d9,$20,$00,$ca,$cf,$b0
.byte $dd,$20,$00,$cc,$df,$d9,$c2,$b0,$20,$00,$cf,$bc,$ad,$cf,$b0,$20
.byte $00,$b8,$de,$da,$d0,$b0,$20,$00,$b7,$ac,$d7,$20,$00,$bc,$db,$af
.byte $ba,$20,$00,$db,$bb,$de,$d0,$b1,$20,$00,$cc,$ab,$b3,$20,$00,$ca
.byte $de,$bd,$b8,$20,$00,$d7,$b2,$d7,$20,$00,$b6,$d0,$b0,$d5,$20,$00
.byte $cd,$dd,$b9,$dd,$20,$00,$b8,$dc,$c4,$db,$20,$00,$b4,$cf,$20,$00
.byte $d9,$b0,$20,$00,$ba,$b3,$20,$00,$b7,$b0,$bd,$20,$00,$bc,$c5,$cc
.byte $df,$bd,$20,$00,$ca,$de,$c6,$dd,$b8,$de,$20,$00,$d3,$dd,$bc,$b1
.byte $20,$00,$bc,$de,$ad,$c4,$de,$b0,$20,$00,$cc,$df,$d9,$20,$00,$b8
.byte $d8,$bd,$20,$00,$bc,$b0,$cc,$de,$af,$b8,$20,$00,$ca,$de,$b0,$c6
.byte $a8,$20,$00,$b7,$de,$da,$dd,$20,$00,$b7,$bc,$d8,$b1,$20,$00,$83
.byte $6f,$76,$92,$9d,$20,$00,$b6,$de,$c4,$b0,$20,$00,$d4,$bb,$de,$dd
;$9600
.byte $20,$00,$7e,$72,$77,$8d,$72,$20,$00
.else
.include "text/8_9513_PILOT_FIRST_NAME.inc"
.endif
;$9609 - data block = pilot full name ($9609-$9791)
.if ORIGINAL
.byte $b1,$d1,$db,$a5,$da,$b2,$00
.byte $cc,$de,$d7,$b2,$c4,$a5,$c9,$b1,$00,$be,$b2,$d7,$a5,$cf,$bd,$00
.byte $d0,$d7,$b2,$a5,$d4,$bc,$cf,$00,$b6,$b2,$a5,$bc,$c3,$de,$dd,$00
.byte $bc,$ac,$b1,$a5,$b1,$bd,$de,$c5,$cc,$de,$d9,$00,$d7,$d7,$b1,$a5
.byte $bd,$dd,$00,$c4,$de,$bd,$de,$d9,$a5,$bb,$de,$cb,$de,$00,$cf,$a5
.byte $b8,$cd,$de,$00,$bc,$ac,$d8,$b1,$a5,$cc,$de,$d9,$00,$ca,$cf,$b0
.byte $dd,$a5,$b6,$b0,$dd,$00,$cc,$df,$d9,$c2,$b0,$00,$cf,$bc,$ad,$cf
.byte $b0,$a5,$be,$db,$00,$b8,$de,$da,$d0,$b0,$a5,$c4,$c4,$00,$b7,$ac
.byte $d7,$a5,$bd,$b0,$dd,$00,$ca,$df,$cc,$df,$c3,$cf,$bd,$a5,$bc,$db
.byte $af,$ba,$00,$db,$bb,$de,$d0,$b1,$a5,$ca,$de,$c0,$de,$d1,$00,$cc
.byte $ab,$b3,$a5,$d1,$d7,$bb,$d2,$00,$ca,$de,$bd,$b8,$a5,$b5,$d1,$00
.byte $d7,$b2,$d7,$a5,$d0,$d7,$a5,$d7,$b2,$d7,$00,$b6,$d0,$b0,$d5,$a5
.byte $cb,$de,$c0,$de,$dd,$00,$cd,$dd,$b9,$dd,$a5,$cd,$de,$af,$b9,$c5
.byte $b0,$00,$b8,$dc,$c4,$db,$a5,$ca,$de,$bc,$de,$b0,$c5,$00,$b4,$cf
.byte $a5,$bc,$b0,$dd,$00,$d9,$b0,$a5,$d9,$b6,$00,$ba,$b3,$a5,$b3,$d7
.byte $b7,$00,$c1,$ac,$af,$b8,$a5,$b7,$b0,$bd,$00,$b4,$b2,$ca,$df,$b0
;$9700
.byte $a5,$bc,$c5,$cc,$df,$bd,$00,$bb,$b3,$bd,$a5,$ca,$de,$c6,$dd,$b8
.byte $de,$00,$cd,$de,$d9,$c5,$d9,$c4,$de,$a5,$d3,$dd,$bc,$b1,$00,$bc
.byte $de,$ad,$c4,$de,$b0,$a5,$b1,$b0,$bc,$c0,$00,$b4,$d9,$a5,$cb,$df
.byte $b0,$a5,$cc,$df,$d9,$00,$b8,$d8,$bd,$a5,$cf,$af,$b9,$dd,$bc,$de
.byte $b0,$00,$bc,$b0,$cc,$de,$af,$b8,$a5,$b1,$c9,$b0,$00,$ca,$de,$b0
.byte $c6,$a8,$a5,$dc,$b2,$bd,$de,$cf,$dd,$00,$b7,$de,$da,$dd,$a5,$bb
.byte $de,$cb,$de,$00,$b7,$bc,$d8,$b1,$a5,$bb,$de,$cb,$de,$00,$83,$6f
.byte $76,$92,$9d,$00,$b1,$c5,$cd,$de,$d9,$a5,$b6,$de,$c4,$b0,$00,$d4
.byte $bb,$de,$dd,$a5,$b9,$de,$b0,$cc,$de,$d9,$00,$7e,$72,$77,$8d,$72
.byte $00
.else
.include "text/8_9609_PILOT_FULL_NAME.inc"
.endif
;$9791
.byte $07,$07,$01,$32,$01,$01,$06,$2d,$04,$04,$00,$28,$02,$00,$02
.byte $14,$02,$04,$00,$3c,$05,$07,$05,$0f,$07,$03,$00,$19,$00,$04,$04
.byte $05,$00,$01,$03,$41,$05,$03,$00,$14,$06,$06,$04,$14,$05,$05,$00
.byte $1e,$02,$05,$02,$32,$01,$03,$03,$3c,$02,$04,$02,$28,$06,$06,$04
.byte $14,$03,$04,$00,$1e,$05,$04,$00,$28,$00,$00,$04,$14,$00,$06,$00
.byte $0f,$06,$06,$00,$23,$00,$00,$07,$1e,$05,$05,$05,$0f,$02,$04,$00
.byte $19,$02,$03,$00,$19,$03,$05,$00,$28,$02,$04,$00,$23,$01,$00,$06
;$9800
.byte $19,$01,$07,$01,$19,$01,$05,$01,$19,$07,$03,$00,$28,$05,$05,$00
.byte $19,$00,$06,$00,$1e,$04,$05,$00,$32,$00,$06,$00,$28,$00,$00,$06
.byte $05,$00,$00,$05,$05,$04,$04,$04,$0a,$01,$08,$01,$0a,$00,$09,$00
.byte $05,$00,$00,$00,$00
;($9835-$9876 : 41 bytes - 10 names) - data block = UNION NAME
;$9835 0> ���媦��� neutrality
.byte $81,$6d,$73,$98,$82,$00
;$983B 1> ���ݪ� federation
.byte $9a,$9d,$8e,$df,$73
.byte $00
;$9841 2> 
.byte $bc,$de,$b5,$dd,$00
;$9846 3>
.byte $c8,$b5,$bc,$de,$b5,$dd,$00
;$984D 4>
.byte $c3,$a8,$c0
.byte $b0,$dd,$bd,$de,$00
;$9855 5>
.byte $b4,$b3,$b0,$ba,$de,$00
;$985B 6>
.byte $b1,$d9,$cb,$de,$b5
.byte $dd,$00
;$9862 7>
.byte $cb,$b0,$db,$b0,$00
;$9867 8> �髤�Ы�
.byte $d7,$b2,$ca,$de,$d9,$00
;$986D 9> ���󪫪��ƪ��ު���
.byte $7b,$9d,$76
.byte $7c,$83,$72,$8f,$7e,$9d,$00
;$9877 - data block = CITY NAME A
;$9877 - Earth
.byte $81,$77,$6d,$73,$00
.byte $bb,$b2,$c4,$de
.byte $31,$00,$bb,$b2,$c4,$de,$32,$00,$bb,$b2,$c4,$de,$33,$00,$bb,$b2
.byte $c4,$de,$34,$00,$bb,$b2,$c4,$de,$35,$00,$bb,$b2,$c4,$de,$36,$00
.byte $bb,$b2,$c4,$de,$37,$00,$d9,$c5,$c2,$b0,$00,$bf,$db,$d3,$dd,$00
.byte $b1,$ca,$de,$b5,$b1,$b8,$b0,$00,$b1,$b8,$bc,$bd,$de,$00,$cc,$a8
.byte $cc,$bd,$a5,$d9,$c5,$00,$b8,$de,$d7,$c5,$c0,$de,$00,$cb,$de,$b8
.byte $c4,$d8,$b1,$00,$c0,$de,$b6,$b0,$d9,$00,$b5,$c3,$de,$af,$bb,$00
.byte $cd,$de,$d9,$cc,$a7,$bd,$c4,$00,$c6,$ad,$b0,$ce,$dd,$ba,$dd,$00
.byte $cb,$af,$ba,$d8,$b0,$00,$c6,$ad,$b0,$b7,$de,$c6,$b1,$00,$bc,$de
;$9900
.byte $ac,$cc,$de,$db,$b0,$00
;$9906 - Earth
.byte $81,$77,$6d,$73,$00
;$990B - data block = CITY NAME B
.if ORIGINAL
.byte $bb,$b2,$c4,$de,$31
.byte $00,$bb,$b2,$c4,$de,$32,$00,$bb,$b2,$c4,$de,$33,$00,$bb,$b2,$c4
.byte $de,$34,$00,$bb,$b2,$c4,$de,$35,$00,$bb,$b2,$c4,$de,$36,$00,$bb
.byte $b2,$c4,$de,$37,$00,$d9,$c5,$c2,$b0,$00,$bf,$db,$d3,$dd,$00,$b1
.byte $ca,$de,$b5,$b1,$b8,$b0,$00,$b1,$b8,$bc,$bd,$de,$00,$cc,$a8,$cc
.byte $bd,$d9,$c5,$00,$b8,$de,$d7,$c5,$c0,$de,$00,$cb,$de,$b8,$c4,$d8
.byte $b1,$00,$c0,$de,$b6,$b0,$d9,$00,$b5,$c3,$de,$af,$bb,$00,$cd,$de
.byte $d9,$cc,$a7,$bd,$c4,$00,$ce,$dd,$ba,$dd,$00,$cb,$af,$ba,$d8,$b0
.byte $00,$c6,$ad,$b0,$b7,$de,$c6,$b1,$00,$bc,$de,$ac,$cc,$de,$db,$b0
.byte $00
.else
.include "text/8_990B_CITY_NAME.inc"
.endif
;$9991 - data block = UNIT NAME ($9991-$9B0D)
.if ORIGINAL
.byte $2d,$2d,$2d,$2d,$2d,$2d,$2d,$00,$b7,$de,$ac,$dd,$00,$71,$76
.byte $bb,$de,$b8,$00,$b6,$de,$dd,$c0,$de,$d1,$00,$b1,$da,$af,$b8,$bd
.byte $00,$cc,$de,$d7,$b3,$cc,$de,$db,$00,$b4,$d9,$d2,$bd,$00,$bc,$de
.byte $b5,$dd,$b8,$de,$00,$d8,$af,$b8,$c3,$de,$a8,$b1,$bd,$00,$b6,$de
.byte $dd,$c0,$de,$d1,$f6,$f7,$00,$cb,$de,$b8,$de,$bb,$de,$d1,$00,$b6
.byte $de,$dd,$c0,$de,$d1,$f8,$f9,$31,$00,$b6,$de,$dd,$c0,$de,$d1,$f8
.byte $f9,$32,$00,$ca,$dd,$cc,$de,$d7,$cb,$de,$00,$fa,$fb,$00,$ca,$de
;$9A00
.byte $b3,$00,$ca,$de,$b3,$dd,$c4,$de,$c4,$de,$af,$b8,$de,$00,$d2,$af
.byte $bb,$b0,$d7,$00,$5a,$b6,$de,$dd,$c0,$de,$d1,$00,$c4,$de,$b0,$cd
.byte $de,$dd,$b3,$d9,$cc,$00,$ca,$df,$d7,$bd,$b1,$c3,$c8,$00,$b9,$de
.byte $b0,$cf,$d9,$b8,$00,$b7,$ad,$cd,$de,$da,$b2,$00,$d4,$b8,$c4,$c4
.byte $de,$b0,$b6,$de,$00,$bb,$b2,$ba,$b6,$de,$dd,$c0,$de,$d1,$00,$bc
.byte $de,$b5,$00,$5a,$5a,$b6,$de,$dd,$c0,$de,$d1,$00,$bb,$bb,$de,$cb
.byte $de,$b0,$00,$4e,$b6,$de,$dd,$c0,$de,$d1,$00,$bb,$b2,$ba,$f6,$f7
.byte $00,$b8,$b2,$dd,$cf,$dd,$bb,$00,$40,$b1,$bc,$de,$b0,$d9,$00,$b6
.byte $de,$dd,$c0,$de,$d1,$46,$39,$31,$00,$d7,$cc,$da,$bc,$b1,$00,$bc
.byte $de,$d1,$00,$bb,$de,$b8,$00,$bc,$de,$d1,$f4,$00,$b9,$de,$d9,$b8
.byte $de,$b8,$de,$00,$bc,$de,$d1,$f5,$00,$b6,$de,$bb,$de,$43,$00,$bc
.byte $de,$aa,$b6,$de,$dd,$00,$b7,$de,$d7,$c4,$de,$b0,$b6,$de,$00,$ce
.byte $dc,$b2,$c4,$cd,$de,$b0,$bd,$00,$bb,$de,$dd,$bc,$de,$ca,$de,$d9
.byte $00,$b1,$b0,$b6,$de,$cf,$00,$b8,$de,$dc,$bc,$de,$dd,$00,$c4,$de
.byte $ba,$de,$bd,$b7,$de,$b1,$00,$da,$b3,$d9,$b0,$d7,$00,$bb,$d7,$d0
.byte $bd,$00,$d1,$bb,$b2,$00,$b1,$b2,$d8,$af,$bc,$ad,$00,$b4,$dd,$c4
;$9B00
.byte $de,$d7,$00,$d7,$b0,$c1,$ac,$c0,$b0,$00,$d1,$bb,$b6,$00
.else
.include "text/8_9991_UNIT_NAME.inc"
.endif
.byte $00,$56
.byte $5b,$55,$50,$4a,$4b,$5b,$59,$55,$49,$54,$54,$56,$50,$51,$51,$57
.byte $5a,$52,$58,$53,$58,$5a,$4c,$53,$47,$59,$57,$4d,$4e,$48,$52,$4f
.byte $41,$41,$42,$42,$43,$43,$44,$44,$35,$36,$37,$38,$39,$3a,$3b,$3c
.byte $3d,$3e,$3f,$40,$0f,$00,$10,$30,$0f,$0c,$16,$1c,$0f,$30,$04,$25
.byte $0f,$16,$11,$30,$0f,$15,$11,$30,$0f,$14,$00,$10,$0f,$10,$08,$19
.byte $0f,$16,$11,$10,$0f,$1c,$07,$15,$0f,$15,$0c,$30,$0f,$10,$08,$19
.byte $0f,$15,$11,$30,$0f,$15,$11,$30,$0f,$25,$0c,$1c,$0f,$15,$00,$38
.byte $0f,$27,$03,$26,$0f,$27,$03,$25,$0f,$14,$01,$1c,$0f,$15,$0c,$30
.byte $0f,$16,$03,$2a,$0f,$27,$15,$19,$0f,$11,$15,$26,$0f,$05,$13,$30
.byte $0f,$00,$15,$10,$0f,$27,$16,$00,$0f,$19,$01,$27,$0f,$16,$01,$30
.byte $0f,$27,$05,$16,$0f,$27,$0c,$30,$0f,$27,$16,$14,$0f,$27,$1c,$3b
.byte $0f,$15,$17,$27,$0f,$15,$11,$30,$0f,$04,$19,$14,$0f,$15,$21,$30
.byte $0f,$27,$19,$29,$0f,$15,$21,$30,$0f,$27,$19,$29,$0f,$1a,$21,$30
.byte $0f,$29,$03,$23,$0f,$16,$00,$3a,$0f,$27,$19,$29,$0f,$16,$11,$30
.byte $0f,$15,$09,$19,$0f,$00,$15,$30,$0f,$00,$16,$26,$0f,$00,$14,$24
;$9C00
.byte $0f,$23,$16,$26,$0f,$13,$16,$23,$0f,$26,$19,$29,$0f,$1a,$15,$2a
.byte $0f,$25,$19,$2a,$0f,$00,$26,$10,$0f,$27,$06,$15
;$9C1C - data block ($9C1C-9C48) = TEAM COLORs / Fleet 1-4 string table
.byte $81,$6d,$73,$98
.byte $82,$00,$71,$75,$00,$71,$76,$00,$77,$72,$9b,$00,$90,$84,$de,$98
.byte $00,$76,$9d,$80,$72,$31,$00,$76,$9d,$80,$72,$32,$00,$76,$9d,$80
.byte $72,$33,$00,$76,$9d,$80,$72,$34,$00
;$9C49 -
.byte $15,$9d,$33,$9d,$c1,$9c,$51
.byte $9d,$1f,$9d,$3d,$9d,$e9,$9c,$5b,$9d,$29,$9d,$47,$9d,$f4,$9c,$65
.byte $9d,$29,$9d,$47,$9d,$ff,$9c,$65,$9d,$1f,$9d,$3d,$9d,$0a,$9d,$5b
.byte $9d,$35,$a0,$50,$a0,$a3,$9f,$6b,$a0,$42,$a0,$5d,$a0,$e5,$9f,$7c
.byte $a0,$49,$a0,$64,$a0,$f9,$9f,$85,$a0,$49,$a0,$64,$a0,$0d,$a0,$85
.byte $a0,$42,$a0,$5d,$a0,$21,$a0,$7c,$a0,$4a,$9f,$65,$9f,$b3,$9e,$80
.byte $9f,$57,$9f,$72,$9f,$f6,$9e,$91,$9f,$5e,$9f,$79,$9f,$0b,$9f,$9a
.byte $9f,$5e,$9f,$79,$9f,$20,$9f,$9a,$9f,$57,$9f,$72,$9f,$35,$9f,$91
.byte $9f,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f
.byte $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f
.byte $20,$21,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$03,$04,$0b,$08,$09,$0e,$12
.byte $1a,$1c,$20,$ff,$01,$02,$05,$06,$07,$0c,$17,$0a,$1b,$1f,$ff,$02
;$9D00
.byte $0c,$0d,$0f,$13,$15,$16,$1d,$1e,$21,$ff,$03,$04,$0b,$09,$0d,$10
.byte $14,$11,$18,$19,$ff,$2a,$2b,$2c,$2d,$2e,$2f,$ff,$ff,$ff,$ff,$2a
.byte $2c,$2e,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$2b,$2d,$2f,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$30,$31,$32,$33,$34,$35,$ff,$ff,$ff,$ff,$30,$32,$34
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$31,$33,$35,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$22,$23,$24,$25,$26,$27,$28,$29,$ff,$ff,$22,$24,$26,$28,$ff
.byte $ff,$ff,$ff,$ff,$ff,$23,$25,$27,$29,$ff,$ff,$ff,$ff,$ff,$ff,$00
.byte $46,$4b,$46,$46,$32,$2d,$32,$46,$50,$5a,$55,$4b,$50,$55,$4b,$46
.byte $5a,$50,$5a,$55,$5f,$37,$3c,$3c,$5f,$55,$3c,$41,$50,$41,$4b,$5f
.byte $5a,$37,$3c,$3c,$41,$46,$4b,$4b,$50,$32,$37,$37,$32,$37,$37,$2d
.byte $32,$37,$3c,$32,$37,$00,$00,$0a,$05,$0a,$0f,$14,$14,$0a,$05,$14
.byte $0a,$05,$0a,$0f,$14,$05,$19,$19,$0f,$0a,$0a,$23,$19,$1e,$28,$19
.byte $23,$28,$1e,$1e,$0a,$28,$23,$05,$00,$05,$05,$0a,$0a,$0f,$0f,$32
.byte $2d,$32,$2d,$2d,$32,$19,$14,$19,$19,$1e,$1e,$00,$03,$03,$05,$05
.byte $03,$03,$04,$07,$07,$09,$08,$08,$06,$07,$08,$0c,$05,$09,$0a,$0a
.byte $09,$07,$08,$0e,$08,$0b,$0a,$0a,$0f,$0f,$14,$0c,$0f,$01,$01,$01
;$9E00
.byte $01,$01,$01,$01,$01,$0a,$0b,$0a,$0d,$0f,$0f,$01,$01,$01,$01,$01
.byte $01,$00,$02,$02,$02,$02,$05,$06,$05,$03,$03,$02,$03,$04,$05,$04
.byte $04,$04,$06,$04,$04,$05,$05,$08,$09,$05,$04,$06,$0a,$08,$06,$08
.byte $08,$06,$06,$01,$01,$01,$01,$01,$01,$01,$01,$04,$04,$05,$06,$06
.byte $06,$02,$02,$02,$02,$03,$03,$00,$50,$50,$50,$50,$64,$64,$50,$50
.byte $50,$64,$50,$50,$64,$50,$50,$64,$64,$50,$50,$50,$50,$50,$50,$64
.byte $50,$50,$50,$50,$64,$64,$64,$50,$64,$01,$01,$01,$01,$01,$01,$01
.byte $01,$28,$28,$28,$28,$28,$28,$01,$01,$01,$01,$01,$01,$00,$0e,$10
.byte $0e,$0f,$1a,$1d,$1b,$16,$18,$14,$1a,$1e,$29,$23,$20,$1c,$38,$22
.byte $25,$2b,$30,$2f,$38,$21,$2a,$35,$3f,$38,$33,$37,$3d,$3d,$39,$06
.byte $06,$06,$07,$08,$08,$09,$09,$17,$18,$1e,$20,$23,$24,$0b,$0c,$0d
.byte $0e,$12,$13,$00,$00,$78,$00,$40,$01,$78,$00,$a0,$00,$c8,$00,$30
.byte $02,$90,$01,$c8,$00,$d0,$02,$a0,$00,$a0,$00,$40,$01,$90,$01,$68
.byte $01,$68,$01,$98,$03,$40,$01,$18,$01,$30,$02,$a0,$00,$58,$02,$70
.byte $03,$20,$03,$b8,$01,$20,$08,$90,$0b,$90,$01,$a0,$05,$a8,$02,$b0
.byte $04,$f0,$0a,$40,$01,$ff,$00,$00,$30,$02,$40,$01,$c8,$00,$70,$03
;$9F00
.byte $70,$03,$a8,$07,$a8,$16,$e4,$0c,$e8,$17,$ff,$00,$00,$78,$00,$58
.byte $02,$c8,$00,$30,$02,$28,$05,$40,$01,$28,$14,$88,$18,$c6,$0c,$ff
.byte $00,$00,$30,$0c,$40,$01,$f8,$02,$58,$07,$d0,$02,$58,$02,$28,$23
.byte $a8,$02,$e0,$10,$ff,$00,$00,$30,$02,$70,$03,$f0,$05,$e0,$01,$60
.byte $04,$88,$04,$98,$03,$88,$09,$b8,$01,$ff,$00,$00,$bc,$02,$8c,$0a
.byte $58,$02,$68,$10,$b8,$0b,$ff,$00,$00,$48,$0d,$c0,$12,$ff,$00,$00
.byte $a0,$0f,$20,$1c,$ff,$00,$00,$0a,$00,$96,$0a,$f0,$05,$70,$08,$80
.byte $07,$ff,$00,$00,$a0,$0a,$60,$0e,$ff,$00,$00,$90,$10,$f0,$0f,$ff
.byte $00,$00,$90,$01,$20,$03,$f4,$01,$54,$0b,$bc,$02,$b0,$04,$4c,$04
.byte $ff,$00,$00,$b0,$04,$48,$0d,$6c,$07,$ff,$00,$00,$a4,$06,$28,$0a
.byte $fc,$08,$ff,$2c,$01,$5e,$01,$90,$01,$a4,$01,$26,$02,$58,$02,$8a
.byte $02,$bc,$02,$da,$02,$52,$03,$84,$03,$84,$03,$b6,$03,$e8,$03,$4c
.byte $04,$b0,$04,$e2,$04,$14,$05,$46,$05,$aa,$05,$dc,$05,$0e,$06,$40
.byte $06,$a4,$06,$08,$07,$3a,$07,$6c,$07,$d0,$07,$34,$08,$98,$08,$fc
.byte $08,$60,$09,$c4,$09,$90,$01,$a4,$01,$bc,$02,$da,$02,$84,$03,$e8
.byte $03,$14,$05,$3a,$07,$d0,$07,$60,$09,$2c,$01,$5e,$01,$26,$02,$58
