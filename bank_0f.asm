.include "Constants.inc"
.if ORIGINAL
.else
.include "text/text_list.inc"
.endif

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
.byte $90,$f1,$60,$18,$60,$90,$01,$60

; Name	:
	JSR $E48C		; E438  $20 $8C $E4
	LDA #$E0		; E43B  $A9 $E0
	STA $12			; E43D  $85 $12
	LDA #$03		; E43F  $A9 $03
	STA $13			; E441  $85 $13
	LDY #$00		; E443  $A0 $00
	STY $01			; E445  $84 $01
BFE447:
	STY $02			; E447  $84 $02
	LDA ($14),Y		; E449  $B1 $14
	BPL BFE46B		; E44B  $10 $1E
	TAX			; E44D  $AA
	INX			; E44E  $E8
	BEQ BFE485		; E44F  $F0 $34
	INX			; E451  $E8
	BEQ BFE45A		; E452  $F0 $06
	JSR $E49D		; E454  $20 $9D $E4
	JMP $E46E		; E457  $4C $6E $E4
BFE45A:
	CLC			; E45A  $18
	LDA $12			; E45B  $A5 $12
	ADC #$24		; E45D  $69 $24
	STA $12			; E45F  $85 $12
	LDA $13			; E461  $A5 $13
	ADC #$00		; E463  $69 $00
	STA $13			; E465  $85 $13
	LDY #$00		; E467  $A0 $00
	BEQ BFE47E		; E469  $F0 $13
BFE46B:
	JSR $C536		; E46B  $20 $36 $C5
	LDY $01			; E46E  $A4 $01
	LDX #$00		; E470  $A2 $00
BFE472:
	LDA $D1,X		; E472  $B5 $D1
	BEQ BFE47E		; E474  $F0 $08
	STA ($12),Y		; E476  $91 $12
	INY			; E478  $C8
	INX			; E479  $E8
	CPX #$1E		; E47A  $E0 $1E
	BCC BFE472		; E47C  $90 $F4
BFE47E:
	STY $01			; E47E  $84 $01
	LDY $02			; E480  $A4 $02
	INY			; E482  $C8
	BPL BFE447		; E483  $10 $C2
BFE485:
	LDY $01			; E485  $A4 $01
	LDA #$00		; E487  $A9 $00
	STA ($12),Y		; E489  $91 $12
	RTS			; E48B  $60

; Name	:
	LDA #$00		; E48C  $A9 $00
	LDY #$23		; E48E  $A0 $23
BFE490:
	STA $03E0,Y		; E490  $99 $E0 $03
	STA $0404,Y		; E493  $99 $04 $04
	STA $0428,Y		; E496  $99 $28 $04
	DEY			; E499  $88
	BPL BFE490		; E49A  $10 $F4
	RTS			; E49C  $60

; Name	:
	INX			; E49D  E8             
	BEQ BFE4C7		; E49E  F0 27          
	INX			; E4A0  E8             
	BEQ BFE4D1		; E4A1  F0 2E          
	INX			; E4A3  E8             
	BEQ BFE4DD		; E4A4  F0 37          
	INX			; E4A6  E8             
	BEQ BFE4C3		; E4A7  F0 1A          
	INX			; E4A9  E8             
	BEQ BFE4CD		; E4AA  F0 21          
	INX			; E4AC  E8             
	BEQ BFE4E2		; E4AD  F0 33          
	INX			; E4AF  E8             
	BEQ BFE4FF		; E4B0  F0 4D          
	INX			; E4B2  E8             
	BEQ BFE50E		; E4B3  F0 59          
	INX			; E4B5  E8             
	BEQ BFE516		; E4B6  F0 5E          
	INX			; E4B8  E8             
	BEQ BFE51B		; E4B9  F0 60          
	INX			; E4BB  E8             
	BEQ BFE527		; E4BC  F0 69          
	LDA #$00		; E4BE  A9 00          
	STA $D1			; E4C0  85 D1          
	RTS			; E4C2  60             

BFE4C3:
.byte $a5,$af,$10,$03
BFE4C7:
.byte $ad,$13,$62,$4c,$5c,$c5
BFE4CD:
.byte $a5,$ab,$10
.byte $02
BFE4D1:
.byte $a5,$93,$18,$69,$31,$85,$d1,$a9,$00,$85,$d2,$60
BFE4DD:
.byte $a5,$a6,$4c
.byte $8c,$c5
BFE4E2:
.byte $ad,$14,$62,$85,$18,$ad,$15,$62,$85,$19,$20,$8a,$f8,$a0
.byte $03,$b9,$51,$04,$99,$d1,$00,$88,$10,$f7,$a9,$00,$85,$d5,$60
BFE4FF:
.byte $ad
;$E500
.byte $16,$62,$20,$d4,$f8,$86,$d1,$84,$d2,$a9,$00,$85,$d3,$60
BFE50E:
	LDA $95			; E50E  $A5 $95
	CLC			; E510  $18
	ADC #$01		; E511  $69 $01
	JMP $C55C		; E513  $4C $5C $C5
BFE516:
	LDA $96			; E516  $A5 $96
	JMP $C5C2		; E518  $4C $C2 $C5
BFE51B:
	LDA $99			; E51B  $A5 $99
	CLC			; E51D  $18
	ADC #$30		; E51E  $69 $30
	STA $D1			; E520  $85 $D1
	LDA #$00		; E522  $A9 $00
	STA $D2			; E524  $85 $D2
	RTS			; E526  $60

BFE527:
.byte $a5,$a5,$4c,$8c,$c5,$90,$01,$60

; Name	:
	LDA $6211		; E52F  $AD $11 $62
	AND #$04		; E532  $29 $04
	BNE BFE537		; E534  $D0 $01
	RTS			; E536  $60
BFE537:
	JSR $E569		; E537  $20 $69 $E5
	LDA #$78		; E53A  $A9 $78
	STA $7F			; E53C  $85 $7F
BFE53E:
	LDA $91			; E53E  $A5 $91
	CMP #$09		; E540  $C9 $09
	BEQ BFE547		; E542  $F0 $03
	JSR $C0E9		; E544  $20 $E9 $C0
BFE547:
	LDA $7F			; E547  $A5 $7F
	BEQ BFE54F		; E549  $F0 $04
	LDA $7E			; E54B  $A5 $7E
	BEQ BFE53E		; E54D  $F0 $EF
BFE54F:
	JSR $F3C8		; E54F  $20 $C8 $F3
	JSR $F3D0		; E552  $20 $D0 $F3
	LDX $6213		; E555  $AE $13 $62
	LDA $621D,X		; E558  $BD $1D $62
	BPL BFE562		; E55B  $10 $05
	LDA #$01		; E55D  $A9 $01
	JMP $F4DA		; E55F  $4C $DA $F4
BFE562:
	JSR $C278		; E562  $20 $78 $C2
	JSR $C2EF		; E565  $20 $EF $C2
	RTS			; E568  $60

; Name	:
	JSR $F4D3		; E569  $20 $D3 $F4
	LDA $62			; E56C  $A5 $62
	LSR A			; E56E  $4A
	PHA			; E56F  $48
	JSR $F56E		; E570  $20 $6E $F5
	JSR $86A1		; E573  $20 $A1 $86
	PLA			; E576  $68
	JSR $F570		; E577  $20 $70 $F5
	JSR $F96D		; E57A  $20 $6D $F9
	JSR $FCBF		; E57D  $20 $BF $FC
	LDA #$34		; E580  $A9 $34
	LDY #$E6		; E582  $A0 $E6
	JSR $FB09		; E584  $20 $09 $FB
	LDA #$E0		; E587  $A9 $E0
	STA $10			; E589  $85 $10
	LDA #$03		; E58B  $A9 $03
	STA $11			; E58D  $85 $11
	LDA #$07		; E58F  $A9 $07
	STA $12			; E591  $85 $12
	LDA #$03		; E593  $A9 $03
	STA $13			; E595  $85 $13
	JSR $F410		; E597  $20 $10 $F4
	LDA #$04		; E59A  $A9 $04
	STA $10			; E59C  $85 $10
	LDA #$04		; E59E  $A9 $04
	STA $11			; E5A0  $85 $11
	LDA #$47		; E5A2  $A9 $47
	STA $12			; E5A4  $85 $12
	LDA #$03		; E5A6  $A9 $03
	STA $13			; E5A8  $85 $13
	JSR $F410		; E5AA  $20 $10 $F4
	LDA #$80		; E5AD  $A9 $80
	STA $00			; E5AF  $85 $00
	JSR $F9CA		; E5B1  $20 $CA $F9
	JSR $F4D3		; E5B4  $20 $D3 $F4
	LDA #$C0		; E5B7  $A9 $C0
	STA $2C			; E5B9  $85 $2C
	LDA #$22		; E5BB  $A9 $22
	STA $2D			; E5BD  $85 $2D
	LDA #$01		; E5BF  $A9 $01
	STA $33			; E5C1  $85 $33
	JSR $F4DC		; E5C3  $20 $DC $F4
	JSR $F96D		; E5C6  $20 $6D $F9
	LDY #$1F		; E5C9  $A0 $1F
BFE5CB:
	LDA #$4A		; E5CB  $A9 $4A
	STA $0340,Y		; E5CD  $99 $40 $03
	LDA #$00		; E5D0  $A9 $00
	STA $0360,Y		; E5D2  $99 $60 $03
	DEY			; E5D5  $88
	BPL BFE5CB		; E5D6  $10 $F3
	LDA #$53		; E5D8  $A9 $53
	LDY #$E6		; E5DA  $A0 $E6
	JSR $FB09		; E5DC  $20 $09 $FB
	LDA #$28		; E5DF  $A9 $28
	STA $10			; E5E1  $85 $10
	LDA #$04		; E5E3  $A9 $04
	STA $11			; E5E5  $85 $11
	LDA #$07		; E5E7  $A9 $07
	STA $12			; E5E9  $85 $12
	LDA #$03		; E5EB  $A9 $03
	STA $13			; E5ED  $85 $13
	JSR $F410		; E5EF  $20 $10 $F4
	LDA #$80		; E5F2  $A9 $80
	STA $00			; E5F4  $85 $00
	JSR $F9CA		; E5F6  $20 $CA $F9
	LDA #$40		; E5F9  $A9 $40
	STA $2C			; E5FB  $85 $2C
	LDA #$23		; E5FD  $A9 $23
	STA $2D			; E5FF  $85 $2D
	LDA #$01		; E601  $A9 $01
	STA $33			; E603  $85 $33
	JSR $F4DC		; E605  $20 $DC $F4
	JSR $D5CA		; E608  $20 $CA $D5
	LDA #$C4		; E60B  $A9 $C4
	STA $8A			; E60D  $85 $8A
	LDA #$10		; E60F  $A9 $10
	STA $8C			; E611  $85 $8C
	LDA #$BF		; E613  $A9 $BF
	STA $89			; E615  $85 $89
	LDA #$02		; E617  $A9 $02
	STA $8B			; E619  $85 $8B
	LDA #$C0		; E61B  $A9 $C0
	STA $88			; E61D  $85 $88
	JSR $FB4F		; E61F  $20 $4F $FB
	LDX #$01		; E622  $A2 $01
	LDY #$18		; E624  $A0 $18
	JSR $D401		; E626  $20 $01 $D4
	LDA #$01		; E629  $A9 $01
	STA $2F			; E62B  $85 $2F
	JSR $F3D0		; E62D  $20 $D0 $F3
	JSR $F3D0		; E630  $20 $D0 $F3
	RTS			; E633  $60

;$E634 - data block = ($E634-$E671)
.byte $00,$03,$20,$47,$40,$47,$60,$47,$3f,$48,$5f,$48
.byte $7f,$48,$42,$00,$43,$00,$44,$00,$45,$00,$62,$00,$63,$00,$64,$00
.byte $65,$00,$ff,$00,$03,$00,$47,$20,$47,$1f,$48,$3f,$48,$02,$00,$03
.byte $00,$04,$00,$05,$00,$22,$00,$23,$00,$24,$00,$25,$00,$40,$65,$5f
.byte $66,$ff

; Name	:
	LDA #$00		; E672  $A9 $00
	STA $6205		; E674  $8D $05 $62
	STA $6207		; E677  $8D $07 $62
	STA $6209		; E67A  $8D $09 $62
	STA $620B		; E67D  $8D $0B $62
	LDA $6206		; E680  $AD $06 $62
	SEC			; E683  $38
	SBC $620A		; E684  $ED $0A $62
	JSR $F776		; E687  $20 $76 $F7
	STA $00			; E68A  $85 $00
	LDA $6208		; E68C  $AD $08 $62
	SEC			; E68F  $38
	SBC $620C		; E690  $ED $0C $62
	JSR $F776		; E693  $20 $76 $F7
	CMP $00			; E696  $C5 $00
	BCS BFE6F8		; E698  $B0 $5E
	LDA #$00		; E69A  $A9 $00
	STA $61FF		; E69C  $8D $FF $61
	SEC			; E69F  $38
	LDA $6206		; E6A0  $AD $06 $62
	SBC $620A		; E6A3  $ED $0A $62
	STA $16			; E6A6  $85 $16
	LDA $6205		; E6A8  $AD $05 $62
	SBC $6209		; E6AB  $ED $09 $62
	BPL BFE6C6		; E6AE  $10 $16
	LDA #$FF		; E6B0  $A9 $FF
	STA $620D		; E6B2  $8D $0D $62
	LDA #$00		; E6B5  $A9 $00
	SEC			; E6B7  $38
	SBC $16			; E6B8  $E5 $16
	STA $6203		; E6BA  $8D $03 $62
	STA $6202		; E6BD  $8D $02 $62
	STA $6200		; E6C0  $8D $00 $62
	JMP $E6D6		; E6C3  $4C $D6 $E6
BFE6C6:
	LDA #$01		; E6C6  $A9 $01
	STA $620D		; E6C8  $8D $0D $62
	LDA $16			; E6CB  $A5 $16
	STA $6203		; E6CD  $8D $03 $62
	STA $6202		; E6D0  $8D $02 $62
	STA $6200		; E6D3  $8D $00 $62
	LDA $6208		; E6D6  $AD $08 $62
	SEC			; E6D9  $38
	SBC $620C		; E6DA  $ED $0C $62
	BCS BFE6EF		; E6DD  $B0 $10
	STA $16			; E6DF  $85 $16
	LDA #$00		; E6E1  $A9 $00
	SEC			; E6E3  $38
	SBC $16			; E6E4  $E5 $16
	STA $6201		; E6E6  $8D $01 $62
	LDA #$FF		; E6E9  $A9 $FF
	STA $620E		; E6EB  $8D $0E $62
	RTS			; E6EE  $60
BFE6EF:
	STA $6201		; E6EF  $8D $01 $62
	LDA #$01		; E6F2  $A9 $01
	STA $620E		; E6F4  $8D $0E $62
	RTS			; E6F7  $60
BFE6F8:
	LDA #$01		; E6F8  $A9 $01
	STA $61FF		; E6FA  $8D $FF $61
	SEC			; E6FD  $38
	LDA $6208		; E6FE  $AD $08 $62
	SBC $620C		; E701  $ED $0C $62
	STA $16			; E704  $85 $16
	LDA $6207		; E706  $AD $07 $62
	SBC $620B		; E709  $ED $0B $62
	BPL BFE724		; E70C  $10 $16
	LDA #$FF		; E70E  $A9 $FF
	STA $620E		; E710  $8D $0E $62
	LDA #$00		; E713  $A9 $00
	SEC			; E715  $38
	SBC $16			; E716  $E5 $16
	STA $6204		; E718  $8D $04 $62
	STA $6202		; E71B  $8D $02 $62
	STA $6201		; E71E  $8D $01 $62
	JMP $E734		; E721  $4C $34 $E7
BFE724:
	LDA #$01		; E724  $A9 $01
	STA $620E		; E726  $8D $0E $62
	LDA $16			; E729  $A5 $16
	STA $6204		; E72B  $8D $04 $62
	STA $6202		; E72E  $8D $02 $62
	STA $6201		; E731  $8D $01 $62
	LDA $6206		; E734  $AD $06 $62
	SEC			; E737  $38
	SBC $620A		; E738  $ED $0A $62
	BCS BFE74D		; E73B  $B0 $10
	STA $16			; E73D  $85 $16
	LDA #$00 		; E73F  $A9 $00
	SEC			; E741  $38
	SBC $16			; E742  $E5 $16
	STA $6200		; E744  $8D $00 $62
	LDA #$FF		; E747  $A9 $FF
	STA $620D		; E749  $8D $0D $62
	RTS			; E74C  $60
BFE74D:
	STA $6200		; E74D  $8D $00 $62
	LDA #$01		; E750  $A9 $01
	STA $620D		; E752  $8D $0D $62
	RTS			; E755  $60

; Name	:
	LDA $61FF		; E756  $AD $FF $61
	BMI BFE760		; E759  $30 $05
	BEQ BFE761		; E75B  $F0 $04
	JMP $E7AE		; E75D  $4C $AE $E7
BFE760:
	RTS			; E760	$60
BFE761:
	DEC $6202		; E761  $CE $02 $62
	BNE BFE76E		; E764  $D0 $08
	LDA $61FF		; E766  $AD $FF $61
	ORA #$80		; E769  $09 $80
	STA $61FF		; E76B  $8D $FF $61
BFE76E:
	LDA $620D		; E76E  $AD $0D $62
	JSR $E7FB		; E771  $20 $FB $E7
	CLC			; E774  $18
	STA $16			; E775  $85 $16
	LDA $620A		; E777  $AD $0A $62
	ADC $620D		; E77A  $6D $0D $62
	STA $620A		; E77D  $8D $0A $62
	LDA $6209		; E780  $AD $09 $62
	ADC $16			; E783  $65 $16
	STA $6209		; E785  $8D $09 $62
	SEC			; E788  $38
	LDA $6203		; E789  $AD $03 $62
	SBC $6201		; E78C  $ED $01 $62
	BCS BFE7AA		; E78F  $B0 $19
	LDY #$00		; E791  $A0 $00
BFE793:
	INY			; E793  $C8
	ADC $6200		; E794  $6D $00 $62
	STA $6203		; E797  $8D $03 $62
	BCC BFE793		; E79A  $90 $F7
	LDA $620C		; E79C  $AD $0C $62
BFE79F:
	CLC			; E79F  $18
	ADC $620E		; E7A0  $6D $0E $62
	DEY			; E7A3  $88
	BNE BFE79F		; E7A4  $D0 $F9
	STA $620C		; E7A6  $8D $0C $62
	RTS			; E7A9  $60
BFE7AA:
	STA $6203		; E7AA  $8D $03 $62
	RTS			; E7AD  $60

	DEC $6202		; E7AE  $CE $02 $62
	BNE BFE7BB		; E7B1  $D0 $08
	LDA $61FF		; E7B3  $AD $FF $61
	ORA #$80		; E7B6  $09 $80
	STA $61FF		; E7B8  $8D $FF $61
BFE7BB:
	LDA $620E		; E7BB  $AD $0E $62
	JSR $E7FB		; E7BE  $20 $FB $E7
	CLC			; E7C1  $18
	STA $16			; E7C2  $85 $16
	LDA $620C		; E7C4  $AD $0C $62
	ADC $620E		; E7C7  $6D $0E $62
	STA $620C		; E7CA  $8D $0C $62
	LDA $620B		; E7CD  $AD $0B $62
	ADC $16			; E7D0  $65 $16
	STA $620B		; E7D2  $8D $0B $62
	SEC			; E7D5  $38
	LDA $6204		; E7D6  $AD $04 $62
	SBC $6200		; E7D9  $ED $00 $62
	BCS BFE7F7		; E7DC  $B0 $19
	LDY #$00		; E7DE  $A0 $00
BFE7E0:
	INY			; E7E0  $C8
	ADC $6201		; E7E1  $6D $01 $62
	STA $6204		; E7E4  $8D $04 $62
	BCC BFE7E0		; E7E7  $90 $F7
	LDA $620A		; E7E9  $AD $0A $62
BFE7EC:
	CLC			; E7EC  $18
	ADC $620D		; E7ED  $6D $0D $62
	DEY			; E7F0  $88
	BNE BFE7EC		; E7F1  $D0 $F9
	STA $620A		; E7F3  $8D $0A $62
	RTS			; E7F6  $60
BFE7F7:
	STA $6204		; E7F7  $8D $04 $62
	RTS			; E7FA  $60

; Name	:
	EOR #$80		; E7FB  $49 $80
	ASL A			; E7FD  $0A
	LDA #$00		; E7FE  $A9 $00
	ADC #$FF		; E800  $69 $FF
	RTS			; E802  $60

;$E803
.byte $90,$01,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
.byte $ef,$27,$df,$27,$e7,$27,$5f,$ff,$55,$55

; Name	:
	LDA $C2			; E9AA  $A5 $C2
	CMP #$40		; E9AC  $C9 $40
	BCC BFE9B1		; E9AE  $90 $01
	RTS			; E9B0  $60
BFE9B1:
	STX $BF			; E9B1  $86 $BF
	STY $C0			; E9B3  $84 $C0
	LDX $C1			; E9B5  $A6 $C1
	LDY #$00		; E9B7  $A0 $00
	LDA ($BD),Y		; E9B9  $B1 $BD
	STA $06			; E9BB  $85 $06
	BNE BFE9C7		; E9BD  $D0 $08
	INY			; E9BF  $C8
	LDA ($BD),Y		; E9C0  $B1 $BD
	STA $05			; E9C2  $85 $05
	INY			; E9C4  $C8
	LDA ($BD),Y		; E9C5  $B1 $BD
BFE9C7:
	STA $00			; E9C7  $85 $00
	INY			; E9C9  $C8
	LDA ($BD),Y		; E9CA  $B1 $BD
	STA $01			; E9CC  $85 $01
	INY			; E9CE  $C8
	LDA ($BD),Y		; E9CF  $B1 $BD
	CLC			; E9D1  $18
	ADC $BF			; E9D2  $65 $BF
	STA $BF			; E9D4  $85 $BF
	INY			; E9D6  $C8
	LDA ($BD),Y		; E9D7  $B1 $BD
	CLC			; E9D9  $18
	ADC $C0			; E9DA  $65 $C0
	STA $C0			; E9DC  $85 $C0
	INY			; E9DE  $C8
	LDA $06			; E9DF  $A5 $06
	BEQ BFE9E6		; E9E1  $F0 $03
	JMP $EA30		; E9E3  $4C $30 $EA
BFE9E6:
	LDA $C0			; E9E6  $A5 $C0
	STA $03			; E9E8  $85 $03
BFE9EA:
	LDA $BF			; E9EA  $A5 $BF
	STA $02			; E9EC  $85 $02
	LDA $00			; E9EE  $A5 $00
	STA $04			; E9F0  $85 $04
BFE9F2:
	LDA ($BD),Y		; E9F2  $B1 $BD
	INY			; E9F4  $C8
	CMP #$00		; E9F5  $C9 $00
	BEQ BFEA17		; E9F7  $F0 $1E
	STA $0201,X		; E9F9  $9D $01 $02
	LDA $03			; E9FC  $A5 $03
	STA $0200,X		; E9FE  $9D $00 $02
	INX			; EA01  $E8
	INX			; EA02  $E8
	LDA $05			; EA03  $A5 $05
	STA $0200,X		; EA05  $9D $00 $02
	INX			; EA08  $E8
	LDA $02			; EA09  $A5 $02
	STA $0200,X		; EA0B  $9D $00 $02
	INX			; EA0E  $E8
	INC $C2			; EA0F  $E6 $C2
	LDA $C2			; EA11  $A5 $C2
	CMP #$40		; EA13  $C9 $40
	BCS BFEA2D		; EA15  $B0 $16
BFEA17:
	LDA $02			; EA17  $A5 $02
	CLC			; EA19  $18
	ADC #$08		; EA1A  $69 $08
	STA $02			; EA1C  $85 $02
	DEC $04			; EA1E  $C6 $04
	BNE BFE9F2		; EA20  $D0 $D0
	LDA $03			; EA22  $A5 $03
	CLC			; EA24  $18
	ADC #$08		; EA25  $69 $08
	STA $03			; EA27  $85 $03
	DEC $01			; EA29  $C6 $01
	BNE BFE9EA		; EA2B  $D0 $BD
BFEA2D:
	STX $C1			; EA2D  $86 $C1
	RTS			; EA2F  $60

	LDA $C0			; EA30  $A5 $C0
	STA $03			; EA32  $85 $03
BFEA34:
	LDA $BF			; EA34  $A5 $BF
	STA $02			; EA36  $85 $02
	LDA $00			; EA38  $A5 $00
	STA $04			; EA3A  $85 $04
BFEA3C:
	LDA ($BD),Y		; EA3C  $B1 $BD
	INY			; EA3E  $C8
	STA $0201,X		; EA3F  $9D $01 $02
	LDA $03			; EA42  $A5 $03
	STA $0200,X		; EA44  $9D $00 $02
	INX			; EA47  $E8
	INX			; EA48  $E8
	LDA ($BD),Y		; EA49  $B1 $BD
	INY			; EA4B  $C8
	STA $0200,X		; EA4C  $9D $00 $02
	INX			; EA4F  $E8
	LDA $02			; EA50  $A5 $02
	STA $0200,X		; EA52  $9D $00 $02
	INX			; EA55  $E8
	INC $C2			; EA56  $E6 $C2
	LDA $C2			; EA58  $A5 $C2
	CMP #$40		; EA5A  $C9 $40
	BCS BFEA73		; EA5C  $B0 $15
	LDA $02			; EA5E  $A5 $02
	ADC #$08		; EA60  $69 $08
	STA $02			; EA62  $85 $02
	DEC $04			; EA64  $C6 $04
	BNE BFEA3C		; EA66  $D0 $D4
	LDA $03			; EA68  $A5 $03
	CLC			; EA6A  $18
	ADC #$08		; EA6B  $69 $08
	STA $03			; EA6D  $85 $03
	DEC $01			; EA6F  $C6 $01
	BNE BFEA34		; EA71  $D0 $C1
BFEA73:
	STX $C1			; EA73  $86 $C1
	RTS			; EA75  $60

;$EA76
.byte $60

; Name	:
	LDA $BC			; EA77  $A5 $BC
	CLC			; EA79  $18
	ADC #$A4		; EA7A  $69 $A4
	STA $BC			; EA7C  $85 $BC
	STA $C1			; EA7E  $85 $C1
	LDX #$00		; EA80  $A2 $00
BFEA82:
	LDA #$F8		; EA82  $A9 $F8
	STA $0200,X		; EA84  $9D $00 $02
	STA $0204,X		; EA87  $9D $04 $02
	STA $0208,X		; EA8A  $9D $08 $02
	STA $020C,X		; EA8D  $9D $0C $02
	STA $0210,X		; EA90  $9D $10 $02
	STA $0214,X		; EA93  $9D $14 $02
	STA $0218,X		; EA96  $9D $18 $02
	STA $021C,X		; EA99  $9D $1C $02
	STA $0220,X		; EA9C  $9D $20 $02
	STA $0224,X		; EA9F  $9D $24 $02
	STA $0228,X		; EAA2  $9D $28 $02
	STA $022C,X		; EAA5  $9D $2C $02
	STA $0230,X		; EAA8  $9D $30 $02
	STA $0234,X		; EAAB  $9D $34 $02
	STA $0238,X		; EAAE  $9D $38 $02
	STA $023C,X		; EAB1  $9D $3C $02
	CLC			; EAB4  $18
	TXA			; EAB5  $8A
	ADC #$40		; EAB6  $69 $40
	TAX			; EAB8  $AA
	BNE BFEA82		; EAB9  $D0 $C7
	STX $C2			; EABB  $86 $C2
	RTS			; EABD  $60

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
	LDX $35			; EB03  $A6 $35
	BEQ BFEB38		; EB05  $F0 $31
	DEX			; EB07  $CA
	BEQ BFEB19		; EB08  $F0 $0F
	DEX			; EB0A  $CA
	BEQ BFEB10		; EB0B  $F0 $03
	JMP $EB22		; EB0D  $4C $22 $EB

BFEB10:
	LDA PpuStatus_2002	; EB10  $AD $02 $20
	JSR $F05B		; EB13  $20 $5B $F0
	JMP $EB34		; EB16  $4C $34 $EB
BFEB19:
	LDA PpuStatus_2002	; EB19  $AD $02 $20
	JSR $F013		; EB1C  $20 $13 $F0
	JMP $EB34		; EB1F  $4C $34 $EB
	LDA PpuStatus_2002	; EB22  $AD $02 $20
	LDA $2D			; EB25  $A5 $2D
	STA PpuAddr_2006	; EB27  $8D $06 $20
	LDA $2C			; EB2A  $A5 $2C
	STA PpuAddr_2006	; EB2C  $8D $06 $20
	LDX #$00		; EB2F  $A2 $00
	JSR $F0A4		; EB31  $20 $A4 $F0
	LDA #$00		; EB34  $A9 $00
	STA $35			; EB36  $85 $35
BFEB38:
	LDX $33			; EB38  $A6 $33
	BEQ BFEB57		; EB3A  $F0 $1B
	LDA PpuStatus_2002	; EB3C  $AD $02 $20
	LDA $2D			; EB3F  $A5 $2D
	ORA $3B			; EB41  $05 $3B
	STA PpuAddr_2006	; EB43  $8D $06 $20
	LDA $2C			; EB46  $A5 $2C
	STA PpuAddr_2006	; EB48  $8D $06 $20
	LDX #$00		; EB4B  $A2 $00
	STX $33			; EB4D  $86 $33
	JSR $F0A4		; EB4F  $20 $A4 $F0
	LDX #$40		; EB52  $A2 $40
	JSR $F0A4		; EB54  $20 $A4 $F0
BFEB57:
	LDX $30			; EB57  $A6 $30
	BEQ BFEB7B		; EB59  $F0 $20
	LDA #$8B		; EB5B  $A9 $8B
	AND $3C			; EB5D  $25 $3C
	STA PpuControl_2000	; EB5F  $8D $00 $20
	LDA PpuStatus_2002	; EB62  $AD $02 $20
	LDA #$23		; EB65  $A9 $23
	STA PpuAddr_2006	; EB67  $8D $06 $20
	LDA #$C0		; EB6A  $A9 $C0
	STA PpuAddr_2006	; EB6C  $8D $06 $20
	LDX #$80		; EB6F  $A2 $80
	JSR $F0A4		; EB71  $20 $A4 $F0
	LDA #$00		; EB74  $A9 $00
	STA $30			; EB76  $85 $30
	JMP $EC2E		; EB78  $4C $2E $EC

BFEB7B:
	LDX $31			; EB7B  $A6 $31
	BEQ BFEB9F		; EB7D  $F0 $20
	LDA #$8B		; EB7F  $A9 $8B
	AND $3C			; EB81  $25 $3C
	STA PpuControl_2000	; EB83  $8D $00 $20
	LDA PpuStatus_2002	; EB86  $AD $02 $20
	LDA #$2F		; EB89  $A9 $2F
	STA PpuAddr_2006	; EB8B  $8D $06 $20
	LDA #$C0		; EB8E  $A9 $C0
	STA PpuAddr_2006	; EB90  $8D $06 $20
	LDX #$80		; EB93  $A2 $80
	JSR $F0A4		; EB95  $20 $A4 $F0

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

; Marks	: From IRQ ??
BFECFB:
	LDA #$00		; ECFB  $A9 $00
	STA $3E			; ECFD  $85 $3E
	STA $3F			; ECFF  $85 $3F
	LDX $25			; ED01  $A6 $25
	BNE BFECF8		; ED03  $D0 $F3
	LDA $3C			; ED05  $A5 $3C
	AND #$FE		; ED07  $29 $FE
	STA PpuControl_2000	; ED09  $8D $00 $20
	LDX $25			; ED0C  $A6 $25
	LDA PpuStatus_2002	; ED0E  $AD $02 $20
	LDA $3E			; ED11  $A5 $3E
	STA PpuScroll_2005	; ED13  $8D $05 $20
	LDA $3F			; ED16  $A5 $3F
	STA PpuScroll_2005	; ED18  $8D $05 $20
	LDY #$00		; ED1B  $A0 $00
	STY $8000		; ED1D  $8C $00 $80
.if ORIGINAL
	LDX #$00		; ED20  $A2 $00		BANK PRG
.else
	LDX #$00
.endif
	STX $8001		; ED22  $8E $01 $80
	INY			; ED25  $C8
	STY $8000		; ED26  $8C $00 $80
.if ORIGINAL
	LDX #$02		; ED29  $A2 $02		BANK PRG
.else
	LDX #$02
.endif
	STX $8001		; ED2B  $8E $01 $80
	INY			; ED2E  $C8
	STY $8000		; ED2F  $8C $00 $80
	LDX #$1A		; ED32  $A2 $1A
	STX $8001		; ED34  $8E $01 $80
	INY			; ED37  $C8
	INY			; ED38  $C8
	STY $8000		; ED39  $8C $00 $80
	LDX $59			; ED3C  $A6 $59
	STX $8001		; ED3E  $8E $01 $80
	INY			; ED41  $C8
	STY $8000		; ED42  $8C $00 $80
	LDX #$0F		; ED45  $A2 $0F
	STX $8001		; ED47  $8E $01 $80
	LDA $61			; ED4A  $A5 $61
	AND #$7F		; ED4C  $29 $7F
	STA $8000		; ED4E  $8D $00 $80
	JMP $EDB1		; ED51  $4C $B1 $ED

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
.byte $8c,$00,$80,$b5,$4a,$8d,$01,$80

	LDA $61			; EDA8  $A5 $61
	AND #$7F		; EDAA  $29 $7F
	ORA $5A			; EDAC  $05 $5A
	STA $8000		; EDAE  $8D $00 $80
	LDX $25			; EDB1  $A6 $25
	LDA $45,X		; EDB3  $B5 $45
	BEQ BFEDC5		; EDB5  $F0 $0E
	CLC			; EDB7  $18
	SBC $44,X		; EDB8  $F5 $44
	BCC BFEDC5		; EDBA  $90 $09
	STA $C000		; EDBC  $8D $00 $C0
	STA $C001		; EDBF  $8D $01 $C0
	STA $E001		; EDC2  $8D $01 $E0
BFEDC5:
	INC $25			; EDC5  $E6 $25
	PLA			; EDC7  $68
	TAY			; EDC8  $A8
	PLA			; EDC9  $68
	TAX			; EDCA  $AA
	PLA			; EDCB  $68
	RTI			; EDCC  $40

BFEDCD:
	LDX #$07		; EDCD  $A2 $07
BFEDCF:
	DEX			; EDCF  $CA
	BNE BFEDCF		; EDD0  $D0 $FD
	LDA $25			; EDD2  $A5 $25
	BEQ BFEDD9		; EDD4  $F0 $03
	JMP $ED05		; EDD6  $4C $05 $ED
BFEDD9:
	LDA $42			; EDD9  $A5 $42
	BEQ BFEE03		; EDDB  $F0 $26
	BMI BFEDF2		; EDDD  $30 $13
	DEC $42			; EDDF  $C6 $42
	LDA $40			; EDE1  $A5 $40
	SEC			; EDE3  $38
	SBC $43			; EDE4  $E5 $43
	STA $40			; EDE6  $85 $40
	BCS BFEE03		; EDE8  $B0 $19
	LDA $41			; EDEA  $A5 $41
	EOR #$01		; EDEC  $49 $01
	STA $41			; EDEE  $85 $41
	BPL BFEE03		; EDF0  $10 $11
BFEDF2:
	INC $42			; EDF2  $E6 $42
	LDA $40			; EDF4  $A5 $40
	CLC			; EDF6  $18
	ADC $43			; EDF7  $65 $43
	STA $40			; EDF9  $85 $40
	BCC BFEE03		; EDFB  $90 $06
	LDA $41			; EDFD  $A5 $41
	EOR #$01		; EDFF  $49 $01
	STA $41			; EE01  $85 $41
BFEE03:
	LDA $3C			; EE03  $A5 $3C
	AND #$8E		; EE05  $29 $8E
	ORA $41			; EE07  $05 $41
	STA PpuControl_2000	; EE09  $8D $00 $20
	LDA PpuStatus_2002	; EE0C  $AD $02 $20
	LDA $40			; EE0F  $A5 $40
	STA PpuScroll_2005	; EE11  $8D $05 $20
	LDA PpuStatus_2002	; EE14  $AD $02 $20
	JMP $EDA8		; EE17  $4C $A8 $ED
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
	LDA PpuStatus_2002	; EE33  $AD $02 $20
	LDA $25			; EE36  $A5 $25
	BEQ BFEE43		; EE38  $F0 $09
	CMP #$01		; EE3A  $C9 $01
	BEQ BFEE52		; EE3C  $F0 $14
	BEQ BFEE43		; EE3E  $F0 $03
	JMP BFEE92		; EE40  $4C $92 $EE
BFEE43:
	LDA #$00		; EE43  $A9 $00
	STA PpuScroll_2005	; EE45  $8D $05 $20
	LDA $3C			; EE48  $A5 $3C
	AND #$FE		; EE4A  $29 $FE
	STA PpuControl_2000	; EE4C  $8D $00 $20
	JMP $EE68		; EE4F  $4C $68 $EE
BFEE52:
	LDA $056A		; EE52  $AD $6A $05
	STA PpuScroll_2005	; EE55  $8D $05 $20
	LDA $3C			; EE58  $A5 $3C
	AND #$FE		; EE5A  $29 $FE
	STA $BA			; EE5C  $85 $BA
	LDA $056B		; EE5E  $AD $6B $05
	AND #$01		; EE61  $29 $01
	ORA $BA			; EE63  $05 $BA
	STA PpuControl_2000	; EE65  $8D $00 $20
	LDX $25			; EE68  $A6 $25
	LDA #$02		; EE6A  $A9 $02
	ORA $5A			; EE6C  $05 $5A
	TAY			; EE6E  $A8
	STY $8000		; EE6F  $8C $00 $80
	LDA $47,X		; EE72  $B5 $47
	STA $8001		; EE74  $8D $01 $80
	INY			; EE77  $C8
	STY $8000		; EE78  $8C $00 $80
	LDA $4A,X		; EE7B  $B5 $4A
	STA $8001		; EE7D  $8D $01 $80
	INY			; EE80  $C8
	STY $8000		; EE81  $8C $00 $80
	LDA $4D,X		; EE84  $B5 $4D
	STA $8001		; EE86  $8D $01 $80
	INY			; EE89  $C8
	STY $8000		; EE8A  $8C $00 $80
	LDA $50,X		; EE8D  $B5 $50
	STA $8001		; EE8F  $8D $01 $80
BFEE92:
	JMP $EDA8		; EE92  $4C $A8 $ED
	LDA PpuStatus_2002	; EE95  $AD $02 $20
	LDA $25			; EE98  $A5 $25
	BEQ BFEEA2		; EE9A  $F0 $06
	CMP #$01		; EE9C  $C9 $01
	BEQ BFEEBB		; EE9E  $F0 $1B
	BNE BFEECA		; EEA0  $D0 $28
BFEEA2:
	LDA $0568		; EEA2  $AD $68 $05
	STA PpuScroll_2005	; EEA5  $8D $05 $20
	LDA $3C			; EEA8  $A5 $3C
	AND #$FE		; EEAA  $29 $FE
	STA $BA			; EEAC  $85 $BA
	LDA $0569		; EEAE  $AD $69 $05
	AND #$01		; EEB1  $29 $01
	ORA $BA			; EEB3  $05 $BA
	STA PpuControl_2000	; EEB5  $8D $00 $20
	JMP $EEC7		; EEB8  $4C $C7 $EE
BFEEBB:
	LDA #$00		; EEBB  $A9 $00
	STA PpuScroll_2005	; EEBD  $8D $05 $20
	LDA $3C			; EEC0  $A5 $3C
	AND #$FE		; EEC2  $29 $FE
	STA PpuControl_2000	; EEC4  $8D $00 $20
	JSR $EF0E		; EEC7  $20 $0E $EF
BFEECA:
	JMP $EDA8		; EECA  $4C $A8 $ED
	LDA PpuStatus_2002	; EECD  $AD $02 $20
	LDA $25			; EED0  $A5 $25
	BEQ BFEEDA		; EED2  $F0 $06
	CMP #$01		; EED4  $C9 $01
	BEQ BFEEFA		; EED6  $F0 $22
	BNE BFEF0B		; EED8  $D0 $31
BFEEDA:
	LDA $0568		; EEDA  $AD $68 $05

	STA PpuScroll_2005	; EEDD  $8D $05 $20
	LDA $3C			; EEE0  $A5 $3C
	AND #$FE		; EEE2  $29 $FE
	STA $BA			; EEE4  $85 $BA
	LDA $0569		; EEE6  $AD $69 $05
	AND #$01		; EEE9  $29 $01
	ORA $BA			; EEEB  $05 $BA
	STA PpuControl_2000	; EEED  $8D $00 $20
	LDA #$80		; EEF0  $A9 $80
	STA $5A			; EEF2  $85 $5A
	JSR $EF0E		; EEF4  $20 $0E $EF
	JMP $EF0B		; EEF7  $4C $0B $EF
BFEEFA:
	LDA #$00		; EEFA  $A9 $00
	STA $5A			; EEFC  $85 $5A
	STA PpuScroll_2005	; EEFE  $8D $05 $20
	LDA $3C			; EF01  $A5 $3C
	AND #$FE		; EF03  $29 $FE
	STA PpuControl_2000	; EF05  $8D $00 $20
	JSR $EF0E		; EF08  $20 $0E $EF
BFEF0B:
	JMP $EDA8		; EF0B  $4C $A8 $ED

; Name	:
	LDX $25			; EF0E  $A6 $25
	LDA #$00		; EF10  $A9 $00
	ORA $5A			; EF12  $05 $5A
	TAY			; EF14  $A8
	STY $8000		; EF15  $8C $00 $80
	LDA $53,X		; EF18  $B5 $53
	STA $8001		; EF1A  $8D $01 $80
	INY			; EF1D  $C8
	STY $8000		; EF1E  $8C $00 $80
	LDA $56,X		; EF21  $B5 $56
	STA $8001		; EF23  $8D $01 $80
	INY			; EF26  $C8
	STY $8000		; EF27  $8C $00 $80
	LDA $47,X		; EF2A  $B5 $47
	STA $8001		; EF2C  $8D $01 $80
	INY			; EF2F  $C8
	STY $8000		; EF30  $8C $00 $80
	LDA $4A,X		; EF33  $B5 $4A
	STA $8001		; EF35  $8D $01 $80
	INY			; EF38  $C8
	STY $8000		; EF39  $8C $00 $80
	LDA $4D,X		; EF3C  $B5 $4D
	STA $8001		; EF3E  $8D $01 $80
	INY			; EF41  $C8
	STY $8000		; EF42  $8C $00 $80
	LDA $50,X		; EF45  $B5 $50
	STA $8001		; EF47  $8D $01 $80
	RTS			; EF4A  $60

;$EF4B
.byte $90,$01,$60,$8d,$00
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
.byte $07,$20,$60

; Name	:
	LDA $0301		; F013  $AD $01 $03
	STA PpuAddr_2006	; F016  $8D $06 $20
	LDA $0300		; F019  $AD $00 $03
	STA PpuAddr_2006	; F01C  $8D $06 $20
	LDA $0302		; F01F  $AD $02 $03
	STA PpuData_2007	; F022  $8D $07 $20
	LDA $0303		; F025  $AD $03 $03
	STA PpuData_2007	; F028  $8D $07 $20
	LDA $0304		; F02B  $AD $04 $03
	STA PpuData_2007	; F02E  $8D $07 $20
	LDA $0305		; F031  $AD $05 $03
	STA PpuData_2007	; F034  $8D $07 $20
	LDA $0306		; F037  $AD $06 $03
	STA PpuData_2007	; F03A  $8D $07 $20
	LDA $0307		; F03D  $AD $07 $03
	STA PpuData_2007	; F040  $8D $07 $20
	LDA $0308		; F043  $AD $08 $03
	STA PpuData_2007	; F046  $8D $07 $20
	LDA $0309		; F049  $AD $09 $03
	STA PpuData_2007	; F04C  $8D $07 $20
	LDA $030A		; F04F  $AD $0A $03
	STA PpuData_2007	; F052  $8D $07 $20
	LDA $030B		; F055  $AD $0B $03
	STA PpuData_2007	; F058  $8D $07 $20

; Name	:
	LDA $030D		; F05B  $AD $0D $03
	STA PpuAddr_2006	; F05E  $8D $06 $20
	LDA $030C		; F061  $AD $0C $03
	STA PpuAddr_2006	; F064  $8D $06 $20
	LDA $030E		; F067  $AD $0E $03
	STA PpuData_2007	; F06A  $8D $07 $20
	LDA $030F		; F06D  $AD $0F $03
	STA PpuData_2007	; F070  $8D $07 $20
	LDA $0310		; F073  $AD $10 $03
	STA PpuData_2007	; F076  $8D $07 $20
	LDA $0311		; F079  $AD $11 $03
	STA PpuData_2007	; F07C  $8D $07 $20
	LDA $0312		; F07F  $AD $12 $03
	STA PpuData_2007	; F082  $8D $07 $20
	LDA $0313		; F085  $AD $13 $03
	STA PpuData_2007	; F088  $8D $07 $20
	LDA $0314		; F08B  $AD $14 $03
	STA PpuData_2007	; F08E  $8D $07 $20
	LDA $0315		; F091  $AD $15 $03
	STA PpuData_2007	; F094  $8D $07 $20
	LDA $0316		; F097  $AD $16 $03
	STA PpuData_2007	; F09A  $8D $07 $20
	LDA $0317		; F09D  $AD $17 $03
	STA PpuData_2007	; F0A0  $8D $07 $20
	RTS			; F0A3  $60

; Name	:
; Marks	: Apply tile to PPU
	LDA $0300,X		; F0A4  $BD $00 $03
	STA PpuData_2007	; F0A7  $8D $07 $20
	LDA $0301,X		; F0AA  $BD $01 $03
	STA PpuData_2007	; F0AD  $8D $07 $20
	LDA $0302,X		; F0B0  $BD $02 $03
	STA PpuData_2007	; F0B3  $8D $07 $20
	LDA $0303,X		; F0B6  $BD $03 $03
	STA PpuData_2007	; F0B9  $8D $07 $20
	LDA $0304,X		; F0BC  $BD $04 $03
	STA PpuData_2007	; F0BF  $8D $07 $20
	LDA $0305,X		; F0C2  $BD $05 $03
	STA PpuData_2007	; F0C5  $8D $07 $20
	LDA $0306,X		; F0C8  $BD $06 $03
	STA PpuData_2007	; F0CB  $8D $07 $20
	LDA $0307,X		; F0CE  $BD $07 $03
	STA PpuData_2007	; F0D1  $8D $07 $20
	LDA $0308,X		; F0D4  $BD $08 $03
	STA PpuData_2007	; F0D7  $8D $07 $20
	LDA $0309,X		; F0DA  $BD $09 $03
	STA PpuData_2007	; F0DD  $8D $07 $20
	LDA $030A,X		; F0E0  $BD $0A $03
	STA PpuData_2007	; F0E3  $8D $07 $20
	LDA $030B,X		; F0E6  $BD $0B $03
	STA PpuData_2007	; F0E9  $8D $07 $20
	LDA $030C,X		; F0EC  $BD $0C $03
	STA PpuData_2007	; F0EF  $8D $07 $20
	LDA $030D,X		; F0F2  $BD $0D $03
	STA PpuData_2007	; F0F5  $8D $07 $20
	LDA $030E,X		; F0F8  $BD $0E $03
	STA PpuData_2007	; F0FB  $8D $07 $20
	LDA $030F,X		; F0FE  $BD $0F $03
	STA PpuData_2007	; F101  $8D $07 $20
	LDA $0310,X		; F104  $BD $10 $03
	STA PpuData_2007	; F107  $8D $07 $20
	LDA $0311,X		; F10A  $BD $11 $03
	STA PpuData_2007	; F10D  $8D $07 $20
	LDA $0312,X		; F110  $BD $12 $03
	STA PpuData_2007	; F113  $8D $07 $20
	LDA $0313,X		; F116  $BD $13 $03
	STA PpuData_2007	; F119  $8D $07 $20
	LDA $0314,X		; F11C  $BD $14 $03
	STA PpuData_2007	; F11F  $8D $07 $20
	LDA $0315,X		; F122  $BD $15 $03
	STA PpuData_2007	; F125  $8D $07 $20
	LDA $0316,X		; F128  $BD $16 $03
	STA PpuData_2007	; F12B  $8D $07 $20
	LDA $0317,X		; F12E  $BD $17 $03
	STA PpuData_2007	; F131  $8D $07 $20
	LDA $0318,X		; F134  $BD $18 $03
	STA PpuData_2007	; F137  $8D $07 $20
	LDA $0319,X		; F13A  $BD $19 $03
	STA PpuData_2007	; F13D  $8D $07 $20
	LDA $031A,X		; F140  $BD $1A $03
	STA PpuData_2007	; F143  $8D $07 $20
	LDA $031B,X		; F146  $BD $1B $03
	STA PpuData_2007	; F149  $8D $07 $20
	LDA $031C,X		; F14C  $BD $1C $03
	STA PpuData_2007	; F14F  $8D $07 $20
	LDA $031D,X		; F152  $BD $1D $03
	STA PpuData_2007	; F155  $8D $07 $20
	LDA $031E,X		; F158  $BD $1E $03
	STA PpuData_2007	; F15B  $8D $07 $20
	LDA $031F,X		; F15E  $BD $1F $03
	STA PpuData_2007	; F161  $8D $07 $20
; Name	:
	LDA $0320,X		; F164  $BD $20 $03
	STA PpuData_2007	; F167  $8D $07 $20
	LDA $0321,X		; F16A  $BD $21 $03
	STA PpuData_2007	; F16D  $8D $07 $20
	LDA $0322,X		; F170  $BD $22 $03
	STA PpuData_2007	; F173  $8D $07 $20
	LDA $0323,X		; F176  $BD $23 $03
	STA PpuData_2007	; F179  $8D $07 $20
	LDA $0324,X		; F17C  $BD $24 $03
	STA PpuData_2007	; F17F  $8D $07 $20
	LDA $0325,X		; F182  $BD $25 $03
	STA PpuData_2007	; F185  $8D $07 $20
	LDA $0326,X		; F188  $BD $26 $03
	STA PpuData_2007	; F18B  $8D $07 $20
	LDA $0327,X		; F18E  $BD $27 $03
	STA PpuData_2007	; F191  $8D $07 $20
	LDA $0328,X		; F194  $BD $28 $03
	STA PpuData_2007	; F197  $8D $07 $20
	LDA $0329,X		; F19A  $BD $29 $03
	STA PpuData_2007	; F19D  $8D $07 $20
	LDA $032A,X		; F1A0  $BD $2A $03
	STA PpuData_2007	; F1A3  $8D $07 $20
	LDA $032B,X		; F1A6  $BD $2B $03
	STA PpuData_2007	; F1A9  $8D $07 $20
	LDA $032C,X		; F1AC  $BD $2C $03
	STA PpuData_2007	; F1AF  $8D $07 $20
	LDA $032D,X		; F1B2  $BD $2D $03
	STA PpuData_2007	; F1B5  $8D $07 $20
	LDA $032E,X		; F1B8  $BD $2E $03
	STA PpuData_2007	; F1BB  $8D $07 $20
	LDA $032F,X		; F1BE  $BD $2F $03
	STA PpuData_2007	; F1C1  $8D $07 $20
	LDA $0330,X		; F1C4  $BD $30 $03
	STA PpuData_2007	; F1C7  $8D $07 $20
	LDA $0331,X		; F1CA  $BD $31 $03
	STA PpuData_2007	; F1CD  $8D $07 $20
	LDA $0332,X		; F1D0  $BD $32 $03
	STA PpuData_2007	; F1D3  $8D $07 $20
	LDA $0333,X		; F1D6  $BD $33 $03
	STA PpuData_2007	; F1D9  $8D $07 $20
	LDA $0334,X		; F1DC  $BD $34 $03
	STA PpuData_2007	; F1DF  $8D $07 $20
	LDA $0335,X		; F1E2  $BD $35 $03
	STA PpuData_2007	; F1E5  $8D $07 $20
	LDA $0336,X		; F1E8  $BD $36 $03
	STA PpuData_2007	; F1EB  $8D $07 $20
	LDA $0337,X		; F1EE  $BD $37 $03
	STA PpuData_2007	; F1F1  $8D $07 $20
	LDA $0338,X		; F1F4  $BD $38 $03
	STA PpuData_2007	; F1F7  $8D $07 $20
	LDA $0339,X		; F1FA  $BD $39 $03
	STA PpuData_2007	; F1FD  $8D $07 $20
	LDA $033A,X		; F200  $BD $3A $03
	STA PpuData_2007	; F203  $8D $07 $20
	LDA $033B,X		; F206  $BD $3B $03
	STA PpuData_2007	; F209  $8D $07 $20
	LDA $033C,X		; F20C  $BD $3C $03
	STA PpuData_2007	; F20F  $8D $07 $20
	LDA $033D,X		; F212  $BD $3D $03
	STA PpuData_2007	; F215  $8D $07 $20
	LDA $033E,X		; F218  $BD $3E $03
	STA PpuData_2007	; F21B  $8D $07 $20
	LDA $033F,X		; F21E  $BD $3F $03
	STA PpuData_2007	; F221  $8D $07 $20
	RTS			; F224  $60

; Name	:
	STA PpuData_2007	; F225  $8D $07 $20
	STA PpuData_2007	; F228  $8D $07 $20
; Name	:
	STA PpuData_2007	; F22B  $8D $07 $20
	STA PpuData_2007	; F22E  $8D $07 $20
	STA PpuData_2007	; F231  $8D $07 $20
	STA PpuData_2007	; F234  $8D $07 $20
	STA PpuData_2007	; F237  $8D $07 $20
	STA PpuData_2007	; F23A  $8D $07 $20
	STA PpuData_2007	; F23D  $8D $07 $20
	STA PpuData_2007	; F240  $8D $07 $20
	STA PpuData_2007	; F243  $8D $07 $20
	STA PpuData_2007	; F246  $8D $07 $20
	STA PpuData_2007	; F249  $8D $07 $20
	STA PpuData_2007	; F24C  $8D $07 $20
	STA PpuData_2007	; F24F  $8D $07 $20
	STA PpuData_2007	; F252  $8D $07 $20
	STA PpuData_2007	; F255  $8D $07 $20
	STA PpuData_2007	; F258  $8D $07 $20
; Name	:
	STA PpuData_2007	; F25B  $8D $07 $20
	STA PpuData_2007	; F25E  $8D $07 $20
	STA PpuData_2007	; F261  $8D $07 $20
	STA PpuData_2007	; F264  $8D $07 $20
	STA PpuData_2007	; F267  $8D $07 $20
	STA PpuData_2007	; F26A  $8D $07 $20
	STA PpuData_2007	; F26D  $8D $07 $20
; Name	:
	STA PpuData_2007	; F270  $8D $07 $20
; Name	:
	STA PpuData_2007	; F273  $8D $07 $20
	STA PpuData_2007	; F276  $8D $07 $20
	STA PpuData_2007	; F279  $8D $07 $20
	STA PpuData_2007	; F27C  $8D $07 $20
	STA PpuData_2007	; F27F  $8D $07 $20
	STA PpuData_2007	; F282  $8D $07 $20
	RTS			; F285  $60

; Name	:
	STA $0743		; F286  $8D $43 $07
	LDX #$01		; F289  $A2 $01
	LDA $6211		; F28B  $AD $11 $62
	AND #$08		; F28E  $29 $08
	BNE BFF294		; F290  $D0 $02
	LDX #$04		; F292  $A2 $04
BFF294:
	STX $0742		; F294  $8E $42 $07
	JMP $F4D3		; F297  $4C $D3 $F4

;$F29A
.byte $a9,$04,$8d,$42,$07,$4c
.byte $d3,$f4,$8d,$43,$07,$a9,$09,$8d,$42,$07,$cd,$42,$07,$f0,$fb,$ad
.byte $42,$07,$29,$20,$d0,$f9,$60,$ad,$42,$07,$10,$11,$a9,$0c,$8d,$42
.byte $07,$cd,$42,$07,$f0,$fb,$ad,$42,$07,$29,$40,$d0,$f9,$60

; Name	:
	PHA			; F2CE  $48
	LDA #$0F		; F2CF  $A9 $0F
	JSR $F2EE		; F2D1  $20 $EE $F2
	PLA			; F2D4  $68
	RTS			; F2D5  $60

; Name	:
	PHA			; F2D6  $48
	LDA #$0D		; F2D7  $A9 $0D
	JSR $F2EE		; F2D9  $20 $EE $F2
	PLA			; F2DC  $68
	RTS			; F2DD  $60

; Name	:
	PHA			; F2DE  $48
	LDA #$0E		; F2DF  $A9 $0E
	JSR $F2EE		; F2E1  $20 $EE $F2
	PLA			; F2E4  $68
	RTS			; F2E5  $60

; Name	:
	PHA			; F2E6  $48
	LDA #$10		; F2E7  $A9 $10
	JSR $F2EE		; F2E9  $20 $EE $F2
	PLA			; F2EC  $68
	RTS			; F2ED  $60

; Name	:
	CMP #$4E		; F2EE  $C9 $4E
	BCS BFF2F7		; F2F0  $B0 $05
	ORA #$80		; F2F2  $09 $80
	STA $0744		; F2F4  $8D $44 $07
BFF2F7:
	RTS			; F2F7  $60

; Name	:
	PHA			; F2F8  $48
	LDA #$FF		; F2F9  $A9 $FF
	STA $0744		; F2FB  $8D $44 $07
	PLA			; F2FE  $68
	RTS			; F2FF  $60

;$F300
.byte $ad,$44,$07,$d0,$fb,$60

; Name	:
	LDX #$02		; F306  $A2 $02
BFF308:
	BIT PpuStatus_2002	; F308  $2C $02 $20
	BPL BFF308		; F30B  $10 $FB
BFF30D:
	BIT PpuStatus_2002	; F30D  $2C $02 $20
	BMI BFF30D		; F310  $30 $FB
	DEX			; F312  $CA
	BNE BFF308		; F313  $D0 $F3
	RTS			; F315  $60

; Name	:
	LDA #$88		; F316  $A9 $88
BFF318:
	ORA $3C			; F318  $05 $3C
	STA $3C			; F31A  $85 $3C
	STA PpuControl_2000	; F31C  $8D $00 $20
	STA PpuControl_2000	; F31F  $8D $00 $20
	RTS			; F322  $60

; Name	:
	LDA #$0C		; F323  $A9 $0C
	BNE BFF318		; F325  $D0 $F1
	LDA #$09		; F327  $A9 $09
	BNE BFF318		; F329  $D0 $ED
; Name	:
	LDA #$00		; F32B  $A9 $00
	STA PpuMask_2001	; F32D  $8D $01 $20
	STA PpuMask_2001	; F330  $8D $01 $20
	STA $3D			; F333  $85 $3D
	LDA #$0F		; F335  $A9 $0F
BFF337:
	AND $3C			; F337  $25 $3C
	STA $3C			; F339  $85 $3C
	STA PpuControl_2000	; F33B  $8D $00 $20
	STA PpuControl_2000	; F33E  $8D $00 $20
	RTS			; F341  $60

; Name	:
	LDA #$8B		; F342  $A9 $8B
	BNE BFF337		; F344  $D0 $F1
; Name	:
	LDA #$8E		; F346  $A9 $8E
	BNE BFF337		; F348  $D0 $ED
; Name	:
	LDA #$01		; F34A  $A9 $01
	STA $2E			; F34C  $85 $2E
	JSR $F316		; F34E  $20 $16 F3       
	LDA #$1E		; F351  $A9 $1E
	STA $3D			; F353  $85 $3D
	RTS			; F355  $60

;$F356
.byte $20,$16,$f3,$a9,$0a,$05,$3d,$85,$3d,$60

; Name	:
	LDA #$01		; F360  $A9 $01
	STA $2E                 ; F362  $85 $2E
	JSR $F306               ; F364  $20 $06 $F3
	JSR $F316               ; F367  $20 $16 $F3
	LDA #$14                ; F36A  $A9 $14
	ORA $3D                 ; F36C  $05 $3D
	STA $3D                 ; F36E  $85 $3D
	RTS                     ; F370  $60

; Name	:
	JSR $F342		; F371  $20 $42 $F3
	LDA PpuStatus_2002	; F374  $AD $02 $20
	LDA #$20		; F377  $A9 $20
	STA PpuAddr_2006	; F379  $8D $06 $20
	LDA #$00		; F37C  $A9 $00
	STA PpuAddr_2006	; F37E  $8D $06 $20
	LDX #$F0		; F381  $A2 $F0
	LDA #$00		; F383  $A9 $00
BFF385:
	STA PpuData_2007	; F385  $8D $07 $20
	STA PpuData_2007	; F388  $8D $07 $20
	STA PpuData_2007	; F38B  $8D $07 $20
	STA PpuData_2007	; F38E  $8D $07 $20
	DEX			; F391  $CA
	BNE BFF385		; F392  $D0 $F1
	LDX #$3F		; F394  $A2 $3F
	LDA #$00		; F396  $A9 $00
BFF398:
	STA PpuData_2007	; F398  $8D $07 $20
	STA $0380,X		; F39B  $9D $80 $03
	DEX			; F39E  $CA
	BPL BFF398		; F39F  $10 $F7
	STA $32			; F3A1  $85 $32
	STA $33			; F3A3  $85 $33
	STA $34			; F3A5  $85 $34
	STA $5A			; F3A7  $85 $5A
	RTS			; F3A9  $60

; Name	:
	JSR $F342		; F3AA  $20 $42 $F3
	LDA PpuStatus_2002	; F3AD  $AD $02 $20
	LDA #$2C		; F3B0  $A9 $2C
	STA PpuAddr_2006	; F3B2  $8D $06 $20
	LDA #$00		; F3B5  $A9 $00
	STA PpuAddr_2006	; F3B7  $8D $06 $20
	JMP $F381		; F3BA  $4C $81 $F3

; Name	:
	LDX #$00		; F3BD  $A2 $00
BFF3BF:
	LDA #$F0		; F3BF  $A9 $F0
	STA $0200,X		; F3C1  $9D $00 $02
	INX			; F3C4  $E8
	BNE BFF3BF		; F3C5  $D0 $F8
	RTS			; F3C7  $60

; Name	:
	JSR $F3BD		; F3C8  $20 $BD $F3
	LDA #$FF		; F3CB  $A9 $FF
	STA $2E			; F3CD  $85 $2E
	RTS			; F3CF  $60

; Name	:
	LDA #$01		; F3D0  $A9 $01
	STA $2E			; F3D2  $85 $2E
; Name	:
BFF3D4:
	LDA $2E			; F3D4  $A5 $2E
	BNE BFF3D4		; F3D6  $D0 $FC
	RTS			; F3D8  $60

; Name	:
	LDA $F3FE,X		; F3D9  $BD $FE $F3
	STA $12			; F3DC  $85 $12
	LDA $F403,X		; F3DE  $BD $03 $F4
	STA $13			; F3E1  $85 $13
; Name	:
	LDA #$D1		; F3E3  $A9 $D1
	STA $10			; F3E5  $85 $10
	LDA #$00		; F3E7  $A9 $00
	STA $11			; F3E9  $85 $11
	JSR $F459		; F3EB  $20 $59 $F4
	CLC			; F3EE  $18
	LDA $12			; F3EF  $A5 $12
	ADC #$0E		; F3F1  $69 $0E
	STA $12			; F3F3  $85 $12
	LDA $13			; F3F5  $A5 $13
	ADC #$00		; F3F7  $69 $00
	STA $13			; F3F9  $85 $13
	JMP $F420		; F3FB  $4C $20 $F4

;$F3FE - data block = ($F3FE-$F407)
.byte $1d,$39
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

; Name	:
BFF4EF:
	LDA $32			; F4EF  $A5 $32
	ORA $33			; F4F1  $05 $33
	ORA $34			; F4F3  $05 $34
	ORA $2F			; F4F5  $05 $2F
	ORA $30			; F4F7  $05 $30
	ORA $31			; F4F9  $05 $31
	ORA $37			; F4FB  $05 $37
	ORA $38			; F4FD  $05 $38
	ORA $2E			; F4FF  $05 $2E
	BNE BFF4EF		; F501  $D0 $EC
	RTS			; F503  $60

; Name	:
BFF504:
	JSR $F3D0               ; F504  $20 $D0 $F3
	DEX			; F507  $CA
	BNE BFF504		; F508  $D0 $FA
	RTS			; F50A  $60

; Name	:
	LDA #$78                ; F50B  $A9 $78
	STA $7F			; F50D  $85 $7F
BFF50F:
	JSR $F3D0		; F50F  $20 $D0 $F3
	LDA $7F			; F512  $A5 $7F
	BEQ BFF51A		; F514  $F0 $04
	LDA $7E			; F516  $A5 $7E
	BEQ BFF50F		; F518  $F0 $F5
BFF51A:
	RTS			; F51A  $60

;$F51B
.byte $20,$d0,$f3,$a5,$7e
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
;	  Save CHR ROM BANK variable
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
	LDA #$00		; F55C  $A9 $00
	BIT $01A9		; F55E  $2C $A9 $01
	BIT $02A9		; F561  $2C $A9 $02
	;BIT $03A9		; F564  $2C $A9 $03
.byte $2C

; Name	:
	LDA #$03		; F565  $A9 $03
	;BIT $04A9		; F567  $2C $A9 $04
.byte $2C

; Name	:
	LDA #$04		; F568  $A9 $04
	;BIT $05A9		; F56A  $2C $A9 $05
.byte $2C

; Name	:
	LDA #$05		; F56B  $A9 $05
	;BIT $06A9		; F56D  $2C $A9 $06
.byte $2C

; Name	:
	LDA #$06		; F56E  $A9 $06

; Name	:
; Marks	:
	STX $64			; F570  $86 $64
	STY $65			; F572  $84 $65
	ASL A			; F574  $0A
	TAY			; F575  $A8
	LDA #$06		; F576  $A9 $06
	ORA $5A			; F578  $05 $5A
	TAX			; F57A  $AA
	STX $61			; F57B  $86 $61
	STX $8000		; F57D  $8E $00 $80
	STY $62			; F580  $84 $62
	STY $8001		; F582  $8C $01 $80
	INX			; F585  $E8
	INY			; F586  $C8
	STX $61			; F587  $86 $61
	STX $8000		; F589  $8E $00 $80
	STY $63			; F58C  $84 $63
	STY $8001		; F58E  $8C $01 $80
	LDX $64			; F591  $A6 $64
	LDY $65			; F593  $A4 $65
	RTS			; F595  $60

; Name	:
	JMP ($0066)		; F596	$6c $66 $00

;$F599
.byte $a5,$62,$4a,$48,$a5,$68,$20
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

; Name	:
	JSR $F6CC		; F610  $20 $CC $F6
	LDX #$03		; F613  $A2 $03
BFF615:
	LDA $F669,X		; F615  $BD $69 $F6
	CMP $7002,X		; F618  $DD $02 $70
	BNE BFF635		; F61B  $D0 $18
	DEX			; F61D  $CA
	BPL BFF615		; F61E  $10 $F5
	JSR $F680		; F620  $20 $80 $F6
	LDX #$03		; F623  $A2 $03
	JSR $F6CC		; F625  $20 $CC $F6
BFF628:
	LDA $00,X		; F628  $B5 $00
	CMP $7006,X		; F62A  $DD $06 $70
	BNE BFF635		; F62D  $D0 $06
	DEX			; F62F  $CA
	BPL BFF628		; F630  $10 $F6
	JMP $F6D4		; F632  $4C $D4 $F6

BFF635:
.byte $20,$d0,$f6,$a9,$60,$85,$01,$a2,$20,$a0,$00
.byte $84,$00,$98,$91,$00,$c8,$d0,$fb,$e6,$01,$ca,$d0,$f6,$a2,$03,$bd
.byte $69,$f6,$9d,$02,$70,$ca,$10,$f7,$a9,$0d,$8d,$11,$62,$a9,$00,$8d
.byte $0f,$62,$20,$6d,$f6,$20,$56,$f3,$60,$53,$44,$47,$35

; Name	:
	JSR $F680		; F66D  $20 $80 $F6
	JSR $F6D0		; F670  $20 $D0 $F6
	LDX #$03		; F673  $A2 $03
BFF675:
	LDA $00,X		; F675  $B5 $00
	STA $7006,X		; F677  $9D $06 $70
	DEX			; F67A  $CA
	BPL BFF675		; F67B  $10 $F8
	JMP $F6D4		; F67D  $4C $D4 $F6

; Name	:
	JSR $F6D0		; F680  $20 $D0 $F6
	LDA #$FF		; F683  $A9 $FF
	STA $6000		; F685  $8D $00 $60
	STA $6001		; F688  $8D $01 $60
	STA $7000		; F68B  $8D $00 $70
	STA $7001		; F68E  $8D $01 $70
	JSR $F6CC		; F691  $20 $CC $F6
	LDA #$00		; F694  $A9 $00
	STA $00			; F696  $85 $00
	STA $01			; F698  $85 $01
	STA $02			; F69A  $85 $02
	STA $03			; F69C  $85 $03
	LDA #$0A		; F69E  $A9 $0A
	STA $04			; F6A0  $85 $04
	LDA #$70		; F6A2  $A9 $70
	STA $05			; F6A4  $85 $05
BFF6A6:
	LDY #$00		; F6A6  $A0 $00
	LDA ($04),Y		; F6A8  $B1 $04
	EOR $00			; F6AA  $45 $00
	STA $00			; F6AC  $85 $00
	LDA $03			; F6AE  $A5 $03
	ASL A			; F6B0  $0A
	ROL $00			; F6B1  $26 $00
	ROL $01			; F6B3  $26 $01
	ROL $02			; F6B5  $26 $02
	ROL $03			; F6B7  $26 $03
	INC $04			; F6B9  $E6 $04
	BNE BFF6BF		; F6BB  $D0 $02
	INC $05			; F6BD  $E6 $05
BFF6BF:
	LDA $04			; F6BF  $A5 $04
	CMP #$5A		; F6C1  $C9 $5A
	LDA $05			; F6C3  $A5 $05
	SBC #$78		; F6C5  $E9 $78
	BNE BFF6A6		; F6C7  $D0 $DD
	JMP $F6D4		; F6C9  $4C $D4 $F6

; Name	:
	LDA #$C0		; F6CC  $A9 $C0
	BNE BFF6D6		; F6CE  $D0 $06
; Name	:
	LDA #$80		; F6D0  $A9 $80
	BNE BFF6D6		; F6D2  $D0 $02
; Name	:
	LDA #$40		; F6D4  $A9 $40
BFF6D6:
	STA $A001		; F6D6  $8D $01 $A0
	RTS			; F6D9  $60

; Name	:
; Marks	: Decode and set screen tile map, until read data is FFh
;	  f?cc cccc
;	  f = next data is fiedx or increased
;	  c = count of data
;	  CASE f(bit7) 0 : next data's address or data increase
;	  ficc cccc
;	   CASE i(bit6) 0 : increase data address
;	    EX> $05,$01,$02,$03,$04,$05 -> 01h,02h,03h,04h,05h
;	   CASE i(bit6) 1 : increase data value
;	    EX> $45,$01 -> 01h,02h,03h,04h,05h
;	  CASE f(bit7) 1 : next data is fixed
;	  fscc cccc
;	   CASE s(bit6) 0 : data size is 1byte
;	    EX> $85,$01 -> 01h,01h,01h,01h,01h
;	   CASE s(bit6) 1 : data size is 2bytes
;	    EX> $C5,$01,$F2 -> $01,$F2,$01,$F2,$01,$F2,$01,$F2,$01,$F2
;	  1111 1111 is end of tilemap decode
;	  Y = text count
	LDY #$00		; F6DA	$a0 $00
	LDA ($10),Y		; F6DC	$b1 $10
	CMP #$FF		; F6DE  $C9 $FF
	BEQ BFF759		; F6E0  $F0 $77		branch if data is FFh - loop end
	TAX			; F6E2  $AA
	BPL BFF6EB		; F6E3  $10 $06		branch if f(bit7) is 0
	AND #$40		; F6E5  $29 $40
	BEQ BFF72D		; F6E7  $F0 $44		branch if c(bit6) is 0
	BNE BFF6F1		; F6E9  $D0 $06
BFF6EB:
	AND #$40		; F6EB  $29 $40
	BEQ BFF716		; F6ED  $F0 $27		branch if c(bit6) is 0
	BNE BFF748		; F6EF  $D0 $57
BFF6F1:
	TXA			; F6F1  $8A
	AND #$3F		; F6F2  $29 $3F
	TAX			; F6F4  $AA
	LDY #$01		; F6F5  $A0 $01		2nd data
	LDA ($10),Y		; F6F7  $B1 $10
	PHA			; F6F9  $48
	INY			; F6FA  $C8     	3rd data
	LDA ($10),Y		; F6FB  $B1 $10
	TAY			; F6FD  $A8
	PLA			; F6FE  $68
BFF6FF:
	STA PpuData_2007	; F6FF  $8D $07 $20
	STY PpuData_2007	; F702  $8C $07 $20
	DEX			; F705  $CA
	BNE BFF6FF		; F706  $D0 $F7
	CLC			; F708  $18
	LDA #$03		; F709  $A9 $03
	ADC $10			; F70B  $65 $10
	STA $10			; F70D  $85 $10
	BCC BFF713		; F70F  $90 $02
	INC $11			; F711  $E6 $11
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
.byte $00,$e5,$19,$85,$19,$60

; Name	:
	ORA #$00		; F776  $09 $00
	BPL BFF77F		; F778  $10 $05
	EOR #$FF		; F77A  $49 $FF
	CLC			; F77C  $18
	ADC #$01		; F77D  $69 $01
BFF77F:
	RTS			; F77F  $60

.byte $a2,$00,$86,$1a,$86,$1b,$a5,$17,$10,$04,$20,$5a,$f7,$e8,$a5,$19
.byte $10,$04,$20,$68,$f7,$e8,$8a,$48,$a2,$0f,$46,$17,$66,$16,$90,$0f
.byte $18,$a5,$1a,$65,$18,$85,$1a,$a5,$1b,$65,$19,$85,$1b,$70,$18,$06
.byte $18,$26,$19,$ca,$d0,$e4,$a5,$1a,$85,$16,$a5,$1b,$85,$17,$68,$4a
.byte $90,$03,$20,$5a,$f7,$18,$60,$68,$38,$60

; Name	:
	LDA #$00		; F7CA  $A9 $00
	STA $17                 ; F7CC  $85 $17
	STA $19                 ; F7CE  $85 $19
; Name	:
	LDA #$00		; F7D0  $A9 $00
	STA $1A			; F7D2  $85 $1A
	STA $1B			; F7D4  $85 $1B
	LDX #$10		; F7D6  $A2 $10
BFF7D8:
	LSR $17			; F7D8  $46 $17
	ROR $16			; F7DA  $66 $16
	BCC BFF7ED		; F7DC  $90 $0F
	CLC			; F7DE  $18
	LDA $1A			; F7DF  $A5 $1A
	ADC $18			; F7E1  $65 $18
	STA $1A			; F7E3  $85 $1A
	LDA $1B			; F7E5  $A5 $1B
	ADC $19			; F7E7  $65 $19
	STA $1B			; F7E9  $85 $1B
	BCS BFF7FE		; F7EB  $B0 $11
BFF7ED:
	ASL $18			; F7ED  $06 $18
BFF7EE:
	ROL $19			; F7EF  $26 $19
	DEX			; F7F1  $CA
	BNE BFF7D8		; F7F2  $D0 $E4
	LDA $1A			; F7F4  $A5 $1A
	STA $16			; F7F6  $85 $16
	LDA $1B			; F7F8  $A5 $1B
	STA $17			; F7FA  $85 $17
	CLC			; F7FC  $18
	RTS			; F7FD  $60

BFF7FE:
.byte $38,$60

; Name	:
	STA $18			; F800  $85 $18
	LDA #$0A		; F802  $A9 $0A
	STA $16			; F804  $85 $16
	LDA #$00		; F806  $A9 $00
	STA $19			; F808  $85 $19
	STA $17			; F80A  $85 $17
; Name	:
	LDA $16			; F80C  $A5 $16
	ORA $17			; F80E  $05 $17
	BEQ BFF845		; F810  $F0 $33
	LDA #$00		; F812  $A9 $00
	STA $1A			; F814  $85 $1A
	STA $1B			; F816  $85 $1B
	LDX #$10		; F818  $A2 $10
BFF81A:
	CLC			; F81A  $18
	ROL $18			; F81B  $26 $18
	ROL $19			; F81D  $26 $19
	ROL $1A			; F81F  $26 $1A
	ROL $1B			; F821  $26 $1B
	LDA $1A			; F823  $A5 $1A
	CMP $16			; F825  $C5 $16
	LDA $1B			; F827  $A5 $1B
	SBC $17			; F829  $E5 $17
	BCC BFF83C		; F82B  $90 $0F
	SEC			; F82D  $38
	LDA $1A			; F82E  $A5 $1A
	SBC $16			; F830  $E5 $16
	STA $1A			; F832  $85 $1A
	LDA $1B			; F834  $A5 $1B
	SBC $17			; F836  $E5 $17
	STA $1B			; F838  $85 $1B
	INC $18			; F83A  $E6 $18
BFF83C:
	DEX			; F83C  $CA
	BNE BFF81A		; F83D  $D0 $DB
	LDA $1A			; F83F  $A5 $1A
	STA $16			; F841  $85 $16
	CLC			; F843  $18
	RTS			; F844  $60
BFF845:
	SEC			; F845  $38
	RTS			; F846  $60

;$F847
.byte $a2,$00,$a5,$17,$10,$04,$20,$5a,$f7
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
; Marks	: Write tile buffer to upper textbox line
	JSR $F96D		; F95F	$20 $6D $F9
	LDX #$0D		; F962	$A2 $0D
.if ORIGINAL
	LDA #$62		; F964	$A9 $62
.else
	LDA #$71
.endif
BFF966:
	STA $0300,X		; F966	$9D $00 $03
	DEX			; F969	$CA
	BPL BFF966		; F96A	$10 $FA
	RTS			; F96C	$60

; Name	:
; Marks	: Write tile buffer to background color
	LDX #$7F		; F96D	$a2 $7f
.if ORIGINAL
	LDA #$20		; F96F	$a9 $20
.else
	LDA #$40
.endif
BFF971:
	STA $0300,X		; F971	$9d $00 $03
	DEX			; F974	$ca
	BPL BFF971		; F975	$10 $fa
	RTS			; F977	$60

;$F978
.byte $a2,$1d,$a9,$00,$95,$d1,$ca,$10
.byte $fb,$60

; Name	:
; Marks	: Reset 2-line tile buffer as EMPTY tile
	LDX #$3F		; F982  A2 3F          
.if ORIGINAL
	LDA #$20		; F984  A9 20          
.else
	LDA #T_EMPTY
.endif
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
.if ORIGINAL
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
.else
	RTS
;$F9D7
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $ff,$ff
;$F9E2
.byte $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.endif


;$F9ED - data block ($F9ED-$FAEC) = text table 256 bytes
.byte $00,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
.byte $f0,$f1,$f2,$f3,$d4,$e4,$d5,$e5,$b0,$b1,$b2,$b3,$fc,$fd,$fe,$ff
.byte $40,$af,$ff,$ff,$ff,$78,$ff,$ff,$c4,$c5,$4c,$c2,$4f,$32,$33,$4d
.byte $41,$42,$43,$44,$45,$46,$47,$48,$49,$4a,$4b,$ff,$ff,$ff,$ff,$ae

.byte $50,$56,$57,$51,$58,$59,$52,$76,$77,$5b,$75,$64,$65,$53,$6d,$36
.byte $ff,$66,$67,$54,$68,$69,$ff,$ff,$ff,$ff,$55,$ff,$79,$ff,$62,$63
.byte $c1,$70,$71,$72,$5f,$73,$74,$5a,$5c,$5d,$5e,$6a,$bc,$bd,$be,$bf
.byte $ff,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$8e,$8f

.byte $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f
.byte $a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$60,$61
.byte $ff,$33,$ff,$ff,$4f,$4e,$b6,$37,$38,$39,$3a,$3b,$3c,$3d,$3e,$3f
.byte $32,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0a,$0b,$0c,$0d,$0e,$0f

.byte $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f
.byte $20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$30,$31
.byte $d0,$d1,$d2,$d3,$e0,$e1,$e2,$e3,$2f,$2e,$6b,$6c,$b4,$b5,$ba,$35
.byte $b7,$b8,$b9,$bb,$6e,$6f,$7a,$7b,$7c,$7d,$7e,$7f,$34,$ff,$ff,$ff

; Name	:
	JSR $F99F		; FAED	$20 $9f $f9
; Name	:
	JSR $F9C6		; FAF0	$20 $c6 $f9
	JSR $F98D		; FAF3	$20 $8d $f9
	LDA #$06		; FAF6	$a9 $06
	JMP $F4DA		; FAF8	$4c $da $f4

; Name	:
	JSR $F99F		; FAFB	$20 $9f $f9
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
	BEQ BFFB4E		; FB1D  $F0 $2F		branch if data is FFh(last)
	TAX			; FB1F  $AA
	INY			; FB20  $C8
	LDA ($12),Y		; FB21  $B1 $12
	JSR $F605		; FB23  $20 $05 $F6
	CMP #$DE		; FB26  $C9 $DE
	BEQ BFFB2E		; FB28  $F0 $04		branch if data is DEh
	CMP #$DF		; FB2A  $C9 $DF
	BNE BFFB46		; FB2C  $D0 $18		branch if data is not DFh
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

; Name	:
	LDA #$F8		; FBC9  $A9 $F8
	LDY #$40		; FBCB  $A0 $40
BFFBCD:
	STA $0200,X		; FBCD  $9D $00 $02
	INX			; FBD0  $E8
	DEY			; FBD1  $88
	BNE BFFBCD		; FBD2  $D0 $F9
	RTS			; FBD4  $60

; Name	:
	LDA $7E			; FBD5  $A5 $7E
	LDY #$00		; FBD7  $A0 $00
BFFBD9:
	LSR A			; FBD9  $4A
	BCS BFFBE4		; FBDA  $B0 $08
	INY			; FBDC  $C8
	INY			; FBDD  $C8
	CPY #$10		; FBDE  $C0 $10
	BCC BFFBD9		; FBE0  $90 $F7
	CLC			; FBE2  $18
	RTS			; FBE3  $60
BFFBE4:
	LDA ($10),Y		; FBE4  $B1 $10
	STA $66			; FBE6  $85 $66
	INY			; FBE8  $C8
	LDA ($10),Y		; FBE9  $B1 $10
	STA $67			; FBEB  $85 $67
	JMP ($0066)		; FBED  $6C $66 $00
; Name	:
	LDX $6213		; FBF0  $AE $13 $62
	LDA $622A,X		; FBF3  $BD $2A $62
	CMP $A2			; FBF6  $C5 $A2
	BCC BFFC0D		; FBF8  $90 $13
	BNE BFFC0C		; FBFA  $D0 $10
	LDA $6226,X		; FBFC  $BD $26 $62
	CMP $A1			; FBFF  $C5 $A1
	BCC BFFC0D		; FC01  $90 $0A
	BNE BFFC0C		; FC03  $D0 $07
	LDA $6222,X		; FC05  $BD $22 $62
	CMP $A0			; FC08  $C5 $A0
	BCC BFFC0D		; FC0A  $90 $01
BFFC0C:
	RTS			; FC0C  $60
BFFC0D:
.byte $60

; Name	:
	LDX $6213		; FC0E  $AE $13 $62
	SEC			; FC11  $38
	LDA $6222,X		; FC12  $BD $22 $62
	SBC $A0			; FC15  $E5 $A0
	STA $6222,X		; FC17  $9D $22 $62
	LDA $6226,X		; FC1A  $BD $26 $62
	SBC $A1			; FC1D  $E5 $A1
	STA $6226,X		; FC1F  $9D $26 $62
	BCS BFFC36		; FC22  $B0 $12
	LDA $6222,X		; FC24  $BD $22 $62
	CLC			; FC27  $18
	ADC #$10		; FC28  $69 $10
	STA $6222,X		; FC2A  $9D $22 $62
	LDA $6226,X		; FC2D  $BD $26 $62
	ADC #$27		; FC30  $69 $27
	STA $6226,X		; FC32  $9D $26 $62
	CLC			; FC35  $18
BFFC36:
	LDA $622A,X		; FC36  $BD $2A $62
	SBC $A2			; FC39  $E5 $A2
	STA $622A,X		; FC3B  $9D $2A $62
	BCC BFFC41		; FC3E  $90 $01
	RTS			; FC40  $60

BFFC41:
.byte $a9,$00,$9d,$22,$62,$9d,$26,$62,$9d,$2a,$62,$60

; Name	:
	LDA $16			; FC4D  $A5 16
	CLC			; FC4F  $18
	ADC $1A			; FC50  $65 1A
	STA $1A			; FC52  $85 1A
	LDA $17			; FC54  $A5 17
	ADC $1B			; FC56  $65 1B
	STA $1B			; FC58  $85 1B
	LDA $1B			; FC5A  $A5 1B
	CMP #$27		; FC5C  $C9 27
	BCC BFFC75		; FC5E  $90 15
	BNE BFFC81		; FC60  $D0 1F
	LDA #$10		; FC62  $A9 10
	CMP $1A			; FC64  $C5 1A
	BCS BFFC75		; FC66  $B0 0D
	SEC			; FC68  $38
	LDA $1A			; FC69  $A5 1A
	SBC #$10		; FC6B  $E9 10
	STA $1A			; FC6D  $85 1A
	LDA $1B			; FC6F  $A5 1B
	SBC #$27		; FC71  $E9 27
	STA $1B			; FC73  $85 1B
BFFC75:
	LDA $1C			; FC75  $A5 1C
	ADC $18			; FC77  $65 18
	CMP #$0A		; FC79  $C9 0A
	BCS BFFC81		; FC7B  $B0 04
	STA $1C			; FC7D  $85 1C
	CLC			; FC7F  $18
	RTS			; FC80  $60

BFFC81:
.byte $a9,$0f,$85,$1a,$a9,$27,$85,$1b,$a9,$09,$85,$1c,$38,$60

; Name	:
	LDA #$70		; FC8F  $A9 $70
	STA PpuData_2007	; FC91  $8D $07 $20
	LDA #$71		; FC94  $A9 $71
	JSR $F22B		; FC96  $20 $2B $F2
	LDA #$72		; FC99  $A9 $72
	STA PpuData_2007	; FC9B  $8D $07 $20
	RTS			; FC9E  $60

; Name	:
; Marks	: Draw textbox bottom line
	LDA #$73		; FC9F  $A9 $73		LeftBottom textbox line
	STA PpuData_2007	; FCA1  $8D $07 $20
	LDA #$75		; FCA4  $A9 $75		Bottom textbox line
	JSR $F22B		; FCA6  $20 $2B $F2
	LDA #$74		; FCA9  $A9 $74		RightBottom textbox line
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
; Marks	: Top textbox line (Large)
.if ORIGINAL
	LDA #$61		; FCBF  $A9 $61
.else
	LDA #T_LUTL
.endif
	STA $0300		; FCC1  $8D $00 $03
.if ORIGINAL
	LDA #$62		; FCC4  $A9 $62
.else
	LDA #T_MUTL
.endif
	LDY #$1D		; FCC6  $A0 $1D
BFFCC8:
	STA $0301,Y		; FCC8  $99 $01 $03
	DEY			; FCCB  $88
	BPL BFFCC8		; FCCC  $10 $FA
.if ORIGINAL
	LDA #$63		; FCCE  $A9 $63
.else
	LDA #T_RUTL
.endif
	STA $031F		; FCD0  $8D $1F $03
	RTS			; FCD3  $60

; Name	:
	LDA #$64		; FCD4  $A9 $64
	STA $84			; FCD6  $85 $84
	JSR $FCE0		; FCD8  $20 $E0 $FC
	INC $84			; FCDB  $E6 $84
	LDA $84			; FCDD  $A5 $84
	RTS			; FCDF  $60

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
BFFCEF:
	JSR $FD1B		; FCEF	$20 $1b $fd
	AND $18			; FCF2  $25 $18
	CMP $84			; FCF4  $C5 $84
	BCS BFFCEF		; FCF6  $B0 $F7
	STA $84			; FCF8  $85 $84
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
.byte $FF,$7F,$3F,$1F,$0F,$07,$03,$01

; Name	:
	LDA $80			; FD1B  $A5 $80
	STA $82			; FD1D  $85 $82
	LDA $81			; FD1F  $A5 $81
	STA $83			; FD21  $85 $83
	ASL $82			; FD23  $06 $82
	ROL $83			; FD25  $26 $83
	ASL $82			; FD27  $06 $82
	ROL $83			; FD29  $26 $83
	JSR $FD59		; FD2B  $20 $59 $FD
	ASL $82			; FD2E  $06 $82
	ROL $83			; FD30  $26 $83
	JSR $FD59		; FD32  $20 $59 $FD
	ASL $82			; FD35  $06 $82
	ROL $83			; FD37  $26 $83
	ASL $82			; FD39  $06 $82
	ROL $83			; FD3B  $26 $83
	JSR $FD59		; FD3D  $20 $59 $FD
	ASL $82			; FD40  $06 $82
	ROL $83			; FD42  $26 $83
	LDY #$07		; FD44  $A0 $07
BFFD46:
	ASL $82			; FD46  $06 $82
	ROL $83			; FD48  $26 $83
	JSR $FD59		; FD4A  $20 $59 $FD
	DEY			; FD4D  $88
	BNE BFFD46		; FD4E  $D0 $F6
	INC $80			; FD50  $E6 $80
	BNE BFFD56		; FD52  $D0 $02
	INC $81			; FD54  $E6 $81
BFFD56:
	LDA $81			; FD56  $A5 $81
	RTS			; FD58  $60

; Name	:
	LDA $82			; FD59  $A5 $82
	CLC			; FD5B  $18
	ADC $80			; FD5C  $65 $80
	STA $80			; FD5E  $85 $80
	LDA $83			; FD60  $A5 $83
	ADC $81			; FD62  $65 $81
	STA $81			; FD64  $85 $81
	RTS			; FD66  $60

; Name	:
	LDA #$10		; FD67  $A9 $10          
	BNE BFFD6D		; FD69  $D0 $02          
; Name	:
	LDA #$F0		; FD6B  $A9 $F0
BFFD6D:
	STA $42			; FD6D  $85 $42
	LDA #$10		; FD6F  $A9 $10
	STA $43			; FD71  $85 $43
BFFD73:
	JSR $F4D3		; FD73  $20 $D3 $F4
	LDA $42			; FD76  $A5 $42
	BNE BFFD73		; FD78  $D0 $F9
	RTS			; FD7A  $60

; Name	:
	LDA $19                 ; FD7B  $A5 $19
	STA $9B			; FD7D  $85 $9B
	LDA #$00		; FD7F  $A9 $00
	LDY #$07		; FD81  $A0 $07
BFFD83:
	STA $0450,Y		; FD83  $99 $50 $04
	DEY			; FD86  $88
	BPL BFFD83		; FD87  $10 $FA
	LDA #$00		; FD89  $A9 $00
	STA $17			; FD8B  $85 $17
	STA $18			; FD8D  $85 $18
	LSR $19			; FD8F  $46 $19
	ROR $18			; FD91  $66 $18
	LSR $19			; FD93  $46 $19
	ROR $18			; FD95  $66 $18
	LSR $19			; FD97  $46 $19
	ROR $18			; FD99  $66 $18
	JSR $F80C		; FD9B  $20 $0C $F8
	LDA $18			; FD9E  $A5 $18
	BNE BFFDA8		; FDA0  $D0 $06
	LDA $9B			; FDA2  $A5 $9B
	BEQ BFFDA8		; FDA4  $F0 $02
	INC $18			; FDA6  $E6 $18
BFFDA8:
	LDA $18			; FDA8  $A5 $18
	AND #$03		; FDAA  $29 $03
	STA $16			; FDAC  $85 $16
	LDA $18			; FDAE  $A5 $18
	LSR A			; FDB0  $4A
	LSR A			; FDB1  $4A
	TAY			; FDB2  $A8
	BEQ BFFDBB		; FDB3  $F0 $06
	TAX			; FDB5  $AA
	LDA #$1B		; FDB6  $A9 $1B
	JSR $FDC6		; FDB8  $20 $C6 $FD
BFFDBB:
	LDA $16			; FDBB  $A5 $16
	BEQ BFFDC5		; FDBD  $F0 $06
	CLC			; FDBF  $18
	ADC #$17		; FDC0  $69 $17
	STA $0450,Y		; FDC2  $99 $50 $04
BFFDC5:
	RTS			; FDC5  $60

; Name	:
BFFDC6:
	STA $044F,X		; FDC6  $9D $4F $04
	DEX			; FDC9  $CA
	BNE BFFDC6		; FDCA  $D0 $FA
	RTS			; FDCC  $60

; Name	:
; Marks	: City panel guard gauge
	LDA $18			; FDCD  $A5 $18
	STA $9B			; FDCF  $85 $9B
	LDA #$00		; FDD1  $A9 $00
	LDY #$05		; FDD3  $A0 $05
BFFDD5:
	STA $0450,Y		; FDD5  $99 $50 $04
	DEY                     ; FDD8  $88
	BPL BFFDD5		; FDD9  $10 $FA
	LDA #$00		; FDDB  $A9 $00
	STA $17			; FDDD  $85 $17
	STA $19			; FDDF  $85 $19
	LDA $16			; FDE1  $A5 $16
	PHA			; FDE3  $48
	LDA #$18		; FDE4  $A9 $18
	STA $16			; FDE6  $85 $16
	JSR $F7D0		; FDE8  $20 $D0 $F7
	LDA $16			; FDEB  $A5 $16
	STA $18			; FDED  $85 $18
	LDA $17			; FDEF  $A5 $17
	STA $19			; FDF1  $85 $19
	PLA			; FDF3  $68
	STA $16			; FDF4  $85 $16
	LDA #$00		; FDF6  $A9 $00
	STA $17			; FDF8  $85 $17
	JSR $F80C		; FDFA  $20 $0C $F8
	LDA $18			; FDFD  $A5 $18
	BNE BFFE07		; FDFF  $D0 $06
	LDA $9B			; FE01  $A5 $9B
	BEQ BFFE07		; FE03  $F0 $02
	INC $18			; FE05  $E6 $18
BFFE07:
	LDA $18			; FE07  $A5 $18
	AND #$03		; FE09  $29 $03
	STA $16			; FE0B  $85 $16
	LDA $18			; FE0D  $A5 $18
	LSR A			; FE0F  $4A
	LSR A			; FE10  $4A
	TAY			; FE11  $A8
	BEQ BFFE1A		; FE12  $F0 $06
	TAX			; FE14  $AA
.if ORIGINAL
	LDA #$1F		; FE15  $A9 $1F
.else
	LDA #$FF		; City Panel Guard Gauge
.endif
	JSR $FDC6		; FE17  $20 $C6 $FD
BFFE1A:
	LDA $16			; FE1A  $A5 $16
	BEQ BFFE24		; FE1C  $F0 $06
	CLC			; FE1E  $18
.if ORIGINAL
	ADC #$1B		; FE1F  $69 $1B
.else
	ADC #$FB		; City Panel Guard Gauge
.endif
	STA $0450,Y		; FE21  $99 $50 $04
BFFE24:
	RTS			; FE24  $60

; Name	: OnRESET
; Marks	:
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
