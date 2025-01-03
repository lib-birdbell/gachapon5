.include "Constants.inc"

.segment "BANK_0A"

;$8000
.byte $78,$20,$2b,$f3,$20,$71,$f3,$20,$aa,$f3,$20,$c8,$f3,$a9,$04,$8d
.byte $42,$07,$a9,$00,$85,$5a,$a2,$00
	LDY #$6C	; 8018	$a0 $6c
	STX $8000	; 801A	$8e $00 $80
	STY $8001	; 801D	$8c $01 $80	CHR BANK 6C
	STY $5B		; 8020	$84 $5b		CHR R0
	INX		; 8022	$e8
	INY		; 8023	$c8
	INY		; 8024	$c8
	STX $8000	; 8025	$8e $00 $80
	STY $8001	; 8028	$8c $01 $80	CHR BANK 6E
	STY $5C		; 802B	$84 $5c		CHR R1
	INX		; 802D	$e8
	LDY #$68	; 802E	$a0 $68
	STX $8000	; 8030	$8e $00 $80
	STY $8001	; 8033	$8c $01 $80
	STY $5D		; 8036	$84 $5d
;$8038
.byte $e8,$c8,$8e,$00,$80,$8c,$01,$80
.byte $84,$5e,$e8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5f,$e8,$a0,$6e,$8e
.byte $00,$80,$8c,$01,$80,$84,$60,$a9,$5c,$85,$44,$a9,$00,$85,$45,$85
.byte $46,$85,$09,$a9,$68,$85,$47,$a9,$6a,$85,$4a,$a9,$06,$85,$26,$ad
.byte $02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d,$06,$20,$a9,$ec,$85,$10
.byte $a9,$81,$85,$11,$20,$da,$f6,$a9,$80,$85,$03,$a9,$70,$85,$04,$a9
.byte $00,$20,$9a,$84,$a9,$00,$85,$05,$20,$a9,$87,$a2,$03,$bd,$e8,$81
.byte $9d,$d4,$03,$ca,$10,$f7,$a9,$01,$85,$2f,$20,$60,$f3,$a9,$00,$85
.byte $05,$20,$d3,$f4,$20,$38,$84,$98,$48,$a5,$06,$20,$9a,$84,$68,$f0
.byte $f0,$20,$9a,$81,$a9,$6b,$85,$60,$20,$2f,$81,$20,$c8,$81,$58,$20
.byte $4a,$f3,$a9,$00,$20,$86,$f2,$20,$c8,$f3,$a9,$00,$85,$00,$85,$01
.byte $20,$e5,$80,$78,$60,$20,$f0,$80,$20,$2f,$81,$a5,$01,$f0,$f6,$60
.byte $20,$e0,$fc,$20,$d3,$f4,$a5,$72,$29,$10,$f0,$0e,$a5,$00,$f0,$09
;$8100
.byte $c6,$00,$a9,$00,$85,$24,$20,$ce,$f2,$60,$a5,$72,$29,$24,$f0,$10
.byte $a5,$00,$c9,$02,$b0,$09,$e6,$00,$a9,$00,$85,$24,$20,$ce,$f2,$60
.byte $a5,$72,$29,$09,$f0,$08,$a9,$01,$85,$01,$20,$d6,$f2,$60,$60,$20
.byte $bd,$f3,$a5,$24,$29,$10,$d0,$1b,$a5,$00,$0a,$0a,$0a,$0a,$18,$69
.byte $80,$8d,$00,$02,$a9,$63,$8d,$01,$02,$a9,$00,$8d,$02,$02,$a9,$1e
.byte $8d,$03,$02,$a9,$8f,$8d,$04,$02,$8d,$08,$02,$18,$69,$08,$8d,$0c
.byte $02,$8d,$10,$02,$a9,$c0,$8d,$07,$02,$8d,$0f,$02,$18,$69,$08,$8d
.byte $0b,$02,$8d,$13,$02,$a0,$68,$8c,$05,$02,$c8,$8c,$09,$02,$a0,$f8
.byte $8c,$0d,$02,$c8,$8c,$11,$02,$a9,$00,$8d,$06,$02,$8d,$0a,$02,$8d
.byte $0e,$02,$8d,$12,$02,$a9,$01,$85,$2e,$60,$a9,$0c,$a4,$09,$d0,$16
.byte $48,$a9,$0f,$20,$b7,$81,$a9,$30,$20,$b7,$81,$a9,$49,$20,$ee,$f2
.byte $68,$38,$e9,$01,$d0,$e6,$60,$a2,$1f,$9d,$c0,$03,$ca,$10,$fa,$a9
.byte $01,$85,$2f,$a2,$02,$4c,$af,$85,$a2,$13,$bd,$d8,$81,$9d,$c0,$03
.byte $ca,$10,$f7,$a9,$01,$85,$2f,$60,$0f,$28,$21,$30,$0f,$16,$21,$30
.byte $0f,$2a,$21,$30,$0f,$12,$21,$30,$0f,$16,$21,$30,$e1,$00,$00,$c1
.byte $00,$71,$99,$00,$c1,$70,$00,$c1,$00,$72,$84,$00,$44,$04,$c1,$00
;$8200
.byte $08,$47,$09,$48,$28,$8b,$00,$44,$14,$c1,$00,$18,$47,$19,$48,$38
.byte $82,$00,$c1,$72,$00,$83,$00,$c1,$02,$36,$9b,$36,$c1,$02,$00,$c1
.byte $00,$12,$86,$37,$42,$20,$c1,$37,$22,$c1,$23,$37,$44,$24,$46,$30
.byte $86,$37,$c1,$12,$70,$c1,$00,$37,$c1,$37,$40,$42,$41,$c1,$42,$53
.byte $c1,$44,$37,$82,$37,$c1,$4b,$49,$c1,$52,$4b,$c1,$44,$4c,$c1,$4d
.byte $41,$c1,$53,$37,$c1,$4d,$44,$c1,$49,$42,$c1,$59,$4c,$c1,$4f,$37
.byte $c1,$37,$00,$c1,$00,$37,$c1,$37,$50,$42,$51,$46,$52,$c1,$4b,$59
.byte $c1,$52,$5b,$c1,$54,$5c,$c1,$5d,$51,$c1,$53,$37,$42,$53,$c1,$59
.byte $52,$c1,$59,$5c,$c1,$5f,$37,$c1,$37,$00,$c1,$00,$37,$c1,$37,$60
.byte $c1,$61,$52,$c1,$52,$63,$c1,$63,$65,$43,$66,$c1,$4b,$52,$c1,$6b
.byte $63,$c1,$4b,$6d,$c1,$61,$63,$c1,$37,$6d,$c1,$63,$4b,$c1,$52,$68
.byte $c1,$59,$52,$82,$37,$82,$00,$c1,$01,$37,$9b,$37,$c1,$01,$00,$a6
.byte $00,$c1,$72,$00,$c1,$00,$72,$8a,$00,$42,$04,$86,$00,$42,$0c,$84
.byte $00,$c1,$73,$00,$83,$00,$c1,$72,$00,$84,$00,$c1,$71,$00,$85,$00
.byte $c1,$72,$15,$c1,$16,$00,$42,$18,$c1,$00,$1b,$c1,$1c,$00,$c1,$72
.byte $1f,$83,$00,$c1,$71,$00,$8c,$00,$42,$21,$82,$00,$48,$25,$82,$00
;$8300
.byte $c1,$2f,$00,$82,$00,$42,$5e,$88,$5f,$c1,$6f,$00,$83,$00,$4e,$32
.byte $c1,$00,$71,$c1,$00,$6e,$c1,$00,$20,$42,$23,$c1,$2d,$00,$83,$00
.byte $c1,$6e,$00,$c1,$00,$72,$82,$00,$4c,$43,$c1,$73,$00,$82,$00,$c1
.byte $6e,$00,$88,$00,$c1,$6e,$00,$86,$00,$49,$55,$82,$00,$83,$30,$c1
.byte $6e,$00,$c1,$31,$41,$c1,$42,$50,$42,$51,$c1,$24,$00,$c1,$6e,$30
.byte $85,$30,$4a,$64,$82,$30,$83,$40,$c1,$6e,$00,$c1,$00,$60,$86,$00
.byte $c1,$6e,$40,$c1,$40,$70,$83,$40,$4a,$74,$82,$40,$83,$00,$c1,$6e
.byte $00,$42,$53,$42,$61,$c1,$41,$00,$82,$00,$c1,$6e,$00,$c1,$00,$80
.byte $4f,$81,$83,$00,$c1,$7e,$5f,$88,$5f,$c1,$7f,$00,$c1,$00,$90,$4f
.byte $91,$90,$00,$50,$a0,$91,$00,$4b,$b1,$c1,$00,$bd,$42,$be,$44,$00
.byte $c1,$06,$02,$c1,$07,$00,$44,$08,$42,$0e,$82,$00,$49,$c0,$c1,$c6
.byte $ca,$45,$cb,$82,$00,$c1,$10,$02,$c1,$07,$0b,$42,$11,$c1,$02,$0a
.byte $86,$00,$46,$d0,$c1,$c6,$d7,$82,$c6,$c1,$da,$c6,$44,$dc,$42,$00
.byte $c1,$0f,$07,$c1,$06,$08,$c1,$13,$08,$82,$00,$c1,$14,$17,$c1,$17
.byte $1a,$82,$00,$46,$e0,$c1,$c6,$e7,$82,$c6,$c1,$ea,$c6,$44,$ec,$90
.byte $00,$43,$f0,$c1,$00,$f4,$43,$f5,$82,$c6,$c1,$fa,$c6,$44,$fc,$e0
;$8400
.byte $00,$00,$c1,$00,$40,$84,$50,$c1,$10,$00,$90,$55,$c1,$c0,$f0,$82
.byte $f0,$82,$00,$c1,$20,$00,$c1,$ff,$00,$c1,$00,$c0,$c1,$fc,$b0,$c1
.byte $a1,$f0,$c1,$0f,$00,$c1,$00,$0c,$c1,$ff,$fb,$c1,$da,$bf,$84,$00
.byte $83,$ff,$c1,$bb,$00,$87,$00,$ff,$a9,$00,$aa,$a8,$18,$7d,$8d,$84
.byte $c5,$05,$b0,$0a,$e8,$e0,$0d,$90,$f3,$a2,$0c,$88,$c6,$05,$e6,$05
.byte $a9,$80,$18,$7d,$66,$84,$85,$03,$a9,$70,$18,$7d,$73,$84,$85,$04
.byte $bd,$80,$84,$85,$06,$60,$00,$00,$00,$ff,$ff,$fd,$f9,$f1,$e2,$d3
.byte $c4,$b5,$b5,$00,$fe,$fa,$f2,$ea,$e2,$da,$d2,$ca,$c2,$ba,$b2,$b2
.byte $00,$01,$01,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$32,$02,$02
.byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$32,$0a,$aa,$bd,$d6,$84,$85
.byte $10,$bd,$d7,$84,$85,$11,$20,$bd,$f3,$a0,$00,$84,$2e,$b1,$10,$c9
.byte $80,$f0,$1e,$18,$65,$04,$99,$00,$02,$c8,$b1,$10,$99,$00,$02,$c8
.byte $b1,$10,$99,$00,$02,$c8,$b1,$10,$18,$65,$03,$99,$00,$02,$c8,$d0
.byte $dc,$a9,$01,$85,$2e,$60,$dc,$84,$4d,$85,$8e,$85,$f0,$c2,$01,$f0
.byte $f0,$c3,$01,$f8,$f0,$c4,$01,$00,$f0,$c5,$01,$08,$f8,$d0,$01,$e0
.byte $f8,$d1,$01,$e8,$f8,$d2,$01,$f0,$f8,$d3,$01,$f8,$f8,$d4,$01,$00
;$8500
.byte $f8,$d5,$01,$08,$f8,$d6,$01,$10,$f8,$d7,$01,$18,$00,$e0,$01,$e0
.byte $00,$e1,$01,$e8,$00,$e2,$01,$f0,$00,$e3,$01,$f8,$00,$e4,$01,$00
.byte $00,$e5,$01,$08,$00,$e6,$01,$10,$00,$e7,$01,$18,$08,$f0,$01,$e0
.byte $08,$f1,$01,$e8,$08,$f2,$01,$f0,$08,$f3,$01,$f8,$08,$f4,$01,$00
.byte $08,$f5,$01,$08,$08,$f6,$01,$10,$08,$f7,$01,$18,$80,$f4,$c9,$01
.byte $f0,$f4,$ca,$01,$f8,$f4,$cb,$01,$00,$f4,$cc,$01,$08,$fc,$d8,$01
.byte $e8,$fc,$d9,$01,$f0,$fc,$da,$01,$f8,$fc,$db,$01,$00,$fc,$dc,$01
.byte $08,$fc,$dd,$01,$10,$04,$e8,$01,$e8,$04,$e9,$01,$f0,$04,$ea,$01
.byte $f8,$04,$eb,$01,$00,$04,$ec,$01,$08,$04,$ed,$01,$10,$80,$f8,$ce
.byte $01,$f0,$f8,$cf,$01,$f8,$f8,$ee,$01,$00,$f8,$ef,$01,$08,$00,$de
.byte $01,$f0,$00,$df,$01,$f8,$00,$fe,$01,$00,$00,$ff,$01,$08,$80,$a5
.byte $09,$d0,$0f,$20,$d3,$f4,$a5,$72,$d0,$04,$ca,$d0,$f2,$60,$a9,$01
.byte $85,$09,$60,$85,$05,$78,$20,$2b,$f3,$20,$71,$f3,$20,$aa,$f3,$20
.byte $c8,$f3,$a9,$00,$85,$5a,$a2,$00,$a0,$70,$8e,$00,$80,$8c,$01,$80
.byte $84,$5b,$e8,$c8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5c,$e8,$a0,$67
.byte $8e,$00,$80,$8c,$01,$80,$84,$5d,$a9,$5c,$85,$44,$a9,$00,$85,$45
;$8600
.byte $85,$46,$85,$09,$a9,$00,$85,$47,$a9,$02,$85,$4a,$a9,$06,$85,$26
.byte $ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d,$06,$20,$a9,$c8,$85
.byte $10,$a9,$87,$85,$11,$a5,$05,$f0,$08,$a9,$32,$85,$10,$a9,$89,$85
.byte $11,$20,$da,$f6,$20,$a9,$87,$a5,$05,$d0,$0d,$a2,$13,$bd,$b4,$87
.byte $9d,$c0,$03,$ca,$10,$f7,$30,$0b,$a2,$13,$bd,$1e,$89,$9d,$c0,$03
.byte $ca,$10,$f7,$a9,$01,$85,$2f,$85,$00,$20,$4a,$f3,$a9,$04,$8d,$42
.byte $07,$a9,$3c,$20,$ee,$f2,$a9,$a0,$85,$7f,$20,$85,$86,$a5,$7f,$f0
.byte $04,$a5,$09,$f0,$f5,$20,$f8,$f2,$ad,$11,$62,$29,$08,$f0,$05,$a9
.byte $02,$8d,$42,$07,$60,$a0,$00,$84,$2e,$a9,$9f,$99,$00,$02,$a9,$00
.byte $99,$01,$02,$99,$03,$02,$a9,$03,$99,$02,$02,$c8,$c8,$c8,$c8,$d0
.byte $e8,$a9,$00,$85,$01,$20,$cd,$86,$a9,$01,$85,$01,$a9,$0b,$20,$cd
.byte $86,$a9,$01,$85,$2e,$a2,$04,$20,$af,$85,$e6,$00,$a5,$00,$c9,$17
.byte $90,$04,$a9,$00,$85,$00,$a5,$72,$05,$09,$85,$09,$60,$18,$65,$00
.byte $c9,$17,$90,$02,$e9,$17,$aa,$bd,$fd,$86,$18,$69,$90,$85,$03,$a9
.byte $00,$a4,$01,$f0,$02,$a9,$30,$18,$69,$28,$85,$02,$8a,$bd,$14,$87
.byte $a6,$05,$f0,$03,$18,$69,$02,$85,$04,$20,$2b,$87,$60,$00,$f4,$e8
;$8700
.byte $e0,$d8,$d4,$d0,$ce,$cc,$cb,$ca,$ca,$ca,$cb,$cc,$ce,$d0,$d4,$d8
.byte $e0,$e8,$f4,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$a0,$80,$a5,$01,$f0
.byte $02,$a0,$c0,$a2,$00,$a5,$03,$18,$7d,$69,$87,$c9,$9f,$b0,$29,$99
.byte $00,$02,$a5,$04,$0a,$0a,$18,$7d,$6a,$87,$99,$01,$02,$bd,$6b,$87
.byte $99,$02,$02,$a5,$02,$18,$7d,$6c,$87,$99,$03,$02,$c8,$c8,$c8,$c8
.byte $e8,$e8,$e8,$e8,$e0,$40,$90,$cd,$60,$00,$00,$00,$00,$00,$01,$00
.byte $08,$00,$02,$00,$10,$00,$03,$00,$18,$08,$10,$00,$00,$08,$11,$00
.byte $08,$08,$12,$00,$10,$08,$13,$00,$18,$10,$20,$00,$00,$10,$21,$00
.byte $08,$10,$22,$00,$10,$10,$23,$00,$18,$18,$30,$00,$00,$18,$31,$00
.byte $08,$18,$32,$00,$10,$18,$33,$00,$18,$a2,$1f,$a9,$0f,$9d,$c0,$03
.byte $ca,$10,$fa,$60,$0f,$29,$19,$30,$0f,$29,$19,$09,$0f,$07,$06,$30
.byte $0f,$0f,$0f,$0f,$0f,$29,$19,$0f,$fd,$00,$00,$e4,$00,$00,$0f,$00
.byte $07,$0e,$0f,$00,$80,$81,$93,$94,$00,$00,$01,$10,$11,$02,$86,$01
.byte $01,$60,$c2,$40,$41,$02,$10,$11,$84,$00,$0f,$1a,$1b,$1e,$63,$00
.byte $84,$85,$a3,$a4,$00,$00,$03,$10,$11,$03,$87,$01,$01,$12,$83,$03
;$8800
.byte $02,$10,$11,$84,$00,$0e,$2f,$00,$51,$73,$00,$8a,$8b,$b3,$b4,$00
.byte $00,$01,$10,$11,$8c,$01,$02,$10,$11,$84,$00,$0e,$3f,$42,$61,$83
.byte $00,$9b,$8c,$c3,$c4,$00,$00,$01,$10,$11,$8c,$32,$02,$10,$11,$8f
.byte $00,$04,$01,$10,$11,$02,$88,$01,$05,$02,$01,$22,$10,$11,$84,$00
.byte $02,$10,$11,$84,$32,$08,$20,$21,$01,$01,$22,$01,$10,$11,$43,$02
.byte $86,$01,$05,$02,$01,$01,$10,$11,$84,$00,$08,$10,$11,$50,$01,$01
.byte $02,$30,$31,$84,$01,$08,$10,$11,$02,$03,$03,$05,$06,$01,$46,$08
.byte $02,$10,$11,$84,$00,$06,$10,$11,$60,$01,$01,$02,$86,$01,$03,$10
.byte $11,$02,$47,$13,$06,$19,$19,$1c,$1d,$10,$11,$84,$00,$02,$10,$11
.byte $83,$01,$01,$02,$86,$03,$03,$10,$11,$04,$4c,$23,$01,$50,$84,$00
.byte $02,$10,$11,$83,$01,$01,$02,$86,$01,$03,$10,$11,$02,$4c,$33,$01
.byte $60,$84,$00,$02,$10,$11,$83,$03,$01,$04,$86,$01,$03,$10,$11,$02
.byte $4d,$43,$84,$00,$02,$10,$11,$c5,$40,$41,$02,$10,$11,$4e,$52,$84
.byte $00,$04,$10,$11,$03,$04,$8a,$03,$02,$62,$00,$4c,$64,$84,$00,$04
.byte $10,$11,$01,$02,$89,$01,$0a,$71,$72,$00,$00,$75,$76,$76,$78,$79
.byte $76,$45,$7b,$fd,$00,$00,$fd,$00,$00,$ec,$00,$00,$02,$00,$80,$83
;$8900
.byte $00,$05,$20,$80,$a0,$00,$88,$83,$0a,$05,$22,$88,$00,$00,$88,$83
.byte $00,$09,$02,$88,$00,$00,$08,$44,$55,$55,$11,$98,$00,$ff,$0f,$2a
.byte $22,$30,$0f,$16,$22,$30,$0f,$16,$22,$06,$0f,$1a,$0a,$10,$0f,$20
.byte $15,$0f,$fd,$00,$00,$e4,$00,$00,$12,$00,$07,$0e,$0f,$00,$80,$81
.byte $93,$94,$00,$00,$01,$10,$11,$02,$01,$01,$02,$83,$01,$01,$60,$c2
.byte $40,$41,$02,$10,$11,$84,$00,$12,$1a,$1b,$1e,$63,$00,$84,$85,$a3
.byte $a4,$00,$00,$03,$10,$11,$03,$01,$01,$02,$84,$01,$01,$12,$83,$03
.byte $02,$10,$11,$84,$00,$0e,$2f,$00,$51,$73,$00,$8a,$8b,$b3,$b4,$00
.byte $00,$01,$10,$11,$83,$01,$01,$02,$88,$01,$02,$10,$11,$84,$00,$0e
.byte $3f,$42,$61,$83,$00,$9b,$8c,$c3,$c4,$00,$00,$01,$10,$11,$8c,$32
.byte $02,$10,$11,$8f,$00,$04,$01,$10,$11,$02,$88,$01,$05,$02,$01,$22
.byte $10,$11,$84,$00,$02,$10,$11,$84,$32,$08,$20,$a1,$01,$01,$22,$01
.byte $10,$11,$43,$02,$86,$01,$05,$02,$01,$01,$32,$32,$84,$00,$02,$10
.byte $11,$83,$50,$03,$02,$30,$b1,$84,$01,$06,$10,$11,$02,$03,$03,$01
.byte $44,$86,$06,$01,$02,$01,$8d,$8e,$01,$84,$00,$02,$10,$11,$83,$60
.byte $01,$02,$86,$01,$05,$10,$11,$02,$01,$01,$46,$95,$01,$02,$43,$9c
;$8A00
.byte $01,$01,$84,$00,$02,$10,$11,$83,$01,$01,$02,$86,$03,$05,$10,$11
.byte $04,$01,$01,$4b,$a5,$84,$00,$02,$10,$11,$83,$01,$01,$02,$86,$01
.byte $05,$10,$11,$02,$01,$01,$4b,$b5,$84,$00,$02,$10,$11,$83,$03,$01
.byte $04,$c3,$c0,$c1,$05,$10,$11,$c1,$c0,$c1,$4b,$c5,$84,$00,$02,$10
.byte $11,$83,$01,$03,$02,$01,$01,$84,$03,$02,$32,$32,$4e,$d2,$84,$00
.byte $02,$10,$11,$83,$01,$01,$02,$86,$01,$02,$03,$03,$4e,$e2,$84,$00
.byte $02,$10,$11,$c4,$c0,$c1,$83,$01,$4f,$f1,$fd,$00,$00,$fd,$00,$00
.byte $ea,$00,$00,$02,$00,$33,$83,$00,$12,$40,$10,$00,$00,$13,$40,$50
.byte $50,$44,$11,$00,$00,$11,$44,$00,$00,$44,$11,$83,$00,$07,$44,$00
.byte $00,$04,$95,$a0,$22,$99,$00,$ff,$85,$05,$86,$08,$78,$20,$2b,$f3
.byte $20,$71,$f3,$20,$aa,$f3,$20,$c8,$f3,$a9,$00,$85,$27,$a9,$80,$85
.byte $5a,$a2,$80,$a0,$64,$8e,$00,$80,$8c,$01,$80,$84,$5b,$e8,$c8,$c8
.byte $8e,$00,$80,$8c,$01,$80,$84,$5c,$e8,$a0,$60,$8e,$00,$80,$8c,$01
.byte $80,$84,$5d,$e8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5e,$e8,$c8,$8e
.byte $00,$80,$8c,$01,$80,$84,$5f,$e8,$c8,$8e,$00,$80,$8c,$01,$80,$84
.byte $60,$a9,$00,$85,$26,$a5,$05,$0a,$0a,$48,$aa,$bd,$bd,$8c,$85,$10
;$8B00
.byte $bd,$be,$8c,$85,$11,$ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d
.byte $06,$20,$20,$da,$f6,$68,$aa,$bd,$bf,$8c,$85,$10,$bd,$c0,$8c,$85
.byte $11,$ad,$02,$20,$a9,$2c,$8d,$06,$20,$a9,$00,$8d,$06,$20,$20,$da
.byte $f6,$ad,$02,$20,$a9,$23,$8d,$06,$20,$a9,$c0,$8d,$06,$20,$a2,$c0
.byte $bd,$51,$8b,$8d,$07,$20,$e8,$d0,$f7,$ad,$02,$20,$a9,$2f,$8d,$06
.byte $20,$a9,$c0,$8d,$06,$20,$a2,$c0,$bd,$91,$8b,$8d,$07,$20,$e8,$d0
.byte $f7,$20,$a9,$87,$a5,$08,$d0,$0d,$a2,$13,$bd,$b4,$87,$9d,$c0,$03
.byte $ca,$10,$f7,$30,$0b,$a2,$13,$bd,$1e,$89,$9d,$c0,$03,$ca,$10,$f7
.byte $a9,$01,$85,$2f,$a2,$0f,$bd,$91,$8c,$9d,$c0,$03,$ca,$10,$f7,$a9
.byte $01,$85,$2f,$a5,$05,$0a,$0a,$aa,$a0,$00,$bd,$a9,$8c,$99,$c8,$03
.byte $e8,$c8,$c0,$04,$90,$f4,$a9,$01,$85,$00,$a9,$00,$85,$09,$a5,$3c
.byte $29,$fc,$85,$3c,$20,$4a,$f3,$20,$9a,$f2,$a9,$4c,$20,$ee,$f2,$a9
.byte $20,$85,$22,$a9,$fe,$85,$23,$a5,$22,$0a,$0a,$a9,$00,$69,$63,$85
.byte $60,$20,$cd,$8c,$a5,$09,$d0,$04,$a5,$23,$30,$eb,$a2,$03,$bd,$91
.byte $8c,$9d,$c8,$03,$9d,$cc,$03,$bd,$b9,$8c,$9d,$d0,$03,$ca,$10,$ee
.byte $a9,$4d,$20,$ee,$f2,$a9,$01,$85,$2f,$a5,$3c,$09,$01,$85,$3c,$a9
;$8C00
.byte $1a,$85,$3d,$a2,$3c,$20,$04,$f5,$a9,$0a,$20,$86,$f2,$20,$1b,$f5
.byte $60,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$af,$af,$af,$af,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$0f,$0f,$0f,$0f,$0f,$0f,$0f
.byte $0f,$55,$55,$55,$55,$55,$55,$55,$55,$55,$00,$20,$00,$00,$00,$00
.byte $55,$55,$00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00
.byte $55,$55,$00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$05,$05,$05,$05,$05,$05,$05
.byte $05,$0f,$00,$10,$30,$0f,$07,$26,$30,$0f,$11,$3b,$30,$0f,$11,$2b
.byte $30,$0f,$29,$19,$0f,$0f,$20,$15,$0f,$0f,$11,$3b,$30,$0f,$05,$26
.byte $30,$0f,$27,$38,$30,$0f,$1a,$29,$30,$0f,$30,$00,$0f,$63,$8d,$5a
.byte $8e,$de,$8f,$d1,$90,$51,$92,$42,$93,$c0,$94,$b1,$95,$a0,$00,$a9
.byte $7f,$99,$00,$02,$a9,$00,$99,$01,$02,$99,$03,$02,$a9,$03,$99,$02
.byte $02,$c8,$c8,$c8,$c8,$d0,$e8,$a9,$00,$85,$01,$20,$13,$8d,$a9,$01
.byte $85,$01,$a9,$0b,$20,$13,$8d,$a9,$01,$85,$2e,$a2,$04,$20,$af,$85
;$8D00
.byte $e6,$00,$a5,$00,$c9,$0f,$90,$04,$a9,$00,$85,$00,$a5,$72,$05,$09
.byte $85,$09,$60,$18,$65,$00,$c9,$0f,$90,$02,$e9,$0f,$aa,$bd,$45,$8d
.byte $18,$69,$47,$85,$03,$a9,$00,$a4,$01,$f0,$02,$a9,$20,$18,$69,$58
.byte $85,$02,$8a,$bd,$54,$8d,$09,$30,$a6,$08,$f0,$03,$18,$69,$02,$85
.byte $04,$20,$2b,$87,$60,$00,$fe,$fc,$fa,$f8,$f7,$f6,$f6,$f6,$f7,$f8
.byte $fa,$fc,$fe,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01
.byte $01,$01,$01,$fd,$00,$00,$8b,$00,$01,$c4,$83,$41,$01,$f0,$83,$41
.byte $05,$c3,$41,$e0,$41,$c1,$85,$41,$04,$f1,$41,$41,$f0,$8a,$00,$04
.byte $41,$f1,$0b,$0c,$8e,$10,$04,$0d,$0e,$41,$41,$8a,$00,$08,$d0,$41
.byte $0f,$01,$20,$21,$24,$25,$44,$02,$47,$46,$03,$1f,$41,$c2,$8a,$00
.byte $08,$41,$c3,$0f,$01,$30,$31,$34,$35,$44,$12,$47,$56,$03,$1f,$c1
.byte $d2,$8a,$00,$04,$e1,$41,$1b,$1c,$8e,$11,$04,$1d,$1e,$d3,$d4,$8a
.byte $00,$85,$41,$01,$d0,$88,$41,$05,$50,$51,$41,$41,$f0,$43,$e2,$8a
.byte $00,$02,$41,$c2,$84,$41,$01,$d2,$87,$41,$05,$c0,$61,$41,$41,$d0
.byte $43,$f2,$8a,$00,$03,$41,$41,$c1,$8b,$41,$04,$70,$71,$41,$e0,$83
.byte $41,$01,$e1,$8a,$00,$04,$c4,$41,$41,$f1,$8a,$41,$02,$80,$81,$84
;$8E00
.byte $41,$02,$c3,$41,$8a,$00,$45,$a1,$02,$41,$4d,$88,$4e,$01,$4f,$45
.byte $a1,$01,$d1,$8a,$00,$4b,$b1,$05,$d9,$ba,$be,$bf,$5f,$46,$b1,$8a
.byte $00,$44,$2b,$4b,$c5,$43,$69,$01,$2d,$43,$6d,$8a,$00,$04,$3b,$3c
.byte $2d,$3e,$44,$d5,$01,$bc,$46,$da,$43,$79,$01,$2d,$43,$7d,$8a,$00
.byte $44,$84,$4b,$e5,$47,$89,$8a,$00,$44,$94,$4b,$f5,$47,$99,$fd,$00
.byte $00,$fd,$00,$00,$fd,$00,$00,$b7,$00,$ff,$e0,$00,$00,$d0,$82,$83
.byte $c2,$92,$93,$98,$40,$c2,$92,$93,$c2,$82,$83,$02,$40,$c4,$83,$41
.byte $01,$f0,$83,$41,$05,$c3,$41,$e0,$41,$c1,$85,$41,$09,$f1,$41,$41
.byte $f0,$40,$00,$83,$82,$83,$c2,$92,$93,$05,$40,$41,$f1,$0b,$0c,$8e
.byte $10,$07,$0d,$0e,$41,$41,$40,$00,$93,$c2,$82,$83,$0b,$92,$93,$40
.byte $d0,$41,$0f,$01,$20,$21,$24,$25,$44,$02,$47,$46,$06,$1f,$41,$c2
.byte $40,$00,$83,$c3,$92,$93,$09,$40,$41,$c3,$0f,$01,$30,$31,$34,$35
.byte $44,$12,$47,$56,$06,$1f,$c1,$d2,$40,$00,$93,$c3,$82,$83,$05,$40
.byte $e1,$41,$1b,$1c,$8e,$11,$07,$1d,$1e,$d3,$d4,$40,$00,$83,$c3,$92
.byte $93,$01,$40,$85,$41,$01,$d0,$88,$41,$05,$50,$51,$41,$41,$f0,$43
.byte $e2,$03,$40,$00,$93,$c2,$82,$83,$05,$92,$93,$40,$41,$c2,$84,$41
;$8F00
.byte $01,$d2,$87,$41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$03,$40,$00,$83
.byte $c3,$92,$93,$04,$40,$41,$41,$c1,$8b,$41,$04,$70,$71,$41,$e0,$83
.byte $41,$04,$e1,$40,$00,$93,$c3,$82,$83,$05,$40,$c4,$41,$41,$f1,$8a
.byte $41,$02,$80,$81,$84,$41,$07,$c3,$41,$40,$00,$83,$82,$83,$c2,$92
.byte $93,$01,$40,$45,$a1,$02,$41,$4d,$88,$4e,$01,$4f,$45,$a1,$04,$d1
.byte $40,$00,$93,$c2,$82,$83,$03,$92,$93,$40,$4b,$b1,$05,$d9,$ba,$be
.byte $bf,$5f,$46,$b1,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93,$40,$44
.byte $2b,$4b,$c5,$43,$69,$01,$2d,$43,$6d,$05,$40,$00,$93,$82,$83,$c2
.byte $92,$93,$05,$40,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da,$43,$79
.byte $01,$2d,$43,$7d,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93,$40,$44
.byte $84,$4b,$e5,$47,$89,$03,$40,$00,$93,$c3,$82,$83,$01,$40,$44,$94
.byte $4b,$f5,$47,$99,$05,$40,$00,$83,$82,$83,$c2,$92,$93,$98,$40,$04
.byte $00,$93,$82,$83,$c2,$92,$93,$01,$82,$98,$00,$05,$93,$92,$93,$82
.byte $83,$cf,$92,$93,$fd,$00,$00,$fd,$00,$00,$e6,$00,$00,$ff,$fd,$00
.byte $00,$8b,$00,$01,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3,$41,$e0,$41
.byte $c1,$85,$41,$04,$f1,$41,$41,$f0,$8a,$00,$04,$41,$f1,$0b,$0c,$8e
;$9000
.byte $10,$04,$0d,$0e,$41,$41,$8a,$00,$04,$d0,$41,$0f,$01,$44,$20,$44
.byte $02,$47,$46,$03,$1f,$41,$c2,$8a,$00,$04,$41,$c3,$0f,$01,$44,$30
.byte $44,$12,$47,$56,$03,$1f,$c1,$d2,$8a,$00,$04,$e1,$41,$1b,$1c,$8e
.byte $11,$04,$1d,$1e,$d3,$d4,$8a,$00,$85,$41,$01,$d0,$88,$41,$05,$50
.byte $51,$41,$41,$f0,$43,$e2,$8a,$00,$02,$41,$c2,$84,$41,$01,$d2,$87
.byte $41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$8a,$00,$03,$41,$41,$c1,$8b
.byte $41,$04,$70,$71,$41,$e0,$83,$41,$01,$e1,$8a,$00,$04,$c4,$41,$41
.byte $f1,$8a,$41,$02,$80,$81,$84,$41,$02,$c3,$41,$8a,$00,$45,$a1,$02
.byte $41,$4d,$88,$4e,$01,$4f,$45,$a1,$01,$d1,$8a,$00,$4b,$b1,$05,$d9
.byte $ba,$be,$bf,$5f,$46,$b1,$8a,$00,$44,$2b,$4b,$c5,$43,$69,$01,$2d
.byte $43,$6d,$8a,$00,$04,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da,$43
.byte $79,$01,$2d,$43,$7d,$8a,$00,$44,$84,$4b,$e5,$47,$89,$8a,$00,$44
.byte $94,$4b,$f5,$47,$99,$fd,$00,$00,$fd,$00,$00,$fd,$00,$00,$b7,$00
.byte $ff,$e0,$00,$00,$d0,$82,$83,$c2,$92,$93,$98,$40,$c2,$92,$93,$c2
.byte $82,$83,$02,$40,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3,$41,$e0,$41
.byte $c1,$85,$41,$09,$f1,$41,$41,$f0,$40,$00,$83,$82,$83,$c2,$92,$93
;$9100
.byte $05,$40,$41,$f1,$0b,$0c,$8e,$10,$07,$0d,$0e,$41,$41,$40,$00,$93
.byte $c2,$82,$83,$07,$92,$93,$40,$d0,$41,$0f,$01,$44,$20,$44,$02,$47
.byte $46,$06,$1f,$41,$c2,$40,$00,$83,$c3,$92,$93,$05,$40,$41,$c3,$0f
.byte $01,$44,$30,$44,$12,$47,$56,$06,$1f,$c1,$d2,$40,$00,$93,$c3,$82
.byte $83,$05,$40,$e1,$41,$1b,$1c,$8e,$11,$07,$1d,$1e,$d3,$d4,$40,$00
.byte $83,$c3,$92,$93,$01,$40,$85,$41,$01,$d0,$88,$41,$05,$50,$51,$41
.byte $41,$f0,$43,$e2,$03,$40,$00,$93,$c2,$82,$83,$05,$92,$93,$40,$41
.byte $c2,$84,$41,$01,$d2,$87,$41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$03
.byte $40,$00,$83,$c3,$92,$93,$04,$40,$41,$41,$c1,$8b,$41,$04,$70,$71
.byte $41,$e0,$83,$41,$04,$e1,$40,$00,$93,$c3,$82,$83,$05,$40,$c4,$41
.byte $41,$f1,$8a,$41,$02,$80,$81,$84,$41,$07,$c3,$41,$40,$00,$83,$82
.byte $83,$c2,$92,$93,$01,$40,$45,$a1,$02,$41,$4d,$88,$4e,$01,$4f,$45
.byte $a1,$04,$d1,$40,$00,$93,$c2,$82,$83,$03,$92,$93,$40,$4b,$b1,$05
.byte $d9,$ba,$be,$bf,$5f,$46,$b1,$0a,$40,$00,$83,$92,$93,$82,$83,$92
.byte $93,$40,$44,$2b,$4b,$c5,$43,$69,$01,$2d,$43,$6d,$05,$40,$00,$93
.byte $82,$83,$c2,$92,$93,$05,$40,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46
;$9200
.byte $da,$43,$79,$01,$2d,$43,$7d,$0a,$40,$00,$83,$92,$93,$82,$83,$92
.byte $93,$40,$44,$84,$4b,$e5,$47,$89,$03,$40,$00,$93,$c3,$82,$83,$01
.byte $40,$44,$94,$4b,$f5,$47,$99,$05,$40,$00,$83,$82,$83,$c2,$92,$93
.byte $98,$40,$04,$00,$93,$82,$83,$c2,$92,$93,$01,$82,$98,$00,$05,$93
.byte $92,$93,$82,$83,$cf,$92,$93,$fd,$00,$00,$fd,$00,$00,$e6,$00,$00
.byte $ff,$fd,$00,$00,$8b,$00,$01,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3
.byte $41,$e0,$41,$c1,$85,$41,$04,$f1,$41,$41,$f0,$8a,$00,$04,$41,$f1
.byte $0b,$0c,$8e,$10,$04,$0d,$0e,$41,$41,$8a,$00,$03,$d0,$41,$0f,$45
.byte $06,$44,$02,$47,$46,$03,$1f,$41,$c2,$8a,$00,$03,$41,$c3,$0f,$45
.byte $16,$44,$12,$47,$56,$03,$1f,$c1,$d2,$8a,$00,$04,$e1,$41,$1b,$1c
.byte $8e,$11,$04,$1d,$1e,$d3,$d4,$8a,$00,$85,$41,$01,$d0,$88,$41,$05
.byte $50,$51,$41,$41,$f0,$43,$e2,$8a,$00,$02,$41,$c2,$84,$41,$01,$d2
.byte $87,$41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$8a,$00,$03,$41,$41,$c1
.byte $8b,$41,$04,$70,$71,$41,$e0,$83,$41,$01,$e1,$8a,$00,$04,$c4,$41
.byte $41,$f1,$8a,$41,$02,$80,$81,$84,$41,$02,$c3,$41,$8a,$00,$45,$a1
.byte $02,$41,$4d,$88,$4e,$01,$4f,$45,$a1,$01,$d1,$8a,$00,$4b,$b1,$05
;$9300
.byte $d9,$ba,$be,$bf,$5f,$46,$b1,$8a,$00,$44,$2b,$4b,$c5,$43,$69,$01
.byte $2d,$43,$6d,$8a,$00,$04,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da
.byte $43,$79,$01,$2d,$43,$7d,$8a,$00,$44,$84,$4b,$e5,$47,$89,$8a,$00
.byte $44,$94,$4b,$f5,$47,$99,$fd,$00,$00,$fd,$00,$00,$fd,$00,$00,$b7
.byte $00,$ff,$e0,$00,$00,$d0,$82,$83,$c2,$92,$93,$98,$40,$c2,$92,$93
.byte $c2,$82,$83,$02,$40,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3,$41,$e0
.byte $41,$c1,$85,$41,$09,$f1,$41,$41,$f0,$40,$00,$83,$82,$83,$c2,$92
.byte $93,$05,$40,$41,$f1,$0b,$0c,$8e,$10,$07,$0d,$0e,$41,$41,$40,$00
.byte $93,$c2,$82,$83,$06,$92,$93,$40,$d0,$41,$0f,$45,$06,$44,$02,$47
.byte $46,$06,$1f,$41,$c2,$40,$00,$83,$c3,$92,$93,$04,$40,$41,$c3,$0f
.byte $45,$16,$44,$12,$47,$56,$06,$1f,$c1,$d2,$40,$00,$93,$c3,$82,$83
.byte $05,$40,$e1,$41,$1b,$1c,$8e,$11,$07,$1d,$1e,$d3,$d4,$40,$00,$83
.byte $c3,$92,$93,$01,$40,$85,$41,$01,$d0,$88,$41,$05,$50,$51,$41,$41
.byte $f0,$43,$e2,$03,$40,$00,$93,$c2,$82,$83,$05,$92,$93,$40,$41,$c2
.byte $84,$41,$01,$d2,$87,$41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$03,$40
.byte $00,$83,$c3,$92,$93,$04,$40,$41,$41,$c1,$8b,$41,$04,$70,$71,$41
;$9400
.byte $e0,$83,$41,$04,$e1,$40,$00,$93,$c3,$82,$83,$05,$40,$c4,$41,$41
.byte $f1,$8a,$41,$02,$80,$81,$84,$41,$07,$c3,$41,$40,$00,$83,$82,$83
.byte $c2,$92,$93,$01,$40,$45,$a1,$02,$41,$4d,$88,$4e,$01,$4f,$45,$a1
.byte $04,$d1,$40,$00,$93,$c2,$82,$83,$03,$92,$93,$40,$4b,$b1,$05,$d9
.byte $ba,$be,$bf,$5f,$46,$b1,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93
.byte $40,$44,$2b,$4b,$c5,$43,$69,$01,$2d,$43,$6d,$05,$40,$00,$93,$82
.byte $83,$c2,$92,$93,$05,$40,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da
.byte $43,$79,$01,$2d,$43,$7d,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93
.byte $40,$44,$84,$4b,$e5,$47,$89,$03,$40,$00,$93,$c3,$82,$83,$01,$40
.byte $44,$94,$4b,$f5,$47,$99,$05,$40,$00,$83,$82,$83,$c2,$92,$93,$98
.byte $40,$04,$00,$93,$82,$83,$c2,$92,$93,$01,$82,$98,$00,$05,$93,$92
.byte $93,$82,$83,$cf,$92,$93,$fd,$00,$00,$fd,$00,$00,$e6,$00,$00,$ff
.byte $fd,$00,$00,$8b,$00,$01,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3,$41
.byte $e0,$41,$c1,$85,$41,$04,$f1,$41,$41,$f0,$8a,$00,$04,$41,$f1,$0b
.byte $0c,$8e,$10,$04,$0d,$0e,$41,$41,$8a,$00,$03,$d0,$41,$0f,$45,$26
.byte $44,$02,$47,$46,$03,$1f,$41,$c2,$8a,$00,$03,$41,$c3,$0f,$45,$36
;$9500
.byte $44,$12,$47,$56,$03,$1f,$c1,$d2,$8a,$00,$04,$e1,$41,$1b,$1c,$8e
.byte $11,$04,$1d,$1e,$d3,$d4,$8a,$00,$85,$41,$01,$d0,$88,$41,$05,$50
.byte $51,$41,$41,$f0,$43,$e2,$8a,$00,$02,$41,$c2,$84,$41,$01,$d2,$87
.byte $41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$8a,$00,$03,$41,$41,$c1,$8b
.byte $41,$04,$70,$71,$41,$e0,$83,$41,$01,$e1,$8a,$00,$04,$c4,$41,$41
.byte $f1,$8a,$41,$02,$80,$81,$84,$41,$02,$c3,$41,$8a,$00,$45,$a1,$02
.byte $41,$4d,$88,$4e,$01,$4f,$45,$a1,$01,$d1,$8a,$00,$4b,$b1,$05,$d9
.byte $ba,$be,$bf,$5f,$46,$b1,$8a,$00,$44,$2b,$4b,$c5,$43,$69,$01,$2d
.byte $43,$6d,$8a,$00,$04,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da,$43
.byte $79,$01,$2d,$43,$7d,$8a,$00,$44,$84,$4b,$e5,$47,$89,$8a,$00,$44
.byte $94,$4b,$f5,$47,$99,$fd,$00,$00,$fd,$00,$00,$fd,$00,$00,$b7,$00
.byte $ff,$e0,$00,$00,$d0,$82,$83,$c2,$92,$93,$98,$40,$c2,$92,$93,$c2
.byte $82,$83,$02,$40,$c4,$83,$41,$01,$f0,$83,$41,$05,$c3,$41,$e0,$41
.byte $c1,$85,$41,$09,$f1,$41,$41,$f0,$40,$00,$83,$82,$83,$c2,$92,$93
.byte $05,$40,$41,$f1,$0b,$0c,$8e,$10,$07,$0d,$0e,$41,$41,$40,$00,$93
.byte $c2,$82,$83,$06,$92,$93,$40,$d0,$41,$0f,$45,$26,$44,$02,$47,$46
;$9600
.byte $06,$1f,$41,$c2,$40,$00,$83,$c3,$92,$93,$04,$40,$41,$c3,$0f,$45
.byte $36,$44,$12,$47,$56,$06,$1f,$c1,$d2,$40,$00,$93,$c3,$82,$83,$05
.byte $40,$e1,$41,$1b,$1c,$8e,$11,$07,$1d,$1e,$d3,$d4,$40,$00,$83,$c3
.byte $92,$93,$01,$40,$85,$41,$01,$d0,$88,$41,$05,$50,$51,$41,$41,$f0
.byte $43,$e2,$03,$40,$00,$93,$c2,$82,$83,$05,$92,$93,$40,$41,$c2,$84
.byte $41,$01,$d2,$87,$41,$05,$c0,$61,$41,$41,$d0,$43,$f2,$03,$40,$00
.byte $83,$c3,$92,$93,$04,$40,$41,$41,$c1,$8b,$41,$04,$70,$71,$41,$e0
.byte $83,$41,$04,$e1,$40,$00,$93,$c3,$82,$83,$05,$40,$c4,$41,$41,$f1
.byte $8a,$41,$02,$80,$81,$84,$41,$07,$c3,$41,$40,$00,$83,$82,$83,$c2
.byte $92,$93,$01,$40,$45,$a1,$02,$41,$4d,$88,$4e,$01,$4f,$45,$a1,$04
.byte $d1,$40,$00,$93,$c2,$82,$83,$03,$92,$93,$40,$4b,$b1,$05,$d9,$ba
.byte $be,$bf,$5f,$46,$b1,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93,$40
.byte $44,$2b,$4b,$c5,$43,$69,$01,$2d,$43,$6d,$05,$40,$00,$93,$82,$83
.byte $c2,$92,$93,$05,$40,$3b,$3c,$2d,$3e,$44,$d5,$01,$bc,$46,$da,$43
.byte $79,$01,$2d,$43,$7d,$0a,$40,$00,$83,$92,$93,$82,$83,$92,$93,$40
.byte $44,$84,$4b,$e5,$47,$89,$03,$40,$00,$93,$c3,$82,$83,$01,$40,$44
;$9700
.byte $94,$4b,$f5,$47,$99,$05,$40,$00,$83,$82,$83,$c2,$92,$93,$98,$40
.byte $04,$00,$93,$82,$83,$c2,$92,$93,$01,$82,$98,$00,$05,$93,$92,$93
.byte $82,$83,$cf,$92,$93,$fd,$00,$00,$fd,$00,$00,$e6,$00,$00,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$af,$af,$af,$af,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$00,$20,$00,$00,$00,$00,$55,$55
.byte $00,$00,$00,$00,$00,$00,$55,$55,$00,$00,$00,$00,$00,$00,$55,$55
.byte $00,$00,$00,$00,$00,$00,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$05,$05,$05,$05,$05,$05,$05,$05,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$05,$05,$05,$05,$05,$01,$05,$05,$0f
.byte $00,$10,$30,$0f,$07,$26,$30,$0f,$11,$3b,$30,$0f,$27,$38,$30,$0f
;$9800
.byte $00,$10,$30,$0f,$07,$26,$30,$0f,$05,$26,$30,$0f,$27,$38,$30,$0f
.byte $00,$10,$30,$0f,$07,$26,$30,$0f,$27,$38,$30,$0f,$27,$38,$30,$0f
.byte $00,$10,$30,$0f,$07,$26,$30,$0f,$1a,$29,$30,$0f,$27,$38,$30,$85
.byte $05,$86,$08,$78,$20,$2b,$f3,$20,$71,$f3,$20,$aa,$f3,$20,$c8,$f3
.byte $a9,$00,$85,$5a,$a2,$00,$a0,$60,$8e,$00,$80,$8c,$01,$80,$84,$5b
.byte $e8,$c8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5c,$e8,$a0,$65,$8e,$00
.byte $80,$8c,$01,$80,$84,$5d,$e8,$c8,$8e,$00,$80,$8c,$01,$80,$84,$5e
.byte $a9,$00,$85,$26,$a5,$05,$0a,$aa,$bd,$10,$99,$85,$10,$bd,$11,$99
.byte $85,$11,$ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00,$8d,$06,$20,$20
.byte $da,$f6,$20,$a9,$87,$a5,$08,$d0,$0d,$a2,$13,$bd,$b4,$87,$9d,$c0
.byte $03,$ca,$10,$f7,$30,$0b,$a2,$13,$bd,$1e,$89,$9d,$c0,$03,$ca,$10
.byte $f7,$a2,$0f,$bd,$e8,$98,$9d,$c0,$03,$ca,$10,$f7,$a5,$05,$0a,$0a
.byte $aa,$a0,$00,$bd,$00,$99,$99,$c4,$03,$e8,$c8,$c0,$04,$90,$f4,$a9
.byte $01,$85,$2f,$a9,$01,$85,$00,$a9,$00,$85,$09,$20,$4a,$f3,$a9,$08
.byte $20,$86,$f2,$20,$2b,$9e,$78,$60,$0f,$00,$10,$30,$0f,$0f,$0f,$0f
.byte $0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f,$29,$19,$0f,$0f,$20,$15,$0f
;$9900
.byte $0f,$11,$3b,$30,$0f,$05,$26,$30,$0f,$27,$38,$30,$0f,$1a,$29,$30
.byte $18,$99,$60,$9a,$a5,$9b,$e8,$9c,$fd,$00,$00,$88,$00,$01,$3d,$87
.byte $41,$01,$2d,$92,$41,$01,$3d,$84,$00,$88,$41,$01,$2d,$93,$41,$84
.byte $00,$88,$41,$01,$2d,$93,$41,$84,$00,$83,$41,$01,$42,$94,$43,$01
.byte $44,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84
.byte $00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$07
.byte $52,$01,$01,$20,$21,$24,$25,$45,$01,$0d,$01,$aa,$ab,$ae,$af,$4c
.byte $4c,$01,$01,$54,$43,$60,$43,$84,$00,$83,$41,$08,$52,$01,$01,$30
.byte $31,$34,$35,$01,$44,$12,$0d,$01,$ac,$ad,$a0,$b0,$5c,$5c,$01,$01
.byte $54,$43,$60,$43,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41
.byte $84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41
.byte $01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01
.byte $01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$ba,$01,$52,$83,$41
.byte $84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41
.byte $01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41
.byte $01,$52,$83,$41,$84,$00,$04,$43,$60,$60,$55,$94,$41,$01,$52,$83
;$9A00
.byte $41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$83
.byte $41,$01,$62,$94,$43,$01,$64,$83,$41,$84,$00,$88,$41,$01,$2d,$93
.byte $41,$84,$00,$88,$41,$01,$2d,$93,$41,$84,$00,$01,$3d,$87,$41,$01
.byte $2d,$92,$41,$01,$3d,$fd,$00,$00,$90,$00,$01,$44,$86,$55,$03,$11
.byte $44,$11,$84,$50,$c2,$44,$11,$84,$00,$c2,$44,$11,$84,$00,$04,$44
.byte $11,$44,$51,$84,$50,$03,$54,$11,$04,$86,$05,$01,$01,$88,$00,$ff
.byte $fd,$00,$00,$88,$00,$01,$3d,$87,$41,$01,$2d,$92,$41,$01,$3d,$84
.byte $00,$88,$41,$01,$2d,$93,$41,$84,$00,$88,$41,$01,$2d,$93,$41,$84
.byte $00,$83,$41,$01,$42,$94,$43,$01,$44,$83,$41,$84,$00,$83,$41,$01
.byte $52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01
.byte $52,$83,$41,$84,$00,$83,$41,$03,$52,$01,$01,$44,$20,$45,$01,$0d
.byte $01,$aa,$ab,$ae,$af,$4c,$4c,$01,$01,$54,$43,$60,$43,$84,$00,$83
.byte $41,$03,$52,$01,$01,$44,$30,$01,$01,$44,$12,$0d,$01,$ac,$ad,$a0
.byte $b0,$5c,$5c,$01,$01,$54,$43,$60,$43,$84,$00,$83,$41,$01,$52,$94
.byte $01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83
.byte $41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83
;$9B00
.byte $41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94
.byte $ba,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83
.byte $41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$83
.byte $41,$01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$04,$43,$60,$60,$55
.byte $94,$41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52
.byte $83,$41,$84,$00,$83,$41,$01,$62,$94,$43,$01,$64,$83,$41,$84,$00
.byte $88,$41,$01,$2d,$93,$41,$84,$00,$88,$41,$01,$2d,$93,$41,$84,$00
.byte $01,$3d,$87,$41,$01,$2d,$92,$41,$01,$3d,$fd,$00,$00,$90,$00,$01
.byte $44,$86,$55,$03,$11,$44,$11,$84,$50,$c2,$44,$11,$84,$00,$c2,$44
.byte $11,$84,$00,$04,$44,$11,$44,$51,$84,$50,$03,$54,$11,$04,$86,$05
.byte $01,$01,$88,$00,$ff,$fd,$00,$00,$88,$00,$01,$3d,$87,$41,$01,$2d
.byte $92,$41,$01,$3d,$84,$00,$88,$41,$01,$2d,$93,$41,$84,$00,$88,$41
.byte $01,$2d,$93,$41,$84,$00,$83,$41,$01,$42,$94,$43,$01,$44,$83,$41
.byte $84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41
.byte $01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$03,$52,$01,$01
.byte $45,$06,$44,$02,$0d,$01,$aa,$ab,$ae,$af,$4c,$4c,$01,$01,$54,$43
;$9C00
.byte $60,$43,$84,$00,$83,$41,$03,$52,$01,$01,$45,$16,$44,$12,$0d,$01
.byte $ac,$ad,$a0,$b0,$5c,$5c,$01,$01,$54,$43,$60,$43,$84,$00,$83,$41
.byte $01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01
.byte $01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41
.byte $84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41
.byte $01,$52,$94,$ba,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41
.byte $01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41
.byte $84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$04,$43
.byte $60,$60,$55,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94
.byte $41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$62,$94,$43,$01,$64,$83
.byte $41,$84,$00,$88,$41,$01,$2d,$93,$41,$84,$00,$88,$41,$01,$2d,$93
.byte $41,$84,$00,$01,$3d,$87,$41,$01,$2d,$92,$41,$01,$3d,$fd,$00,$00
.byte $90,$00,$01,$44,$86,$55,$03,$11,$44,$11,$84,$50,$c2,$44,$11,$84
.byte $00,$c2,$44,$11,$84,$00,$04,$44,$11,$44,$51,$84,$50,$03,$54,$11
.byte $04,$86,$05,$01,$01,$88,$00,$ff,$fd,$00,$00,$88,$00,$01,$3d,$87
.byte $41,$01,$2d,$92,$41,$01,$3d,$84,$00,$88,$41,$01,$2d,$93,$41,$84
;$9D00
.byte $00,$88,$41,$01,$2d,$93,$41,$84,$00,$83,$41,$01,$42,$94,$43,$01
.byte $44,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84
.byte $00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$03
.byte $52,$01,$01,$45,$26,$44,$02,$0d,$01,$aa,$ab,$ae,$af,$4c,$4c,$01
.byte $01,$54,$43,$60,$43,$84,$00,$83,$41,$03,$52,$01,$01,$45,$36,$44
.byte $12,$0d,$01,$ac,$ad,$a0,$b0,$5c,$5c,$01,$01,$54,$43,$60,$43,$84
.byte $00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01
.byte $52,$94,$01,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01
.byte $52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$01,$01,$52,$83,$41,$84
.byte $00,$83,$41,$01,$52,$94,$ba,$01,$52,$83,$41,$84,$00,$83,$41,$01
.byte $52,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41,$01
.byte $52,$83,$41,$84,$00,$83,$41,$01,$52,$94,$41,$01,$52,$83,$41,$84
.byte $00,$04,$43,$60,$60,$55,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41
.byte $01,$52,$94,$41,$01,$52,$83,$41,$84,$00,$83,$41,$01,$62,$94,$43
.byte $01,$64,$83,$41,$84,$00,$88,$41,$01,$2d,$93,$41,$84,$00,$88,$41
.byte $01,$2d,$93,$41,$84,$00,$01,$3d,$87,$41,$01,$2d,$92,$41,$01,$3d
;$9E00
.byte $fd,$00,$00,$90,$00,$01,$44,$86,$55,$03,$11,$44,$11,$84,$50,$c2
.byte $44,$11,$84,$00,$c2,$44,$11,$84,$00,$04,$44,$11,$44,$51,$84,$50
.byte $03,$54,$11,$04,$86,$05,$01,$01,$88,$00,$ff,$a5,$08,$f0,$03,$4c
.byte $d8,$9e,$a2,$03,$bd,$c4,$87,$9d,$d0,$03,$ca,$10,$f7,$a9,$01,$85
.byte $2f,$a9,$00,$85,$00,$20,$72,$9e,$e6,$00,$a5,$00,$c9,$11,$90,$f5
.byte $a9,$78,$85,$7f,$a5,$06,$48,$20,$7b,$9e,$68,$85,$06,$e6,$00,$a5
.byte $00,$c9,$14,$90,$04,$a9,$11,$85,$00,$a5,$09,$d0,$04,$a5,$7f,$d0
.byte $e3,$60,$20,$bd,$f3,$a9,$00,$85,$06,$85,$09,$a6,$00,$bd,$9b,$9e
.byte $18,$69,$40,$85,$02,$a9,$82,$85,$03,$bd,$b0,$9e,$85,$04,$20,$6b
.byte $9f,$a6,$00,$bd,$c4,$9e,$aa,$20,$af,$85,$60,$00,$08,$10,$18,$20
.byte $28,$30,$38,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40
.byte $00,$01,$02,$03,$00,$01,$02,$03,$00,$01,$02,$03,$00,$01,$02,$03
.byte $04,$05,$06,$07,$0c,$0c,$0c,$0c,$0c,$0c,$0c,$0c,$08,$08,$08,$08
.byte $08,$0c,$10,$20,$30,$04,$04,$04,$a2,$03,$bd,$2e,$89,$9d,$d0,$03
.byte $ca,$10,$f7,$a9,$01,$85,$2f,$a9,$00,$85,$00,$20,$18,$9f,$e6,$00
.byte $a5,$00,$c9,$0b,$90,$f5,$a9,$78,$85,$7f,$a5,$06,$48,$20,$21,$9f
;$9F00
.byte $68,$85,$06,$e6,$00,$a5,$00,$c9,$0e,$90,$04,$a9,$0b,$85,$00,$a5
.byte $09,$d0,$04,$a5,$7f,$d0,$e3,$60,$20,$bd,$f3,$a9,$00,$85,$06,$85
.byte $09,$a6,$00,$bd,$41,$9f,$18,$69,$40,$85,$02,$a9,$82,$85,$03,$bd
.byte $4f,$9f,$85,$04,$20,$6b,$9f,$a6,$00,$bd,$5d,$9f,$aa,$20,$af,$85
.byte $60,$00,$08,$10,$18,$20,$28,$30,$38,$40,$40,$40,$40,$40,$40,$0a
.byte $09,$08,$0a,$09,$08,$0a,$09,$08,$0a,$0b,$05,$06,$07,$14,$08,$14
.byte $14,$08,$14,$18,$08,$20,$04,$30,$04,$04,$04,$a6,$04,$bd,$fd,$9f
.byte $85,$07,$bd,$c5,$9f,$85,$0a,$bd,$d1,$9f,$85,$0b,$a5,$04,$0a,$0a
.byte $0a,$0a,$18,$69,$08,$85,$10,$a9,$00,$69,$a0,$85,$11,$a6,$06,$a0
.byte $00,$b1,$10,$30,$24,$9d,$01,$02,$a5,$07,$9d,$02,$02,$b9,$dd,$9f
.byte $18,$65,$02,$18,$65,$0a,$9d,$03,$02,$b9,$ed,$9f,$18,$65,$03,$18
.byte $65,$0b,$9d,$00,$02,$e8,$e8,$e8,$e8,$c8,$c0,$10,$90,$d3,$86,$06
.byte $a9,$01,$85,$2e,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$fd,$fd,$fd,$00,$00,$00,$00,$f0,$f8,$00
.byte $08,$f0,$f8,$00,$08,$f0,$f8,$00,$08,$f0,$f8,$00,$08,$f0,$f0,$f0
.byte $f0,$f8,$f8,$f8,$f8,$00,$00,$00,$00,$08,$08,$08,$08,$00,$00,$00
