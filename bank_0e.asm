.include "Constants.inc"
.if ORIGINAL
.else
.include "text/text_list.inc"
.endif

.segment "BANK_0E"

;$C000
.byte $90,$01,$60

	JSR $F56E		; C003  20 6E F5       
	LDA $0561		; C006  AD 61 05       
	BNE BEC00B		; C009  D0 00          
BEC00B:
	LDA #$00		; C00B  A9 00          
	STA $0561		; C00D  8D 61 05       
	STA $9E			; C010  85 9E          
	LDA #$00 		; C012  A9 00          
	STA $9C			; C014  85 9C          
	STA $0560		; C016  8D 60 05       
	JSR $D4D0		; C019  20 D0 D4       
	JSR $C055		; C01C  20 55 C0       
	JSR $86A1		; C01F  20 A1 86       
	LDA #$00		; C022  A9 00          
	STA $91			; C024  85 91          
	JSR $C278		; C026  20 78 C2       
	JSR $C2EF		; C029  20 EF C2       
	LDX $6213		; C02C  AE 13 62       
	LDA $D6C7,X		; C02F  BD C7 D6       
	STA $92			; C032  85 92          
	LDX $6213		; C034  AE 13 62       
	LDA $621D,X		; C037  BD 1D 62       
	STA $98			; C03A  85 98          
	BPL BEC047		; C03C  10 09          
	JSR $F565		; C03E  20 65 F5       

;$C041
.byte $20,$d4,$e1,$4c,$12,$c0
BEC047:
	JSR $C077		; C047	$20 $77 $c0
;$C04A
.byte $ad,$61,$05,$d0,$bc,$4c
.byte $12,$c0,$90,$01,$60

; Name	:
	LDX $6213		; C055  AE 13 62       
	LDA $621D,X		; C058  BD 1D 62       
	BPL BEC05F		; C05B  10 02          
	LDX #$00		; C05D  A2 00          
BEC05F:
	LDA $C072,X		; C05F  BD 72 C0       
	CMP $0743		; C062  CD 43 07       
	BNE BEC06E		; C065  D0 07          
	LDA $6211		; C067  AD 11 62       
	AND #$08		; C06A  29 08          
	BNE BEC071		; C06C  D0 03          
BEC06E:
	JSR $F286		; C06E  20 86 F2       
BEC071:
	RTS			; C071  60             

;$C072
.byte $05,$01,$02,$04,$03

; Name	:
	LDA #$00		; C077  A9 00          
	STA $24			; C079  85 24          
	JSR $8780		; C07B  20 80 87       
BEC07E:
	JSR $C0E9		; C07E  20 E9 C0       
	LDA #$01		; C081  A9 01          
	AND $7E			; C083  25 7E          
	BEQ BEC09D		; C085  F0 16          
	LDX #$00		; C087  A2 00          
	JSR $F2D6		; C089  20 D6 F2       
	JSR $C384		; C08C  20 84 C3       


;$C08F
.byte $20
.byte $78,$c2,$20,$ef,$c2,$ad,$61,$05,$05,$9c,$f0,$e2,$60
BEC09D:
	LDA #$40		; C09D  A9 40          
	BIT $7E			; C09F  24 7E          
	BEQ BEC0B0		; C0A1  F0 0D          
	LDX $92			; C0A3  A6 92          
	LDA $D73A,X		; C0A5  BD 3A D7       
	STA $92			; C0A8  85 92          
	LDA #$00		; C0AA  A9 00          
	STA $24			; C0AC  85 24          
	BEQ BEC07E		; C0AE  F0 CE          
BEC0B0:
	LDA #$80		; C0B0  A9 80          
	BIT $7E			; C0B2  24 7E          
	BEQ BEC0C3		; C0B4  F0 0D          
	LDX $92			; C0B6  A6 92          
	LDA $D750,X		; C0B8  BD 50 D7       
	STA $92			; C0BB  85 92          
	LDA #$00		; C0BD  A9 00          
	STA $24			; C0BF  85 24          
	BEQ BEC07E		; C0C1  F0 BB          
BEC0C3:
	LDA #$10		; C0C3  A9 10          
	BIT $7E			; C0C5  24 7E          
	BEQ BEC0D6		; C0C7  F0 0D          
	LDX $92			; C0C9  A6 92          
	LDA $D766,X		; C0CB  BD 66 D7       
	STA $92			; C0CE  85 92          
	LDA #$00		; C0D0  A9 00          
	STA $24			; C0D2  85 24          
	BEQ BEC07E		; C0D4  F0 A8          
BEC0D6:
	LDA #$20		; C0D6  A9 20          
	BIT $7E			; C0D8  24 7E          
	BEQ BEC07E		; C0DA  F0 A2          
	LDX $92			; C0DC  A6 92          
	LDA $D77C,X		; C0DE  BD 7C D7       
	STA $92			; C0E1  85 92          
	LDA #$00		; C0E3  A9 00          
	STA $24			; C0E5  85 24          
	BEQ BEC07E		; C0E7  F0 95          
; Name	:
	LDA #$F0		; C0E9  A9 F0          
	LDX #$10		; C0EB  A2 10          
BEC0ED:
	STA $01FF,X		; C0ED  9D FF 01       
	DEX			; C0F0  CA             
	BNE BEC0ED		; C0F1  D0 FA          
	LDX #$AC		; C0F3  A2 AC          
BEC0F5:
	STA $0213,X		; C0F5  9D 13 02       
	DEX			; C0F8  CA             
	BNE BEC0F5		; C0F9  D0 FA          
	LDX $6213		; C0FB  AE 13 62       
	LDA $621D,X		; C0FE  BD 1D 62       
	BMI BEC171		; C101  30 6E          
	LDA $620F		; C103  AD 0F 62       
	AND #$01		; C106  29 01          
	TAY			; C108  A8             
	LDX $92			; C109  A6 92          
	LDA $D70E,X		; C10B  BD 0E D7       
	CPY #$00		; C10E  C0 00          
	BEQ BEC115		; C110  F0 03          
	CLC			; C112  18             
	ADC #$08		; C113  69 08          
BEC115:
	STA $0203		; C115  8D 03 02       
	STA $020B		; C118  8D 0B 02       
	CLC			; C11B  18             
	ADC #$08		; C11C  69 08          
	STA $0207		; C11E  8D 07 02       
	STA $020F		; C121  8D 0F 02       
	LDA $D724,X		; C124  BD 24 D7       
	CPY #$00		; C127  C0 00          
	BEQ BEC13D		; C129  F0 12          
	PHA			; C12B  48             
	LDA $92			; C12C  A5 92          
	CMP #$0E		; C12E  C9 0E          
	BCC BEC139		; C130  90 07          
	PLA			; C132  68             
	CLC			; C133  18             
	ADC #$08		; C134  69 08          
	JMP $C13D		; C136  4C 3D C1       

BEC139:
.byte $68,$18,$69,$04
BEC13D:
	STA $0200		; C13D  8D 00 02       	
	STA $0204		; C140  8D 04 02          
	CLC			; C143  18                
	ADC #$08		; C144  69 08             
	STA $0208		; C146  8D 08 02          
	STA $020C		; C149  8D 0C 02          
	LDX #$09		; C14C  A2 09             
	CPY #$00		; C14E  C0 00             
	BEQ BEC154		; C150  F0 02             
	LDX #$19		; C152  A2 19             
BEC154:
	STX $0201		; C154  8E 01 02          
	INX			; C157  E8                
	STX $0205		; C158  8E 05 02          
	INX			; C15B  E8                
	STX $0209		; C15C  8E 09 02          
	INX			; C15F  E8                
	STX $020D		; C160  8E 0D 02          
	LDA #$03		; C163  A9 03             
	STA $0202		; C165  8D 02 02          
	STA $0206		; C168  8D 06 02          
	STA $020E		; C16B  8D 0E 02          
	STA $020A		; C16E  8D 0A 02          
BEC171:
	LDA $24			; C171  A5 24             
	AND #$10		; C173  29 10             
	BNE BEC17A		; C175  D0 03             
	JMP $CBD5		; C177  4C D5 CB          
BEC17A:
	JMP $CB38		; C17A  4C 38 CB          

; Name	:
	LDA $62			; C17D  A5 62          
	LSR A			; C17F  4A             
	PHA			; C180  48             
	JSR $F568		; C181  20 68 F5       
	LDA $6210		; C184  AD 10 62       
	ASL A			; C187  0A             
	TAX			; C188  AA             
	LDA $8003,X		; C189  BD 03 80       
	STA $10			; C18C  85 10          
	LDA $8004,X		; C18E  BD 04 80       
	STA $11			; C191  85 11          
	LDA #$14		; C193  A9 14          
	STA $12			; C195  85 12          
	LDA #$62		; C197  A9 62          
	STA $13			; C199  85 13          
	LDA #$05		; C19B  A9 05          
	STA $14			; C19D  85 14          
	LDA #$02		; C19F  A9 02          
	STA $15			; C1A1  85 15          
	LDY #$00		; C1A3  A0 00          
BEC1A5:
	LDA ($10),Y		; C1A5  B1 10          
	STA ($12),Y		; C1A7  91 12          
	INC $10			; C1A9  E6 10          
	BNE BEC1AF		; C1AB  D0 02          
	INC $11			; C1AD  E6 11          
BEC1AF:
	INC $12			; C1AF  E6 12          
	BNE BEC1B5		; C1B1  D0 02          
	INC $13			; C1B3  E6 13          
BEC1B5:
	LDA $14			; C1B5  A5 14          
	BNE BEC1BB		; C1B7  D0 02          
	DEC $15			; C1B9  C6 15          
BEC1BB:
	DEC $14			; C1BB  C6 14          
	LDA $14			; C1BD  A5 14          
	ORA $15			; C1BF  05 15          
	BNE BEC1A5		; C1C1  D0 E2          
	PLA			; C1C3  68             
	JMP $F570		; C1C4  4C 70 F5       

; Name	:
	LDX #$04		; C1C7  A2 04          
BEC1C9:
	STX $01			; C1C9  86 01          
	LDA $6219,X		; C1CB  BD 19 62       
	SEC			; C1CE  38             
	BNE BEC1D8		; C1CF  D0 07          
	DEC $6219,X		; C1D1  DE 19 62       
	JSR $D354		; C1D4  20 54 D3       

;$C1D7
.byte $18
BEC1D8:
	ROL $6222		; C1D8  2E 22 62       
	LDX $01			; C1DB  A6 01          
	DEX			; C1DD  CA             
	BNE BEC1C9		; C1DE  D0 E9          
	LDY #$FF		; C1E0  A0 FF          
	LDX #$03		; C1E2  A2 03          
BEC1E4:
	LDA $621A,X		; C1E4  BD 1A 62       
	BMI BEC1F2		; C1E7  30 09          
	LDA $621E,X		; C1E9  BD 1E 62       
	BMI BEC1F2		; C1EC  30 04          
	INY			; C1EE  C8             
	STX $6212		; C1EF  8E 12 62       
BEC1F2:
	DEX			; C1F2  CA             
	BPL BEC1E4		; C1F3  10 EF          
	TYA			; C1F5  98             
	BEQ BEC1FD		; C1F6  F0 05          
	LDA #$FE		; C1F8  A9 FE          
	STA $6212		; C1FA  8D 12 62       
BEC1FD:
	INC $6212		; C1FD  EE 12 62       
	LDA $6210		; C200  AD 10 62       
	BNE BEC239		; C203  D0 34          
	JSR $D3A5		; C205  20 A5 D3       
	JSR $CEEC		; C208  20 EC CE       
	LDX #$00		; C20B  A2 00          
BEC20D:
	STX $00			; C20D  86 00          
	LDY #$00		; C20F  A0 00          
	LDA $621A,X		; C211  BD 1A 62       
	BMI BEC219		; C214  30 03          
	LDY $6247,X		; C216  BC 47 62       
BEC219:
	TXA			; C219  8A             
	ASL A			; C21A  0A             
	ASL A			; C21B  0A             
	STA $01			; C21C  85 01          
	TYA			; C21E  98             
	CLC			; C21F  18             
	ADC $01			; C220  65 01          
	TAX			; C222  AA             
	CPY #$04		; C223  C0 04          
	BEQ BEC232		; C225  F0 0B          
	STY $02			; C227  84 02          
	JSR $C245		; C229  20 45 C2       

;$C22C
.byte $a4,$02,$e8,$c8
.byte $d0,$f1
BEC232:
	LDX $00			; C232  A6 00          
	INX			; C234  E8             
	CPX #$04		; C235  E0 04          
	BNE BEC20D		; C237  D0 D4          
BEC239:
	JSR $C9B3		; C239  20 B3 C9       
	LDX $6213		; C23C  AE 13 62       
	LDA $D6C7,X		; C23F  BD C7 D6       
	STA $92			; C242  85 92          
	RTS			; C244  60             

;$C245
.byte $a9,$00,$9d,$59,$63,$9d,$79,$63,$9d,$89,$63
.byte $9d,$70,$04,$9d,$99,$63,$9d,$a9,$63,$9d,$b9,$63,$9d,$c9,$63,$9d
.byte $d9,$63,$9d,$e9,$63,$9d,$69,$63,$8a,$4a,$4a,$a8,$b9,$1a,$62,$30
.byte $06,$b9,$c8,$d6,$9d,$69,$63,$60

; Name	:
; Marks	: Draw left size screen ??
	JSR $F95F		; C278  20 5F F9       
	LDA #$D0		; C27B  A9 D0          
	LDY #$C2		; C27D  A0 C2          
	JSR $FB09		; C27F  20 09 FB       
	LDA $6214		; C282  AD 14 62       
	STA $18			; C285  85 18          
	LDA $6215		; C287  AD 15 62       
	STA $19			; C28A  85 19          
	JSR $F88A		; C28C  20 8A F8       
	LDX #$03		; C28F  A2 03          
BEC291:
	LDA $0451,X		; C291  BD 51 04       
	STA $0313,X		; C294  9D 13 03       
	DEX			; C297  CA             
	BPL BEC291		; C298  10 F7          
	LDA $6216		; C29A  AD 16 62       
	JSR $F8D4		; C29D  20 D4 F8       
	STX $0318		; C2A0  8E 18 03       
	STY $0319		; C2A3  8C 19 03       
	LDX $6213		; C2A6  AE 13 62       
	LDA $6219,X		; C2A9  BD 19 62       
	JSR $C546		; C2AC  20 46 C5       
	LDA #$D1		; C2AF  A9 D1          
	STA $10			; C2B1  85 10          
	LDA #$00		; C2B3  A9 00          
	STA $11			; C2B5  85 11          
	LDA #$1D		; C2B7  A9 1D          
	STA $12			; C2B9  85 12          
	LDA #$03		; C2BB  A9 03          
	STA $13			; C2BD  85 13          
	JSR $F459		; C2BF  20 59 F4       
	LDA #$2B		; C2C2  A9 2B          
	STA $12			; C2C4  85 12          
	LDA #$03		; C2C6  A9 03          
	STA $13			; C2C8  85 13          
	JSR $F420		; C2CA  20 20 F4       
	JMP $FAF0		; C2CD  4C F0 FA       

;$C2D0 - data block = compressed data : 우주세기 월 페이즈
; $00,$03 is address
.if ORIGINAL
.byte $00,$03,$01,$e0,$02,$e1,$03,$e2,$04,$e3,$0f,$e4,$10,$e5,$11,$e6
.byte $12,$e7,$1a,$e9,$33,$cc,$34,$aa,$35,$b2,$36,$bd,$28,$de,$ff
.else
.byte $00,$03,$01,T_4,$02,T_3,$03,T_2,$04,T_1,$0f,$e4,$10,$e5,$11,$e6
.byte $12,$e7,$1a,T_9,$33,T_5,$34,T_6,$35,T_7,$36,T_8,$28,T_0,$ff
.endif

; Name	:
; Marks	: $0314-$0319 is Money??
	LDA $62			; C2EF  A5 62          
	LSR A			; C2F1  4A             
	PHA			; C2F2  48             
	JSR $F56E		; C2F3  20 6E F5       
	JSR $F95F		; C2F6  20 5F F9       
	LDA #$65		; C2F9  A9 65          
	LDY #$C3		; C2FB  A0 C3          
	JSR $FB09		; C2FD  20 09 FB       
	LDX $6213		; C300  AE 13 62       
	LDA $6222,X		; C303  BD 22 62       
	STA $18			; C306  85 18          
	LDA $6226,X		; C308  BD 26 62       
	STA $19			; C30B  85 19          
	LDA $622A,X		; C30D  BD 2A 62       
	STA $00			; C310  85 00          
	JSR $F8C3		; C312  20 C3 F8       
	LDY #$05		; C315  A0 05          
BEC317:
	LDA $0450,Y		; C317  B9 50 04       
	STA $0314,Y		; C31A  99 14 03       
	DEY			; C31D  88             
	BPL BEC317		; C31E  10 F7          
	JSR $86BD		; C320  20 BD 86       
	LDX $6213		; C323  AE 13 62       
	LDA $045B,X		; C326  BD 5B 04       
	STA $18			; C329  85 18          
	LDA $045F,X		; C32B  BD 5F 04       
	STA $19			; C32E  85 19          
	LDA $0463,X		; C330  BD 63 04       
	STA $00			; C333  85 00          
	JSR $F8C3		; C335  20 C3 F8       
	LDY #$05		; C338  A0 05          
BEC33A:
	LDA $0450,Y		; C33A  B9 50 04       
	STA $0330,Y		; C33D  99 30 03       
	DEY			; C340  88             
	BPL BEC33A		; C341  10 F7          
	LDX $6213		; C343  AE 13 62       
	LDA $046B,X		; C346  BD 6B 04       
	JSR $F8D4		; C349  20 D4 F8       
	STX $034A		; C34C  8E 4A 03       
	STY $034B		; C34F  8C 4B 03       
	LDX $6213		; C352  AE 13 62       
	LDA $6246,X		; C355  BD 46 62       
	CLC			; C358  18             
	ADC #$30		; C359  69 30          
	STA $0352		; C35B  8D 52 03       
	JSR $FAFE		; C35E  20 FE FA       
	PLA			; C361  68             
	JMP $F570		; C362  4C 70 F5       

;$C365 - data block = 자금 수입 도시 부대 screen
.byte $00,$03,$0f,$75,$10,$e8,$1a,$5c,$36,$5c,$2b
.byte $ea,$2c,$eb,$47,$84,$48,$7c,$49,$3a,$4e,$8c,$4f,$80,$50,$72,$40
.byte $de,$51,$3a,$ff

; Name	:
	JSR $C4DD		; C384  20 DD C4       
	LDA #$00		; C387  A9 00          
	STA $90			; C389  85 90          
	LDA $92			; C38B  A5 92          
	CMP #$0E		; C38D  C9 0E          
	BCC BEC39C		; C38F  90 0B          
	LDA #$F0		; C391  A9 F0          
	STA $10			; C393  85 10          
	LDA #$83		; C395  A9 83          
	STA $11			; C397  85 11          
	JMP $C3A4		; C399  4C A4 C3       
BEC39C:
	LDA #$9C		; C39C  A9 9C          
	STA $10			; C39E  85 10          
	LDA #$83		; C3A0  A9 83          
	STA $11			; C3A2  85 11          
	JSR $FAED		; C3A4  20 ED FA       
	LDA #$D9		; C3A7  A9 D9          
	STA $12			; C3A9  85 12          
	LDA #$C3		; C3AB  A9 C3          
	STA $13			; C3AD  85 13          
	LDA #$00		; C3AF  A9 00          
	STA $91			; C3B1  85 91          
	LDA #$04		; C3B3  A9 04          
	STA $8F			; C3B5  85 8F          
	JSR $8007		; C3B7  20 07 80       
	LDA $90			; C3BA  A5 90          
	BMI BEC3D8		; C3BC  30 1A          
	PHA			; C3BE  48             
	ASL A			; C3BF  0A             
	TAY			; C3C0  A8             
	LDA ($12),Y		; C3C1  B1 12          
	STA $66			; C3C3  85 66          
	INY			; C3C5  C8             
	LDA ($12),Y		; C3C6  B1 12          
	STA $67			; C3C8  85 67          
	JSR $F596		; C3CA  20 96 F5       

;$C3CD
.byte $68,$85,$90
.byte $c9,$01,$f0,$04,$a5,$9c,$f0,$b3
BEC3D8:
.byte $60,$e1,$c3,$bd,$c6,$94,$c4,$49
.byte $c4,$a5,$92,$d0,$04,$20,$e6,$f2,$60,$20,$c8,$f3,$20,$d4,$f3,$a9
.byte $00,$85,$90,$a9,$04,$85,$91,$a9,$02,$85,$8f,$20,$d9,$c6,$20,$ef
;$C400
.byte $c2,$a9,$f4,$85,$10,$a9,$82,$85,$11,$20,$ed,$fa,$20,$07,$80,$a5
.byte $90,$30,$30,$48,$d0,$06,$20,$c1,$c9,$4c,$3e,$c4,$a6,$92,$bd,$4b
.byte $62,$29,$a0,$d0,$0f,$bd,$a3,$62
;$C428 - data block =
.byte $cd,$13,$62,$d0,$07,$bd,$8d,$62
.byte $c9,$fa,$90,$07,$20,$e6,$f2,$68,$4c,$0c,$c4,$20,$b2,$b9,$68,$85
.byte $90,$10,$b0,$20,$d0,$d4,$4c,$ef,$c2,$20,$c8,$f3,$20,$d4,$f3,$a9
.byte $00,$85,$90,$a9,$00,$85,$91,$a9,$04,$85,$8f,$a9,$00,$85,$10,$a9
.byte $80,$85,$11,$20,$ed,$fa,$a9,$8c,$85,$12,$a9,$c4,$85,$13,$20,$07
.byte $80,$a5,$90,$30,$16,$48,$0a,$a8,$b1,$12,$85,$66,$c8,$b1,$12,$85
.byte $67,$20,$96,$f5,$68,$85,$90,$a5,$9c,$f0,$c8,$60
;$C48C - data block =
.byte $2a,$a5,$48,$86
.byte $ca,$81,$46,$d2

; Name	:
	JSR $F3C8		; C494  20 C8 F3       
	JSR $F3D4		; C497  20 D4 F3       
	LDA #$00		; C49A  A9 00          
	STA $90			; C49C  85 90          
BEC49E:
	LDA #$00		; C49E  A9 00          
	STA $91			; C4A0  85 91          
	LDA #$04		; C4A2  A9 04          
	STA $8F			; C4A4  85 8F          
	LDA #$54		; C4A6  A9 54          
	STA $10			; C4A8  85 10          
	LDA #$80		; C4AA  A9 80          
	STA $11			; C4AC  85 11		BANK 06 06/8054 ??
	JSR $FAED               ; C4AE  20 ED FA       
	LDA #$D5		; C4B1  A9 D5          
	STA $12			; C4B3  85 12          
	LDA #$C4		; C4B5  A9 C4          
	STA $13			; C4B7  85 13          
	JSR $8007		; C4B9  20 07 80       
	LDA $90			; C4BC  A5 90          
	BMI BEC4D4		; C4BE  30 14          
	PHA			; C4C0  48             
	ASL A			; C4C1  0A             
	TAY			; C4C2  A8             
	LDA ($12),Y		; C4C3  B1 12          
	STA $66			; C4C5  85 66          
	INY			; C4C7  C8             
	LDA ($12),Y		; C4C8  B1 12          
	STA $67			; C4CA  85 67          
	JSR $F596		; C4CC  20 96 F5       
	PLA			; C4CF  68             
	STA $90			; C4D0  85 90          
	BPL BEC49E		; C4D2  10 CA          
BEC4D4:
	RTS			; C4D4  60             

;$C4D5 - data block =
.byte $1b,$8f,$e9,$8d,$d4,$8d,$3b,$90

; Name	:
	LDA #$F0		; C4DD	$a9 $f0
	STA $0210		; C4DF	$8d $10 $02
	JMP $F3D0		; C4E2	$4c $d0 $f3

; Name	:
	LDA $62			; C4E5  A5 62          
	LSR A			; C4E7  4A             
	PHA			; C4E8  48             
	JSR $F568		; C4E9  20 68 F5       
	LDA ($14),Y		; C4EC  B1 14          
	STA $9B			; C4EE  85 9B          
	PLA			; C4F0  68             
	JMP $F570		; C4F1  4C 70 F5       

; Name	:
	TAX			; C4F4  AA             
	LDA $62			; C4F5  A5 62          
	LSR A			; C4F7  4A             
	PHA			; C4F8  48             
	JSR $F568		; C4F9  20 68 F5       
	LDA $9C49,X		; C4FC  BD 49 9C       
	STA $14			; C4FF  85 14          
	LDA $9C4A,X		; C501  BD 4A 9C       
	STA $15			; C504  85 15          
	PLA			; C506  68             
	JMP $F570		; C507  4C 70 F5       

;$C50A
.byte $aa,$a5,$62,$4a,$48,$20
.byte $68,$f5,$bd,$71,$9c,$85,$14,$bd,$72,$9c,$85,$15,$68,$4c,$70,$f5
.byte $aa,$a5,$62,$4a,$48,$20,$68,$f5,$bd,$99,$9c,$85,$14,$bd,$9a,$9c
.byte $85,$15,$68,$4c,$70,$f5

; Name	:
; A	:
	TAX			; C536  AA             
	LDA $62			; C537  A5 62          
	LSR A			; C539  4A             
	PHA			; C53A  48             
	LDA #$9C		; C53B  A9 9C          
	STA $10			; C53D  85 10          
	LDA #$B5		; C53F  A9 B5          
	STA $11			; C541  85 11		$10+ = $B59C
	JMP $C5D5		; C543  4C D5 C5       

; Name	:
	CMP #$09		; C546  C9 09          
	BCC BEC54C		; C548  90 02          
	LDA #$09		; C54A  A9 09          
BEC54C:
	TAX			; C54C  AA             
	LDA $62			; C54D  A5 62          
	LSR A			; C54F  4A             
	PHA			; C550  48             
	LDA #$35		; C551  A9 35          
	STA $10			; C553  85 10          
	LDA #$98		; C555  A9 98          
	STA $11			; C557  85 11		BANK 08 08/9835
	JMP $C5D5		; C559  4C D5 C5       

; Name	:
	TAX			; C55C  AA             
	LDA $62			; C55D  A5 62          
	LSR A			; C55F  4A             
	PHA			; C560  48             
	LDA #$1C		; C561  A9 1C          
	STA $10			; C563  85 10          
	LDA #$9C		; C565  A9 9C          
	STA $11			; C567  85 11		$10+ = $9C1C
	JMP $C5D5		; C569  4C D5 C5       

; Name	:
	TAX			; C56C  AA             
	LDA $62			; C56D  A5 62          
	LSR A			; C56F  4A             
	PHA			; C570  48             
	LDA #$31		; C571  A9 31          
	STA $10			; C573  85 10          
	LDA #$9C		; C575  A9 9C          
	STA $11			; C577  85 11		$10+ = $9C31
	JMP $C5D5		; C579  4C D5 C5       

; Name	:
; Marks	: Load UNIT NAME ??
	TAX			; C57C  AA             
	LDA $62			; C57D  A5 62          
	LSR A			; C57F  4A             
	PHA			; C580  48             
	LDA #$91		; C581  A9 91          
	STA $10			; C583  85 10          
	LDA #$99		; C585  A9 99          
	STA $11			; C587  85 11		BANK 08 08/9991
	JMP $C5D5		; C589  4C D5 C5       

; Name	:
; Marks	:
	TAX			; C58C  AA             
	LDA $62			; C58D  A5 62          
	LSR A			; C58F  4A             
	PHA			; C590  48             
	LDA #$77		; C591  A9 77          
	STA $10			; C593  85 10          
	LDA #$98		; C595  A9 98          
	STA $11			; C597  85 11		BANK 08/9877
	JMP $C5D5		; C599  4C D5 C5       

;$C59C
.byte $aa,$a5,$62,$4a
.byte $48,$a9,$06,$85,$10,$a9,$99,$85,$11,$4c,$d5,$c5,$aa,$a5,$62,$4a
.byte $48,$a9,$13,$85,$10,$a9,$95,$85,$11,$e0,$29,$90,$02,$a2,$28,$4c
.byte $d5,$c5

; Name	:
; A	: Target
; Marks	:
	TAX			; C5C2  AA             
	LDA $62			; C5C3  A5 62          
	LSR A			; C5C5  4A             
	PHA			; C5C6  48             
	LDA #$09		; C5C7  A9 09          
	STA $10			; C5C9  85 10          
	LDA #$96		; C5CB  A9 96          
	STA $11			; C5CD  85 11		BANK 08/9609 - Pilot Full Name
	CPX #$29		; C5CF  E0 29          
	BCC BEC5D5		; C5D1  90 02          
	LDX #$28		; C5D3  A2 28          
; Marks	:
BEC5D5:
	JSR $F568		; C5D5  20 68 F5	BANK SWAP to PRG_ROM 8, 9
	JSR $C5F8		; C5D8  20 F8 C5	Find string address from table
	LDY #$FF		; C5DB  A0 FF          
BEC5DD:
	INY			; C5DD  C8             
	CPY #$1D		; C5DE  C0 1D          
	BCS BEC5E9		; C5E0  B0 07          
	LDA ($10),Y		; C5E2  B1 10          
	STA $00D1,Y		; C5E4  99 D1 00	Copy string from +$10 to $D1,Y
	BNE BEC5DD		; C5E7  D0 F4          
BEC5E9:
	TYA			; C5E9  98             
	TAX			; C5EA  AA             
	LDA #$00		; C5EB  A9 00		End of string is NULL data
BEC5ED:
	STA $D1,X		; C5ED  95 D1          
	INX			; C5EF  E8             
	CPX #$1E		; C5F0  E0 1E          
	BCC BEC5ED		; C5F2  90 F9          
	PLA			; C5F4  68             
	JMP $F570		; C5F5  4C 70 F5	BANK SWAP PRG_ROM

; Name	:
; X	: string number to find
; Marks	: Find specific string address
;	  Seperator character is 00h
;	  +$10 = Input address
;	  Update string address(+$10)
	CPX #$00		; C5F8  E0 00          
	BEQ BEC614		; C5FA  F0 18          
BEC5FC:
	LDY #$00		; C5FC  A0 00          
BEC5FE:
	LDA ($10),Y		; C5FE  B1 10          
	INY			; C600  C8             
	BEQ BEC607		; C601  F0 04          
	CMP #$00		; C603  C9 00          
	BNE BEC5FE		; C605  D0 F7          
BEC607:
	TYA			; C607  98             
	CLC			; C608  18             
	ADC $10			; C609  65 10          
	STA $10			; C60B  85 10          
	BCC BEC611		; C60D  90 02          
	INC $11			; C60F  E6 11          
BEC611:
	DEX			; C611  CA             
	BNE BEC5FC		; C612  D0 E8          
BEC614:
	RTS			; C614  60             

;$C615
.byte $aa,$a5,$62,$4a,$48,$20,$68,$f5,$bd,$6f,$9d
	TAY			; C620	$a8
	PLA			; C621	$68
	JSR $F570		; C622	$20 $70 $f5
	TYA			; C625	$98
	RTS			; C626	$60

;$C627
.byte $aa,$a5,$62,$4a,$48,$20,$68,$f5,$bd
.byte $a5,$9d,$4c,$20,$c6

; Name	:
	TAX			; C635  AA             
	LDA $62			; C636  A5 62          
	LSR A			; C638  4A             
	PHA			; C639  48             
	JSR $F568		; C63A  20 68 F5       
	LDA $9DDB,X		; C63D  BD DB 9D       
	JMP $C620		; C640  4C 20 C6       

;$C643
.byte $aa,$a5,$62,$4a,$48,$20,$68,$f5,$bd,$47,$9e,$4c,$20
.byte $c6,$aa,$a5,$62,$4a,$48,$20,$68,$f5,$bd,$11,$9e,$4c,$20,$c6,$aa
.byte $a5,$62,$4a,$48,$20,$68,$f5,$bd,$0e,$9b,$4c,$20,$c6,$aa,$a5,$62
.byte $4a,$48,$20,$68,$f5,$bd,$7d,$9e,$4c,$20,$c6,$aa,$a5,$62,$4a,$48
.byte $20,$68,$f5,$bd,$9b,$af,$aa,$bd,$d1,$af,$85,$14,$bd,$d2,$af,$85
.byte $15,$68,$4c,$70,$f5,$aa,$a5,$62,$4a,$48,$20,$68,$f5,$8a,$0a,$0a
.byte $aa,$bd,$44,$9b,$8d,$50,$04,$bd,$45,$9b,$8d,$51,$04,$bd,$46,$9b
.byte $8d,$52,$04,$bd,$47,$9b,$8d,$53,$04,$68,$4c,$70,$f5,$ad,$60,$05
.byte $49,$ff,$8d,$60,$05,$f0,$04,$a9,$12,$d0,$06,$ae,$13,$62,$bd,$c7
.byte $d6,$85,$92,$20,$d0,$d4,$4c,$ef,$c2,$20,$2b,$f3,$a9,$6c,$85,$44
.byte $a9,$01,$85,$26,$a9,$80,$85,$5a,$a2,$04,$a0,$01,$84,$27,$86,$5d
.byte $e8,$86,$5e,$e8,$86,$5f,$a6,$92,$bd,$92,$d7,$85,$60,$a2,$1a,$86
;$C700
.byte $5b,$e8,$e8,$86,$5c,$20,$68,$f5,$a5,$92,$0a,$aa,$bd,$3c,$a4,$85
.byte $10,$bd,$3d,$a4,$85,$11,$ad,$02,$20,$a9,$20,$8d,$06,$20,$a9,$00
.byte $8d,$06,$20,$20,$da,$f6,$20,$6e,$f5,$ad,$02,$20,$a9,$21,$8d,$06
.byte $20,$a9,$c0,$8d,$06,$20,$20,$8f,$fc,$a9,$21,$85,$2d,$a9,$e0,$85
.byte $2c,$20,$82,$f9,$a5,$92,$20,$8c,$c5,$a9,$d1,$85,$10,$a9,$00,$85
.byte $11,$a9,$02,$85,$12,$a9,$03,$85,$13,$20,$59,$f4,$a9,$22,$85,$12
.byte $a9,$03,$85,$13,$20,$20,$f4,$a9,$1d,$a0,$c8,$20,$09,$fb,$20,$b6
.byte $ca,$a9,$3c,$a0,$c8,$20,$09,$fb,$a6,$92,$bd,$61,$62,$85,$18,$bd
.byte $77,$62,$85,$19,$20,$84,$f8,$a0,$04,$b9,$50,$04,$99,$26,$03,$88
.byte $10,$f7,$20,$b6,$ca,$a9,$5b,$a0,$c8,$20,$09,$fb,$a6,$92,$bd,$8d
.byte $62,$85,$19,$a9,$fa,$85,$16,$20,$7b,$fd,$a0,$07,$b9,$50,$04,$99
.byte $27,$03,$88,$10,$f7,$20,$b6,$ca,$20,$9f,$fc,$20,$ca,$d5,$a6,$92
.byte $bd,$a8,$d7,$a8,$b9,$be,$d7,$8d,$c9,$03,$b9,$bf,$d7,$8d,$ca,$03
.byte $a9,$30,$8d,$cb,$03,$a6,$92,$bd,$a3,$62,$aa,$bd,$c2,$d6,$8d,$c5
.byte $03,$a9,$2a,$8d,$c6,$03,$a9,$30,$8d,$c7,$03,$8d,$cf,$03,$a9,$00
.byte $8d,$cd,$03,$a9,$10,$8d,$ce,$03,$a9,$01,$85,$2f,$ad,$02,$20,$a9
;$C800
.byte $23,$8d,$06,$20,$a9,$c0,$8d,$06,$20,$a0,$00,$b9,$7c,$c8,$8d,$07
.byte $20,$c8,$c0,$40,$d0,$f5,$58,$20,$4a,$f3,$4c,$46,$f3,$00,$03,$33
.byte $81,$34,$6d,$35,$73,$36,$98,$37,$6d,$38,$73,$3a,$76,$3b,$9d,$3c
.byte $80,$3d,$72,$00,$47,$20,$47,$1f,$48,$3f,$48,$ff,$00,$03,$22,$ea
.byte $23,$eb,$2b,$30,$2c,$5c,$33,$00,$34,$00,$35,$00,$36,$00,$37,$00
.byte $39,$00,$3a,$00,$3b,$00,$3c,$00,$3d,$00,$ff,$00,$03,$02,$de,$22
.byte $8e,$23,$73,$24,$74,$25,$72,$33,$00,$34,$00,$35,$00,$36,$00,$37
.byte $00,$39,$00,$3a,$00,$3b,$00,$3c,$00,$3d,$00,$ff,$aa,$aa,$aa,$aa
.byte $ff,$ff,$ff,$ff,$aa,$aa,$aa,$aa,$ff,$ff,$ff,$ff,$aa,$aa,$aa,$aa
.byte $ff,$ff,$ff,$ff,$5a,$5a,$5a,$5a,$5f,$5f,$5f,$5f,$55,$55,$55,$55
.byte $55,$55,$55,$55,$05,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$a9,$00,$20,$d4
.byte $c8,$a9,$01,$20,$d4,$c8,$a9,$02,$20,$d4,$c8,$a9,$03,$20,$d4,$c8
.byte $20,$d0,$f3,$60,$85,$02,$0a,$0a,$aa,$86,$03,$bd,$69,$63,$c5,$92
.byte $d0,$29,$a2,$20,$a5,$02,$4a,$90,$02,$a2,$30,$8a,$a6,$88,$9d,$01
.byte $02,$a5,$02,$4a,$9d,$02,$02,$a4,$02,$b9,$af,$c9,$9d,$00,$02,$b9
;$C900
.byte $ab,$c9,$9d,$03,$02,$e8,$e8,$e8,$e8,$86,$88,$a6,$03,$bd,$6a,$63
.byte $c5,$92,$d0,$2c,$a2,$21,$a5,$02,$4a,$90,$02,$a2,$31,$8a,$a6,$88
.byte $9d,$01,$02,$a5,$02,$4a,$9d,$02,$02,$a4,$02,$b9,$af,$c9,$9d,$00
.byte $02,$b9,$ab,$c9,$18,$69,$09,$9d,$03,$02,$e8,$e8,$e8,$e8,$86,$88
.byte $a6,$03,$bd,$6b,$63,$c5,$92,$d0,$2c,$a2,$22,$a5,$02,$4a,$90,$02
.byte $a2,$32,$8a,$a6,$88,$9d,$01,$02,$a5,$02,$4a,$9d,$02,$02,$a4,$02
.byte $b9,$af,$c9,$9d,$00,$02,$b9,$ab,$c9,$18,$69,$12,$9d,$03,$02,$e8
.byte $e8,$e8,$e8,$86,$88,$a6,$03,$bd,$6c,$63,$c5,$92,$d0,$2c,$a2,$23
.byte $a5,$02,$4a,$90,$02,$a2,$33,$8a,$a6,$88,$9d,$01,$02,$a5,$02,$4a
.byte $9d,$02,$02,$a4,$02,$b9,$af,$c9,$9d,$00,$02,$b9,$ab,$c9,$18,$69
.byte $1b,$9d,$03,$02,$e8,$e8,$e8,$e8,$86,$88,$60,$9a,$9a,$ca,$ca,$8f
.byte $9f,$8f,$9f

; Name	:
	LDX #$01		; C9B3  A2 01          
BEC9B5:
	LDA $6219,X		; C9B5  BD 19 62       
	BPL BEC9BD		; C9B8  10 03          
	INX			; C9BA  E8             
	BNE BEC9B5		; C9BB  D0 F8          
BEC9BD:
	STX $6213		; C9BD  8E 13 62       
	RTS			; C9C0  60             

;$C9C1
.byte $20,$dd,$c4,$a9,$00,$85,$90,$20,$d9,$c6,$20,$ef,$c2,$a9,$04
.byte $85,$91,$a9,$04,$85,$8f,$a9,$48,$85,$10,$a9,$83,$85,$11,$20,$ed
.byte $fa,$20,$07,$80,$a5,$90,$30,$2b,$ae,$13,$62,$ca,$8a,$0a,$0a,$18
.byte $65,$90,$a8,$b9,$69,$63,$c5,$92,$f0,$06,$20,$e6,$f2,$4c,$e1,$c9
;$CA00
.byte $a5,$90,$85,$93,$84,$94,$a5,$90,$48,$20,$17,$ca,$68,$85,$90,$a5
.byte $9d,$f0,$b5,$20,$c8,$f3,$60,$ad,$13,$62,$85,$95,$a9,$00,$85,$9d
.byte $20,$dd,$c4,$20,$6f,$98,$a9,$00,$85,$90,$a9,$08,$85,$91,$a6,$94
.byte $bd,$59,$63,$29,$20,$f0,$17,$a9,$02,$85,$8f,$a9,$b2,$85,$12,$a9
.byte $ca,$85,$13,$a9,$84,$85,$10,$a9,$89,$85,$11,$4c,$62,$ca,$a9,$04
.byte $85,$8f,$a9,$aa,$85,$12,$a9,$ca,$85,$13,$a9,$44,$85,$10,$a9,$84
.byte $85,$11,$20,$9f,$f9,$a5,$93,$18,$69,$31,$8d,$12,$03,$20,$f0,$fa
.byte $20,$07,$80,$a5,$90,$30,$2c,$a6,$94,$bd,$59,$63,$30,$07,$a5,$95
.byte $cd,$13,$62,$f0,$06,$20,$e6,$f2,$4c,$2a,$ca,$a5,$90,$48,$0a,$a8
.byte $b1,$12,$85,$66,$c8,$b1,$12,$85,$67,$20,$96,$f5,$68,$85,$90,$a5
.byte $9d,$f0,$87,$20,$ca,$d5,$20,$ef,$f4,$60,$2e,$ab,$33,$af,$16,$9d
.byte $0c,$d0,$2e,$ab,$b7,$ae

; Name	:
	LDA #$00		; CAB6  A9 00          
	STA $10			; CAB8  85 10          
	LDA #$03		; CABA  A9 03          
	STA $11			; CABC  85 11          
	LDA #$40		; CABE  A9 40          
	STA $00			; CAC0  85 00          
	JSR $F9D2		; CAC2  20 D2 F9	Convert table
	LDA PpuStatus_2002	; CAC5  AD 02 20       
	LDA $2D			; CAC8  A5 2D          
	STA PpuAddr_2006	; CACA  8D 06 20       
	LDA $2C			; CACD  A5 2C          
	STA PpuAddr_2006	; CACF  8D 06 20       
	LDX #$00		; CAD2  A2 00          
	JSR $F0A4		; CAD4  20 A4 F0	Apply
	CLC			; CAD7  18             
	LDA $2C			; CAD8  A5 2C          
	ADC #$40		; CADA  69 40          
	STA $2C			; CADC  85 2C          
	LDA $2D			; CADE  A5 2D          
	ADC #$00		; CAE0  69 00          
	STA $2D			; CAE2  85 2D          
	JSR $F982		; CAE4  20 82 F9	Reset 2-line tile
.if ORIGINAL
	LDA #$47		; CAE7  A9 47		Left textbox line
.else
	LDA #T_LTL
.endif
	STA $0300		; CAE9  8D 00 03       
	STA $0320		; CAEC  8D 20 03       
.if ORIGINAL
	LDA #$48		; CAEF  A9 48		Right textbox line
.else
	LDA #T_RTL
.endif
	STA $031F		; CAF1  8D 1F 03       
	STA $033F		; CAF4  8D 3F 03       
	RTS			; CAF7  60             

; Name	:
	LDA #$20		; CAF8  A9 20          
	STA $10			; CAFA  85 10          
	LDA #$03		; CAFC  A9 03          
	STA $11			; CAFE  85 11          
	LDA #$20		; CB00  A9 20          
	STA $00			; CB02  85 00          
	JSR $F9D2		; CB04  20 D2 F9       
	LDA PpuStatus_2002	; CB07  AD 02 20       
	LDA $2D			; CB0A  A5 2D          
	STA PpuAddr_2006	; CB0C  8D 06 20       
	LDA $2C			; CB0F  A5 2C          
	STA PpuAddr_2006	; CB11  8D 06 20       
	JSR $F164		; CB14  20 64 F1       
	CLC			; CB17  18             
	LDA $2C			; CB18  A5 2C          
	ADC #$20		; CB1A  69 20          
	STA $2C			; CB1C  85 2C          
	LDA $2D			; CB1E  A5 2D          
	ADC #$00		; CB20  69 00          
	STA $2D			; CB22  85 2D          
	JSR $F982		; CB24  20 82 F9       
	LDA #$47		; CB27  A9 47          
	STA $0300		; CB29  8D 00 03       
	STA $0320		; CB2C  8D 20 03       
	LDA #$48		; CB2F  A9 48          
	STA $031F		; CB31  8D 1F 03       
	STA $033F		; CB34  8D 3F 03       
	RTS			; CB37  60             

	LDX #$20		; CB38  A2 20          
	LDY #$01                ; CB3A  A0 01          
	LDA $0560		; CB3C  AD 60 05       
	BEQ BECB43		; CB3F  F0 02          
	LDY #$0E		; CB41  A0 0E          
BECB43:
	LDA #$00		; CB43  A9 00          
	STA $00			; CB45  85 00          
	LDA $621A		; CB47  AD 1A 62       
	BMI BECB54		; CB4A  30 08          
	LDA $04B0,Y		; CB4C  B9 B0 04       
	BEQ BECB54		; CB4F  F0 03          
	JSR $CB8D		; CB51  20 8D CB       
BECB54:
	INC $00			; CB54  E6 00          
	LDA $621B		; CB56  AD 1B 62       
	BMI BECB63		; CB59  30 08          
	LDA $04C6,Y		; CB5B  B9 C6 04       
	BEQ BECB63		; CB5E  F0 03          
	JSR $CB8D		; CB60  20 8D CB       
BECB63:
	INC $00			; CB63  E6 00          
	LDA $621C		; CB65  AD 1C 62       
	BMI BECB72		; CB68  30 08          
	LDA $04DC,Y		; CB6A  B9 DC 04       
	BEQ BECB72		; CB6D  F0 03          
	JSR $CB8D		; CB6F  20 8D CB       
BECB72:
	INC $00			; CB72  E6 00          
	LDA $621D		; CB74  AD 1D 62       
	BMI BECB81		; CB77  30 08          
	LDA $04F2,Y		; CB79  B9 F2 04       
	BEQ BECB81		; CB7C  F0 03          
	JSR $CB8D		; CB7E  20 8D CB       
BECB81:
	INY			; CB81  C8             
	CPY #$0E		; CB82  C0 0E          
	BEQ BECB8A		; CB84  F0 04          
	CPY #$16		; CB86  C0 16          
	BNE BECB43		; CB88  D0 B9          
BECB8A:
	JMP $F3D0		; CB8A  4C D0 F3       

; Name	:
	STY $01			; CB8D  84 01          
	CLC			; CB8F  18             
	ADC #$0F		; CB90  69 0F          
	STA $0201,X		; CB92  9D 01 02       
	LDA $00			; CB95  A5 00          
	LSR A			; CB97  4A             
	BCC BECBA2		; CB98  90 08          
	LDA #$03		; CB9A  A9 03          
	ADC $0201,X		; CB9C  7D 01 02       
	STA $0201,X		; CB9F  9D 01 02       
BECBA2:
	LDA $D724,Y		; CBA2  B9 24 D7       
	LDY $00			; CBA5  A4 00          
	CLC			; CBA7  18             
	ADC $CBCD,Y		; CBA8  79 CD CB       
	STA $0200,X		; CBAB  9D 00 02       
	LDY $01			; CBAE  A4 01          
	LDA $D70E,Y		; CBB0  B9 0E D7       
	LDY $00			; CBB3  A4 00          
	CLC			; CBB5  18             
	ADC $CBD1,Y		; CBB6  79 D1 CB       
	STA $0203,X		; CBB9  9D 03 02       
	LDA $CBC9,Y		; CBBC  B9 C9 CB       
	STA $0202,X		; CBBF  9D 02 02       
	INX			; CBC2  E8             
	INX			; CBC3  E8             
	INX			; CBC4  E8             
	INX			; CBC5  E8             
	LDY $01			; CBC6  A4 01          
	RTS			; CBC8  60             

;$CBC9 - data block =
.byte $00,$c0,$41,$81,$08,$00,$08
.byte $00,$00,$08,$08,$00
	LDA #$14		; CBD5  A9 14          
	STA $88			; CBD7  85 88          
	LDX #$01		; CBD9  A2 01          
	LDA $0560		; CBDB  AD 60 05       
	BEQ BECBE2		; CBDE  F0 02          
	LDX #$0E		; CBE0  A2 0E          
BECBE2:
	STX $00			; CBE2  86 00          
	LDY $62A3,X		; CBE4  BC A3 62       
	BEQ BECBFE		; CBE7  F0 15          
	DEY			; CBE9  88             
	STY $8B			; CBEA  84 8B          
	LDA $D6CC,X		; CBEC  BD CC D6       
	STA $8C			; CBEF  85 8C          
	LDA $D6E2,X		; CBF1  BD E2 D6       
	STA $89			; CBF4  85 89          
	LDA $D6F8,X		; CBF6  BD F8 D6       
	STA $01			; CBF9  85 01          
	JSR $CC0C               ; CBFB  20 0C CC       
BECBFE:
	LDX $00			; CBFE  A6 00          
	INX			; CC00  E8             
	CPX #$0E		; CC01  E0 0E          
	BEQ BECC09		; CC03  F0 04          
	CPX #$16		; CC05  E0 16          
	BNE BECBE2		; CC07  D0 D9          
BECC09:
	JMP $F3D0		; CC09  4C D0 F3       

; Name	:
	LDX $88			; CC0C  A6 88          
BECC0E:
	LDA $89			; CC0E  A5 89          
	STA $0200,X		; CC10  9D 00 02       
	INX			; CC13  E8             
	LDA #$06		; CC14  A9 06          
	STA $0200,X		; CC16  9D 00 02       
	LDA $8B			; CC19  A5 8B          
	LSR A			; CC1B  4A             
	BCC BECC21		; CC1C  90 03          
	INC $0200,X		; CC1E  FE 00 02       
BECC21:
	INX			; CC21  E8             
	LDA $8B			; CC22  A5 8B          
	LSR A			; CC24  4A             
	ORA #$20		; CC25  09 20          
	STA $0200,X		; CC27  9D 00 02       
	INX			; CC2A  E8             
	LDA $8C			; CC2B  A5 8C          
	STA $0200,X		; CC2D  9D 00 02       
	INX			; CC30  E8             
	CLC			; CC31  18             
	ADC #$08		; CC32  69 08          
	STA $8C			; CC34  85 8C          
	DEC $01			; CC36  C6 01          
	BNE BECC0E		; CC38  D0 D4          
	STX $88			; CC3A  86 88          
	RTS			; CC3C  60             

;$CC3D
.byte $a2,$20,$a9
.byte $f0,$9d,$00,$02,$e8,$e0,$c0,$90,$f8,$a5,$24,$29,$10,$f0,$03,$4c
.byte $94,$cc,$a9,$20,$85,$88,$a5,$92,$0a,$aa,$bd,$88,$d8,$85,$10,$bd
.byte $89,$d8,$85,$11,$bd,$b2,$d8,$85,$14,$bd,$b3,$d8,$85,$15,$a0,$15
.byte $84,$00,$be,$a3,$62,$f0,$15,$b1,$10,$f0,$11,$ca,$86,$8b,$85,$8c
.byte $b1,$14,$85,$89,$b9,$f8,$d6,$85,$01,$20,$0c,$cc,$a4,$00,$88,$d0
.byte $df,$4c,$bc,$c8,$a9,$20,$85,$88,$a5,$92,$0a,$aa,$bd,$78,$dc,$85
.byte $10,$bd,$79,$dc,$85,$11,$bd,$a2,$dc,$85,$14,$bd,$a3,$dc,$85,$15
.byte $a0,$15,$84,$02,$a9,$00,$85,$00,$ad,$1a,$62,$30,$08,$b9,$b0,$04
.byte $f0,$03,$20,$fa,$cc,$e6,$00,$ad,$1b,$62,$30,$08,$b9,$c6,$04,$f0
.byte $03,$20,$fa,$cc,$e6,$00,$ad,$1c,$62,$30,$08,$b9,$dc,$04,$f0,$03
.byte $20,$fa,$cc,$e6,$00,$ad,$1d,$62,$30,$08,$b9,$f2,$04,$f0,$03,$20
.byte $fa,$cc,$a4,$02,$88,$d0,$bb,$4c,$bc,$c8,$a6,$88,$84,$01,$18,$69
;$CD00
.byte $0f,$9d,$01,$02,$a5,$00,$4a,$90,$08,$bd,$01,$02,$69,$03,$9d,$01
.byte $02,$b1,$14,$f0,$24,$a4,$00,$18,$79,$40,$cd,$9d,$00,$02,$a4,$01
.byte $b1,$10,$f0,$15,$a4,$00,$18,$79,$44,$cd,$9d,$03,$02,$b9,$3c,$cd
.byte $9d,$02,$02,$e8,$e8,$e8,$e8,$86,$88,$a4,$01,$60,$00,$c0,$41,$81
.byte $08,$00,$08,$00,$00,$08,$08,$00

; Name	:
	LDA $D6C3		; CD48  AD C3 D6       
	STA $03C1		; CD4B  8D C1 03       
	LDA $D6C4		; CD4E  AD C4 D6       
	STA $03C5		; CD51  8D C5 03       
	LDA $D6C5		; CD54  AD C5 D6       
	STA $03C9		; CD57  8D C9 03       
	LDA $D6C6		; CD5A  AD C6 D6       
	STA $03CD		; CD5D  8D CD 03       
	LDA #$30		; CD60  A9 30          
	STA $03C3		; CD62  8D C3 03       
	STA $03C7		; CD65  8D C7 03       
	STA $03CB		; CD68  8D CB 03       
	STA $03CF		; CD6B  8D CF 03       
	LDA #$2A		; CD6E  A9 2A          
	STA $03C2		; CD70  8D C2 03       
	STA $03C6		; CD73  8D C6 03       
	STA $03CA		; CD76  8D CA 03       
	STA $03CE		; CD79  8D CE 03       
	LDA #$01		; CD7C  A9 01          
	STA $2F			; CD7E  85 2F          
	RTS			; CD80  60             

;$CD81
.byte $aa,$a5,$62,$4a,$48,$20,$68,$f5,$e0,$29,$90,$02,$a2,$28,$bd
.byte $1e,$d6,$a8,$68,$4c,$70,$f5,$20,$5f,$f9,$a9,$ed,$a0,$cd,$20,$09
.byte $fb,$ae,$13,$62,$bd,$22,$62,$85,$18,$bd,$26,$62,$85,$19,$bd,$2a
.byte $62,$85,$00,$20,$c3,$f8,$a0,$05,$b9,$50,$04,$99,$14,$03,$88,$10
.byte $f7,$a5,$a2,$30,$1c,$85,$00,$a5,$a0,$85,$18,$a5,$a1,$85,$19,$20
.byte $c3,$f8,$a0,$05,$b9,$50,$04,$99,$30,$03,$88,$10,$f7,$20,$fe,$fa
.byte $60,$a9,$2d,$a0,$05,$99,$30,$03,$88,$10,$fa,$30,$f0,$00,$03,$0f
.byte $75,$10,$e8,$1a,$5c,$36,$5c,$2b,$8b,$2c,$96,$2d,$73,$ff,$48,$8a
;$CE00
.byte $4a,$4a,$18,$69,$01,$cd,$13,$62,$f0,$03,$68,$18,$60,$68,$38,$60

; Name	:
	PHA			; CE10  48             
	TXA			; CE11  8A             
	AND #$0C		; CE12  29 0C          
	STA $00			; CE14  85 00          
	TYA			; CE16  98             
	AND #$0C		; CE17  29 0C          
	CMP $00			; CE19  C5 00          
	BEQ BECE20		; CE1B  F0 03          
	PLA			; CE1D  68             
	CLC			; CE1E  18             
	RTS			; CE1F  60             
BECE20:
	PLA			; CE20  68             
	SEC			; CE21  38             
	RTS			; CE22  60             

;$CE23
.byte $a6,$a6,$bd,$08,$05,$8d,$58,$04,$bd,$1e,$05,$8d,$59
.byte $04,$bd,$34,$05,$8d,$5a,$04,$bd,$4a,$05,$8d,$5b,$04,$ae,$13,$62
.byte $a9,$00,$9d,$57,$04,$60,$a5,$62,$4a,$48,$20,$65,$f5,$20,$27,$8c
.byte $20,$6e,$f5,$20,$a1,$86,$68,$4c,$70,$f5,$a5,$62,$4a,$48,$ad,$64
.byte $05,$d0,$33,$ad,$11,$62,$29,$01,$f0,$2c,$a9,$06,$20,$86,$f2,$20
.byte $16,$d4,$a5,$a4,$c9,$80,$d0,$0c,$20,$62,$f5,$20,$03,$94,$20,$55
.byte $c0,$4c,$96,$ce,$20,$5f,$f5,$20,$83,$95,$20,$62,$f5,$20,$16,$d4
.byte $20,$4b,$94,$20,$55,$c0,$68,$4c,$70,$f5,$a5,$62,$4a,$48,$20,$68
.byte $f5,$a9,$de,$85,$12,$a9,$02,$85,$13,$a0,$24,$d0,$11,$a5,$62,$4a
.byte $48,$20,$68,$f5,$a9,$22,$85,$12,$a9,$03,$85,$13,$a0,$00,$a9,$03
.byte $85,$00,$a2,$0c,$b1,$14,$91,$12,$c8,$ca,$d0,$f8,$18,$a5,$12,$69
.byte $14,$85,$12,$a5,$13,$69,$00,$85,$13,$c6,$00,$d0,$e5,$68,$4c,$70
.byte $f5,$a6,$94,$bd,$59,$63,$09,$80,$9d,$59,$63,$60

; Name	:
	LDA #$0F		; CEEC  A9 0F          
	STA $94			; CEEE  85 94          
	LSR A			; CEF0  4A             
	LSR A			; CEF1  4A             
	STA $95			; CEF2  85 95          
	LDX $95			; CEF4  A6 95          
	LDA $6243,X		; CEF6  BD 43 62       
	ASL A			; CEF9  0A             
	ASL A			; CEFA  0A             
	ASL A			; CEFB  0A             
	JSR $C4F4		; CEFC  20 F4 C4       
	LDY #$00		; CEFF  A0 00          
	JSR $C4E5		; CF01  20 E5 C4       
	LDA $9B			; CF04  A5 9B          
	LDX $94			; CF06  A6 94          
	STA $6379,X		; CF08  9D 79 63       
	STA $6378,X		; CF0B  9D 78 63       
	STA $6377,X		; CF0E  9D 77 63       
	STA $6376,X		; CF11  9D 76 63       
	JSR $C635		; CF14  20 35 C6       
	LDX $94			; CF17  A6 94          
	STA $6389,X		; CF19  9D 89 63       
	STA $6388,X		; CF1C  9D 88 63       
	STA $6387,X		; CF1F  9D 87 63       
	STA $6386,X		; CF22  9D 86 63       
	LDX $95			; CF25  A6 95          
	LDA $6243,X		; CF27  BD 43 62       
	ASL A			; CF2A  0A             
	ASL A			; CF2B  0A             
	ASL A			; CF2C  0A             
	ADC #$02		; CF2D  69 02          
	JSR $C4F4		; CF2F  20 F4 C4       
	LDY #$00		; CF32  A0 00          
	JSR $C4E5		; CF34  20 E5 C4       
	LDA $9B			; CF37  A5 9B          
	LDX $94			; CF39  A6 94          
	STA $6399,X		; CF3B  9D 99 63       
	STA $6398,X		; CF3E  9D 98 63       
	STA $6397,X		; CF41  9D 97 63       
	STA $6396,X		; CF44  9D 96 63       
	LDA #$28		; CF47  A9 28          
	LDX $94			; CF49  A6 94          
	STA $63A9,X		; CF4B  9D A9 63       
	STA $63A8,X		; CF4E  9D A8 63       
	STA $63A7,X		; CF51  9D A7 63       
	STA $63A6,X		; CF54  9D A6 63       
	LDX $95			; CF57  A6 95          
	LDA $6243,X		; CF59  BD 43 62       
	ASL A			; CF5C  0A             
	ASL A			; CF5D  0A             
	ASL A			; CF5E  0A             
	ADC #$04		; CF5F  69 04          
	JSR $C4F4		; CF61  20 F4 C4       
	LDY #$00		; CF64  A0 00          
	JSR $C4E5		; CF66  20 E5 C4       
	LDA $9B			; CF69  A5 9B          
	LDX $94			; CF6B  A6 94          
	STA $63B9,X		; CF6D  9D B9 63       
	STA $63B8,X		; CF70  9D B8 63       
	STA $63B7,X		; CF73  9D B7 63       
	STA $63B6,X		; CF76  9D B6 63       
	JSR $C635		; CF79  20 35 C6       
	LDX $94			; CF7C  A6 94          
	STA $63C9,X		; CF7E  9D C9 63       
	STA $63C8,X		; CF81  9D C8 63       
	STA $63C7,X		; CF84  9D C7 63       
	STA $63C6,X		; CF87  9D C6 63       
	LDX $95			; CF8A  A6 95          
	LDA $6243,X		; CF8C  BD 43 62       
	ASL A			; CF8F  0A             
	ASL A			; CF90  0A             
	ASL A			; CF91  0A             
	ADC #$06		; CF92  69 06          
	JSR $C4F4		; CF94  20 F4 C4       
	LDY #$00		; CF97  A0 00          
	JSR $C4E5		; CF99  20 E5 C4       
	LDA $9B			; CF9C  A5 9B          
	LDX $94			; CF9E  A6 94          
	STA $63D9,X		; CFA0  9D D9 63       
	STA $63D8,X		; CFA3  9D D8 63       
	STA $63D7,X		; CFA6  9D D7 63       
	STA $63D6,X		; CFA9  9D D6 63       
	LDA #$C8		; CFAC  A9 C8          
	LDX $94			; CFAE  A6 94          
	STA $63E9,X		; CFB0  9D E9 63       
	STA $63E8,X		; CFB3  9D E8 63       
	STA $63E7,X		; CFB6  9D E7 63       
	STA $63E6,X		; CFB9  9D E6 63       
	LDA #$00		; CFBC  A9 00          
	STA $6359,X		; CFBE  9D 59 63       
	STA $6358,X		; CFC1  9D 58 63       
	STA $6357,X		; CFC4  9D 57 63       
	STA $6356,X		; CFC7  9D 56 63       
	LDY $95			; CFCA  A4 95          
	LDA $D6C8,Y		; CFCC  B9 C8 D6       
	STA $6369,X		; CFCF  9D 69 63       
	STA $6368,X		; CFD2  9D 68 63       
	STA $6367,X		; CFD5  9D 67 63       
	STA $6366,X		; CFD8  9D 66 63       
	LDA $94			; CFDB  A5 94          
	SEC			; CFDD  38             
	SBC #$04		; CFDE  E9 04          
	BCC BECFE5		; CFE0  90 03          
	JMP $CEEE		; CFE2  4C EE CE       
BECFE5:
	RTS			; CFE5  60             

;$CFE6
.byte $a9,$c8,$85,$8a,$a9,$d0,$85,$8c,$a9,$bf
.byte $85,$89,$a9,$02,$85,$8b,$a9,$c0,$85,$88,$20,$4f,$fb,$a2,$02,$a0
;$D000
.byte $18,$20,$01,$d4,$a9,$01,$85,$2f,$20,$d0,$f3,$60,$20,$6b,$f5,$20
.byte $d6,$b8,$4c,$6e,$f5,$ae,$13,$62,$86,$ae,$bd,$3e,$62,$8d,$81,$61
.byte $bd,$1a,$f9,$85,$00,$a5,$93,$85,$aa,$a6,$94,$86,$ac,$bc,$70,$04
.byte $84,$b0,$b9,$23,$f9,$18,$65,$00,$85,$b4,$bc,$80,$04,$84,$b2,$b9
.byte $23,$f9,$18,$65,$00,$85,$b6,$a5,$a6,$85,$a7,$60,$a5,$ad,$29,$03
.byte $85,$ab,$a5,$ad,$4a,$4a,$18,$69,$01,$85,$af,$aa,$bd,$3e,$62,$8d
.byte $82,$61,$bd,$1a,$f9,$85,$00,$a6,$ad,$bc,$70,$04,$84,$b1,$b9,$23
.byte $f9,$18,$65,$00,$85,$b5,$bc,$80,$04,$84,$b3,$b9,$23,$f9,$18,$65
.byte $00,$85,$b7,$60,$20,$15,$d0,$a6,$a6,$86,$a7,$86,$ad,$bd,$a3,$62
.byte $85,$af,$f0,$04,$aa,$bd,$3e,$62,$8d,$82,$61,$60,$20,$23,$ce,$a0
.byte $03,$a9,$00,$18,$79,$58,$04,$88,$10,$f9,$85,$a4,$a6,$a6,$bd,$a3
.byte $62,$cd,$13,$62,$f0,$06,$a9,$80,$05,$a4,$85,$a4,$60,$a6,$8a,$ad
.byte $0a,$62,$cd,$06,$62,$90,$27,$d0,$03,$0a,$90,$22,$bd,$50,$d1,$a8
.byte $8c,$01,$02,$c8,$8c,$05,$02,$c8,$8c,$09,$02,$18,$69,$10,$a8,$8c
.byte $0d,$02,$c8,$8c,$11,$02,$c8,$8c,$15,$02,$a9,$02,$d0,$20,$bd,$56
.byte $d1,$a8,$8c,$01,$02,$88,$8c,$05,$02,$88,$8c,$09,$02,$18,$69,$10
;$D100
.byte $a8,$8c,$0d,$02,$88,$8c,$11,$02,$88,$8c,$15,$02,$a9,$42,$8d,$02
.byte $02,$8d,$06,$02,$8d,$0a,$02,$8d,$0e,$02,$8d,$12,$02,$8d,$16,$02
.byte $a5,$8a,$0a,$0a,$aa,$a0,$00,$bd,$38,$d1,$99,$d8,$03,$e8,$c8,$c0
.byte $04,$90,$f4,$a9,$01,$85,$2f,$60,$0f,$1b,$15,$30,$0f,$08,$19,$29
.byte $0f,$1b,$15,$30,$0f,$05,$16,$26,$0f,$07,$14,$24,$0f,$05,$16,$26
.byte $27,$47,$2a,$4a,$2d,$4d,$29,$49,$2c,$4c,$2f,$4f,$20,$74,$d1,$ad
.byte $ff,$61,$30,$0c,$20,$56,$e7,$20,$9f,$d1,$20,$d0,$f3,$4c,$5f,$d1
.byte $20,$74,$d1,$60,$a9,$00,$85,$24,$a9,$f0,$8d,$00,$02,$8d,$04,$02
.byte $8d,$08,$02,$8d,$0c,$02,$8d,$10,$02,$8d,$14,$02,$a5,$24,$29,$08
.byte $d0,$03,$20,$9f,$d1,$20,$d0,$f3,$a5,$24,$c9,$30,$90,$da,$60,$ad
.byte $0a,$62,$8d,$03,$02,$8d,$0f,$02,$18,$69,$08,$8d,$07,$02,$8d,$13
.byte $02,$18,$69,$08,$8d,$0b,$02,$8d,$17,$02,$ad,$0c,$62,$8d,$00,$02
.byte $8d,$04,$02,$8d,$08,$02,$18,$69,$08,$8d,$0c,$02,$8d,$10,$02,$8d
.byte $14,$02,$60,$a5,$62,$4a,$48,$20,$6b,$f5,$ae,$13,$62,$bd,$42,$62
.byte $aa,$bd,$6a,$e0,$20,$c3,$85,$68,$4c,$70,$f5,$a5,$62,$4a,$48,$20
.byte $6b,$f5,$a4,$95,$b9,$42,$62,$aa,$bd,$6a,$e0,$aa,$88,$98,$20,$98
;$D200
.byte $8a,$68,$4c,$70,$f5,$a5,$62,$4a,$48,$20,$6b,$f5,$a4,$95,$b9,$42
.byte $62,$aa,$bd,$6a,$e0,$aa,$88,$98,$20,$2f,$98,$68,$4c,$70,$f5,$20
.byte $6b,$f5,$20,$c8,$a0,$20,$1b,$f5,$4c,$25,$fe

; Name	:
	LDX #$03		; D22B  A2 03          
	LDY #$00		; D22D  A0 00          
BED22F:
	LDA $621A,X		; D22F  BD 1A 62       
	BEQ BED237		; D232  F0 03          
	BMI BED237		; D234  30 01          
	INY			; D236  C8             
BED237:
	DEX			; D237  CA             
	BPL BED22F		; D238  10 F5          
	CPY #$02		; D23A  C0 02          
	RTS			; D23C  60             

;$D23D
.byte $20,$6e,$f5
.byte $20,$b3,$c9,$4c,$56,$8a,$20,$dd,$c4,$a9,$00,$85,$90,$20,$ef,$c2
.byte $a9,$d8,$85,$10,$a9,$89,$85,$11,$20,$ed,$fa,$a9,$87,$85,$12,$a9
.byte $d2,$85,$13,$a9,$0a,$85,$91,$a9,$04,$85,$8f,$20,$07,$80,$a5,$90
.byte $30,$14,$48,$0a,$a8,$b1,$12,$85,$66,$c8,$b1,$12,$85,$67,$20,$96
.byte $f5,$68,$85,$90,$10,$c7,$60,$8f,$d2,$b1,$d2,$d3,$d2,$f5,$d2,$a9
.byte $2c,$85,$10,$a9,$8a,$85,$11,$20,$40,$81,$30,$14,$d0,$09,$ad,$11
.byte $62,$09,$01,$8d,$11,$62,$60,$ad,$11,$62,$29,$fe,$8d,$11,$62,$60
.byte $60,$a9,$80,$85,$10,$a9,$8a,$85,$11,$20,$40,$81,$30,$14,$d0,$09
.byte $ad,$11,$62,$09,$02,$8d,$11,$62,$60,$ad,$11,$62,$29,$fd,$8d,$11
.byte $62,$60,$60,$a9,$d4,$85,$10,$a9,$8a,$85,$11,$20,$40,$81,$30,$14
.byte $d0,$09,$ad,$11,$62,$09,$04,$8d,$11,$62,$60,$ad,$11,$62,$29,$fb
.byte $8d,$11,$62,$60,$60,$a9,$28,$85,$10,$a9,$8b,$85,$11,$20,$40,$81
;$D300
.byte $30,$1e,$d0,$0e,$ad,$11,$62,$09,$08,$8d,$11,$62,$a9,$01,$8d,$42
.byte $07,$60,$ad,$11,$62,$29,$f7,$8d,$11,$62,$a9,$04,$8d,$42,$07,$60
.byte $60,$a5,$62,$4a,$48,$20,$6b,$f5,$20,$6a,$a2,$68,$20,$70,$f5,$20
.byte $c8,$f3,$20,$d0,$f3,$20,$67,$d5,$20,$ca,$d5,$20,$ef,$f4,$60,$a5
.byte $01,$0a,$0a,$38,$e9,$04,$aa,$a9,$04,$85,$00,$20,$45,$c2,$e8,$c6
.byte $00,$d0,$f8,$60,$a2,$15,$bd,$a3,$62,$c5,$01,$d0,$08,$a9,$00,$9d
.byte $a3,$62,$9d,$4b,$62,$ca,$d0,$ee,$60
; Name	:
	JSR $F56E		; D369	$20 $6e $f5
	JSR $F32B		; D36C	$20 $2b $f3
	JSR $F3C8		; D36F	$20 $c8 $f3
	JSR $F371		; D372	$20 $71 $f3
	JSR $F536		; D375	$20 $36 $f5	DEBUG - to Continue
	JSR $F34A		; D378	$20 $4a $f3
;$D37B
.byte $20,$46,$f3,$a9,$0f
.byte $8d,$c0,$03,$8d,$c1,$03,$8d,$c2,$03,$a9,$30,$8d,$c3,$03,$a9,$01
.byte $85,$2f,$20,$dc,$f4,$a9,$ff,$85,$9e,$20,$d4,$84,$20,$6b,$f5,$a9
.byte $04,$8d,$42,$07,$60

; Name	:
	JSR $F568		; D3A5  20 68 F5       
	LDX #$03		; D3A8  A2 03          
BED3AA:
	STX $01			; D3AA  86 01          
	LDA $621A,X		; D3AC  BD 1A 62       
	BMI BED3E3		; D3AF  30 32          
	TAY			; D3B1  A8             
	LDA $F91A,Y		; D3B2  B9 1A F9       
	ASL A			; D3B5  0A             
	ASL A			; D3B6  0A             
	TAY			; D3B7  A8             
	LDX $01			; D3B8  A6 01          
	LDA $F91B,X		; D3BA  BD 1B F9       
	TAX			; D3BD  AA             
	LDA #$05		; D3BE  A9 05          
	STA $00			; D3C0  85 00          
BED3C2:
	LDA $9791,Y		; D3C2  B9 91 97       
	STA $6331,X		; D3C5  9D 31 63       
	INY			; D3C8  C8             
	LDA $9791,Y		; D3C9  B9 91 97       
	STA $62F5,X		; D3CC  9D F5 62       
	INY			; D3CF  C8             
	LDA $9791,Y		; D3D0  B9 91 97       
	STA $631D,X		; D3D3  9D 1D 63       
	INY			; D3D6  C8             
	LDA $9791,Y		; D3D7  B9 91 97       
	STA $6345,X		; D3DA  9D 45 63       
	INY			; D3DD  C8             
	INX			; D3DE  E8             
	DEC $00			; D3DF  C6 00          
	BNE BED3C2		; D3E1  D0 DF          
BED3E3:
	LDX $01			; D3E3  A6 01          
	DEX			; D3E5  CA             
	BPL BED3AA		; D3E6  10 C2          
	JSR $F56E		; D3E8  20 6E F5       
	RTS			; D3EB  60             

.if 0
                   --------sub start--------
D3EC  8A             TXA
D3ED  0A             ASL A
D3EE  AA             TAX
                   --------sub start--------
D3EF  BD C8 D7       LDA $D7C8,X
D3F2  99 C1 03       STA $03C1,Y
D3F5  BD C9 D7       LDA $D7C9,X
D3F8  99 C2 03       STA $03C2,Y
D3FB  A9 30          LDA #$30
D3FD  99 C3 03       STA $03C3,Y
D400  60             RTS
                   ----------------
                   --------sub start--------
D401  8A             TXA
D402  0A             ASL A
D403  AA             TAX
D404  BD 1A D8       LDA $D81A,X
D407  99 C1 03       STA $03C1,Y
D40A  BD 1B D8       LDA $D81B,X
D40D  99 C2 03       STA $03C2,Y
D410  A9 30          LDA #$30
D412  99 C3 03       STA $03C3,Y
D415  60             RTS
                   ----------------
                   --------sub start--------
D416  A5 B2          LDA $B2
D418  10 02          BPL $D41C
D41A  A9 28          LDA #$28
D41C  8D E7 05       STA $05E7
D41F  A5 B3          LDA $B3
D421  10 02          BPL $D425
D423  A9 28          LDA #$28
D425  8D E8 05       STA $05E8
D428  A6 AC          LDX $AC
D42A  BD B9 63       LDA $63B9,X
D42D  8D E9 05       STA $05E9
D430  A4 AD          LDY $AD
D432  B9 B9 63       LDA $63B9,Y
D435  8D EA 05       STA $05EA
D438  A6 AC          LDX $AC
D43A  A4 AD          LDY $AD
D43C  BD 79 63       LDA $6379,X
D43F  AA             TAX
D440  BD FD E0       LDA $E0FD,X
D443  8D A9 05       STA $05A9
D446  B9 79 63       LDA $6379,Y
D449  A8             TAY
D44A  B9 FD E0       LDA $E0FD,Y
D44D  8D AA 05       STA $05AA
D450  A6 AC          LDX $AC
D452  A4 AD          LDY $AD
D454  BD 99 63       LDA $6399,X
D457  AA             TAX
D458  BD FD E0       LDA $E0FD,X
D45B  8D AB 05       STA $05AB
D45E  B9 99 63       LDA $6399,Y
D461  A8             TAY
D462  B9 FD E0       LDA $E0FD,Y
D465  8D AD 05       STA $05AD
D468  A6 AC          LDX $AC
D46A  A4 AD          LDY $AD
D46C  BD A9 63       LDA $63A9,X
D46F  8D AC 05       STA $05AC
D472  B9 A9 63       LDA $63A9,Y
D475  8D AE 05       STA $05AE
D478  A6 AC          LDX $AC
D47A  A4 AD          LDY $AD
D47C  BD D9 63       LDA $63D9,X
D47F  AA             TAX
D480  BD FD E0       LDA $E0FD,X
D483  8D AF 05       STA $05AF
D486  B9 D9 63       LDA $63D9,Y
D489  A8             TAY
D48A  B9 FD E0       LDA $E0FD,Y
D48D  8D B1 05       STA $05B1
D490  A6 AC          LDX $AC
D492  A4 AD          LDY $AD
D494  BD E9 63       LDA $63E9,X
D497  8D B0 05       STA $05B0
D49A  B9 E9 63       LDA $63E9,Y
D49D  8D B2 05       STA $05B2
D4A0  A6 A7          LDX $A7
D4A2  BD 33 E1       LDA $E133,X
D4A5  8D A8 05       STA $05A8
D4A8  60             RTS
                   ----------------
                   --------sub start--------
D4A9  18             CLC
D4AA  6D AC 61       ADC $61AC
D4AD  85 02          STA $02
D4AF  20 F4 C4       JSR $C4F4
D4B2  46 02          LSR $02
D4B4  A4 02          LDY $02
D4B6  B9 22 D8       LDA $D822,Y
D4B9  85 02          STA $02
D4BB  A0 00          LDY #$00
D4BD  20 E5 C4       JSR $C4E5
D4C0  A5 9B          LDA $9B
D4C2  C5 01          CMP $01
D4C4  F0 09          BEQ $D4CF
D4C6  C8             INY
D4C7  C4 02          CPY $02
D4C9  90 F2          BCC $D4BD
D4CB  F0 F0          BEQ $D4BD
D4CD  A0 00          LDY #$00
D4CF  60             RTS
                   ----------------

.endif

;$D3EC
.byte $8a,$0a,$aa,$bd
.byte $c8,$d7,$99,$c1,$03,$bd,$c9,$d7,$99,$c2,$03,$a9,$30,$99,$c3,$03
;$D400
.byte $60,$8a,$0a,$aa,$bd,$1a,$d8,$99,$c1,$03,$bd,$1b,$d8,$99,$c2,$03
.byte $a9,$30,$99,$c3,$03,$60,$a5,$b2,$10,$02,$a9,$28,$8d,$e7,$05,$a5
.byte $b3,$10,$02,$a9,$28,$8d,$e8,$05,$a6,$ac,$bd,$b9,$63,$8d,$e9,$05
.byte $a4,$ad,$b9,$b9,$63,$8d,$ea,$05,$a6,$ac,$a4,$ad,$bd,$79,$63,$aa
.byte $bd,$fd,$e0,$8d,$a9,$05,$b9,$79,$63,$a8,$b9,$fd,$e0,$8d,$aa,$05
.byte $a6,$ac,$a4,$ad,$bd,$99,$63,$aa,$bd,$fd,$e0,$8d,$ab,$05,$b9,$99
.byte $63,$a8,$b9,$fd,$e0,$8d,$ad,$05,$a6,$ac,$a4,$ad,$bd,$a9,$63,$8d
.byte $ac,$05,$b9,$a9,$63,$8d,$ae,$05,$a6,$ac,$a4,$ad,$bd,$d9,$63,$aa
.byte $bd,$fd,$e0,$8d,$af,$05,$b9,$d9,$63,$a8,$b9,$fd,$e0,$8d,$b1,$05
.byte $a6,$ac,$a4,$ad,$bd,$e9,$63,$8d,$b0,$05,$b9,$e9,$63,$8d,$b2,$05
.byte $a6,$a7,$bd,$33,$e1,$8d,$a8,$05,$60,$18,$6d,$ac,$61,$85,$02,$20
.byte $f4,$c4,$46,$02,$a4,$02,$b9,$22,$d8,$85,$02,$a0,$00,$20,$e5,$c4
.byte $a5,$9b,$c5,$01,$f0,$09,$c8,$c4,$02,$90,$f2,$f0,$f0,$a0,$00,$60

; Name	:
; Marks	: Draw map screen ??
	JSR $F4D3		; D4D0  20 D3 F4       
	LDA $62			; D4D3  A5 62          
	LSR A			; D4D5  4A             
	PHA			; D4D6  48             
	JSR $F32B		; D4D7  20 2B F3       
	JSR $F371		; D4DA  20 71 F3       
	JSR $F3AA		; D4DD  20 AA F3       
	JSR $F346		; D4E0  20 46 F3       
	LDA #$00		; D4E3  A9 00          
	STA $3E			; D4E5  85 3E          
	STA $3F			; D4E7  85 3F          
	LDA #$80		; D4E9  A9 80          
	STA $5A			; D4EB  85 5A          
	LDA #$00		; D4ED  A9 00          
	STA $46			; D4EF  85 46          
	STA $45			; D4F1  85 45          
	JSR $D567		; D4F3  20 67 D5	From New game ??
	LDA #$AC		; D4F6  A9 AC          
	STA $44			; D4F8  85 44          
	LDA #$01		; D4FA  A9 01          
	STA $26			; D4FC  85 26          
	JSR $F568		; D4FE  20 68 F5       
	LDA $0560		; D501  AD 60 05       
	BEQ BED519		; D504  F0 13          
	LDA #$1D		; D506  A9 1D          
	STA $10			; D508  85 10          
	LDA #$A3		; D50A  A9 A3          
	STA $11			; D50C  85 11          
	LDA #$AA		; D50E  A9 AA          
	STA $12			; D510  85 12          
	LDA #$D5		; D512  A9 D5          
	STA $13			; D514  85 13          
	JMP $D529		; D516  4C 29 D5       
BED519:
	LDA #$8E		; D519  A9 8E          
	STA $10			; D51B  85 10          
	LDA #$A0		; D51D  A9 A0          
	STA $11			; D51F  85 11          
	LDA #$8A		; D521  A9 8A          
	STA $12			; D523  85 12          
	LDA #$D5		; D525  A9 D5          
	STA $13			; D527  85 13          
	LDY #$1F		; D529  A0 1F          
BED52B:
	LDA ($12),Y		; D52B  B1 12          
	STA $03C0,Y		; D52D  99 C0 03       
	DEY			; D530  88             
	BPL BED52B		; D531  10 F8          
	LDX $6213		; D533  AE 13 62       
	LDA $D6C2,X		; D536  BD C2 D6       
	STA $03C1		; D539  8D C1 03       
	JSR $D5F9		; D53C  20 F9 D5       
	LDA #$01		; D53F  A9 01          
	STA $2F			; D541  85 2F          
	LDA PpuStatus_2002	; D543  AD 02 20       
	LDA #$20		; D546  A9 20          
	STA PpuAddr_2006	; D548  8D 06 20       
	LDA #$00		; D54B  A9 00          
	STA PpuAddr_2006	; D54D  8D 06 20       
	JSR $F6DA		; D550  20 DA F6       
	PLA			; D553  68             
	JSR $F570		; D554  20 70 F5       
	CLI			; D557  58             
	JSR $F3C8		; D558  20 C8 F3       
	JSR $F34A		; D55B  20 4A F3       
	JSR $F3D4		; D55E  20 D4 F3       
	JSR $F4DC		; D561  20 DC F4       
	JMP $F346		; D564  4C 46 F3       

; Name	:
	LDX #$04		; D567  A2 04          
	LDY #$01		; D569  A0 01          
	LDA $0560		; D56B  AD 60 05       
	BEQ BED574		; D56E  F0 04          
	LDX #$08		; D570  A2 08          
	LDY #$00		; D572  A0 00          
BED574:
	STY $27			; D574  84 27          
	STX $5D			; D576  86 5D          
	INX			; D578  E8             
	STX $5E			; D579  86 5E          
	INX			; D57B  E8             
	STX $5F			; D57C  86 5F          
	INX			; D57E  E8             
	STX $60			; D57F  86 60          
	LDX #$1A		; D581  A2 1A          
	STX $5B			; D583  86 5B          
	INX			; D585  E8             
	INX			; D586  E8             
	STX $5C			; D587  86 5C          
	RTS			; D589  60             

;$D58A - data block =
.byte $0f,$02,$37,$30,$0f,$01
.byte $10,$30,$0f,$08,$27,$30,$0f,$12,$32,$30,$0f,$12,$16,$30,$0f,$28
.byte $2a,$30,$0f,$28,$37,$30,$0f,$2a,$3a,$30,$0f,$02,$37,$30,$0f,$01
.byte $10,$30,$0f,$08,$27,$30,$0f,$0a,$21,$30,$0f,$12,$16,$30,$0f,$28
.byte $2a,$30,$0f,$28,$37,$30,$0f,$2a,$3a,$30,$a2,$07,$bd,$9a,$d5,$9d
.byte $d0,$03,$ca,$10,$f7,$20,$f9,$d5,$ae,$13,$62,$bd,$c2,$d6,$8d,$c1
.byte $03,$a9,$30,$8d,$c3,$03,$8d,$c7,$03,$8d,$cb,$03,$8d,$cf,$03,$a9
.byte $2a,$8d,$c2,$03,$a9,$01,$85,$2f,$60

; Name	:
	LDA $620F		; D5F9  AD 0F 62       
	AND #$01		; D5FC  29 01          
	STA $620F		; D5FE  8D 0F 62       
	ASL A			; D601  0A             
	ASL A			; D602  0A             
	TAX			; D603  AA             
	LDY #$00		; D604  A0 00          
BED606:
	LDA $D613,X		; D606  BD 13 D6       
	STA $03DC,Y		; D609  99 DC 03       
	INX			; D60C  E8             
	INY			; D60D  C8             
	CPY #$04		; D60E  C0 04          
	BCC BED606		; D610  90 F4          
	RTS			; D612  60             

;$D613 - data block = Is range $D613-$E437?
.byte $0f,$2a,$3a,$30,$0f,$13,$23,$30,$90,$01,$60,$80,$84
.byte $88,$8c,$c0,$80,$84,$88,$8c,$c4,$80,$84,$88,$8c,$c8,$80,$84,$88
.byte $8c,$cc,$80,$84,$88,$8c,$c0,$80,$84,$88,$8c,$c4,$80,$84,$88,$8c
.byte $c8,$80,$84,$88,$8c,$cc,$4c,$80,$84,$88,$8c,$80,$80,$84,$88,$8c
.byte $84,$80,$84,$88,$8c,$88,$80,$84,$88,$8c,$8c,$80,$84,$88,$8c,$80
.byte $80,$84,$88,$8c,$84,$80,$84,$88,$8c,$88,$80,$84,$88,$8c,$8c,$cc
.byte $80,$84,$88,$8c,$80,$c0,$c4,$c8,$cc,$84,$80,$84,$88,$8c,$88,$c0
.byte $c4,$c8,$cc,$8c,$80,$84,$88,$8c,$c0,$c0,$c4,$c8,$cc,$c4,$80,$84
.byte $88,$8c,$c8,$c0,$c4,$c8,$cc,$cc,$8c,$10,$10,$10,$10,$18,$11,$11
.byte $11,$11,$18,$12,$12,$12,$12,$18,$13,$13,$13,$13,$18,$14,$14,$14
.byte $14,$19,$15,$15,$15,$15,$19,$16,$16,$16,$16,$19,$17,$17,$17,$17
.byte $19,$0f,$0f,$01,$05,$17,$1a,$00,$07,$03,$01,$06,$00,$d7,$b7,$d7
.byte $87,$57,$1f,$1f,$47,$c8,$88,$20,$88,$b8,$4d,$18,$52,$34,$80,$af
.byte $89,$d8,$00,$97,$87,$1f,$3f,$2f,$27,$8f,$97,$5f,$17,$57,$9f,$2f
.byte $6f,$67,$47,$3e,$57,$36,$78,$5f,$00,$03,$03,$03,$03,$03,$03,$03
;$D700
.byte $03,$03,$05,$03,$05,$03,$04,$03,$03,$05,$05,$04,$04,$04,$78,$c8
.byte $a8,$c8,$90,$48,$28,$28,$48,$b8,$78,$38,$78,$a8,$40,$24,$43,$29
.byte $69,$b1,$78,$cd,$57,$97,$87,$17,$2f,$27,$17,$97,$87,$57,$17,$57
.byte $97,$27,$6a,$5a,$47,$3d,$52,$3c,$6a,$5c,$0b,$02,$0c,$0d,$0a,$06
.byte $06,$07,$07,$00,$05,$0b,$08,$04,$0f,$0f,$11,$11,$10,$12,$0e,$14
.byte $09,$01,$01,$03,$0d,$0a,$05,$08,$0c,$09,$04,$00,$02,$03,$14,$0e
.byte $12,$10,$13,$13,$15,$15,$0a,$02,$09,$03,$0a,$06,$06,$08,$0b,$0d
.byte $0a,$05,$00,$03,$10,$11,$10,$11,$12,$13,$12,$13,$0c,$01,$01,$0d
.byte $09,$0b,$05,$07,$07,$02,$00,$08,$0c,$09,$0e,$0f,$0e,$0f,$14,$15
.byte $14,$15,$00,$1c,$1c,$27,$1c,$1c,$1c,$1c,$20,$1d,$1e,$1f,$22,$21
.byte $24,$25,$26,$24,$25,$24,$24,$23,$00,$02,$02,$02,$02,$02,$02,$02
.byte $00,$00,$00,$00,$00,$08,$06,$00,$00,$06,$00,$06,$06,$04,$01,$00
.byte $0c,$1a,$1a,$21,$0c,$10,$11,$31,$06,$36,$12,$36,$28,$36,$06,$36
.byte $12,$36,$00,$36,$02,$17,$01,$27,$13,$36,$11,$27,$15,$36,$17,$36
.byte $03,$36,$28,$36,$16,$36,$03,$36,$12,$36,$1b,$36,$06,$36,$07,$36
.byte $0a,$36,$17,$36,$28,$36,$06,$36,$03,$36,$02,$36,$00,$36,$07,$36
;$D800
.byte $00,$36,$07,$36,$06,$36,$17,$36,$07,$36,$01,$36,$28,$36,$21,$36
.byte $03,$36,$00,$10,$10,$36,$28,$36,$1a,$2a
;$D81A - data block =
.byte $06,$36,$06,$36,$0f,$36
.byte $1a,$2a,$05,$05,$20,$07,$02,$02,$09,$03,$02,$02,$09,$03,$02,$02
.byte $09,$03,$02,$02,$09,$03,$02,$ff,$ff,$ff,$15,$0c,$09,$01,$0d,$ff
.byte $ff,$ff,$0a,$0d,$09,$ff,$06,$0b,$0a,$11,$05,$ff,$ff,$ff,$08,$ff
.byte $ff,$ff,$0b,$07,$0c,$ff,$04,$13,$0d,$02,$05,$12,$0d,$04,$05,$08
.byte $0f,$0c,$0b,$08,$14,$02,$0a,$04,$03,$09,$10,$0f,$ff,$ff,$11,$0b
.byte $0e,$ff,$11,$0e,$12,$ff,$05,$0f,$10,$ff,$0a,$10,$13,$14,$12,$15
.byte $09,$ff,$12,$0c,$15,$ff,$13,$14,$02,$ff,$de,$d8,$0a,$d9,$36,$d9
.byte $62,$d9,$8e,$d9,$ba,$d9,$e6,$d9,$12,$da,$3e,$da,$6a,$da,$96,$da
.byte $c2,$da,$ee,$da,$1a,$db,$46,$db,$72,$db,$9e,$db,$ca,$db,$f6,$db
.byte $22,$dc,$4e,$dc,$f4,$d8,$20,$d9,$4c,$d9,$78,$d9,$a4,$d9,$d0,$d9
.byte $fc,$d9,$28,$da,$54,$da,$80,$da,$ac,$da,$d8,$da,$04,$db,$30,$db
.byte $5c,$db,$88,$db,$b4,$db,$e0,$db,$0c,$dc,$38,$dc,$64,$dc,$00,$b7
.byte $af,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$48,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$D900
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$cf,$c7,$00,$00,$00
.byte $00,$00,$00,$e0,$00,$00,$90,$00,$00,$00,$00,$00,$00,$00,$00,$90
.byte $00,$60,$38,$00,$00,$00,$00,$00,$00,$20,$00,$00,$60,$00,$00,$00
.byte $00,$00,$00,$00,$00,$30,$00,$00,$00,$c7,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$98,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$a7,$00,$00,$00,$00,$d0,$88,$00,$00,$e0
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$48,$00,$00,$00
.byte $00,$60,$30,$00,$00,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$9f,$87,$00,$00,$00,$d0,$98,$00,$00,$00,$00,$00,$d6
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$28,$00,$00,$00,$30,$60
.byte $00,$00,$00,$00,$00,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00,$cf
.byte $c7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$60,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$af,$d8,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$DA00
.byte $00,$00,$00,$48,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$97,$c0,$00,$00,$88,$c8,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60
.byte $30,$00,$00,$20,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $c7,$00,$7f,$00,$00,$00,$00,$c8,$00,$00,$00,$c8,$00,$00,$00,$00
.byte $00,$87,$00,$00,$00,$00,$60,$00,$18,$00,$00,$00,$00,$40,$00,$00
.byte $00,$20,$00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$e7,$87
.byte $00,$00,$00,$00,$b0,$00,$00,$e0,$00,$00,$00,$00,$88,$00,$00,$00
.byte $00,$00,$00,$00,$58,$48,$00,$00,$00,$00,$30,$00,$00,$48,$00,$00
.byte $00,$00,$60,$00,$00,$00,$00,$00,$00,$00,$00,$9f,$00,$00,$a0,$00
.byte $00,$a0,$d8,$00,$00,$e0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$20,$00,$00,$60,$00,$00,$40,$50,$00,$00,$28,$00,$00,$00,$00
.byte $00,$00,$00,$00,$df,$00,$00,$00,$00,$00,$88,$00,$00,$88,$b0,$00
.byte $00,$00,$00,$00,$00,$00,$d0,$00,$00,$00,$30,$00,$00,$00,$00,$00
.byte $48,$00,$00,$28,$48,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00
.byte $00,$df,$97,$00,$00,$00,$00,$d0,$88,$00,$00,$c8,$00,$00,$00,$00
;$DB00
.byte $00,$00,$00,$00,$00,$00,$00,$20,$60,$00,$00,$00,$00,$60,$30,$00
.byte $00,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$a7,$a0,$c8,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$48,$28
.byte $28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$88,$00,$00,$bf,$a8,$00,$be,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$58,$48,$00,$28,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $97,$00,$b8,$96,$d0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$58,$00,$38,$28,$48,$00,$00,$00,$00,$00
.byte $00,$00,$00,$a7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$a0,$d8,$8e
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$58,$40,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$88,$00,$00,$00,$00,$00,$88,$00,$c0,$c7,$c0,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00
.byte $40,$00,$40,$28,$58,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e0
;$DC00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$88,$af,$00,$bf,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$48,$38
.byte $00,$58,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$c8,$00
.byte $00,$00,$00,$00,$90,$00,$c0,$cf,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$60,$00,$00,$00,$00,$00,$28,$00,$40,$30,$00,$00
.byte $df,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$97,$98,$c0,$00,$00,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$28,$58,$40,$ce,$dc,$fa,$dc,$26,$dd
.byte $52,$dd,$7e,$dd,$aa,$dd,$d6,$dd,$02,$de,$2e,$de,$5a,$de,$86,$de
.byte $b2,$de,$de,$de,$0a,$df,$36,$df,$62,$df,$8e,$df,$ba,$df,$e6,$df
.byte $12,$e0,$3e,$e0,$e4,$dc,$10,$dd,$3c,$dd,$68,$dd,$94,$dd,$c0,$dd
.byte $ec,$dd,$18,$de,$44,$de,$70,$de,$9c,$de,$c8,$de,$f4,$de,$20,$df
.byte $4c,$df,$78,$df,$a4,$df,$d0,$df,$fc,$df,$28,$e0,$54,$e0,$00,$b8
.byte $a0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$38,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$d0,$b8,$00,$00,$00
;$DD00
.byte $00,$00,$00,$d0,$00,$00,$a0,$00,$00,$00,$00,$00,$00,$00,$00,$a0
.byte $00,$50,$38,$00,$00,$00,$00,$00,$00,$20,$00,$00,$50,$00,$00,$00
.byte $00,$00,$00,$00,$00,$20,$00,$00,$00,$b8,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$a0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$b8,$00,$00,$00,$00,$d0,$a0,$00,$00,$d0
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$00,$00,$00
.byte $00,$50,$20,$00,$00,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$b8,$a0,$00,$00,$00,$d0,$a0,$00,$00,$00,$00,$00,$d0
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$20,$00,$00,$00,$20,$50
.byte $00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$d0
.byte $b8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$50,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$b8,$d0,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$38,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;$DE00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$a0,$b8,$00,$00,$a0,$d0,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50
.byte $30,$00,$00,$20,$50,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $b8,$00,$98,$00,$00,$00,$00,$b8,$00,$00,$00,$b8,$00,$00,$00,$00
.byte $00,$90,$00,$00,$00,$00,$58,$00,$18,$00,$00,$00,$00,$38,$00,$00
.byte $00,$18,$00,$00,$00,$00,$00,$38,$00,$00,$00,$00,$00,$00,$d8,$90
.byte $00,$00,$00,$00,$b8,$00,$00,$e0,$00,$00,$00,$00,$b8,$00,$00,$00
.byte $00,$00,$00,$00,$58,$38,$00,$00,$00,$00,$38,$00,$00,$38,$00,$00
.byte $00,$00,$58,$00,$00,$00,$00,$00,$00,$00,$00,$b8,$00,$00,$b8,$00
.byte $00,$b8,$d8,$00,$00,$e0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$18,$00,$00,$58,$00,$00,$38,$58,$00,$00,$38,$00,$00,$00,$00
.byte $00,$00,$00,$00,$e0,$00,$00,$00,$00,$00,$90,$00,$00,$98,$b8,$00
.byte $00,$00,$00,$00,$00,$00,$b8,$00,$00,$00,$38,$00,$00,$00,$00,$00
.byte $38,$00,$00,$18,$38,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00
.byte $00,$d0,$a0,$00,$00,$00,$00,$d0,$a0,$00,$00,$b8,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$20,$50,$00,$00,$00,$00,$50,$20,$00
;$DF00
.byte $00,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$b4,$a4,$c4,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3c,$2c
.byte $2c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$88,$00,$00,$c4,$b4,$00,$b4,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$4c,$3c,$00,$24,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $a4,$00,$b4,$a4,$dc,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$4c,$00,$3c,$2c,$3c,$00,$00,$00,$00,$00
.byte $00,$00,$00,$98,$00,$00,$00,$00,$00,$00,$00,$00,$00,$a4,$cc,$b4
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$4c,$3c,$3c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.byte $00,$00,$00,$00,$b0,$00,$00,$00,$00,$00,$9c,$00,$b4,$c4,$c4,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00
.byte $3c,$00,$3c,$2c,$4c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$e8
.byte $00,$00,$00,$00,$00,$00,$00,$00,$a4,$b4,$00,$c4,$00,$00,$00,$00
