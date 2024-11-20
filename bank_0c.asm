.include "Constants.inc"
.if ORIGINAL
.else
.include "text/text_list.inc"
.endif

.segment "BANK_0C"

;$8000
.byte $90,$01,$60

; Name	:
	LDA #$00		; 8003  A9 00          
	STA $90			; 8005  85 90          
; Name	:
	JSR $834C		; 8007  20 4C 83       
	LDA $90			; 800A  A5 90          
	CMP $8F			; 800C  C5 8F          
	BCC BC8019		; 800E  90 09          
	LDA $8F			; 8010  A5 8F          
	STA $90			; 8012  85 90          
	DEC $90			; 8014  C6 90          
	JSR $834C		; 8016  20 4C 83       
BC8019:
	JSR $80AE		; 8019  20 AE 80       
	LDA #$01		; 801C  A9 01          
	BIT $7E			; 801E  24 7E          
	BEQ BC8033		; 8020  F0 11          
	JSR $85B4		; 8022  20 B4 85       
	BCS BC802D		; 8025  B0 06          
	JSR $F2E6		; 8027  20 E6 F2       
	JMP $800A		; 802A	$4c $0a $80
BC802D:
	JSR $F2D6		; 802D  20 D6 F2       
	JMP $C4DD		; 8030  4C DD C4       
BC8033:
	LDA #$02		; 8033  A9 02          
	BIT $7E			; 8035  24 7E          
	BEQ BC8043		; 8037  F0 0A          
	LDA #$FF		; 8039  A9 FF          
	STA $90			; 803B  85 90          
	JSR $F2DE		; 803D  20 DE F2       
	JMP $C4DD		; 8040	$4c $dd $c4
BC8043:
	LDA #$40		; 8043  A9 40          
	BIT $7E			; 8045  24 7E          
	BEQ BC805D		; 8047  F0 14          
	JSR $F2CE		; 8049  20 CE F2       
	LDX $90			; 804C  A6 90          
	LDA $8129,X		; 804E  BD 29 81       
	STA $90			; 8051  85 90          
	LDA #$00		; 8053  A9 00          
	STA $24			; 8055  85 24          
	JSR $834C		; 8057  20 4C 83       
	JMP $800A		; 805A  4C 0A 80       

BC805D:
	LDA #$80		; 805D  A9 80          
	BIT $7E			; 805F  24 7E          
	BEQ BC8077		; 8061  F0 14          
	JSR $F2CE		; 8063  20 CE F2       
	LDX $90			; 8066  A6 90          
	LDA $8125,X		; 8068  BD 25 81       
	STA $90			; 806B  85 90          
	LDA #$00		; 806D  A9 00          
	STA $24			; 806F  85 24          
	JSR $834C		; 8071  20 4C 83       
	JMP $800A		; 8074  4C 0A 80       
BC8077:
	LDA #$10		; 8077  A9 10          
	BIT $7E			; 8079  24 7E          
	BEQ BC8091		; 807B  F0 14          
	JSR $F2CE		; 807D  20 CE F2       
	LDX $90			; 8080  A6 90          
	LDA $811D,X		; 8082  BD 1D 81       
	STA $90			; 8085  85 90          
	LDA #$00		; 8087  A9 00          
	STA $24			; 8089  85 24          
	JSR $834C		; 808B  20 4C 83       
	JMP $800A		; 808E  4C 0A 80       

BC8091:
	LDA #$20		; 8091  A9 20          
	BIT $7E			; 8093  24 7E          
	BEQ BC80AB		; 8095  F0 14          
	JSR $F2CE		; 8097  20 CE F2       
	LDX $90			; 809A  A6 90          
	LDA $8121,X		; 809C  BD 21 81       
	STA $90			; 809F  85 90          
	LDA #$00		; 80A1  A9 00          
	STA $24			; 80A3  85 24          
	JSR $834C		; 80A5  20 4C 83       
	JMP $800A		; 80A8  4C 0A 80       
BC80AB:
	JMP $800A		; 80AB  4C 0A 80       

; Name	:
	LDA #$F0		; 80AE  A9 F0          
	STA $0210		; 80B0  8D 10 02       
	LDA $24			; 80B3  A5 24          
	AND #$10		; 80B5  29 10          
	BEQ BC80BC		; 80B7  F0 03          
	JMP $80EE		; 80B9  4C EE 80       
BC80BC:
	LDX $90			; 80BC  A6 90          
	CPX #$04		; 80BE  E0 04          
	BCC BC80C5		; 80C0  90 03          
	JMP $80EE		; 80C2  4C EE 80       
BC80C5:
	LDA $91			; 80C5  A5 91          
	CMP #$05		; 80C7  C9 05          
	BEQ BC80D3		; 80C9  F0 08          
	CMP #$0A		; 80CB  C9 0A          
	BEQ BC80D3		; 80CD  F0 04          
	CMP #$07		; 80CF  C9 07          
	BNE BC80D8		; 80D1  D0 05          
BC80D3:
	LDA $8119,X             ; 80D3  BD 19 81       
	BNE BC80DB		; 80D6  D0 03          
BC80D8:
	LDA $8115,X             ; 80D8  BD 15 81       
BC80DB:
	STA $0213		; 80DB  8D 13 02       
	LDA $8111,X             ; 80DE  BD 11 81       
	STA $0210		; 80E1  8D 10 02       
	LDA #$01		; 80E4  A9 01          
	STA $0211		; 80E6  8D 11 02       
	LDA #$01		; 80E9  A9 01          
	STA $0212		; 80EB  8D 12 02       
	LDA $91			; 80EE  A5 91          
	CMP #$04		; 80F0  C9 04          
	BEQ BC810E		; 80F2  F0 1A          
	CMP #$05		; 80F4  C9 05          
	BEQ BC810E		; 80F6  F0 16          
	CMP #$06		; 80F8  C9 06          
	BEQ BC810E		; 80FA  F0 12          
	CMP #$07		; 80FC  C9 07          
	BEQ BC810E		; 80FE  F0 0E          
	CMP #$08		; 8100  C9 08          
	BEQ BC810B		; 8102  F0 07          
	CMP #$0B		; 8104  C9 0B          
	BEQ BC810B		; 8106  F0 03          
	JMP $C0E9		; 8108  4C E9 C0       
BC810B:
	JMP $F3D0		; 810B	$4c $d0 $f3
BC810E:
	JMP $CC3D		; 810E	$4c $3d $cc

;$8111 - data block =
.byte $c8,$d8,$c8,$d8,$18,$18,$48,$48,$08,$08,$40,$40,$00,$00,$02
.byte $02,$01,$01,$03,$03,$02,$03,$02,$03,$00,$01,$00,$01

; Name	:
	LDA #$02		; 812D  A9 02          
	STA $8F			; 812F  85 8F          
	JSR $8003		; 8131  20 03 80       
	JSR $C4DD		; 8134  20 DD C4       
	LDX $90			; 8137  A6 90          
	BEQ BC813F		; 8139  F0 04          
	LDX #$FF		; 813B  A2 FF          
	STX $90			; 813D  86 90          
BC813F:
	RTS			; 813F  60             

; Name	:
	JSR $FAFB		; 8140  20 FB FA       
	LDA #$00                ; 8143  A9 00          
	STA $90                 ; 8145  85 90          
BC8147:
	JSR $8188		; 8147  20 88 81       
	LDA #$10		; 814A  A9 10          
	BIT $7E			; 814C  24 7E          
	BEQ BC815C		; 814E  F0 0C          
	LDA $90			; 8150  A5 90          
	BEQ BC8147		; 8152  F0 F3          
	JSR $F2CE		; 8154  20 CE F2       

;$8157
.byte $c6,$90,$4c,$47,$81

BC815C:
	LDA #$20		; 815C  A9 20          
	BIT $7E			; 815E  24 7E          
	BEQ BC816E		; 8160  F0 0C          
	LDA $90			; 8162  A5 90          
	BNE BC8147		; 8164  D0 E1          
	JSR $F2CE		; 8166  20 CE F2       
	INC $90			; 8169  E6 90          
	JMP $8147		; 816B  4C 47 81       
BC816E:
	LDA #$02		; 816E  A9 02          
	BIT $7E			; 8170  24 7E          
	BEQ BC817C		; 8172  F0 08          
	JSR $F2DE		; 8174  20 DE F2       
	LDA #$FF		; 8177  A9 FF          
	STA $90			; 8179  85 90          
	RTS			; 817B  60             
BC817C:
	LDA #$01		; 817C  A9 01          
	BIT $7E			; 817E  24 7E          
	BEQ BC8147		; 8180  F0 C5          
	JSR $F2D6		; 8182  20 D6 F2       
	LDA $90			; 8185  A5 90          
	RTS			; 8187  60             

; Name	:
	LDA #$F0		; 8188  A9 F0          
	STA $0210		; 818A  8D 10 02       
	LDA $24			; 818D  A5 24          
	AND #$10		; 818F  29 10          
	BEQ BC8196		; 8191  F0 03          
	JMP $81AD		; 8193  4C AD 81       
BC8196:
	LDX $90			; 8196  A6 90          
	LDA #$90		; 8198  A9 90          
	STA $0213		; 819A  8D 13 02       
	LDA $81B0,X		; 819D  BD B0 81       
	STA $0210		; 81A0  8D 10 02       
	LDA #$01		; 81A3  A9 01          
	STA $0211		; 81A5  8D 11 02       
	LDA #$01		; 81A8  A9 01          
	STA $0212		; 81AA  8D 12 02       
	JMP $C0E9		; 81AD  4C E9 C0       

;$81B0 - data block =
.byte $c8,$d8

; Name	:
	INC $6216		; 81B2  EE 16 62       
	LDA $6216		; 81B5  AD 16 62       
	CMP #$0D		; 81B8  C9 0D          
	BCC BC81C9		; 81BA  90 0D          
	LDA #$01		; 81BC  A9 01          
	STA $6216		; 81BE  8D 16 62       
	INC $6214		; 81C1  EE 14 62       
	BNE BC81C9		; 81C4  D0 03          
	INC $6215		; 81C6  EE 15 62       
BC81C9:
	RTS			; 81C9  60             

	JSR $F3C8		; 81CA  20 C8 F3       
	JSR $F3D4		; 81CD  20 D4 F3       
	LDA #$00		; 81D0  A9 00          
	STA $90			; 81D2  85 90          
BC81D4:
	LDA #$00		; 81D4  A9 00          
	STA $91			; 81D6  85 91          
	LDA #$02		; 81D8  A9 02          
	STA $8F			; 81DA  85 8F          
	LDA #$A8		; 81DC  A9 A8          
	STA $10			; 81DE  85 10          
	LDA #$80		; 81E0  A9 80          
	STA $11			; 81E2  85 11          
	JSR $FAED		; 81E4  20 ED FA       
	JSR $8007		; 81E7  20 07 80       
	LDA $90			; 81EA  A5 90          
	BMI BC8203		; 81EC  30 15          
	PHA			; 81EE  48             
	ASL A			; 81EF  0A             
	TAX			; 81F0  AA             
	LDA $8204,X		; 81F1  BD 04 82       
	STA $66			; 81F4  85 66          
	LDA $8205,X		; 81F6  BD 05 82       
	STA $67			; 81F9  85 67          
	JSR $F596		; 81FB  20 96 F5       
	PLA			; 81FE  68             
	STA $90			; 81FF  85 90          
	BPL BC81D4		; 8201  10 D1          
BC8203:
	RTS			; 8203  60             

;$8204 - data block =
.byte $d4,$84,$18,$82
;$8208 - data block = (some address ??)
.byte $0a,$70,$18,$72,$26,$74,$34,$76
;$8210 - data block = 2 bytes each (some address ??)
.byte $14,$72
.byte $22,$74
.byte $30,$76
.byte $3e,$78

	JSR $F3C8		; 8218  20 C8 F3       
	JSR $F3D4		; 821B  20 D4 F3       
	LDA #$00		; 821E  A9 00          
	STA $90			; 8220  85 90          
	LDA #$01		; 8222  A9 01          
	STA $91			; 8224  85 91          
	LDA #$04		; 8226  A9 04          
	STA $8F			; 8228  85 8F          
	LDA #$50		; 822A  A9 50          
	STA $10			; 822C  85 10          
	LDA #$81		; 822E  A9 81          
	STA $11			; 8230  85 11          
	JSR $FAED		; 8232  20 ED FA	Draw FILE(Record) textbox bottom panel ??
	JSR $8007		; 8235  20 07 80       
	LDA $90			; 8238  A5 90          
	BMI BC82B4		; 823A  30 78          
	PHA			; 823C  48             
	ASL A			; 823D  0A             
	TAX			; 823E  AA             
	LDY $8209,X		; 823F  BC 09 82       
	LDA $8208,X		; 8242  BD 08 82       
	STA $12			; 8245  85 12          
	STA $16			; 8247  85 16          
	STY $13			; 8249  84 13          
	STY $17			; 824B  84 17          
	LDA $8210,X		; 824D  BD 10 82       
	STA $18			; 8250  85 18          
	LDA $8211,X		; 8252  BD 11 82       
	STA $19			; 8255  85 19          
	LDA #$00		; 8257  A9 00          
	STA $91			; 8259  85 91          
	LDX $9B			; 825B  A6 9B		0h = Save file not exist, 1h = Save file exist
	LDA $8310,X		; 825D  BD 10 83       
	STA $10			; 8260  85 10          
	LDA $8312,X		; 8262  BD 12 83       
	STA $11			; 8265  85 11          
	LDX #$1C		; 8267  A2 1C          
	LDY #$00		; 8269  A0 00          
BC826B:
	LDA ($10),Y		; 826B  B1 10          
	STA $0338,Y		; 826D  99 38 03       
	INY			; 8270  C8             
	DEX			; 8271  CA             
	BNE BC826B		; 8272  D0 F7          
	LDA #$38		; 8274  A9 38          
	STA $10			; 8276  85 10          
	LDA #$03		; 8278  A9 03          
	STA $11			; 827A  85 11          
	LDA #$1C		; 827C  A9 1C          
	STA $00			; 827E  85 00          
	JSR $F9D2		; 8280  20 D2 F9       
	JSR $F98D		; 8283  20 8D F9       
	LDA #$07		; 8286  A9 07          
	JSR $F4DA		; 8288  20 DA F4       
	LDA #$F8		; 828B  A9 F8          
	STA $10			; 828D  85 10          
	LDA #$81		; 828F  A9 81          
	STA $11			; 8291  85 11          
	JSR $F99F		; 8293  20 9F F9       
	LDA $90			; 8296  A5 90          
	CLC			; 8298  18             
.if ORIGINAL
	ADC #$31		; 8299  69 31		SAVE FILE number(Record number)
.else
	ADC #$42
.endif
	STA $0318		; 829B  8D 18 03       
	JSR $F9C6		; 829E  20 C6 F9       
	JSR $F98D		; 82A1  20 8D F9       
	LDA #$06		; 82A4  A9 06          
	JSR $F4DA		; 82A6  20 DA F4       
	JSR $812D		; 82A9  20 2D 81       
	BPL BC82B5		; 82AC  10 07          
	PLA			; 82AE  68             
	STA $90			; 82AF  85 90          
	JMP $8222		; 82B1  4C 22 82       
BC82B4:
	RTS			; 82B4  60             

BC82B5:
	LDA #$0F		; 82B5  A9 0F          
	STA $10			; 82B7  85 10          
	LDA #$62		; 82B9  A9 62          
	STA $11			; 82BB  85 11          
	JSR $85C6		; 82BD  20 C6 85       
	LDA $16			; 82C0  A5 16          
	STA $10			; 82C2  85 10          
	LDA $17			; 82C4  A5 17          
	STA $11			; 82C6  85 11          
	JSR $85EF		; 82C8  20 EF 85       
	LDY #$00		; 82CB  A0 00          
	LDA $14			; 82CD  A5 14          
	STA ($18),Y		; 82CF  91 18          
	INY			; 82D1  C8             
	LDA $15			; 82D2  A5 15          
	STA ($18),Y		; 82D4  91 18          
	LDA $16			; 82D6  A5 16          
	STA $10			; 82D8  85 10          
	LDA $17			; 82DA  A5 17          
	STA $11			; 82DC  85 11          
	JSR $8621		; 82DE  20 21 86       
	LDA $0F			; 82E1  A5 0F          
	LDY #$02		; 82E3  A0 02          
	STA ($18),Y		; 82E5  91 18          
	INY			; 82E7  C8             
	LDA #$FF		; 82E8  A9 FF          
	STA ($18),Y		; 82EA  91 18          
	JSR $F66D		; 82EC  20 6D F6       
	LDA #$4C		; 82EF  A9 4C          
	STA $10			; 82F1  85 10          
	LDA #$82		; 82F3  A9 82          
	STA $11			; 82F5  85 11          
	JSR $FAFB		; 82F7  20 FB FA       
	JSR $F6D4		; 82FA  20 D4 F6       
	JSR $F528		; 82FD  20 28 F5       
BC8300:
	JSR $F4D3		; 8300  20 D3 F4       
	LDA $7E			; 8303  A5 7E          
	BEQ BC8300		; 8305  F0 F9          
	JSR $F6D0		; 8307  20 D0 F6       
	PLA			; 830A  68             
	STA $90			; 830B  85 90          
	JMP $8222		; 830D  4C 22 82       

;$8310 - data block = 2bytes each (address $8314, $8330)
.byte $14,$30			; low byte
.byte $83,$83			; high byte
;$8314 - data block = 14 x 2 text string
.if ORIGINAL
.byte $20,$20,$20,$20,$de,$20,$20,$20,$20,$20,$20,$20
.byte $20,$20,$20,$20,$be,$b0,$cc,$a6,$75,$7a,$85,$72,$8f,$7d,$20,$20
.else
.byte $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40
.byte $40,$40,B_SAE,B_EE,B_B_E,B_LL,$40,B_HAP,B_NEE,B_DA,B_DOT,$40,$40,$40
.endif
;$8330 - datat block = 14 x 2 text string
.if ORIGINAL
.byte $20,$20,$20,$20,$de,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
.byte $73,$9c,$76,$77,$7c,$8f,$7d,$76,$3f,$20,$20,$20
.else
.byte $40,$40,B_EE,B_JEON,$40,B_RAE,B_CO,B_D_E,B_LL,$40,$40,$40,$40,$40
.byte $40,$40,B_OH,B_BA,B_RA,B_EE,B_T_E,$40,B_HAP,B_NEE,B_DA,B_DOT,$40,$40
.endif

; Name	:
	LDA $91			; 834C  A5 91          
	CMP #$07		; 834E  C9 07          
	BNE BC8355		; 8350  D0 03          
	JMP $840D		; 8352  4C 0D 84       
BC8355:
	LDA $91			; 8355  A5 91          
	CMP #$01		; 8357  C9 01          
	BEQ BC8364		; 8359  F0 09          
	CMP #$02		; 835B  C9 02          
	BEQ BC8364		; 835D  F0 05          
	CMP #$0B		; 835F  C9 0B          
	BEQ BC8364		; 8361  F0 01          
	RTS			; 8363  60             

BC8364:
	JSR $F95F		; 8364  20 5F F9	Draw textbox top line (bottom panel)
	LDA $90			; 8367  A5 90          
	ASL A			; 8369  0A             
	TAX			; 836A  AA             
	LDA $8210,X		; 836B  BD 10 82       
	STA $10			; 836E  85 10          
	LDA $8211,X		; 8370  BD 11 82       
	STA $11			; 8373  85 11          
	LDY #$03		; 8375  A0 03          
	LDA ($10),Y		; 8377  B1 10          
	BEQ BC8380		; 8379  F0 05          
	JSR $848D		; 837B  20 8D 84       
	BCS BC8392		; 837E  B0 12          
BC8380:
	LDX #$09		; 8380  A2 09          
BC8382:
	LDA $8403,X		; 8382  BD 03 84       
	STA $0346,X		; 8385  9D 46 03       
	DEX			; 8388  CA             
	BPL BC8382		; 8389  10 F7          
	LDA #$00		; 838B  A9 00          
	STA $9B			; 838D  85 9B          
	JMP $83F3		; 838F  4C F3 83       
BC8392:
	LDA $90			; 8392  A5 90          
	ASL A			; 8394  0A             
	TAX			; 8395  AA             
	LDA $8208,X		; 8396  BD 08 82       
	STA $10			; 8399  85 10          
	LDA $8209,X		; 839B  BD 09 82       
	STA $11			; 839E  85 11          
	JSR $F95F		; 83A0  20 5F F9       
	LDY #$01		; 83A3  A0 01          
	LDA ($10),Y		; 83A5  B1 10          
	JSR $F8D4		; 83A7  20 D4 F8       
	STX $0312		; 83AA  8E 12 03       
	STY $0313		; 83AD  8C 13 03       
	LDY #$05		; 83B0  A0 05          
	LDA ($10),Y		; 83B2  B1 10          
	STA $18			; 83B4  85 18          
	INY			; 83B6  C8             
	LDA ($10),Y		; 83B7  B1 10          
	STA $19			; 83B9  85 19          
	JSR $F88A		; 83BB  20 8A F8       
	LDY #$03		; 83BE  A0 03          
BC83C0:
	LDA $0451,Y		; 83C0  B9 51 04       
	STA $032A,Y		; 83C3  99 2A 03       
	DEY			; 83C6  88             
	BPL BC83C0		; 83C7  10 F7          
	LDY #$07		; 83C9  A0 07          
	LDA ($10),Y		; 83CB  B1 10          
	JSR $F8D4		; 83CD  20 D4 F8       
	STX $032F		; 83D0  8E 2F 03       
	STY $0330		; 83D3  8C 30 03       
.if ORIGINAL
	LDA #$BC		; 83D6  A9 BC          
	STA $030E		; 83D8  8D 0E 03       
	LDA #$C5		; 83DB  A9 C5          
	STA $030F		; 83DD  8D 0F 03       
	LDA #$D8		; 83E0  A9 D8          
	STA $0310		; 83E2  8D 10 03       
	LDA #$B5		; 83E5  A9 B5          
	STA $0311		; 83E7  8D 11 03       
	LDA #$E9		; 83EA  A9 E9          
.else
	LDA #B_SI		; 83D6  A9 BC          
	STA $030E		; 83D8  8D 0E 03       
	LDA #B_NA		; 83DB  A9 C5          
	STA $030F		; 83DD  8D 0F 03       
	LDA #B_RI		; 83E0  A9 D8          
	STA $0310		; 83E2  8D 10 03       
	LDA #B_OH		; 83E5  A9 B5          
	STA $0311		; 83E7  8D 11 03       
	LDA #B_WOL
.endif
	STA $0331		; 83EC  8D 31 03       
	LDA #$01		; 83EF  A9 01          
	STA $9B			; 83F1  85 9B          
	LDA $10			; 83F3  A5 10          
	PHA			; 83F5  48             
	LDA $11			; 83F6  A5 11          
	PHA			; 83F8  48             
	JSR $FAFE		; 83F9  20 FE FA       
	PLA			; 83FC  68             
	STA $11			; 83FD  85 11          
	PLA			; 83FF  68             
	STA $10			; 8400  85 10          
	RTS			; 8402  60             

;$8403 - data block = There is no FILE(Record)
.if ORIGINAL
.byte $77,$9b,$78,$7b,$9a,$83,$72,$8f,$7e,$9d
.else
.byte B_RAE,B_CO,B_D_E,B_GA,B_EMPTY,B_UP,B_SEUP,B_NEE,B_DA,B_DOT
.endif

	LDA $10			; 840D  A5 10          
	PHA			; 840F  48             
	LDA $11			; 8410  A5 11          
	PHA			; 8412  48             
	JSR $F95F		; 8413  20 5F F9       
	LDA #$6A		; 8416  A9 6A          
	LDY #$84		; 8418  A0 84          
	JSR $FB09		; 841A  20 09 FB       
	LDX $90			; 841D  A6 90          
	LDA $044C,X		; 841F  BD 4C 04       
	BMI BC8463		; 8422  30 3F          
	STA $0F			; 8424  85 0F          
	TAX			; 8426  AA             
	LDA $6389,X		; 8427  BD 89 63       
	JSR $F8D4		; 842A  20 D4 F8       
	STX $0321		; 842D  8E 21 03       
	STY $0322		; 8430  8C 22 03       
	LDX $0F			; 8433  A6 0F          
	LDA $63A9,X		; 8435  BD A9 63       
	JSR $F8D4		; 8438  20 D4 F8       
	STX $0328		; 843B  8E 28 03       
	STY $0329		; 843E  8C 29 03       
	LDX $0F			; 8441  A6 0F          
	LDA $63C9,X		; 8443  BD C9 63       
	JSR $F8D4		; 8446  20 D4 F8       
	STX $033D		; 8449  8E 3D 03       
	STY $033E		; 844C  8C 3E 03       
	LDX $0F			; 844F  A6 0F          
	LDA $63E9,X		; 8451  BD E9 63       
	JSR $F8D4		; 8454  20 D4 F8       
	STA $0343		; 8457  8D 43 03       
	STX $0344		; 845A  8E 44 03       
	STY $0345		; 845D  8C 45 03       
	JSR $FAFE		; 8460  20 FE FA       
BC8463:
	PLA			; 8463  68             
	STA $11			; 8464  85 11          
	PLA			; 8466  68             
	STA $10			; 8467  85 10          
	RTS			; 8469  60             

;$846A - data block =
.byte $00,$03,$1c,$77,$1d,$76
.byte $1e,$9d,$20,$f0,$24,$7b,$16,$de,$25,$7a,$26,$2a,$38,$7c,$39,$7b
.byte $3a,$78,$3c,$f0,$40,$7b,$32,$de,$41,$7a,$42,$2a,$ff

; Name	:
	LDA $8208,X		; 848D  BD 08 82       
	STA $10			; 8490  85 10          
	STA $18			; 8492  85 18          
	LDA $8209,X		; 8494  BD 09 82       
	STA $11			; 8497  85 11          
	STA $19			; 8499  85 19          
	LDA $8210,X		; 849B  BD 10 82       
	STA $16			; 849E  85 16          
	LDA $8211,X		; 84A0  BD 11 82       
	STA $17			; 84A3  85 17          
	JSR $85EF		; 84A5  20 EF 85       
	LDY #$00		; 84A8  A0 00          
	LDA ($16),Y		; 84AA  B1 16          
	CMP $14			; 84AC  C5 14          
	BNE BC84B7		; 84AE  D0 07          
	INY			; 84B0  C8             
	LDA ($16),Y		; 84B1  B1 16          
	CMP $15			; 84B3  C5 15          
	BEQ BC84BF		; 84B5  F0 08          
BC84B7:
	LDA #$FF		; 84B7  A9 FF          
	LDY #$03		; 84B9  A0 03          
	STA ($16),Y		; 84BB  91 16          
	CLC			; 84BD  18             
	RTS			; 84BE  60             
BC84BF:
	LDA $18			; 84BF  A5 18          
	STA $10			; 84C1  85 10          
	LDA $19			; 84C3  A5 19          
	STA $11			; 84C5  85 11          
	JSR $8621		; 84C7  20 21 86       
	LDY #$02		; 84CA  A0 02          
	LDA ($16),Y		; 84CC  B1 16          
	CMP $0F			; 84CE  C5 0F          
	BNE BC84B7		; 84D0  D0 E5          
	SEC			; 84D2  38             
	RTS			; 84D3  60             

; Name	:
	JSR $F3C8		; 84D4  20 C8 F3       
	JSR $F3D4		; 84D7  20 D4 F3       
	LDA #$00		; 84DA  A9 00          
	STA $90			; 84DC  85 90          
	LDX #$0B		; 84DE  A2 0B          
	LDA $9E			; 84E0  A5 9E          
	BNE BC84E6		; 84E2  D0 02          
	LDX #$02		; 84E4  A2 02          
BC84E6:
	STX $91			; 84E6  86 91          
	LDA #$04		; 84E8  A9 04          
	STA $8F			; 84EA  85 8F          
	LDA #$FC		; 84EC  A9 FC          
	STA $10			; 84EE  85 10          
	LDA #$80		; 84F0  A9 80          
	STA $11			; 84F2  85 11          
	JSR $FAED		; 84F4  20 ED FA       
	JSR $8007		; 84F7  20 07 80       
	LDA $90			; 84FA  A5 90          
	BMI BC856C		; 84FC  30 6E          
	PHA			; 84FE  48             
	ASL A			; 84FF  0A             
	TAX			; 8500  AA             
	LDY $8209,X		; 8501  BC 09 82       
	LDA $8208,X		; 8504  BD 08 82       
	STA $10			; 8507  85 10          
	STY $11			; 8509  84 11          
	LDA $10			; 850B  A5 10          
	PHA			; 850D  48             
	LDA $11			; 850E  A5 11          
	PHA			; 8510  48             
	LDX #$08		; 8511  A2 08          
	LDA $9E			; 8513  A5 9E          
	BNE BC8519		; 8515  D0 02          
	LDX #$00		; 8517  A2 00          
BC8519:
	STX $91			; 8519  86 91          
	LDY #$1B		; 851B  A0 1B          
BC851D:
	LDA $8598,Y		; 851D  B9 98 85       
	STA $0338,Y		; 8520  99 38 03       
	DEY			; 8523  88             
	BPL BC851D		; 8524  10 F7          
	LDA #$38		; 8526  A9 38          
	STA $10			; 8528  85 10          
	LDA #$03		; 852A  A9 03          
	STA $11			; 852C  85 11          
	LDA #$1C		; 852E  A9 1C          
	STA $00			; 8530  85 00          
	JSR $F9D2		; 8532  20 D2 F9       
	JSR $F98D		; 8535  20 8D F9       
	LDA #$07		; 8538  A9 07          
	JSR $F4DA		; 853A  20 DA F4       
	LDA #$A4		; 853D  A9 A4          
	STA $10			; 853F  85 10          
	LDA #$81		; 8541  A9 81          
	STA $11			; 8543  85 11          
	JSR $F99F		; 8545  20 9F F9       
	LDA $90			; 8548  A5 90          
	CLC			; 854A  18             
.if ORIGINAL
	ADC #$31		; 854B  69 31		Load Record number
.else
	ADC #$42
.endif
	STA $0318		; 854D  8D 18 03       
	JSR $F9C6		; 8550  20 C6 F9       
	JSR $F98D		; 8553  20 8D F9       
	LDA #$06		; 8556  A9 06          
	JSR $F4DA		; 8558  20 DA F4       
	PLA			; 855B  68             
	STA $11			; 855C  85 11          
	PLA			; 855E  68             
	STA $10			; 855F  85 10          
	JSR $812D		; 8561  20 2D 81       
	BPL BC856D		; 8564  10 07          
	PLA			; 8566  68             
	STA $90  		; 8567  85 90          
	JMP $84DE		; 8569  4C DE 84       
BC856C:
	RTS			; 856C  60             

BC856D:
	LDA #$0F		; 856D  A9 0F          
	STA $12			; 856F  85 12          
	LDA #$62		; 8571  A9 62          
	STA $13			; 8573  85 13          
	JSR $85C6		; 8575  20 C6 85       
	LDA #$7C		; 8578  A9 7C          
	STA $10			; 857A  85 10          
	LDA #$8B		; 857C  A9 8B          
	STA $11			; 857E  85 11          
	JSR $FAFB		; 8580  20 FB FA       
	LDA #$FF		; 8583  A9 FF          
	STA $0561		; 8585  8D 61 05       
	JSR $F528		; 8588  20 28 F5       
BC858B:
	JSR $F4D3		; 858B  20 D3 F4       
	LDA $7E			; 858E  A5 7E          
	BEQ BC858B		; 8590  F0 F9          
	LDX #$FF		; 8592  A2 FF          
	TXS			; 8594  9A             
	JMP $C003		; 8595  4C 03 C0       

;$8598 - data block = string 14 x 2
.if ORIGINAL
.byte $20,$20,$20,$20,$de,$20,$20,$20
.byte $20,$20,$20,$20,$20,$20,$20,$20,$db,$b0,$c4,$7c,$8f,$7d,$20,$20
.byte $20,$20,$20,$20
.else
.byte $40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40
.byte $40,$40,B_RO,B_D_E,B_HAP,B_NEE,B_DA,B_DOT,$40,$40,$40,$40,$40,$40
.endif

; Name	:
	LDA $91			; 85B4  A5 91          
	CMP #$0B		; 85B6  C9 0B          
	BEQ BC85BE		; 85B8  F0 04          
	CMP #$02		; 85BA  C9 02          
	BNE BC85C4		; 85BC  D0 06          
BC85BE:
	LDA $9B			; 85BE  A5 9B          
	BNE BC85C4		; 85C0  D0 02          
	CLC			; 85C2  18             
	RTS			; 85C3  60             
BC85C4:
	SEC			; 85C4  38             
	RTS			; 85C5  60             

; Name	:
	LDA #$0A		; 85C6  A9 0A          
	STA $14			; 85C8  85 14          
	LDA #$02		; 85CA  A9 02          
	STA $15			; 85CC  85 15          
	LDY #$00		; 85CE  A0 00          
BC85D0:
	LDA ($10),Y		; 85D0  B1 10          
	STA ($12),Y		; 85D2  91 12          
	INC $10			; 85D4  E6 10          
	BNE BC85DA		; 85D6  D0 02          
	INC $11			; 85D8  E6 11          
BC85DA:
	INC $12			; 85DA  E6 12          
	BNE BC85E0		; 85DC  D0 02          
	INC $13			; 85DE  E6 13          
BC85E0:
	LDA $14			; 85E0  A5 14          
	BNE BC85E6		; 85E2  D0 02          
	DEC $15			; 85E4  C6 15          
BC85E6:
	DEC $14			; 85E6  C6 14          
	LDA $14			; 85E8  A5 14          
	ORA $15			; 85EA  05 15          
	BNE BC85D0		; 85EC  D0 E2          
	RTS			; 85EE  60             

; Name	:
	LDA #$0A		; 85EF  A9 0A          
	STA $12			; 85F1  85 12          
	LDA #$02		; 85F3  A9 02          
	STA $13			; 85F5  85 13          
	LDA #$00		; 85F7  A9 00          
	STA $14			; 85F9  85 14          
	LDA #$00		; 85FB  A9 00          
	STA $15			; 85FD  85 15          
	LDY #$00		; 85FF  A0 00          
BC8601:
	LDA ($10),Y		; 8601  B1 10          
	CLC			; 8603  18             
	ADC $14			; 8604  65 14          
	STA $14			; 8606  85 14          
	BCC BC860C		; 8608  90 02          
	INC $15			; 860A  E6 15          
BC860C:
	INC $10			; 860C  E6 10          
	BNE BC8612		; 860E  D0 02          
	INC $11			; 8610  E6 11          
BC8612:
	LDA $12			; 8612  A5 12          
	BNE BC8618		; 8614  D0 02          
	DEC $13			; 8616  C6 13          
BC8618:
	DEC $12			; 8618  C6 12          
	LDA $12			; 861A  A5 12          
	ORA $13			; 861C  05 13          
	BNE BC8601		; 861E  D0 E1          
	RTS			; 8620  60             

; Name	:
	LDA #$0A                ; 8621  A9 0A          
	STA $12			; 8623  85 12          
	LDA #$02		; 8625  A9 02          
	STA $13			; 8627  85 13          
	LDY #$00		; 8629  A0 00          
	STY $0F			; 862B  84 0F          
BC862D:
	LDA ($10),Y		; 862D  B1 10          
	EOR $0F			; 862F  45 0F          
	STA $0F			; 8631  85 0F          
	INC $10			; 8633  E6 10          
	BNE BC8639		; 8635  D0 02          
	INC $11			; 8637  E6 11          
BC8639:
	LDA $12			; 8639  A5 12          
	BNE BC863F		; 863B  D0 02          
	DEC $13			; 863D  C6 13          
BC863F:
	DEC $12			; 863F  C6 12          
	LDA $12			; 8641  A5 12          
	ORA $13			; 8643  05 13          
	BNE BC862D		; 8645  D0 E6          
	RTS			; 8647  60             

	LDA #$00		; 8648  A9 00          
	STA $9C			; 864A  85 9C          
	LDA #$A0		; 864C  A9 A0          
	STA $10			; 864E  85 10          
	LDA #$82		; 8650  A9 82          
	STA $11			; 8652  85 11          
	JSR $FAED		; 8654  20 ED FA       
	JSR $812D		; 8657  20 2D 81       
	BPL BC865D		; 865A  10 01          
	RTS			; 865C  60             

BC865D:
	LDA #$00		; 865D  A9 00          
	STA $0560		; 865F  8D 60 05       
	JSR $D4D0		; 8662  20 D0 D4       
	JSR $C278		; 8665  20 78 C2       
	JSR $C2EF		; 8668  20 EF C2       
	LDX $6213		; 866B  AE 13 62       
BC866E:
	INX			; 866E  E8             
	CPX #$05		; 866F  E0 05          
	BCC BC8684		; 8671  90 11          
	JSR $81B2		; 8673  20 B2 81       
	JSR $8A38		; 8676  20 38 8A       
	JSR $86E2		; 8679  20 E2 86       
	JSR $88D0		; 867C  20 D0 88       
	JSR $86A1		; 867F  20 A1 86       
	LDX #$01		; 8682  A2 01          
BC8684:
	STX $6213		; 8684  8E 13 62       
	LDA $6219,X		; 8687  BD 19 62       
	BMI BC866E		; 868A  30 E2          
	LDA $621D,X		; 868C  BD 1D 62       
	BMI BC8696		; 868F  30 05          
	LDA #$17		; 8691  A9 17          
	JSR $F2EE		; 8693  20 EE F2       
BC8696:
	JSR $D321		; 8696  20 21 D3       
	JSR $88EB		; 8699  20 EB 88       
	LDA #$FF		; 869C  A9 FF          
	STA $9C			; 869E  85 9C          
	RTS			; 86A0  60             

; Name	:
; Marks	: Some calcuration
	JSR $8860		; 86A1  20 60 88       
	JSR $87FB               ; 86A4  20 FB 87       
	JSR $8748               ; 86A7  20 48 87       
	JSR $8762               ; 86AA  20 62 87       
	JSR $8780               ; 86AD  20 80 87       
	JSR $896D               ; 86B0  20 6D 89       
	JSR $89C2               ; 86B3  20 C2 89	SCREEN CHANGED ??
	JSR $8A0C               ; 86B6  20 0C 8A       
	JSR $86BD               ; 86B9  20 BD 86       
	RTS                     ; 86BC  60             

; Name	:
; Marks	: Calcurate city income ??
;	  $045C-$045F
;	  $0460-$0463
;	  $0464-$0467
	LDX #$0B		; 86BD  A2 0B          
	LDA #$00		; 86BF  A9 00          
BC86C1:
	STA $045C,X		; 86C1  9D 5C 04       
	DEX			; 86C4  CA             
	BPL BC86C1		; 86C5  10 FA          
	LDA #$5C		; 86C7  A9 5C          
	STA $10			; 86C9  85 10          
	LDA #$04		; 86CB  A9 04          
	STA $11			; 86CD  85 11		+$10 = $045C
	LDA #$60		; 86CF  A9 60          
	STA $12			; 86D1  85 12          
	LDA #$04		; 86D3  A9 04          
	STA $13			; 86D5  85 13		+$12 = $0460
	LDA #$64		; 86D7  A9 64          
	STA $14			; 86D9  85 14          
	LDA #$04		; 86DB  A9 04          
	STA $15			; 86DD  85 15		+$14 = $0464
	JMP $86FA		; 86DF  4C FA 86       

; Name	:
	LDA #$23		; 86E2  A9 23          
	STA $10			; 86E4  85 10          
	LDA #$62		; 86E6  A9 62          
	STA $11			; 86E8  85 11          
	LDA #$27		; 86EA  A9 27          
	STA $12			; 86EC  85 12          
	LDA #$62		; 86EE  A9 62          
	STA $13			; 86F0  85 13          
	LDA #$2B		; 86F2  A9 2B          
	STA $14			; 86F4  85 14          
	LDA #$62		; 86F6  A9 62          
	STA $15			; 86F8  85 15          
	LDX #$15		; 86FA  A2 15          
BC86FC:
	LDA $62A3,X		; 86FC  BD A3 62       
	BEQ BC8744		; 86FF  F0 43          
	TAY			; 8701  A8             
	DEY			; 8702  88             
	LDA $6261,X		; 8703  BD 61 62       
	CLC			; 8706  18             
	ADC ($10),Y		; 8707  71 10          
	STA ($10),Y		; 8709  91 10          
	LDA $6277,X		; 870B  BD 77 62       
	ADC ($12),Y		; 870E  71 12          
	STA ($12),Y		; 8710  91 12          
	LDA ($12),Y		; 8712  B1 12          
	CMP #$27		; 8714  C9 27          
	BCC BC8744		; 8716  90 2C          
	BNE BC8720		; 8718  D0 06          
	LDA #$10		; 871A  A9 10          
	CMP ($10),Y		; 871C  D1 10          
	BCS BC8744		; 871E  B0 24          
BC8720:
	LDA ($10),Y		; 8720  B1 10          
	SEC			; 8722  38             
	SBC #$10		; 8723  E9 10          
	STA ($10),Y		; 8725  91 10          
	LDA ($12),Y		; 8727  B1 12          
	SBC #$27		; 8729  E9 27          
	STA ($12),Y		; 872B  91 12          
	LDA ($14),Y		; 872D  B1 14          
	CLC			; 872F  18             
	ADC #$01		; 8730  69 01          
	STA ($14),Y		; 8732  91 14          
	CMP #$0A		; 8734  C9 0A          
	BCC BC8744		; 8736  90 0C          
	LDA #$09		; 8738  A9 09          
	STA ($14),Y		; 873A  91 14          
	LDA #$0F		; 873C  A9 0F          
	STA ($10),Y		; 873E  91 10          
	LDA #$27		; 8740  A9 27          
	STA ($12),Y		; 8742  91 12          
BC8744:
	DEX			; 8744  CA             
	BNE BC86FC		; 8745  D0 B5          
	RTS			; 8747  60             

; Name	:
	LDA #$00		; 8748  A9 00          
	LDX #$03		; 874A  A2 03          
BC874C:
	STA $046C,X		; 874C  9D 6C 04       
	DEX			; 874F  CA             
	BPL BC874C		; 8750  10 FA          
	LDY #$16		; 8752  A0 16          
BC8754:
	LDA $62A3,Y		; 8754  B9 A3 62       
	BEQ BC875E		; 8757  F0 05          
	TAX			; 8759  AA             
	DEX			; 875A  CA             
	INC $046C,X		; 875B  FE 6C 04       
BC875E:
	DEY			; 875E  88             
	BPL BC8754		; 875F  10 F3          
	RTS			; 8761  60             

; Name	:
	LDA #$00		; 8762  A9 00          
	LDX #$03		; 8764  A2 03          
BC8766:
	STA $6247,X		; 8766  9D 47 62       
	DEX			; 8769  CA             
	BPL BC8766		; 876A  10 FA          
	LDY #$0F		; 876C  A0 0F          
BC876E:
	LDA $6359,Y		; 876E  B9 59 63       
	AND #$40		; 8771  29 40          
	BEQ BC877C		; 8773  F0 07          
	TYA			; 8775  98             
	LSR A			; 8776  4A             
	LSR A			; 8777  4A             
	TAX			; 8778  AA             
	INC $6247,X		; 8779  FE 47 62       
BC877C:
	DEY			; 877C  88             
	BPL BC876E		; 877D  10 EF          
	RTS			; 877F  60             

; Name	:
	LDX #$15		; 8780  A2 15          
	LDA #$00		; 8782  A9 00          
BC8784:
	STA $04B0,X		; 8784  9D B0 04       
	STA $04C6,X		; 8787  9D C6 04       
	STA $04DC,X		; 878A  9D DC 04       
	STA $04F2,X		; 878D  9D F2 04       
	STA $0508,X		; 8790  9D 08 05       
	STA $051E,X		; 8793  9D 1E 05       
	STA $0534,X		; 8796  9D 34 05       
	STA $054A,X		; 8799  9D 4A 05       
	DEX			; 879C  CA             
	BPL BC8784		; 879D  10 E5          
	LDA #$F2		; 879F  A9 F2          
	STA $10			; 87A1  85 10          
	LDA #$04		; 87A3  A9 04          
	STA $11			; 87A5  85 11          
	LDA #$4A		; 87A7  A9 4A          
	STA $12			; 87A9  85 12          
	LDA #$05		; 87AB  A9 05          
	STA $13			; 87AD  85 13          
	LDX #$0F		; 87AF  A2 0F          
	LDA #$04		; 87B1  A9 04          
	STA $00			; 87B3  85 00          
BC87B5:
	LDA $6369,X		; 87B5  BD 69 63       
	TAY			; 87B8  A8             
	LDA ($10),Y		; 87B9  B1 10          
	CLC			; 87BB  18             
	ADC #$01		; 87BC  69 01          
	STA ($10),Y		; 87BE  91 10          
	LDA $6359,X		; 87C0  BD 59 63       
	AND #$10		; 87C3  29 10          
	BNE BC87D5		; 87C5  D0 0E          
	LDA $6359,X		; 87C7  BD 59 63       
	AND #$40		; 87CA  29 40          
	BEQ BC87D5		; 87CC  F0 07          
	LDA ($12),Y		; 87CE  B1 12          
	CLC			; 87D0  18             
	ADC #$01		; 87D1  69 01          
	STA ($12),Y		; 87D3  91 12          
BC87D5:
	DEC $00			; 87D5  C6 00          
	BNE BC87F7		; 87D7  D0 1E          
	LDA #$04		; 87D9  A9 04          
	STA $00			; 87DB  85 00          
	SEC			; 87DD  38             
	LDA $10			; 87DE  A5 10          
	SBC #$16		; 87E0  E9 16          
	STA $10			; 87E2  85 10          
	LDA $11			; 87E4  A5 11          
	SBC #$00		; 87E6  E9 00          
	STA $11			; 87E8  85 11          
	SEC			; 87EA  38             
	LDA $12			; 87EB  A5 12          
	SBC #$16		; 87ED  E9 16          
	STA $12			; 87EF  85 12          
	LDA $13			; 87F1  A5 13          
	SBC #$00		; 87F3  E9 00          
	STA $13			; 87F5  85 13          
BC87F7:
	DEX			; 87F7  CA             
	BPL BC87B5		; 87F8  10 BB          
	RTS			; 87FA  60             

; Name	:
	LDA #$FF		; 87FB  A9 FF          
	LDX #$0F		; 87FD  A2 0F          
BC87FF:
	STA $0470,X		; 87FF  9D 70 04       
	STA $0480,X		; 8802  9D 80 04       
	DEX			; 8805  CA             
	BPL BC87FF		; 8806  10 F7          
	LDA #$00		; 8808  A9 00          
	STA $00			; 880A  85 00          
	STA $01			; 880C  85 01          
	LDA #$05		; 880E  A9 05          
	STA $03			; 8810  85 03          
	LDA $01			; 8812  A5 01          
	LSR A			; 8814  4A             
	LSR A			; 8815  4A             
	TAX			; 8816  AA             
	LDA $621A,X		; 8817  BD 1A 62       
	TAX			; 881A  AA             
	DEX			; 881B  CA             
	LDA $F91B,X		; 881C  BD 1B F9       
	STA $02			; 881F  85 02          
BC8821:
	LDX $00			; 8821  A6 00          
	LDA $62B9,X		; 8823  BD B9 62       
	BPL BC8849		; 8826  10 21          
	BEQ BC8849		; 8828  F0 1F          
	PHA			; 882A  48             
	AND #$03		; 882B  29 03          
	CLC			; 882D  18             
	ADC $01			; 882E  65 01          
	TAY			; 8830  A8             
	LDX $00			; 8831  A6 00          
	LDA $F923,X		; 8833  BD 23 F9       
	CLC			; 8836  18             
	ADC $02			; 8837  65 02          
	TAX			; 8839  AA             
	PLA			; 883A  68             
	AND #$04		; 883B  29 04          
	BEQ BC8845		; 883D  F0 06          
	TXA			; 883F  8A             
	STA $0480,Y		; 8840  99 80 04       
	BPL BC8849		; 8843  10 04          
BC8845:
	TXA			; 8845  8A             
	STA $0470,Y		; 8846  99 70 04       
BC8849:
	INC $00			; 8849  E6 00          
	LDA $00			; 884B  A5 00          
	CMP #$14		; 884D  C9 14          
	BCS BC885F		; 884F  B0 0E          
	DEC $03			; 8851  C6 03          
	BNE BC8821		; 8853  D0 CC          
	LDA $01			; 8855  A5 01          
	CLC			; 8857  18             
	ADC #$04		; 8858  69 04          
	STA $01			; 885A  85 01          
	JMP $880E		; 885C  4C 0E 88       
BC885F:
	RTS			; 885F  60             

; Name	:
	LDX #$0F		; 8860  A2 0F          
BC8862:
	LDA $6359,X		; 8862  BD 59 63       
	ORA #$40		; 8865  09 40          
	AND #$EF		; 8867  29 EF          
	STA $6359,X		; 8869  9D 59 63       
	LDA $63C9,X		; 886C  BD C9 63       
	BEQ BC8876		; 886F  F0 05          
	LDA $63B9,X		; 8871  BD B9 63       
	BNE BC887E		; 8874  D0 08          
BC8876:
	LDA #$00		; 8876  A9 00          
	STA $63C9,X		; 8878  9D C9 63       
	STA $63B9,X		; 887B  9D B9 63       
BC887E:
	LDA $63A9,X		; 887E  BD A9 63       
	BEQ BC8888		; 8881  F0 05          
	LDA $6399,X		; 8883  BD 99 63       
	BNE BC8898		; 8886  D0 10          
BC8888:
	LDA #$00		; 8888  A9 00          
	STA $63A9,X		; 888A  9D A9 63       
	STA $6399,X		; 888D  9D 99 63       
	LDA $6359,X		; 8890  BD 59 63       
	ORA #$10		; 8893  09 10          
	STA $6359,X		; 8895  9D 59 63       
BC8898:
	LDA $63E9,X		; 8898  BD E9 63       
	BEQ BC88A2		; 889B  F0 05          
	LDA $63D9,X		; 889D  BD D9 63       
	BNE BC88B2		; 88A0  D0 10          
BC88A2:
	LDA #$00		; 88A2  A9 00          
	STA $63D9,X		; 88A4  9D D9 63       
	STA $63E9,X		; 88A7  9D E9 63       
	LDA $6359,X		; 88AA  BD 59 63       
	ORA #$10		; 88AD  09 10          
	STA $6359,X		; 88AF  9D 59 63       
BC88B2:
	LDA $6389,X		; 88B2  BD 89 63       
	BEQ BC88BC		; 88B5  F0 05          
	LDA $6379,X		; 88B7  BD 79 63       
	BNE BC88CC		; 88BA  D0 10          
BC88BC:
	LDA $6359,X		; 88BC  BD 59 63       
	PHA			; 88BF  48             
	JSR $C245		; 88C0  20 45 C2       
	PLA			; 88C3  68             
	AND #$80		; 88C4  29 80          
	STA $6359,X		; 88C6  9D 59 63       
	JMP $88CC		; 88C9  4C CC 88       

BC88CC:
	DEX			; 88CC	$ca
	BPL BC8862		; 88CD	$10 $93
	RTS			; 88CF	$60

; Name	:
	LDX #$0F		; 88D0  A2 0F          
BC88D2:
	LDA $6359,X		; 88D2  BD 59 63       
	AND #$7F		; 88D5  29 7F          
	STA $6359,X		; 88D7  9D 59 63       
	DEX			; 88DA  CA             
	BPL BC88D2		; 88DB  10 F5          
	LDX #$15		; 88DD  A2 15          
BC88DF:
	LDA $624B,X		; 88DF  BD 4B 62       
	AND #$7F		; 88E2  29 7F          
	STA $624B,X		; 88E4  9D 4B 62       
	DEX			; 88E7  CA             
	BPL BC88DF		; 88E8  10 F5          
	RTS			; 88EA  60             

; Name	:
	LDA #$00		; 88EB  A9 00          
	STA $9B			; 88ED  85 9B          
	LDX $6213		; 88EF  AE 13 62       
	LDA $6219,X		; 88F2  BD 19 62       
	BMI BC891C		; 88F5  30 25          
	LDA $F91A,X		; 88F7  BD 1A F9       
	TAX			; 88FA  AA             
	LDY #$05		; 88FB  A0 05          
BC88FD:
	LDA $62B9,X		; 88FD  BD B9 62       
	BMI BC890E		; 8900  30 0C          
	BEQ BC890E		; 8902  F0 0A          
	DEC $62B9,X		; 8904  DE B9 62       
	BNE BC890E		; 8907  D0 05          
	JSR $891D		; 8909  20 1D 89       

;$890C
.byte $c6,$9b

BC890E:
	INX			; 890E  E8             
	DEY			; 890F  88             
	BNE BC88FD		; 8910  D0 EB          
	LDA $9B			; 8912  A5 9B          
	BEQ BC891C		; 8914  F0 06          
	JSR $C278		; 8916  20 78 C2       

;$8919
.byte $20,$ef,$c2

BC891C:
	RTS			; 891C	$60

;$891D
.byte $8a,$48,$98
.byte $48,$bd,$23,$f9,$85,$96,$ae,$13,$62,$bd,$19,$62,$aa,$bd,$1a,$f9
.byte $18,$65,$96,$85,$96,$20,$c8,$f3,$20,$d0,$f3,$a9,$09,$85,$91,$a9
.byte $52,$85,$14,$a9,$89,$85,$15

;	LDA #$52		; 893F  A9 52
;	STA $14			; 8941  85 14          
;	LDA #$89		; 8943  A9 89
;	STA $15			; 8945  85 15		0C/8952
;	JSR $E438		; 8947
.byte $20,$38,$e4,$20,$2f,$e5,$68,$a8,$68
.byte $aa,$60

;$8952 - data block = string table
.byte $fd,$03,$f5,$04,$fe,$26,$0b,$0d,$ff

; Name	:
	LDA #$00		; 895B  A9 00          
	LDY #$3F		; 895D  A0 3F          
BC895F:
	STA $0380,Y		; 895F  99 80 03       
	DEY			; 8962  88             
	BPL BC895F		; 8963  10 FA          
	LDA #$01		; 8965  A9 01          
	STA $30			; 8967  85 30          
	JSR $F4DC		; 8969  20 DC F4       
	RTS			; 896C  60             

; Name	:
	LDX #$0F		; 896D  A2 0F          
BC896F:
	LDA $6359,X		; 896F  BD 59 63       
	AND #$DF		; 8972  29 DF          
	STA $6359,X		; 8974  9D 59 63       
	LDA $6369,X		; 8977  BD 69 63       
	TAY			; 897A  A8             
	TXA			; 897B  8A             
	LSR A			; 897C  4A             
	LSR A			; 897D  4A             
	CLC			; 897E  18             
	ADC #$01		; 897F  69 01          
	CMP $62A3,Y		; 8981  D9 A3 62       
	BNE BC89A8		; 8984  D0 22          
	LDY #$0F		; 8986  A0 0F          
BC8988:
	JSR $CE10		; 8988  20 10 CE       
	BCS BC89A3		; 898B  B0 16          
	LDA $6369,Y		; 898D  B9 69 63       
	CMP $6369,X		; 8990  DD 69 63       
	BNE BC89A3		; 8993  D0 0E          
	LDA $6359,Y		; 8995  B9 59 63       
	AND #$10		; 8998  29 10          
	BNE BC89A3		; 899A  D0 07          
	LDA $6359,Y		; 899C  B9 59 63       
	AND #$40		; 899F  29 40          
	BNE BC89A8		; 89A1  D0 05          
BC89A3:
	DEY			; 89A3  88             
	BPL BC8988		; 89A4  10 E2          
	BMI BC89BE		; 89A6  30 16          
BC89A8:
	LDA $6359,X		; 89A8  BD 59 63       
	AND #$40		; 89AB  29 40          
	BEQ BC89BE		; 89AD  F0 0F          
	LDA $6359,X		; 89AF  BD 59 63       
	AND #$10		; 89B2  29 10          
	BNE BC89BE		; 89B4  D0 08          
	LDA $6359,X		; 89B6  BD 59 63       
	ORA #$20		; 89B9  09 20          
	STA $6359,X		; 89BB  9D 59 63       
BC89BE:
	DEX			; 89BE  CA             
	BPL BC896F		; 89BF  10 AE          
	RTS			; 89C1  60             

; Name	:
	JSR $8780		; 89C2  20 80 87       
	LDX #$15		; 89C5  A2 15          
BC89C7:
	LDA $624B,X		; 89C7  BD 4B 62       
	AND #$DF		; 89CA  29 DF          
	STA $624B,X		; 89CC  9D 4B 62       
	STX $00			; 89CF  86 00          
	LDA $62A3,X		; 89D1  BD A3 62       
	STA $01			; 89D4  85 01          
	LDX #$0F		; 89D6  A2 0F          
BC89D8:
	LDA $6369,X		; 89D8  BD 69 63       
	CMP $00			; 89DB  C5 00          
	BNE BC89F7		; 89DD  D0 18          
	TXA			; 89DF  8A             
	LSR A			; 89E0  4A             
	LSR A			; 89E1  4A             
	CLC			; 89E2  18             
	ADC #$01		; 89E3  69 01          
	CMP $01			; 89E5  C5 01          
	BEQ BC89F7		; 89E7  F0 0E          
	LDA $6359,X		; 89E9  BD 59 63       
	AND #$10		; 89EC  29 10          
	BNE BC89F7		; 89EE  D0 07          
	LDA $6359,X		; 89F0  BD 59 63       
	AND #$40		; 89F3  29 40          
	BNE BC89FC		; 89F5  D0 05          
BC89F7:
	DEX			; 89F7  CA             
	BPL BC89D8		; 89F8  10 DE          
	BMI BC8A06		; 89FA  30 0A          
BC89FC:
	LDX $00			; 89FC  A6 00          
	LDA $624B,X		; 89FE  BD 4B 62       
	ORA #$20		; 8A01  09 20          
	STA $624B,X		; 8A03  9D 4B 62       
BC8A06:
	LDX $00			; 8A06  A6 00          
	DEX			; 8A08  CA             
	BPL BC89C7		; 8A09  10 BC          
	RTS			; 8A0B  60             

; Name	:
	LDX #$0F		; 8A0C  A2 0F          
BC8A0E:
	LDA $6359,X		; 8A0E  BD 59 63       
	AND #$F7		; 8A11  29 F7          
	STA $6359,X		; 8A13  9D 59 63       
	LDA $6369,X		; 8A16  BD 69 63       
	TAY			; 8A19  A8             
	TXA			; 8A1A  8A             
	LSR A			; 8A1B  4A             
	LSR A			; 8A1C  4A             
	CLC			; 8A1D  18             
	ADC #$01		; 8A1E  69 01          
	CMP $62A3,Y		; 8A20  D9 A3 62       
	BNE BC8A34		; 8A23  D0 0F          
	LDA $624B,Y		; 8A25  B9 4B 62       
	AND #$20		; 8A28  29 20          
	BNE BC8A34		; 8A2A  D0 08          
	LDA $6359,X		; 8A2C  BD 59 63       
	ORA #$08		; 8A2F  09 08          
	STA $6359,X		; 8A31  9D 59 63       
BC8A34:
	DEX			; 8A34  CA             
	BPL BC8A0E		; 8A35  10 D7          
	RTS			; 8A37  60             

; Name	:
	LDA $6219		; 8A38  AD 19 62       
	BMI BC8A55		; 8A3B  30 18          
	CMP $6216		; 8A3D  CD 16 62       
	BNE BC8A55		; 8A40  D0 13          
	LDA $6214		; 8A42  AD 14 62       
	CMP $6217		; 8A45  CD 17 62       
	BNE BC8A55		; 8A48  D0 0B          
	LDA $6215		; 8A4A  AD 15 62       
	CMP $6218		; 8A4D  CD 18 62       
	BNE BC8A55		; 8A50  D0 03          
	JMP $D23D		; 8A52  4C 3D D2       
BC8A55:
	RTS			; 8A55  60             

;$8A56
.byte $20,$c8,$f3,$a9,$00,$85,$92,$8d,$60,$05
.byte $20,$d0,$d4,$a9,$09,$85,$91,$ad,$11,$62,$09,$04,$8d,$11,$62,$20
.byte $a1,$86,$20,$da,$8a,$20,$90,$8a,$a9,$5f,$85,$44,$20,$07,$8b,$20
.byte $08,$8d,$20,$78,$8d,$20,$1b,$f5,$e6,$95,$20,$eb,$d1,$4c,$25,$fe
.byte $a0,$7f,$a9,$00,$99,$00,$03,$88,$10,$fa,$a9,$21,$85,$2d,$a9,$80
.byte $85,$2c,$a9,$01,$85,$33,$20,$dc,$f4,$a9,$22,$85,$2d,$a9,$00,$85
.byte $2c,$a9,$01,$85,$33,$20,$dc,$f4,$20,$8d,$f9,$a9,$22,$85,$2d,$a9
.byte $80,$85,$2c,$a9,$40,$85,$32,$20,$dc,$f4,$a9,$d8,$85,$2c,$a9,$23
.byte $85,$2d,$a9,$18,$85,$32,$20,$dc,$f4,$60,$a9,$0f,$8d,$c1,$03,$a9
.byte $01,$85,$2f,$ce,$16,$62,$d0,$08,$ce,$14,$62,$a9,$0c,$8d,$16,$62
.byte $a9,$ff,$85,$14,$a9,$8a,$85,$15

;	LDA #$FF		; 8AF0  A9 FF
;	STA $14			; 8AF2  85 14          
;	LDA #$8A		; 8AF4  A9 8A
;	STA $15			; 8AF6  85 15		0C/8AFF
;	JSR $E438		; 8AF8
.byte $20,$38,$e4,$20,$2f,$e5,$60

;$8AFF - data block = string table
.byte $10
;$8B00
.byte $f8,$00,$f7,$0e,$fe,$0f,$ff

;$8B07
.byte $20,$a1,$86,$20,$6d,$f9,$20,$bf,$fc
.byte $a0,$1d,$a9,$49,$99,$41,$03,$88,$10,$fa,$a9,$69,$a0,$8c,$20,$09
.byte $fb,$ad,$22,$62,$a0,$00,$4a,$b0,$19,$48,$98,$48,$be,$65,$8c,$a0
.byte $06,$a9,$2d,$9d,$20,$03,$a9,$62,$9d,$00,$03,$e8,$88,$d0,$f2,$68
.byte $a8,$68,$c8,$c0,$04,$d0,$df,$a9,$80,$85,$00,$20,$ca,$f9,$a9,$21
.byte $85,$2d,$a9,$80,$85,$2c,$a9,$01,$85,$33,$20,$dc,$f4,$20,$6d,$f9
.byte $a9,$ae,$a0,$8c,$20,$09,$fb,$ad,$22,$62,$85,$01,$a2,$00,$86,$95
.byte $bd,$65,$8c,$85,$02,$a5,$01,$4a,$85,$01,$90,$38,$a6,$95,$bd,$6c
.byte $04,$20,$d4,$f8,$8a,$a6,$02,$9d,$02,$03,$98,$9d,$03,$03,$a6,$95
.byte $bd,$5c,$04,$85,$18,$bd,$60,$04,$85,$19,$bd,$64,$04,$85,$00,$20
.byte $c3,$f8,$a0,$00,$a6,$02,$b9,$50,$04,$9d,$40,$03,$e8,$c8,$c0,$06
.byte $90,$f4,$b0,$12,$a9,$2d,$a6,$02,$a0,$00,$9d,$00,$03,$9d,$40,$03
.byte $e8,$c8,$c0,$06,$90,$f4,$a6,$95,$e8,$e0,$04,$90,$a1,$a9,$80,$85
.byte $00,$20,$ca,$f9,$a9,$22,$85,$2d,$a9,$00,$85,$2c,$a9,$01,$85,$33
.byte $20,$dc,$f4,$20,$6d,$f9,$a0,$1d,$a9,$4a,$99,$21,$03,$88,$10,$fa
.byte $a9,$e9,$a0,$8c,$20,$09,$fb,$ad,$22,$62,$85,$01,$a2,$00,$86,$95
;$8C00
.byte $bd,$65,$8c,$85,$02,$a5,$01,$4a,$85,$01,$90,$26,$a6,$95,$bd,$23
.byte $62,$85,$18,$bd,$27,$62,$85,$19,$bd,$2b,$62,$85,$00,$20,$c3,$f8
.byte $a0,$00,$a6,$02,$b9,$50,$04,$9d,$00,$03,$e8,$c8,$c0,$06,$90,$f4
.byte $b0,$0f,$a9,$2d,$a6,$02,$a0,$00,$9d,$00,$03,$e8,$c8,$c0,$06,$90
.byte $f7,$a6,$95,$e8,$e0,$04,$90,$b6,$a9,$80,$85,$00,$20,$ca,$f9,$20
.byte $8d,$f9,$a9,$22,$85,$2d,$a9,$80,$85,$2c,$a9,$40,$85,$32,$20,$dc
.byte $f4,$20,$0b,$f5,$60,$04,$0b,$12,$19,$00,$03,$03,$69,$0a,$69,$11
.byte $69,$18,$69,$20,$47,$23,$64,$2a,$64,$31,$64,$38,$64,$3f,$48,$40
.byte $67,$43,$6b,$4a,$6b,$51,$6b,$58,$6b,$5f,$68,$60,$47,$63,$64,$6a
.byte $64,$71,$64,$78,$64,$7f,$48,$26,$71,$27,$75,$2d,$71,$2e,$76,$34
.byte $77,$35,$72,$36,$9b,$3b,$90,$3c,$84,$1c,$5e,$3d,$98,$ff,$00,$03
.byte $01,$84,$02,$7c,$41,$ea,$42,$eb,$00,$47,$03,$64,$0a,$64,$11,$64
.byte $18,$64,$1f,$48,$20,$47,$23,$64,$2a,$64,$31,$64,$38,$64,$3f,$48
.byte $40,$47,$43,$64,$4a,$64,$51,$64,$58,$64,$5f,$48,$60,$47,$63,$64
.byte $6a,$64,$71,$64,$78,$64,$7f,$48,$ff,$00,$03,$01,$75,$02,$e8,$00
.byte $47,$03,$64,$0a,$64,$11,$64,$18,$64,$1f,$48,$20,$65,$23,$6a,$2a
;$8D00
.byte $6a,$31,$6a,$38,$6a,$3f,$66,$ff,$a2,$00,$86,$9b,$a0,$01,$bd,$6c
.byte $04,$d9,$6c,$04,$f0,$08,$b0,$58,$a9,$00,$85,$9b,$90,$50,$a9,$01
.byte $85,$9b,$bd,$64,$04,$d9,$64,$04,$f0,$04,$b0,$44,$90,$40,$bd,$60
.byte $04,$d9,$60,$04,$f0,$04,$b0,$38,$90,$34,$bd,$5c,$04,$d9,$5c,$04
.byte $f0,$04,$b0,$2c,$90,$28,$a9,$02,$85,$9b,$bd,$2b,$62,$d9,$2b,$62
.byte $f0,$04,$b0,$1c,$90,$18,$bd,$27,$62,$d9,$27,$62,$f0,$04,$b0,$10
.byte $90,$0c,$bd,$23,$62,$d9,$23,$62,$f0,$06,$b0,$04,$90,$00,$98,$aa
.byte $c8,$c0,$04,$90,$99,$86,$95,$60,$a6,$9b,$f0,$19,$ca,$f0,$0b,$a9
.byte $c3,$85,$14,$a9,$8d,$85,$15,$4c,$9d,$8d,$a9,$b5,$85,$14,$a9,$8d
.byte $85,$15,$4c,$9d,$8d,$a9,$a4,$85,$14,$a9,$8d,$85,$15

;	LDA #$A4		; 8D95  A9 A4
;	STA $14			; 8D97  85 14          
;	LDA #$8D		; 8D99  A9 8D          
;	STA $15			; 8D9B  85 15		0C/8DA4
;	JSR $E438		; 8D9D
.byte $20,$38,$e4
.byte $20,$2f,$e5,$60
;$8DA4 - data block = string table
.byte $11,$03,$00,$13,$14,$00,$f6,$15,$00,$03,$fe,$16
.byte $fe,$f6,$15,$17,$ff
;$8DB5
.byte $11,$03,$00,$13,$04,$18,$fe,$19,$1b,$fe,$f6
.byte $15,$17,$ff,$11,$12,$00,$19,$04,$18,$fe,$1a,$1b,$fe,$f6,$15,$17
.byte $ff,$90,$01,$60

	JSR $9097		; 8DD4  20 97 90       
BC8DD7:
	JSR $F4D3		; 8DD7  20 D3 F4       
	LDA #$02		; 8DDA  A9 02          
	BIT $7E			; 8DDC  24 7E          
	BEQ BC8DD7		; 8DDE  F0 F7          
	JSR $F2DE		; 8DE0  20 DE F2       
	JSR $D4D0		; 8DE3  20 D0 D4       
	JMP $C2EF		; 8DE6  4C EF C2       
	JSR $F3C8		; 8DE9  20 C8 F3       
	LDX #$00		; 8DEC  A2 00          
	STX $03			; 8DEE  86 03          
	STX $04			; 8DF0  86 04          
	LDX #$FF		; 8DF2  A2 FF          
	STX $A3			; 8DF4  86 A3          
	JSR $922A		; 8DF6  20 2A 92       
	LDA #$00		; 8DF9  A9 00          
	STA $24			; 8DFB  85 24          
BC8DFD:
	JSR $8EB0		; 8DFD  20 B0 8E       
	LDA #$80		; 8E00  A9 80          
	BIT $7E			; 8E02  24 7E          
	BEQ BC8E1A		; 8E04  F0 14          
	LDA $04			; 8E06  A5 04          
	CMP #$05		; 8E08  C9 05          
	BCS BC8DFD		; 8E0A  B0 F1          
	LDA $03			; 8E0C  A5 03          
	CMP #$03		; 8E0E  C9 03          
	BCS BC8DFD		; 8E10  B0 EB          
	INC $03			; 8E12  E6 03          
	JSR $F2CE		; 8E14  20 CE F2       
	JMP $8DF9		; 8E17  4C F9 8D       
BC8E1A:
	LDA #$40		; 8E1A  A9 40          
	BIT $7E			; 8E1C  24 7E          
	BEQ BC8E2C		; 8E1E  F0 0C          
	LDA $03			; 8E20  A5 03          
	BEQ BC8DFD		; 8E22  F0 D9          
	JSR $F2CE		; 8E24  20 CE F2       

;$8E27
.byte $c6,$03,$4c,$f9,$8d

BC8E2C:
	LDA #$20		; 8E2C  A9 20          
	BIT $7E			; 8E2E  24 7E          
	BEQ BC8E47		; 8E30  F0 15          
	LDX #$03		; 8E32  A2 03          
	LDA $03			; 8E34  A5 03          
	BNE BC8E3A		; 8E36  D0 02          
	LDX #$04		; 8E38  A2 04          
BC8E3A:
	TXA			; 8E3A  8A             
	CMP $04			; 8E3B  C5 04          
	BCC BC8DFD		; 8E3D  90 BE          
	JSR $F2CE		; 8E3F  20 CE F2       
	INC $04			; 8E42  E6 04          
	JMP $8DF9		; 8E44  4C F9 8D       
BC8E47:
	LDA #$10		; 8E47  A9 10          
	BIT $7E			; 8E49  24 7E          
	BEQ BC8E59		; 8E4B  F0 0C          
	LDA $04			; 8E4D  A5 04          
	BEQ BC8DFD		; 8E4F  F0 AC          
	JSR $F2CE		; 8E51  20 CE F2       

;$8E54
.byte $c6,$04,$4c,$f9,$8d

BC8E59:
	LDA #$04		; 8E59  A9 04          
	BIT $7E			; 8E5B  24 7E          
	BEQ BC8E6B		; 8E5D  F0 0C          
	JSR $F2CE		; 8E5F  20 CE F2       

;$8E62
.byte $a5,$a3,$49,$ff,$85,$a3,$4c,$f6,$8d

BC8E6B:
	LDA #$01		; 8E6B  A9 01          
	BIT $7E			; 8E6D  24 7E          
	BEQ BC8E92		; 8E6F  F0 21          
	JSR $F2D6		; 8E71  20 D6 F2       
	LDA $04			; 8E74  A5 04          
	ASL A			; 8E76  0A             
	ASL A			; 8E77  0A             
	SEC			; 8E78  38             
	ADC $03			; 8E79  65 03          
	STA $92			; 8E7B  85 92          
	LDA $03			; 8E7D  A5 03          
	PHA			; 8E7F  48             
	LDA $04			; 8E80  A5 04          
	PHA			; 8E82  48             
	JSR $C2EF		; 8E83  20 EF C2       
	JSR $C3E1		; 8E86  20 E1 C3       
	PLA			; 8E89  68             
	STA $04			; 8E8A  85 04          
	PLA			; 8E8C  68             
	STA $03			; 8E8D  85 03          
	JMP $8DF6		; 8E8F  4C F6 8D       
BC8E92:
	LDA #$02		; 8E92  A9 02          
	BIT $7E			; 8E94  24 7E          
	BEQ BC8EAD		; 8E96  F0 15          
	JSR $F2DE		; 8E98  20 DE F2       
	LDX #$00		; 8E9B  A2 00          
	LDA $92			; 8E9D  A5 92          
	CMP #$0E		; 8E9F  C9 0E          
	BCC BC8EA4		; 8EA1  90 01          
	DEX			; 8EA3  CA             
BC8EA4:
	STX $0560		; 8EA4  8E 60 05       
	JSR $D4D0		; 8EA7  20 D0 D4       
	JMP $C2EF		; 8EAA  4C EF C2       
BC8EAD:
	JMP $8DFD		; 8EAD  4C FD 8D       

; Name	:
	LDA #$F0		; 8EB0  A9 F0          
	STA $0200		; 8EB2  8D 00 02       
	STA $0204		; 8EB5  8D 04 02       
	STA $0208		; 8EB8  8D 08 02       
	STA $020C		; 8EBB  8D 0C 02       
	LDA $24			; 8EBE  A5 24          
	AND #$10		; 8EC0  29 10          
	BNE BC8F0E		; 8EC2  D0 4A          
	LDX $04			; 8EC4  A6 04          
	LDA $8F11,X		; 8EC6  BD 11 8F       
	STA $0200		; 8EC9  8D 00 02       
	STA $0204		; 8ECC  8D 04 02       
	CLC			; 8ECF  18             
	ADC #$18		; 8ED0  69 18          
	STA $0208		; 8ED2  8D 08 02       
	STA $020C		; 8ED5  8D 0C 02       
	LDX $03			; 8ED8  A6 03          
	LDA $8F17,X		; 8EDA  BD 17 8F       
	STA $0203		; 8EDD  8D 03 02       
	STA $020B		; 8EE0  8D 0B 02       
	CLC			; 8EE3  18             
	ADC #$38		; 8EE4  69 38          
	STA $0207		; 8EE6  8D 07 02       
	STA $020F		; 8EE9  8D 0F 02       
	LDA #$05		; 8EEC  A9 05          
	STA $0201		; 8EEE  8D 01 02       
	STA $0205		; 8EF1  8D 05 02       
	STA $0209		; 8EF4  8D 09 02       
	STA $020D		; 8EF7  8D 0D 02       
	LDA #$01		; 8EFA  A9 01          
	STA $0202		; 8EFC  8D 02 02       
	ORA #$40		; 8EFF  09 40          
	STA $0206		; 8F01  8D 06 02       
	ORA #$80		; 8F04  09 80          
	STA $020E		; 8F06  8D 0E 02       
	AND #$BF		; 8F09  29 BF          
	STA $020A		; 8F0B  8D 0A 02       
BC8F0E:
	JMP $F3D0		; 8F0E  4C D0 F3       

;$8F11 - data block =
.byte $17,$37,$57,$77,$97,$b7,$00,$40,$80,$c0

	LDA #$00		; 8F1B  A9 00          
	STA $03			; 8F1D  85 03          
	LDA $6213		; 8F1F  AD 13 62       
	STA $95			; 8F22  85 95          
BC8F24:
	JSR $F3C8		; 8F24  20 C8 F3       
	JSR $93B8		; 8F27  20 B8 93       
	LDA #$00		; 8F2A  A9 00          
	STA $24			; 8F2C  85 24          
	JSR $8FDA		; 8F2E  20 DA 8F       
	LDA #$20		; 8F31  A9 20          
	BIT $7E			; 8F33  24 7E          
	BEQ BC8F48		; 8F35  F0 11          
	JSR $F2CE		; 8F37  20 CE F2       
	LDX $03			; 8F3A  A6 03          
	INX			; 8F3C  E8             
	CPX #$04		; 8F3D  E0 04          
	BCC BC8F43		; 8F3F  90 02          
	LDX #$00		; 8F41  A2 00          
BC8F43:
	STX $03			; 8F43  86 03          
	JMP $8F2A		; 8F45  4C 2A 8F       
BC8F48:
	LDA #$10		; 8F48  A9 10          
	BIT $7E			; 8F4A  24 7E          
	BEQ BC8F5D		; 8F4C  F0 0F          
	JSR $F2CE		; 8F4E  20 CE F2       
	LDX $03			; 8F51  A6 03          
	DEX			; 8F53  CA             
	BPL BC8F58		; 8F54  10 02          
	LDX #$03		; 8F56  A2 03          
BC8F58:
	STX $03			; 8F58  86 03          
	JMP $8F2A		; 8F5A  4C 2A 8F       
BC8F5D:
	LDA #$80		; 8F5D  A9 80          
	BIT $7E			; 8F5F  24 7E          
	BEQ BC8F78		; 8F61  F0 15          
	JSR $F2CE		; 8F63  20 CE F2       
BC8F66:
	LDX $95			; 8F66  A6 95          
	INX			; 8F68  E8             
	CPX #$05		; 8F69  E0 05          
	BCC BC8F6F		; 8F6B  90 02          
	LDX #$01		; 8F6D  A2 01          
BC8F6F:
	STX $95			; 8F6F  86 95          
	LDA $6219,X		; 8F71  BD 19 62       
	BMI BC8F66		; 8F74  30 F0          
	BPL BC8F24		; 8F76  10 AC          
BC8F78:
	LDA #$40		; 8F78  A9 40          
	BIT $7E			; 8F7A  24 7E          
	BEQ BC8F91		; 8F7C  F0 13          
	JSR $F2CE		; 8F7E  20 CE F2       

;$8F81
.byte $a6,$95,$ca,$d0,$02,$a2,$04,$86,$95,$bd,$19,$62,$30,$f2,$10
.byte $93

BC8F91:
	LDA #$01		; 8F91  A9 01          
	BIT $7E			; 8F93  24 7E          
	BEQ BC8FC8		; 8F95  F0 31          
	JSR $F2D6		; 8F97  20 D6 F2       
	LDA $92			; 8F9A  A5 92          
	PHA			; 8F9C  48             
	LDA $95			; 8F9D  A5 95          
	PHA			; 8F9F  48             
	LDA $03			; 8FA0  A5 03          
	PHA			; 8FA2  48             
	STA $93			; 8FA3  85 93          
	LDX $95			; 8FA5  A6 95          
	DEX			; 8FA7  CA             
	TXA			; 8FA8  8A             
	ASL A			; 8FA9  0A             
	ASL A			; 8FAA  0A             
	CLC			; 8FAB  18             
	ADC $03			; 8FAC  65 03          
	STA $94			; 8FAE  85 94          
	TAY			; 8FB0  A8             
	LDA $6369,Y		; 8FB1  B9 69 63       
	STA $92			; 8FB4  85 92          
	JSR $C2EF		; 8FB6  20 EF C2       
	JSR $CA1C		; 8FB9  20 1C CA       
	PLA			; 8FBC  68             
	STA $03			; 8FBD  85 03          
	PLA			; 8FBF  68             
	STA $95			; 8FC0  85 95          
	PLA			; 8FC2  68             
	STA $92			; 8FC3  85 92          
	JMP $8F24		; 8FC5  4C 24 8F       
BC8FC8:
	LDA #$02		; 8FC8  A9 02          
	BIT $7E			; 8FCA  24 7E          
	BEQ BF8FD7		; 8FCC  F0 09          
	JSR $F2DE		; 8FCE  20 DE F2       
	JSR $D4D0		; 8FD1  20 D0 D4       
	JMP $C2EF		; 8FD4  4C EF C2       
BF8FD7:
	JMP $8F2E		; 8FD7  4C 2E 8F       

; Name	:
	LDA #$F0		; 8FDA  A9 F0          
	STA $0200		; 8FDC  8D 00 02       
	STA $0204		; 8FDF  8D 04 02       
	STA $0208		; 8FE2  8D 08 02       
	STA $020C		; 8FE5  8D 0C 02       
	LDA $24			; 8FE8  A5 24          
	AND #$10		; 8FEA  29 10          
	BNE BC9034		; 8FEC  D0 46          
	LDX $03			; 8FEE  A6 03          
	LDA $9037,X		; 8FF0  BD 37 90       
	STA $0200		; 8FF3  8D 00 02       
	STA $0204		; 8FF6  8D 04 02       
	CLC			; 8FF9  18             
	ADC #$08		; 8FFA  69 08          
	STA $0208		; 8FFC  8D 08 02       
	STA $020C		; 8FFF  8D 0C 02       
	LDA #$0E		; 9002  A9 0E          
	STA $0203		; 9004  8D 03 02       
	STA $020B		; 9007  8D 0B 02       
	LDA #$42		; 900A  A9 42          
	STA $0207		; 900C  8D 07 02       
	STA $020F		; 900F  8D 0F 02       
	LDA #$05		; 9012  A9 05          
	STA $0201		; 9014  8D 01 02       
	STA $0205		; 9017  8D 05 02       
	STA $0209		; 901A  8D 09 02       
	STA $020D		; 901D  8D 0D 02       
	LDA #$01		; 9020  A9 01          
	STA $0202		; 9022  8D 02 02       
	ORA #$40		; 9025  09 40          
	STA $0206		; 9027  8D 06 02       
	ORA #$80		; 902A  09 80          
	STA $020E		; 902C  8D 0E 02       
	AND #$BF		; 902F  29 BF          
	STA $020A		; 9031  8D 0A 02       
BC9034:
	JMP $F3D0		; 9034  4C D0 F3       

;$9037 - data block =
.byte $13,$43,$73,$a3

	JSR $F3C8		; 903B  20 C8 F3       
	LDA $6213		; 903E  AD 13 62       
	STA $95			; 9041  85 95          
	JSR $957E		; 9043  20 7E 95       
	LDA #$00		; 9046  A9 00          
	STA $24			; 9048  85 24          
	JSR $F4D3		; 904A  20 D3 F4       
	LDA #$80		; 904D  A9 80          
	BIT $7E			; 904F  24 7E          
	BEQ BC9069		; 9051  F0 16          
	LDX $95			; 9053  A6 95          
BC9055:
	INX			; 9055  E8             
	CPX #$05		; 9056  E0 05          
	BCC BC905C		; 9058  90 02          
	LDX #$01		; 905A  A2 01          
BC905C:
	LDA $6219,X		; 905C  BD 19 62       
	BMI BC9055		; 905F  30 F4          
	STX $95			; 9061  86 95          
	JSR $F2CE		; 9063  20 CE F2       


;$9066
.byte $4c,$43,$90

BC9069:
	LDA #$40		; 9069  A9 40          
	BIT $7E			; 906B  24 7E          
	BEQ BC9085		; 906D  F0 16          
	LDX $95			; 906F  A6 95          
BC9071:
	DEX			; 9071  CA             
	CPX #$01		; 9072  E0 01          
	BCS BC9078		; 9074  B0 02          
	LDX #$04		; 9076  A2 04          
BC9078:
	LDA $6219,X		; 9078  BD 19 62       
	BMI BC9071		; 907B  30 F4          
	STX $95			; 907D  86 95          
	JSR $F2CE		; 907F  20 CE F2       

;$9082
.byte $4c,$43,$90

BC9085:
	LDA #$02		; 9085  A9 02          
	BIT $7E			; 9087  24 7E          
	BEQ BC9094		; 9089  F0 09          
	JSR $F2DE		; 908B  20 DE F2       
	JSR $D4D0		; 908E  20 D0 D4       
	JMP $C2EF		; 9091  4C EF C2       
BC9094:
	JMP $904A		; 9094  4C 4A 90       

; Name	:
	JSR $F32B		; 9097  20 2B F3       
	JSR $F371		; 909A  20 71 F3       
	JSR $F346		; 909D  20 46 F3       
	JSR $F536		; 90A0  20 36 F5       
	LDA #$20		; 90A3  A9 20          
	STA $2D			; 90A5  85 2D          
	LDA #$80		; 90A7  A9 80          
	STA $2C			; 90A9  85 2C          
	JSR $F982		; 90AB  20 82 F9       
	LDA #$47		; 90AE  A9 47          
	STA $0300		; 90B0  8D 00 03       
	STA $0320		; 90B3  8D 20 03       
	LDA #$48		; 90B6  A9 48          
	STA $031F		; 90B8  8D 1F 03       
	STA $033F		; 90BB  8D 3F 03       
	LDX #$00		; 90BE  A2 00          
	STX $01			; 90C0  86 01          
	LDA PpuStatus_2002	; 90C2  AD 02 20       
	LDA $2D			; 90C5  A5 2D          
	STA PpuAddr_2006	; 90C7  8D 06 20       
	LDA $2C			; 90CA  A5 2C          
	STA PpuAddr_2006	; 90CC  8D 06 20       
	JSR $FC8F		; 90CF  20 8F FC       
	CLC			; 90D2  18             
	LDA $2C			; 90D3  A5 2C          
	ADC #$20		; 90D5  69 20          
	STA $2C			; 90D7  85 2C          
	LDA $2D			; 90D9  A5 2D          
	ADC #$00		; 90DB  69 00          
	STA $2D			; 90DD  85 2D          
	LDX $01			; 90DF  A6 01          
	LDA $621A,X		; 90E1  BD 1A 62       
	JSR $C546		; 90E4  20 46 C5       
	LDA #$01		; 90E7  A9 01          
	STA $12			; 90E9  85 12          
	LDA #$03		; 90EB  A9 03          
	STA $13			; 90ED  85 13          
	JSR $F408		; 90EF  20 08 F4       
	LDX $01			; 90F2  A6 01          
	LDA $621A,X		; 90F4  BD 1A 62       
	BMI BC9138		; 90F7  30 3F          
	LDX $01			; 90F9  A6 01          
	LDA $046C,X		; 90FB  BD 6C 04       
	JSR $F8D4		; 90FE  20 D4 F8       
	STX $032B		; 9101  8E 2B 03       
	STY $032C		; 9104  8C 2C 03       
	LDX $01			; 9107  A6 01          
	LDA $6247,X		; 9109  BD 47 62       
	CLC			; 910C  18             
	ADC #$30		; 910D  69 30          
	STA $0333		; 910F  8D 33 03       
	LDX $01			; 9112  A6 01          
	LDA $6223,X		; 9114  BD 23 62       
	STA $18			; 9117  85 18          
	LDA $6227,X		; 9119  BD 27 62       
	STA $19			; 911C  85 19          
	LDA $622B,X		; 911E  BD 2B 62       
	STA $00			; 9121  85 00          
	JSR $F8C3		; 9123  20 C3 F8       
	LDY #$05		; 9126  A0 05          
BC9128:
	LDA $0450,Y		; 9128  B9 50 04       
	STA $0338,Y		; 912B  99 38 03       
	DEY			; 912E  88             
	BPL BC9128		; 912F  10 F7          
	LDA #$F6		; 9131  A9 F6          
	LDY #$91		; 9133  A0 91          
	JSR $FB09		; 9135  20 09 FB       
BC9138:
	JSR $CAB6		; 9138  20 B6 CA       
	LDX $01			; 913B  A6 01          
	LDA $621A,X		; 913D  BD 1A 62       
	BMI BC918F		; 9140  30 4D          
	LDA $622F,X		; 9142  BD 2F 62       
	CLC			; 9145  18             
	ADC #$30		; 9146  69 30          
	STA $032C		; 9148  8D 2C 03       
	LDA $6233,X		; 914B  BD 33 62       
	CLC			; 914E  18             
	ADC #$30		; 914F  69 30          
	STA $032E		; 9151  8D 2E 03       
	LDA $623B,X		; 9154  BD 3B 62       
	CLC			; 9157  18             
	ADC #$30		; 9158  69 30          
	STA $0333		; 915A  8D 33 03       
	LDA $6237,X		; 915D  BD 37 62       
	JSR $F8D4		; 9160  20 D4 F8       
	STX $0330		; 9163  8E 30 03       
	STY $0331		; 9166  8C 31 03       
	LDX $01			; 9169  A6 01          
	LDA $045C,X		; 916B  BD 5C 04       
	STA $18			; 916E  85 18          
	LDA $0460,X		; 9170  BD 60 04       
	STA $19			; 9173  85 19          
	LDA $0464,X		; 9175  BD 64 04       
	STA $00			; 9178  85 00          
	JSR $F8C3		; 917A  20 C3 F8       
	LDY #$05		; 917D  A0 05          
BC917F:
	LDA $0450,Y		; 917F  B9 50 04       
	STA $0338,Y		; 9182  99 38 03       
	DEY			; 9185  88             
	BPL BC917F		; 9186  10 F7          
	LDA #$0F		; 9188  A9 0F          
	LDY #$92		; 918A  A0 92          
	JSR $FB09		; 918C  20 09 FB       
BC918F:
	JSR $CAB6		; 918F  20 B6 CA       
	LDA PpuStatus_2002	; 9192  AD 02 20       
	LDA $2D			; 9195  A5 2D          
	STA PpuAddr_2006	; 9197  8D 06 20       
	LDA $2C			; 919A  A5 2C          
	STA PpuAddr_2006	; 919C  8D 06 20       
	JSR $FC9F		; 919F  20 9F FC       
	CLC			; 91A2  18             
	LDA $2C			; 91A3  A5 2C          
	ADC #$20		; 91A5  69 20          
	STA $2C			; 91A7  85 2C          
	LDA $2D			; 91A9  A5 2D          
	ADC #$00		; 91AB  69 00          
	STA $2D			; 91AD  85 2D          
	LDX $01			; 91AF  A6 01          
	INX			; 91B1  E8             
	CPX #$04		; 91B2  E0 04          
	BCS BC91B9		; 91B4  B0 03          
	JMP $90C0		; 91B6  4C C0 90       
BC91B9:
	LDA PpuStatus_2002	; 91B9  AD 02 20       
	LDA #$23		; 91BC  A9 23          
	STA PpuAddr_2006	; 91BE  8D 06 20       
	LDA #$C8		; 91C1  A9 C8          
	STA PpuAddr_2006	; 91C3  8D 06 20       
	LDX #$00		; 91C6  A2 00          
BC91C8:
	LDA $9224,X		; 91C8  BD 24 92       
	JSR $F26D		; 91CB  20 6D F2       
	INX			; 91CE  E8             
	CPX #$06		; 91CF  E0 06          
	BCC BC91C8		; 91D1  90 F5          
	JSR $CD48		; 91D3  20 48 CD       
	LDA #$08		; 91D6  A9 08          
	STA $3F			; 91D8  85 3F          
	CLI			; 91DA  58             
	JSR $F3C8		; 91DB  20 C8 F3       
	JSR $F34A		; 91DE  20 4A F3       
	JSR $F3D4		; 91E1  20 D4 F3       
	JSR $F4DC		; 91E4  20 DC F4       
	JMP $F346		; 91E7  4C 46 F3       

;$91EA
.byte $61,$20,$7e,$72,$98,$6e
.byte $78,$72,$81,$97,$9d,$20,$00,$03,$28,$84,$29,$7c,$2a,$3a,$2e,$76
;$9200
.byte $2f,$9d,$30,$80,$31,$72,$32,$3a,$35,$75,$36,$e8,$3e,$5c,$ff,$00
.byte $03,$28,$c3,$29,$af,$2a,$b8,$2d,$2f,$2f,$2f,$32,$2f,$35,$ea,$36
.byte $eb,$3e,$5c,$ff,$00,$50,$55,$aa,$fa,$ff

; Name	:
	JSR $F32B		; 922A  20 2B F3       
	JSR $F371		; 922D  20 71 F3       
	LDA #$00		; 9230  A9 00          
	STA $44			; 9232  85 44          
	STA $5A			; 9234  85 5A          
	STA $27			; 9236  85 27          
.if ORIGINAL
	LDA #$00		; 9238  A9 00          
.else
	LDA #$80		; CHR ROM BANK
.endif
	STA $5B			; 923A  85 5B          
.if ORIGINAL
	LDA #$0C		; 923C  A9 0C          
.else
	LDA #$8C		; CHR ROM BANK
.endif
	STA $5C			; 923E  85 5C          
	LDA #$1A		; 9240  A9 1A          
	STA $5D			; 9242  85 5D          
	LDX #$01		; 9244  A2 01          
BC9246:
	STX $02			; 9246  86 02          
	JSR $92EA		; 9248  20 EA 92	Draw city panel
	LDA $02			; 924B  A5 02          
	JSR $C59C		; 924D  20 9C C5       
	LDA #$D1		; 9250  A9 D1          
	STA $10			; 9252  85 10          
	LDA #$00		; 9254  A9 00          
	STA $11			; 9256  85 11          
	LDA #$01		; 9258  A9 01          
	STA $12			; 925A  85 12          
	LDA #$03		; 925C  A9 03          
	STA $13			; 925E  85 13          
.if ORIGINAL
	JSR $F459		; 9260  20 59 F4       
.else
	JMP $9263
.endif
	LDA #$09		; 9263  A9 09          
	STA $12			; 9265  85 12          
	LDA #$03		; 9267  A9 03          
	STA $13			; 9269  85 13          
	JSR $F420		; 926B  20 20 F4       
	LDA $A3			; 926E  A5 A3          
	BEQ BC928E		; 9270  F0 1C          
	LDX $02			; 9272  A6 02          
	LDA $628D,X		; 9274  BD 8D 62       
	STA $18			; 9277  85 18          
	LDA #$FA		; 9279  A9 FA          
	STA $16			; 927B  85 16          
	JSR $FDCD		; 927D  20 CD FD       
	LDY #$05		; 9280  A0 05          
BC9282:
	LDA $0450,Y		; 9282  B9 50 04       
	STA $0311,Y		; 9285  99 11 03       
	DEY			; 9288  88             
	BPL BC9282		; 9289  10 F7          
	JMP $92A8		; 928B  4C A8 92       

BC928E:
.byte $a6,$02
.byte $bd,$61,$62,$85,$18,$bd,$77,$62,$85,$19,$20,$84,$f8,$a0,$03,$b9
.byte $51,$04,$99,$11,$03,$88,$10,$f7

	JSR $9331		; 92A8  20 31 93       
	LDX $02			; 92AB  A6 02          
	INX			; 92AD  E8             
	CPX #$16		; 92AE  E0 16          
	BCC BC9246		; 92B0  90 94          
	JSR $CD48		; 92B2  20 48 CD       
	LDA #$08		; 92B5  A9 08          
	STA $3F			; 92B7  85 3F          
	CLI			; 92B9  58             
	JSR $F34A		; 92BA  20 4A F3       
	JMP $F346		; 92BD  4C 46 F3       

;$92C0 - data block = CITY PANEL PPU address Low, start from $92BF (21 bytes)
.byte $80,$88,$90,$98,$00,$08,$10,$18,$80,$88,$90,$98,$00,$08,$10,$18
.byte $80,$88,$90,$98,$00

;$92D5 - data block = CITY PANEL PPU address High, start from $92D4 (21 bytes)
.byte $20,$20,$20,$20,$21,$21,$21,$21,$21,$21,$21
.byte $21,$22,$22,$22,$22,$22,$22,$22,$22,$23

; Name	:
; Marks	: Make city panel
	LDX #$1F		; 92EA  A2 1F          
.if ORIGINAL
	LDA #$20		; 92EC  A9 20          
.else
	LDA #$40		; Empty
.endif
BC92EE:
	STA $0300,X		; 92EE  9D 00 03       
	DEX			; 92F1  CA             
	BPL BC92EE		; 92F2  10 FA          
	LDX #$05		; 92F4  A2 05          
BC92F6:
.if ORIGINAL
	LDA #$62		; 92F6  A9 62          
.else
	LDA #T_MUTL
.endif
	STA $0301,X		; 92F8  9D 01 03       
.if ORIGINAL
	LDA #$4A		; 92FB  A9 4A          
.else
	LDA #T_MDTL
.endif
	STA $0319,X		; 92FD  9D 19 03       
	DEX			; 9300  CA             
	BPL BC92F6		; 9301  10 F3          
	LDA #$17		; 9303  A9 17          
	LDY #$93		; 9305  A0 93		BANK 0C/9317
	JSR $FB09		; 9307  20 09 FB       
	LDA $A3			; 930A	$a5 $a3
	BEQ BC930F		; 930C	$f0 $01
	RTS			; 930E	$60

BC930F:
.byte $a9
.byte $2a,$a0,$93,$20,$09,$fb,$60
;$9317 - data block = text box string
.if ORIGINAL
.byte $00,$03,$00,$61,$07,$63,$08,$47,$0f
.byte $48,$10,$47,$17,$48,$18,$65,$1f,$66,$ff
.else
.include "text/C_9317.inc"
.endif
;$932A
.byte $00,$03,$15,$30,$16,$5c
.byte $ff

; Name	:
	LDA #$00		; 9331  A9 00          
	STA $10			; 9333  85 10          
	LDA #$03		; 9335  A9 03          
	STA $11			; 9337  85 11          
	LDA #$20		; 9339  A9 20          
	STA $00			; 933B  85 00          
	JSR $F9D2		; 933D  20 D2 F9       
	LDX $02			; 9340  A6 02          
	LDA $62A3,X		; 9342  BD A3 62       
	BNE BC9354		; 9345  D0 0D          
	LDX #$1F		; 9347  A2 1F          
BC9349:
	LDA $0300,X		; 9349  BD 00 03       
	ORA #$80		; 934C  09 80          
	STA $0300,X		; 934E  9D 00 03       
	DEX			; 9351  CA             
	BPL BC9349		; 9352  10 F5          
BC9354:
	LDX $02			; 9354  A6 02          
	LDA $92D4,X		; 9356  BD D4 92       
	STA $2D			; 9359  85 2D          
	LDA $92BF,X		; 935B  BD BF 92       
	STA $2C			; 935E  85 2C          
	LDX #$00		; 9360  A2 00          
	LDA PpuStatus_2002	; 9362  AD 02 20       
	LDA $2D			; 9365  A5 2D          
	STA PpuAddr_2006	; 9367  8D 06 20       
	LDA $2C			; 936A  A5 2C          
	STA PpuAddr_2006	; 936C  8D 06 20       
	LDY #$08		; 936F  A0 08          
BC9371:
	LDA $0300,X		; 9371  BD 00 03       
	STA PpuData_2007	; 9374  8D 07 20       
	INX			; 9377  E8             
	DEY			; 9378  88             
	BNE BC9371		; 9379  D0 F6          
	CPX #$20		; 937B  E0 20          
	BEQ BC938F		; 937D  F0 10          
	CLC			; 937F  18             
	LDA $2C			; 9380  A5 2C          
	ADC #$20		; 9382  69 20          
	STA $2C			; 9384  85 2C          
	LDA $2D			; 9386  A5 2D          
	ADC #$00		; 9388  69 00          
	STA $2D			; 938A  85 2D          
	JMP $9362		; 938C  4C 62 93       
BC938F:
	LDA PpuStatus_2002	; 938F  AD 02 20       
	LDA $02			; 9392  A5 02          
	SEC			; 9394  38             
	SBC #$01		; 9395  E9 01          
	ASL A			; 9397  0A             
	CLC			; 9398  18             
	ADC #$C8		; 9399  69 C8          
	TAY			; 939B  A8             
	LDA #$00		; 939C  A9 00          
	ADC #$23		; 939E  69 23          
	STA PpuAddr_2006	; 93A0  8D 06 20       
	STY PpuAddr_2006	; 93A3  8C 06 20       
	LDX $02			; 93A6  A6 02          
	LDA $62A3,X		; 93A8  BD A3 62       
	BEQ BC93B7		; 93AB  F0 0A          
	TAX			; 93AD  AA             
	LDA $EFE9,X		; 93AE  BD E9 EF       
	STA PpuData_2007	; 93B1  8D 07 20       
	STA PpuData_2007	; 93B4  8D 07 20       
BC93B7:
	RTS			; 93B7  60             

; Name	:
	JSR $F32B		; 93B8	$20 $2b $f3
	JSR $F371		; 93BB	$20 $71 $f3
	JSR $F536		; 93BE	$20 $36 $f5	DEBUG - to military camp
	LDA #$20		; 93C1	$a9 $20
	STA $2D			; 93C3	$85 $2d
	LDA #$40		; 93C5	$a9 $40
	STA $2C			; 93C7	$85 $2c
	JSR $F982		; 93C9	$20 $82 $f9
	JSR $FCBF		; 93CC  20 BF FC       
	LDA #$47		; 93CF  A9 47          
	STA $0320		; 93D1  8D 20 03       
	LDA #$48		; 93D4  A9 48          
	STA $033F		; 93D6  8D 3F 03       
	LDX #$00		; 93D9  A2 00          
	STX $01			; 93DB  86 01          
	TXA			; 93DD  8A             
	CLC			; 93DE  18             
	ADC #$31		; 93DF  69 31          
	STA $0324		; 93E1  8D 24 03       
	LDA #$E0		; 93E4  A9 E0          
	LDY #$94		; 93E6  A0 94          
	JSR $FB09		; 93E8  20 09 FB       
	LDA $95			; 93EB  A5 95          
	SEC			; 93ED  38             
	SBC #$01		; 93EE  E9 01          
	ASL A			; 93F0  0A             
	ASL A			; 93F1  0A             
	CLC			; 93F2  18             
	ADC $01			; 93F3  65 01          
	STA $02			; 93F5  85 02          
	TAX			; 93F7  AA             
	LDA $6359,X		; 93F8  BD 59 63       
	TAY			; 93FB  A8             
	BMI BC9412		; 93FC  30 14          
	AND #$20		; 93FE  29 20          
	BNE BC9418		; 9400  D0 16          
	TYA			; 9402  98             
	AND #$10		; 9403  29 10          
	BNE BC9424		; 9405  D0 1D          
	TYA			; 9407  98             
	AND #$40		; 9408  29 40          
	BEQ BC941E		; 940A  F0 12          
	LDA #$FD		; 940C  A9 FD          
	LDY #$94		; 940E  A0 94          
	BNE BC9428		; 9410  D0 16          
BC9412:
	LDA #$08		; 9412  A9 08          
	LDY #$95		; 9414  A0 95          
	BNE BC9428		; 9416  D0 10          
BC9418:
	LDA #$1B		; 9418  A9 1B          
	LDY #$95		; 941A  A0 95          
	BNE BC9428		; 941C  D0 0A          
BC941E:
	LDA #$37		; 941E  A9 37          
	LDY #$95		; 9420  A0 95          
	BNE BC9428		; 9422  D0 04          
BC9424:
	LDA #$28		; 9424  A9 28          
	LDY #$95		; 9426  A0 95          
BC9428:
	JSR $FB09		; 9428  20 09 FB       
	LDX $02			; 942B  A6 02          
	LDA $6369,X		; 942D  BD 69 63       
	JSR $C58C		; 9430  20 8C C5       
	LDA #$17		; 9433  A9 17          
	STA $12			; 9435  85 12          
	LDA #$03		; 9437  A9 03          
	STA $13			; 9439  85 13          
	JSR $F408		; 943B  20 08 F4       
	JSR $CAB6		; 943E  20 B6 CA       
	LDA #$F0		; 9441  A9 F0          
	STA $032B		; 9443  8D 2B 03       
	STA $033A		; 9446  8D 3A 03       
	LDX $02			; 9449  A6 02          
	LDA $6379,X		; 944B  BD 79 63       
	JSR $9562		; 944E  20 62 95       
	LDX $02			; 9451  A6 02          
	LDA $63B9,X		; 9453  BD B9 63       
	JSR $9570		; 9456  20 70 95       
	LDX $02			; 9459  A6 02          
	LDA $6389,X		; 945B  BD 89 63       
	JSR $9548		; 945E  20 48 95       
	LDX $02			; 9461  A6 02          
	LDA $63C9,X		; 9463  BD C9 63       
	JSR $9555		; 9466  20 55 95       
	JSR $CAB6		; 9469  20 B6 CA       
	LDA #$2A		; 946C  A9 2A          
	STA $032B		; 946E  8D 2B 03       
	STA $033A		; 9471  8D 3A 03       
	LDX $02			; 9474  A6 02          
	LDA $6399,X		; 9476  BD 99 63       
	JSR $9562		; 9479  20 62 95       
	LDX $02			; 947C  A6 02          
	LDA $63D9,X		; 947E  BD D9 63       
	JSR $9570		; 9481  20 70 95       
	LDX $02			; 9484  A6 02          
	LDA $63A9,X		; 9486  BD A9 63       
	JSR $9548		; 9489  20 48 95       
	LDX $02			; 948C  A6 02          
	LDA $63E9,X		; 948E  BD E9 63       
	JSR $9555		; 9491  20 55 95       
	JSR $CAB6		; 9494  20 B6 CA       
	LDX $01			; 9497  A6 01          
	INX			; 9499  E8             
	CPX #$04		; 949A  E0 04          
	BCS BC94B5  		; 949C  B0 17          
	LDA #$49		; 949E  A9 49          
	LDY #$1D		; 94A0  A0 1D          
BC94A2:
	STA $0301,Y		; 94A2  99 01 03       
	DEY			; 94A5  88             
	BPL BC94A2		; 94A6  10 FA          
	LDA #$67		; 94A8  A9 67          
	STA $0300		; 94AA  8D 00 03       
	LDA #$68		; 94AD  A9 68          
	STA $031F		; 94AF  8D 1F 03       
	JMP $93DB		; 94B2  4C DB 93       
BC94B5:
	LDA PpuStatus_2002	; 94B5  AD 02 20       
	LDA $2D			; 94B8  A5 2D          
	STA PpuAddr_2006	; 94BA  8D 06 20       
	LDA $2C			; 94BD  A5 2C          
	STA PpuAddr_2006	; 94BF  8D 06 20       
	JSR $FC9F		; 94C2  20 9F FC       
	LDX $95			; 94C5  A6 95          
	LDA $D6C2,X		; 94C7  BD C2 D6       
	STA $03C1		; 94CA  8D C1 03       
	LDA #$30		; 94CD  A9 30          
	STA $03C3		; 94CF  8D C3 03       
	LDA #$01		; 94D2  A9 01          
	STA $2F			; 94D4  85 2F          
	CLI			; 94D6  58             
	JSR $F34A		; 94D7  20 4A F3       
	JSR $F4DC		; 94DA  20 DC F4       
	JMP $F346		; 94DD  4C 46 F3       

;$94E0 - data block = ($94E0-$9547)
.byte $00,$03,$22,$80,$23,$72,$25,$76,$26,$9d,$27,$80,$28,$72,$29,$3a
.byte $02,$de,$33,$8a,$13,$de,$34,$7c,$35,$6e,$36,$3a,$ff,$00,$03,$2a
;$9500
.byte $80,$2b,$72,$2c,$77,$2d,$4f,$ff,$00,$03,$2a,$7a,$2b,$73,$2c,$84
.byte $0c,$de,$2d,$73,$2e,$7d,$0e,$de,$2f,$90,$ff,$00,$03,$2a,$7e,$2b
.byte $9d,$2c,$84,$2d,$73,$2e,$4f,$ff,$00,$03,$2a,$80,$2b,$72,$2c,$77
.byte $2d,$6c,$2e,$78,$2f,$4f,$ff,$00,$03,$2a,$7e,$2b,$9d,$2c,$84,$2d
.byte $73,$2e,$8c,$2f,$89,$30,$73,$ff

; Name	:
	JSR $F8D4		; 9548  20 D4 F8       
	STA $032C		; 954B  8D 2C 03       
	STX $032D		; 954E  8E 2D 03       
	STY $032E		; 9551  8C 2E 03       
	RTS			; 9554  60             

; Name	:
	JSR $F8D4		; 9555  20 D4 F8       
	STA $033B		; 9558  8D 3B 03       
	STX $033C		; 955B  8E 3C 03       
	STY $033D		; 955E  8C 3D 03       
	RTS			; 9561  60             

; Name	:
	JSR $C57C		; 9562  20 7C C5       
	LDA #$03		; 9565  A9 03          
	STA $12			; 9567  85 12          
	LDA #$03		; 9569  A9 03          
	STA $13			; 956B  85 13          
	JMP $F408		; 956D  4C 08 F4       

; Name	:
	JSR $C57C		; 9570  20 7C C5       
	LDA #$12		; 9573  A9 12          
	STA $12			; 9575  85 12          
	LDA #$03		; 9577  A9 03          
	STA $13			; 9579  85 13          
	JMP $F408		; 957B  4C 08 F4       

; Name	:
; Marks	: DEBUG to Human(Ningen) screen
	JSR $F32B		; 957E  20 2B F3       
	JSR $F371		; 9581  20 71 F3       
	JSR $F3C8		; 9584  20 C8 F3       
	LDA #$00		; 9587  A9 00          
	STA $44			; 9589  85 44          
	STA $27			; 958B  85 27          
	LDA #$80		; 958D  A9 80          
	STA $5A			; 958F  85 5A          
	LDA #$18		; 9591  A9 18          
	STA $5C			; 9593  85 5C		CHR ROM BANK variable
.if ORIGINAL
	LDA #$00		; 9595  A9 00          
	STA $5D			; 9597  85 5D          
	LDA #$01		; 9599  A9 01          
	STA $5E			; 959B  85 5E          
	LDA #$02		; 959D  A9 02          
	STA $5F			; 959F  85 5F          
.else
	LDA #$80		; 9595  A9 00		CHR ROM BANK $20000
	STA $5D			; 9597  85 5D          
	LDA #$81		; 9599  A9 01		CHR ROM BANK $20400
	STA $5E			; 959B  85 5E          
	LDA #$8E		; 959D  A9 02		CHR ROM BANK $23800
	STA $5F			; 959F  85 5F          
.endif
	LDX $95			; 95A1  A6 95          
	LDA $6219,X		; 95A3  BD 19 62       
	STA $02			; 95A6  85 02          
	CLC			; 95A8  18             
	ADC #$0F		; 95A9  69 0F          
	STA $60			; 95AB  85 60          
	STA $5B			; 95AD  85 5B          
	LDA PpuStatus_2002	; 95AF  AD 02 20       
	LDA #$20		; 95B2  A9 20          
	STA PpuAddr_2006	; 95B4  8D 06 20       
	LDA #$40		; 95B7  A9 40          
	STA PpuAddr_2006	; 95B9  8D 06 20       
	JSR $FC8F		; 95BC  20 8F FC       
	LDX $02			; 95BF  A6 02          
	DEX			; 95C1  CA             
	LDA $F91B,X		; 95C2  BD 1B F9       
	STA $03			; 95C5  85 03          
	LDX $95			; 95C7  A6 95          
	DEX			; 95C9  CA             
	LDA $F91B,X		; 95CA  BD 1B F9       
	STA $04			; 95CD  85 04          
	LDA #$05		; 95CF  A9 05          
	STA $05			; 95D1  85 05          
	LDA #$20		; 95D3  A9 20          
	STA $2D			; 95D5  85 2D          
	LDA #$60		; 95D7  A9 60          
	STA $2C			; 95D9  85 2C          
	JSR $F96D               ; 95DB  20 6D F9       
.if ORIGINAL
	LDA #$47		; 95DE  A9 47          
.else
	LDA #T_LTL		; Human Panel Top Textbox
.endif
	STA $0300		; 95E0  8D 00 03       
	STA $0320		; 95E3  8D 20 03       
.if ORIGINAL
	LDA #$48		; 95E6  A9 48          
.else
	LDA #T_RTL
.endif
	STA $031F		; 95E8  8D 1F 03       
	STA $033F		; 95EB  8D 3F 03       
	LDA $03			; 95EE  A5 03          
	JSR $C5C2		; 95F0  20 C2 C5       
	LDA #$07		; 95F3  A9 07          
	STA $12			; 95F5  85 12          
	LDA #$03		; 95F7  A9 03          
	STA $13			; 95F9  85 13          
	JSR $F408		; 95FB  20 08 F4       
	LDX $04			; 95FE  A6 04          
	LDA $62B9,X		; 9600  BD B9 62       
	BEQ BC962D		; 9603  F0 28          
	BPL BC9637		; 9605  10 30          
	PHA			; 9607  48             
	AND #$03		; 9608  29 03          
	CLC			; 960A  18             
.if ORIGINAL
	ADC #$31		; 960B  69 31          
.else
	ADC #$42		; Fleet Number on Human screen
.endif
	STA $0334		; 960D  8D 34 03       
	LDA #$10		; 9610  A9 10          
	LDY #$98		; 9612  A0 98          
	JSR $FB09		; 9614  20 09 FB       
	PLA			; 9617  68             
	AND #$04                ; 9618  29 04          
	BEQ BC9623		; 961A  F0 07          
	LDA #$21		; 961C  A9 21          
	LDY #$98		; 961E  A0 98          
	JMP $9627		; 9620  4C 27 96       
BC9623:
	LDA #$30		; 9623  A9 30          
	LDY #$98		; 9625  A0 98          
	JSR $FB09		; 9627  20 09 FB       
	JMP $9644		; 962A  4C 44 96       
BC962D:
	LDA #$3D		; 962D	$a9 $3d
	LDY #$98		; 962F	$a0 $98
	JSR $FB09		; 9631	$20 $09 $fb
	JMP $9644		; 9634	$4c $44 $96
BC9637:
	CLC			; 9637  18             
	ADC #$30		; 9638  69 30          
	STA $033C		; 963A  8D 3C 03       
	LDA #$48		; 963D  A9 48          
	LDY #$98		; 963F  A0 98          
	JSR $FB09		; 9641  20 09 FB       
	LDA #$FD		; 9644  A9 FD          
	LDY #$97		; 9646  A0 97          
	JSR $FB09		; 9648  20 09 FB       
	JSR $CAB6		; 964B  20 B6 CA       
	LDA #$5F		; 964E  A9 5F          
	LDY #$98		; 9650  A0 98          
	JSR $FB09		; 9652  20 09 FB       
	LDX $04			; 9655  A6 04          
	LDA $6331,X		; 9657  BD 31 63       
	JSR $F8D4		; 965A  20 D4 F8       
	STX $0329		; 965D  8E 29 03       
	STY $032A		; 9660  8C 2A 03       
	LDX $04			; 9663  A6 04          
	LDA $62F5,X		; 9665  BD F5 62       
	JSR $F8D4		; 9668  20 D4 F8       
	STX $032E		; 966B  8E 2E 03       
	STY $032F		; 966E  8C 2F 03       
	LDX $04			; 9671  A6 04          
	LDA $62E1,X		; 9673  BD E1 62       
	JSR $F8D4		; 9676  20 D4 F8       
	STX $0332		; 9679  8E 32 03       
	STY $0333		; 967C  8C 33 03       
	LDX $04			; 967F  A6 04          
	LDA $631D,X		; 9681  BD 1D 63       
	JSR $F8D4		; 9684  20 D4 F8       
	STX $0337		; 9687  8E 37 03       
	STY $0338		; 968A  8C 38 03       
	LDX $04			; 968D  A6 04          
	LDA $6309,X		; 968F  BD 09 63       
	JSR $F8D4		; 9692  20 D4 F8       
	STX $033B		; 9695  8E 3B 03       
	STY $033C		; 9698  8C 3C 03       
	LDA #$FD		; 969B  A9 FD          
	LDY #$97		; 969D  A0 97          
	JSR $FB09		; 969F  20 09 FB       
	JSR $CAB6		; 96A2  20 B6 CA       
	INC $03			; 96A5  E6 03          
	INC $04			; 96A7  E6 04          
	DEC $05			; 96A9  C6 05          
	BEQ BC96C0		; 96AB  F0 13          
	JSR $FCAF		; 96AD  20 AF FC       
	CLC			; 96B0  18             
	LDA $2C			; 96B1  A5 2C          
	ADC #$20		; 96B3  69 20          
	STA $2C			; 96B5  85 2C          
	LDA $2D			; 96B7  A5 2D          
	ADC #$00		; 96B9  69 00          
	STA $2D			; 96BB  85 2D          
	JMP $95EE		; 96BD  4C EE 95       
BC96C0:
	JSR $FC9F		; 96C0  20 9F FC       
	LDA #$21		; 96C3  A9 21          
	STA $2D			; 96C5  85 2D          
	LDA #$02		; 96C7  A9 02          
	STA $2C			; 96C9  85 2C          
	LDA #$04		; 96CB  A9 04          
	JSR $9796		; 96CD  20 96 97       
	LDA #$22		; 96D0  A9 22          
	STA $2D			; 96D2  85 2D          
	LDA #$42		; 96D4  A9 42          
	STA $2C			; 96D6  85 2C          
	LDA #$0C		; 96D8  A9 0C          
	JSR $9796		; 96DA  20 96 97       
	LDA #$10		; 96DD  A9 10          
	STA $8C			; 96DF  85 8C          
	LDA #$17		; 96E1  A9 17          
	STA $89			; 96E3  85 89          
	LDA #$01		; 96E5  A9 01          
	STA $8B			; 96E7  85 8B          
	LDY #$00		; 96E9  A0 00          
	LDX $95			; 96EB  A6 95          
	LDA $6219,X		; 96ED  BD 19 62       
	LSR A			; 96F0  4A             
	BCS BC96F5		; 96F1  B0 02          
	LDY #$40		; 96F3  A0 40          
BC96F5:
	STY $8A			; 96F5  84 8A          
	LDA #$40		; 96F7  A9 40          
	STA $88			; 96F9  85 88          
	JSR $FB4F		; 96FB  20 4F FB       
	LDA #$10		; 96FE  A9 10          
	STA $8C			; 9700  85 8C          
	LDA #$67		; 9702  A9 67          
	STA $89			; 9704  85 89          
	LDA #$02		; 9706  A9 02          
	STA $8B			; 9708  85 8B          
	LDY #$08		; 970A  A0 08          
	LDX $95			; 970C  A6 95          
	LDA $6219,X		; 970E  BD 19 62       
	LSR A			; 9711  4A             
	BCS BC9716		; 9712  B0 02          
	LDY #$48		; 9714  A0 48          
BC9716:
	STY $8A			; 9716  84 8A          
	LDA #$80		; 9718  A9 80          
	STA $88			; 971A  85 88          
	JSR $FB4F		; 971C  20 4F FB       
	LDA #$10		; 971F  A9 10          
	STA $8C			; 9721  85 8C          
	LDA #$B7		; 9723  A9 B7          
	STA $89			; 9725  85 89          
	LDA #$03		; 9727  A9 03          
	STA $8B			; 9729  85 8B          
	LDX $02			; 972B  A6 02          
	LDA $97F4,X		; 972D  BD F4 97       
	STA $8A			; 9730  85 8A          
	LDA #$C0		; 9732  A9 C0          
	STA $88			; 9734  85 88          
	JSR $FB4F		; 9736  20 4F FB       
	LDX $95			; 9739  A6 95          
	LDA $D6C2,X		; 973B  BD C2 D6       
	STA $03C1		; 973E  8D C1 03       
	LDX $02			; 9741  A6 02          
	DEX			; 9743  CA             
	LDA $F901,X		; 9744  BD 01 F9       
	TAX			; 9747  AA             
	LDY #$14		; 9748  A0 14          
	JSR $D3EF		; 974A  20 EF D3       
	LDY #$04		; 974D  A0 04          
	INX			; 974F  E8             
	INX			; 9750  E8             
	JSR $D3EF		; 9751  20 EF D3       
	INX			; 9754  E8             
	INX			; 9755  E8             
	LDY #$18		; 9756  A0 18          
	JSR $D3EF		; 9758  20 EF D3       
	INX			; 975B  E8             
	INX			; 975C  E8             
	LDY #$08		; 975D  A0 08          
	JSR $D3EF		; 975F  20 EF D3       
	INX			; 9762  E8             
	INX			; 9763  E8             
	LDY #$1C		; 9764  A0 1C          
	JSR $D3EF		; 9766  20 EF D3       
	LDA PpuStatus_2002	; 9769  AD 02 20       
	LDA #$23		; 976C  A9 23          
	STA PpuAddr_2006	; 976E  8D 06 20       
	LDA #$D0		; 9771  A9 D0          
	STA PpuAddr_2006	; 9773  8D 06 20       
	LDY #$1A		; 9776  A0 1A          
	LDX #$00		; 9778  A2 00          
BC977A:
	LDA $97DB,X		; 977A  BD DB 97       
	STA PpuData_2007	; 977D  8D 07 20       
	INX			; 9780  E8             
	DEY			; 9781  88             
	BNE BC977A		; 9782  D0 F6          
	LDA #$01		; 9784  A9 01          
	STA $2F			; 9786  85 2F          
	STA $2E			; 9788  85 2E          
	JSR $F34A		; 978A  20 4A F3       
	JSR $F4DC		; 978D  20 DC F4       
	JSR $F3D0		; 9790  20 D0 F3       
	JMP $F346		; 9793  4C 46 F3       

; Name	:
	STA $03			; 9796  85 03
	LDX #$00		; 9798  A2 00
	LDA PpuStatus_2002	; 979A  AD 02 20
	LDA $2D			; 979D  A5 2D
	STA PpuAddr_2006	; 979F  8D 06 20
	LDA $2C			; 97A2  A5 2C
	STA PpuAddr_2006	; 97A4  8D 06 20
	LDY #$04		; 97A7  A0 04
BC97A9:
	LDA $97CB,X		; 97A9  BD CB 97
	CLC			; 97AC  18
	ADC $03			; 97AD  65 03
	STA PpuData_2007	; 97AF  8D 07 20
	INX			; 97B2  E8
	CPX #$10		; 97B3  E0 10
	BEQ BC97CA		; 97B5  F0 13
	DEY			; 97B7  88
	BNE BC97A9		; 97B8  D0 EF
	CLC			; 97BA  18
	LDA $2C			; 97BB  A5 2C
	ADC #$20		; 97BD  69 20
	STA $2C			; 97BF  85 2C
	LDA $2D			; 97C1  A5 2D
	ADC #$00		; 97C3  69 00
	STA $2D			; 97C5  85 2D
	JMP $979A		; 97C7  4C 9A 97
BC97CA:
	RTS			; 97CA  60

;$97CB - data block =
.byte $c0,$c1,$c2,$c3,$d0
.byte $d1,$d2,$d3,$e0,$e1,$e2,$e3,$f0,$f1,$f2,$f3,$44,$11,$00,$00,$00
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$20,$00,$00,$00
.byte $00,$00,$00,$08,$02,$80,$84,$88,$8c,$c0,$c4,$c8,$cc
;$97FD-$986B = Human screen text
;$97FD - data block = Pilot FACE Blank
.if ORIGINAL
.byte $00,$03,$02
;$9800
.byte $00,$03,$00,$04,$00,$05,$00,$22,$00,$23,$00,$24,$00,$25,$00,$ff
;$9810 - data block = 1st,2nd,3rd,4th fleet
.byte $00,$03,$32,$80,$33,$72,$35,$76,$36,$9d,$37,$80,$38,$72,$12,$de
.byte $ff
;$9821 - data block = Pilot(Pilot/Captain)
.byte $00,$03,$3a,$ca,$3b,$b2,$3c,$db,$3d,$af,$3e,$c4,$1a,$df,$ff
;$9830 - data block = Captain(Pilot/Captain)
.byte $00,$03,$3a,$7c,$3b,$9a,$3c,$72,$3d,$76,$3e,$9d,$ff
;$983D - data block = wating
.byte $00,$03,$32
.byte $80,$33,$72,$34,$77,$35,$4f,$ff
;$9848 - data block = ??
.byte $00,$03,$32,$86,$33,$6d,$34,$73
.byte $35,$72,$36,$9d,$37,$4f,$3a,$71,$3b,$84,$3d,$ef,$3e,$e9,$ff
;$985F - data block = NT PL EX CL EX
.byte $00
.byte $03,$28,$ec,$2d,$ed,$31,$f3,$36,$ee,$3a,$f3,$ff
.else
.include "text/C_97FD.inc"
.endif
;$986C
.byte $90,$01,$60

; Name	:
	JSR $87FB		; 986F  20 FB 87       
	LDY $6213		; 9872  AC 13 62       
	LDA $6242,Y		; 9875  B9 42 62       
	ASL A			; 9878  0A             
	ASL A			; 9879  0A             
	ASL A			; 987A  0A             
	STA $61AC		; 987B  8D AC 61       
	JSR $F3C8		; 987E  20 C8 F3       
	JSR $F32B		; 9881  20 2B F3       
.if ORIGINAL
	JSR $F536		; 9884  20 36 F5	CHR ROM BANK subroutine
.else
	JSR $FF27
.endif
	LDA #$AE		; 9887  A9 AE          
	STA $44			; 9889  85 44          
	LDA #$01		; 988B  A9 01          
	STA $26			; 988D  85 26          
	LDA #$0F		; 988F  A9 0F          
	STA $5E			; 9891  85 5E          
	LDX $95			; 9893  A6 95          
	LDA $6219,X		; 9895  BD 19 62       
	STA $02			; 9898  85 02          
	DEC $02			; 989A  C6 02          
	CLC			; 989C  18             
	ADC #$0F		; 989D  69 0F          
	STA $5F			; 989F  85 5F          
	LDA $02			; 98A1  A5 02          
	LSR A			; 98A3  4A             
	LSR A			; 98A4  4A             
	CLC			; 98A5  18             
	ADC #$18		; 98A6  69 18          
	STA $60			; 98A8  85 60          
	LDA PpuStatus_2002	; 98AA  AD 02 20       
	LDA #$20		; 98AD  A9 20          
	STA PpuAddr_2006	; 98AF  8D 06 20       
	LDA #$00		; 98B2  A9 00          
	STA PpuAddr_2006	; 98B4  8D 06 20       
	LDA #$00		; 98B7  A9 00          
	JSR $F225		; 98B9  20 25 F2       
	JSR $F225		; 98BC  20 25 F2       
	JSR $F225		; 98BF  20 25 F2       
	LDA #$20		; 98C2  A9 20          
	STA $2D			; 98C4  85 2D          
	LDA #$60		; 98C6  A9 60          
	STA $2C			; 98C8  85 2C          
	JSR $F982		; 98CA  20 82 F9	Reset 2-line tile
	JSR $FCBF		; 98CD  20 BF FC	Draw Top textbox line
	LDA #$79		; 98D0  A9 79          
	LDY #$9B		; 98D2  A0 9B		BANK 0C/9B79
	JSR $FB09		; 98D4  20 09 FB       
	LDA $93			; 98D7  A5 93          
	CLC			; 98D9  18             
	ADC #$31		; 98DA  69 31          
	STA $0324		; 98DC  8D 24 03       
	JSR $CAB6		; 98DF  20 B6 CA       
	LDA #$D9		; 98E2  A9 D9          
	LDY #$9B		; 98E4  A0 9B		BANK 0C/9BD9
	JSR $FB09		; 98E6  20 09 FB       
	LDX $94			; 98E9  A6 94          
	LDA $6369,X		; 98EB  BD 69 63       
	JSR $C58C		; 98EE  20 8C C5       
	LDA #$08		; 98F1  A9 08          
	STA $12			; 98F3  85 12          
	LDA #$03		; 98F5  A9 03          
	STA $13			; 98F7  85 13          
	JSR $F408		; 98F9  20 08 F4       
	LDX $94			; 98FC  A6 94          
	LDA $6359,X		; 98FE  BD 59 63       
	TAY			; 9901  A8             
	BMI BC9918		; 9902  30 14          
	AND #$20		; 9904  29 20          
	BNE BC991E		; 9906  D0 16          
	TYA			; 9908  98             
	AND #$10		; 9909  29 10          
	BNE BC992A		; 990B  D0 1D          
	TYA			; 990D  98             
	AND #$40		; 990E  29 40          
	BEQ BC9924		; 9910  F0 12          
	LDA #$8E		; 9912  A9 8E          
	LDY #$9B		; 9914  A0 9B          
	BNE BC992E		; 9916  D0 16          
BC9918:
	LDA #$99		; 9918  A9 99          
	LDY #$9B		; 991A  A0 9B          
	BNE BC992E		; 991C  D0 10          
BC991E:
	LDA #$AC		; 991E  A9 AC          
	LDY #$9B		; 9920  A0 9B          
	BNE BC992E		; 9922  D0 0A          
BC9924:
	LDA #$C8		; 9924  A9 C8          
	LDY #$9B		; 9926  A0 9B          
	BNE BC992E		; 9928  D0 04          
BC992A:
	LDA #$B9		; 992A  A9 B9          
	LDY #$9B		; 992C  A0 9B          
BC992E:
	JSR $FB09		; 992E  20 09 FB       
	JSR $CAB6		; 9931  20 B6 CA       
	LDX $94			; 9934  A6 94          
	LDA $6379,X		; 9936  BD 79 63       
	STA $0F			; 9939  85 0F          
	JSR $C635		; 993B  20 35 C6       
	STA $0D			; 993E  85 0D          
	LDX $94			; 9940  A6 94          
	LDA $6389,X		; 9942  BD 89 63       
	STA $0E			; 9945  85 0E          
	JSR $9CAA		; 9947  20 AA 9C       
	LDA #$F4		; 994A  A9 F4          
	LDY #$9B		; 994C  A0 9B		BANK 0C/9BF4
	JSR $FB09		; 994E  20 09 FB       
	JSR $CAB6		; 9951  20 B6 CA       
	LDX $94			; 9954  A6 94          
	LDA $6399,X		; 9956  BD 99 63       
	STA $0F			; 9959  85 0F          
	LDA $63A9,X		; 995B  BD A9 63       
	STA $0E			; 995E  85 0E          
	LDA #$28		; 9960  A9 28          
	STA $0D			; 9962  85 0D          
	JSR $9CAA		; 9964  20 AA 9C       
	LDA #$01		; 9967  A9 01          
	LDY #$9C		; 9969  A0 9C          
	JSR $FB09		; 996B  20 09 FB       
	JSR $CAB6		; 996E  20 B6 CA       
	LDX $94			; 9971  A6 94          
	LDA $63B9,X		; 9973  BD B9 63       
	STA $0F			; 9976  85 0F          
	JSR $C635		; 9978  20 35 C6       
	STA $0D			; 997B  85 0D          
	LDX $94			; 997D  A6 94          
	LDA $63C9,X		; 997F  BD C9 63       
	STA $0E			; 9982  85 0E          
	JSR $9CAA		; 9984  20 AA 9C       
	LDA #$12		; 9987  A9 12          
	LDY #$9C		; 9989  A0 9C          
	JSR $FB09		; 998B  20 09 FB       
	JSR $CAB6		; 998E  20 B6 CA       
	LDX $94			; 9991  A6 94          
	LDA $63D9,X		; 9993  BD D9 63       
	STA $0F			; 9996  85 0F          
	LDA $63E9,X		; 9998  BD E9 63       
	STA $0E			; 999B  85 0E          
	LDA #$C8		; 999D  A9 C8          
	STA $0D			; 999F  85 0D          
	JSR $9CAA		; 99A1  20 AA 9C       
	LDA #$01		; 99A4  A9 01          
	LDY #$9C		; 99A6  A0 9C          
	JSR $FB09		; 99A8  20 09 FB       
	JSR $CAB6		; 99AB  20 B6 CA       
	LDA #$23		; 99AE  A9 23          
	LDY #$9C		; 99B0  A0 9C          
	JSR $FB09		; 99B2  20 09 FB       
	LDA #$49		; 99B5  A9 49          
	LDY #$07		; 99B7  A0 07          
BC99B9:
	STA $0328,Y		; 99B9  99 28 03       
	STA $0337,Y		; 99BC  99 37 03       
	DEY			; 99BF  88             
	BPL BC99B9		; 99C0  10 F7          
	LDX $94			; 99C2  A6 94          
	LDA $0470,X		; 99C4  BD 70 04       
	JSR $C5AC		; 99C7  20 AC C5       
	LDA #$08		; 99CA  A9 08          
	STA $12			; 99CC  85 12          
	LDA #$03		; 99CE  A9 03          
	STA $13			; 99D0  85 13          
	JSR $F408		; 99D2  20 08 F4       
	LDX $94			; 99D5  A6 94          
	LDA $0480,X		; 99D7  BD 80 04       
	JSR $C5AC		; 99DA  20 AC C5       
	LDA #$17		; 99DD  A9 17          
	STA $12			; 99DF  85 12          
	LDA #$03		; 99E1  A9 03          
	STA $13			; 99E3  85 13          
	JSR $F408		; 99E5  20 08 F4       
	JSR $CAB6		; 99E8  20 B6 CA       
	LDA #$EC		; 99EB  A9 EC          
	STA $0328		; 99ED  8D 28 03       
	STA $0337		; 99F0  8D 37 03       
	LDA #$57		; 99F3  A9 57          
	LDY #$9C		; 99F5  A0 9C          
	JSR $FB09		; 99F7  20 09 FB       
	LDX $94			; 99FA  A6 94          
	LDA $0470,X		; 99FC  BD 70 04       
	BPL BC9A0F		; 99FF  10 0E          
	LDA #$00		; 9A01  A9 00          
	STA $01			; 9A03  85 01          
	STA $02			; 9A05  85 02          
	STA $03			; 9A07  85 03          
	STA $04			; 9A09  85 04          
	STA $05			; 9A0B  85 05          
	BEQ BC9A2B		; 9A0D  F0 1C          
BC9A0F:
	JSR $9D03		; 9A0F  20 03 9D       
	LDA $6331,X		; 9A12  BD 31 63       
	STA $01			; 9A15  85 01          
	LDA $62F5,X		; 9A17  BD F5 62       
	STA $02			; 9A1A  85 02          
	LDA $62E1,X		; 9A1C  BD E1 62       
	STA $03			; 9A1F  85 03          
	LDA $631D,X		; 9A21  BD 1D 63       
	STA $04			; 9A24  85 04          
	LDA $6309,X		; 9A26  BD 09 63       
	STA $05			; 9A29  85 05          
BC9A2B:
	LDA $01			; 9A2B  A5 01          
	JSR $F8D4		; 9A2D  20 D4 F8       
	STX $0329		; 9A30  8E 29 03       
	STY $032A		; 9A33  8C 2A 03       
	LDX $94			; 9A36  A6 94          
	LDA $0480,X		; 9A38  BD 80 04       
	BPL BC9A4B		; 9A3B  10 0E          
	LDA #$00		; 9A3D  A9 00          
	STA $06			; 9A3F  85 06          
	STA $07			; 9A41  85 07          
	STA $08			; 9A43  85 08          
	STA $09			; 9A45  85 09          
	STA $0A			; 9A47  85 0A          
	BEQ BC9A67		; 9A49  F0 1C          
BC9A4B:
	JSR $9D03		; 9A4B  20 03 9D       
	LDA $6331,X		; 9A4E  BD 31 63       
	STA $06			; 9A51  85 06          
	LDA $62F5,X		; 9A53  BD F5 62       
	STA $07			; 9A56  85 07          
	LDA $62E1,X		; 9A58  BD E1 62       
	STA $08			; 9A5B  85 08          
	LDA $631D,X		; 9A5D  BD 1D 63       
	STA $09			; 9A60  85 09          
	LDA $6309,X		; 9A62  BD 09 63       
	STA $0A			; 9A65  85 0A          
BC9A67:
	LDA $06			; 9A67  A5 06          
	JSR $F8D4		; 9A69  20 D4 F8       
	STX $0338		; 9A6C  8E 38 03       
	STY $0339		; 9A6F  8C 39 03       
	JSR $CAB6		; 9A72  20 B6 CA       
	LDA #$44		; 9A75  A9 44          
	LDY #$9C		; 9A77  A0 9C          
	JSR $FB09		; 9A79  20 09 FB       
	LDA #$57		; 9A7C  A9 57          
	LDY #$9C		; 9A7E  A0 9C          
	JSR $FB09		; 9A80  20 09 FB       
	LDA $02			; 9A83  A5 02          
	JSR $F8D4		; 9A85  20 D4 F8       
	STX $0309		; 9A88  8E 09 03       
	STY $030A		; 9A8B  8C 0A 03       
	LDA $03			; 9A8E  A5 03          
	JSR $F8D4		; 9A90  20 D4 F8       
	STX $030D		; 9A93  8E 0D 03       
	STY $030E		; 9A96  8C 0E 03       
	LDA $07			; 9A99  A5 07          
	JSR $F8D4		; 9A9B  20 D4 F8       
	STX $0318		; 9A9E  8E 18 03       
	STY $0319		; 9AA1  8C 19 03       
	LDA $08			; 9AA4  A5 08          
	JSR $F8D4		; 9AA6  20 D4 F8       
	STX $031C		; 9AA9  8E 1C 03       
	STY $031D		; 9AAC  8C 1D 03       
	LDA $04			; 9AAF  A5 04          
	JSR $F8D4		; 9AB1  20 D4 F8       
	STX $0329		; 9AB4  8E 29 03       
	STY $032A		; 9AB7  8C 2A 03       
	LDA $05			; 9ABA  A5 05          
	JSR $F8D4		; 9ABC  20 D4 F8       
	STX $032D		; 9ABF  8E 2D 03       
	STY $032E		; 9AC2  8C 2E 03       
	LDA $09			; 9AC5  A5 09          
	JSR $F8D4		; 9AC7  20 D4 F8       
	STX $0338		; 9ACA  8E 38 03       
	STY $0339		; 9ACD  8C 39 03       
	LDA $0A			; 9AD0  A5 0A          
	JSR $F8D4		; 9AD2  20 D4 F8       
	STX $033C		; 9AD5  8E 3C 03       
	STY $033D		; 9AD8  8C 3D 03       
	JSR $CAB6		; 9ADB  20 B6 CA       
	JSR $FC9F		; 9ADE  20 9F FC       
	LDA PpuStatus_2002	; 9AE1  AD 02 20       
	LDA #$23		; 9AE4  A9 23          
	STA PpuAddr_2006	; 9AE6  8D 06 20       
	LDA #$C0		; 9AE9  A9 C0          
	STA PpuAddr_2006	; 9AEB  8D 06 20       
	LDY #$00		; 9AEE  A0 00          
BC9AF0:
	LDA $9C7A,Y		; 9AF0  B9 7A 9C       
	STA PpuData_2007	; 9AF3  8D 07 20       
	INY			; 9AF6  C8             
	CPY #$30		; 9AF7  C0 30          
	BCC BC9AF0		; 9AF9  90 F5          
	LDX $94			; 9AFB  A6 94          
	LDA $0470,X		; 9AFD  BD 70 04       
	JSR $CD81		; 9B00  20 81 CD       
	STY $8A			; 9B03  84 8A          
	LDA #$10		; 9B05  A9 10          
	STA $8C			; 9B07  85 8C          
	LDA #$87		; 9B09  A9 87          
	STA $89			; 9B0B  85 89          
	LDA #$02		; 9B0D  A9 02          
	STA $8B			; 9B0F  85 8B          
	LDA #$40		; 9B11  A9 40          
	STA $88			; 9B13  85 88          
	JSR $FB4F		; 9B15  20 4F FB       
	LDA $94			; 9B18  A5 94          
	LSR A			; 9B1A  4A             
	LSR A			; 9B1B  4A             
	TAX			; 9B1C  AA             
	LDA $D6C3,X		; 9B1D  BD C3 D6       
	STA $03C5		; 9B20  8D C5 03       
	LDA #$2A		; 9B23  A9 2A          
	STA $03C2		; 9B25  8D C2 03       
	STA $03C6		; 9B28  8D C6 03       
	LDX $94			; 9B2B  A6 94          
	LDA $0470,X		; 9B2D  BD 70 04       
	CMP #$29		; 9B30  C9 29          
	BCC BC9B36		; 9B32  90 02          
	LDA #$28		; 9B34  A9 28          
BC9B36:
	LDY #$18		; 9B36  A0 18          
	TAX			; 9B38  AA             
	JSR $D3EC		; 9B39  20 EC D3       
	LDX $94			; 9B3C  A6 94          
	LDA $0480,X		; 9B3E  BD 80 04       
	JSR $CD81		; 9B41  20 81 CD       
	STY $8A			; 9B44  84 8A          
	LDA #$88 		; 9B46  A9 88          
	STA $8C			; 9B48  85 8C          
	LDA #$87 		; 9B4A  A9 87          
	STA $89			; 9B4C  85 89          
	LDA #$03 		; 9B4E  A9 03          
	STA $8B			; 9B50  85 8B          
	LDA #$80 		; 9B52  A9 80          
	STA $88			; 9B54  85 88          
	JSR $FB4F		; 9B56  20 4F FB       
	LDX $94			; 9B59  A6 94          
	LDA $0480,X		; 9B5B  BD 80 04       
	CMP #$29		; 9B5E  C9 29          
	BCC BC9B64		; 9B60  90 02          
	LDA #$28		; 9B62  A9 28          
BC9B64:
	LDY #$1C		; 9B64  A0 1C          
	TAX			; 9B66  AA             
	JSR $D3EC		; 9B67  20 EC D3       
	LDA #$01		; 9B6A  A9 01          
	STA $2E			; 9B6C  85 2E          
	STA $2F			; 9B6E  85 2F          
	JSR $F34A		; 9B70  20 4A F3       
	JSR $F4EF		; 9B73  20 EF F4       
	JMP $F346		; 9B76  4C 46 F3       

;$9B79 - data block = ($9B79-$9B8D) No X navy
.if ORIGINAL
.byte $00,$03,$22,$80,$23,$72,$25
.byte $76,$26,$9d,$27,$80,$28,$72,$02,$de,$20,$47,$3f,$48,$ff
.else
.include "text/C_9B79.inc"
;.byte $00,$03,$22,$85,$23,$86,$25
;.byte $86,$26,$ac,$27,$90,$28,$82,$20,$47,$3f,$48,$ff,$02,$de
.endif
;$9B8E
.byte $00,$03
.byte $37,$80,$38,$72,$39,$77,$3a,$4f,$ff,$00,$03,$37,$7a,$38,$73,$39
.byte $84,$19,$de,$3a,$73,$3b,$7d,$1b,$de,$3c,$90,$ff,$00,$03,$37,$7e
.byte $38,$9d,$39,$84,$3a,$73,$3b,$4f,$ff,$00,$03,$37,$80,$38,$72,$39
.byte $77,$3a,$6c,$3b,$78,$3c,$4f,$ff,$00,$03,$37,$7e,$38,$9d,$39,$84
.byte $3a,$73,$3b,$8c,$3c,$89,$3d,$73,$ff
;$9BD9 - data block = ($9BD9-$9BF3) include: did navy:
.byte $00,$03,$02,$de,$22,$8a,$23
.byte $7c,$24,$6e,$27,$3a,$31,$7c,$11,$de,$32,$6e,$33,$73,$34,$80,$35
.byte $72,$36,$3a,$ff
;$9BF4 - data block = ($9BF4-$9C00) mobile armor:
.if ORIGINAL
.byte $00,$03,$22,$77,$23,$76,$24,$9d,$27,$3a,$3a,$f0
;$9C00
.byte $ff
.else
.include "text/C_9BF4.inc"
.endif
;$9C01
.byte $00,$03,$22,$98,$23,$6e,$24,$73,$25,$7b,$26,$9d,$27,$3a,$3a
.byte $2a,$ff,$00,$03,$22,$7c,$23,$7b,$24,$78,$25,$4d,$26,$53,$27,$3a
.byte $3a,$f0,$ff,$00,$03,$20,$67,$3f,$68,$22,$7c,$23,$9a,$24,$72,$25
.byte $76,$26,$9d,$27,$3a,$11,$df,$31,$ca,$32,$b2,$33,$db,$34,$af,$35
.byte $c4,$36,$3a,$ff,$00,$03,$08,$ed,$17,$ed,$28,$ee,$37,$ee,$0c,$f3
.byte $1b,$f3,$2c,$f3,$3b,$f3,$ff,$00,$03,$02,$00,$03,$00,$04,$00,$05
.byte $00,$22,$00,$23,$00,$24,$00,$25,$00,$11,$00,$12,$00,$13,$00,$14
.byte $00,$31,$00,$32,$00,$33,$00,$34,$00,$ff,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
.byte $55,$55,$05,$05,$05,$05,$05,$05,$05,$05

; Name	:
	LDA $0F			; 9CAA  A5 0F          
	JSR $C57C		; 9CAC  20 7C C5       
	LDA #$08		; 9CAF  A9 08          
	STA $12			; 9CB1  85 12          
	LDA #$03		; 9CB3  A9 03          
	STA $13			; 9CB5  85 13          
	JSR $F408		; 9CB7  20 08 F4       
	LDA $0E			; 9CBA  A5 0E          
	STA $19			; 9CBC  85 19          
	LDA $0D			; 9CBE  A5 0D          
	STA $16			; 9CC0  85 16          
	JSR $FD7B		; 9CC2  20 7B FD       
	LDY #$07		; 9CC5  A0 07          
BC9CC7:
	LDA $0450,Y		; 9CC7  B9 50 04       
	STA $0331,Y		; 9CCA  99 31 03       
	DEY			; 9CCD  88             
	BPL BC9CC7		; 9CCE  10 F7          
	LDA $0E			; 9CD0  A5 0E          
	JSR $F8D4		; 9CD2  20 D4 F8       
	STA $033B		; 9CD5  8D 3B 03       
	STX $033C		; 9CD8  8E 3C 03       
	STY $033D		; 9CDB  8C 3D 03       
	RTS			; 9CDE  60             

;$9CDF
.byte $85
.byte $18,$a9,$00,$85,$19,$bd,$fd,$9c,$85,$10,$bd,$00,$9d,$85,$11,$20
.byte $84,$f8,$a0,$02,$b9,$52,$04,$91,$10,$88,$10,$f8,$60,$32,$36,$3b
;$9D00
.byte $03,$03,$03

; Name	:
	TAY			; 9D03  A8             
	LDA $F923,Y		; 9D04  B9 23 F9       
	STA $00			; 9D07  85 00          
	LDX $95			; 9D09  A6 95          
	LDA $F91A,X		; 9D0B  BD 1A F9       
	CLC			; 9D0E  18             
	ADC $00			; 9D0F  65 00          
	TAX			; 9D11  AA             
	RTS			; 9D12  60             

;$9D13
.byte $90,$01,$60

	JSR $A06F		; 9D16  20 6F A0       
	LDA #$00		; 9D19  A9 00          
	STA $01			; 9D1B  85 01          
	JSR $A411		; 9D1D  20 11 A4       
BC9D20:
	JSR $9E3A		; 9D20  20 3A 9E       
	LDA #$30		; 9D23  A9 30          
	BIT $7E			; 9D25  24 7E          
	BEQ BC9D38		; 9D27  F0 0F          
	JSR $F2CE		; 9D29  20 CE F2       
	LDA $01			; 9D2C  A5 01          
	EOR #$01		; 9D2E  49 01          
	STA $01			; 9D30  85 01          
	JSR $A411		; 9D32  20 11 A4       
	JMP $9D20		; 9D35  4C 20 9D       
BC9D38:
	LDA #$02		; 9D38  A9 02          
	BIT $7E			; 9D3A  24 7E          
	BEQ BC9D52		; 9D3C  F0 14          
	JSR $F2DE		; 9D3E  20 DE F2       
	JSR $C4DD		; 9D41  20 DD C4       
	LDA $6213		; 9D44  AD 13 62       
	STA $95			; 9D47  85 95          
	JSR $986F		; 9D49  20 6F 98       
	JSR $86A1		; 9D4C  20 A1 86       
	JMP $C2EF		; 9D4F  4C EF C2       
BC9D52:
	LDA #$01		; 9D52  A9 01          
	BIT $7E			; 9D54  24 7E          
	BEQ BC9D20		; 9D56  F0 C8          
	LDA #$00		; 9D58  A9 00          
	STA $02			; 9D5A  85 02          
	STA $03			; 9D5C  85 03          
	JSR $9EF1		; 9D5E  20 F1 9E       
	JSR $9F1C		; 9D61  20 1C 9F       
BC9D64:
	JSR $9E66		; 9D64  20 66 9E       
	LDA #$83		; 9D67  A9 83          
	STA $10			; 9D69  85 10          
	LDA #$9D		; 9D6B  A9 9D          
	STA $11			; 9D6D  85 11          
	JSR $FBD5		; 9D6F  20 D5 FB       
	BCC BC9D64		; 9D72  90 F0          
	LDA $01			; 9D74  A5 01          
	PHA			; 9D76  48             
	JSR $A06F		; 9D77  20 6F A0       
	PLA			; 9D7A  68             
	STA $01			; 9D7B  85 01          
	JSR $A411		; 9D7D  20 11 A4       
	JMP $9D20		; 9D80  4C 20 9D       

;$9D83
.byte $c0,$9d,$bb,$9d,$a9,$9d,$a9,$9d,$93,$9d,$99,$9d,$ab
.byte $9d,$af,$9d

	LDA $03			; 9D93  A5 03          
	BEQ BC9DA3		; 9D95  F0 0C          
	BNE BC9DA1		; 9D97  D0 08          
	INC $03			; 9D99  E6 03          
	LDA $03			; 9D9B  A5 03          
	CMP #$03		; 9D9D  C9 03          
	BCC BC9DA3		; 9D9F  90 02          
BC9DA1:
	DEC $03			; 9DA1  C6 03          
BC9DA3:
	JSR $F2CE		; 9DA3  20 CE F2       
	JSR $9F1C		; 9DA6  20 1C 9F       
	CLC			; 9DA9  18             
	RTS			; 9DAA  60             
	LDA #$00		; 9DAB  A9 00          
	BEQ BC9DB1		; 9DAD  F0 02          
	LDA #$01		; 9DAF  A9 01          
BC9DB1:
	STA $02			; 9DB1  85 02          
	JSR $F2CE		; 9DB3  20 CE F2       
	JSR $9F1C		; 9DB6  20 1C 9F       
	CLC			; 9DB9  18             
	RTS			; 9DBA  60             
	JSR $F2DE		; 9DBB  20 DE F2       
	SEC			; 9DBE  38             
	RTS			; 9DBF  60             
	LDA $03			; 9DC0  A5 03          
	ASL A			; 9DC2  0A             
	CLC			; 9DC3  18             
	ADC $02			; 9DC4  65 02          
	STA $04			; 9DC6  85 04          
	CMP #$05		; 9DC8  C9 05          
	BCS BC9DF2		; 9DCA  B0 26          
	LDX $6213		; 9DCC  AE 13 62       
	DEX			; 9DCF  CA             
	CLC			; 9DD0  18             
	ADC $F91B,X		; 9DD1  7D 1B F9       
	STA $05			; 9DD4  85 05          
	TAY			; 9DD6  A8             
	LDA $62B9,Y		; 9DD7  B9 B9 62       
	BEQ BC9DF2		; 9DDA  F0 16          
	BPL BC9E35		; 9DDC  10 57          
	AND #$03		; 9DDE  29 03          
	STA $06			; 9DE0  85 06          
	LDA $6213		; 9DE2  AD 13 62       
	SEC			; 9DE5  38             
	SBC #$01		; 9DE6  E9 01          
	ASL A			; 9DE8  0A             
	ASL A			; 9DE9  0A             
	ADC $06			; 9DEA  65 06          
	TAY			; 9DEC  A8             
	LDA $6359,Y		; 9DED  B9 59 63       
	BMI BC9E35		; 9DF0  30 43          
BC9DF2:
	JSR $F2D6		; 9DF2  20 D6 F2       
	LDY $94			; 9DF5  A4 94          
	LDA $01			; 9DF7  A5 01          
	BEQ BC9E01		; 9DF9  F0 06          
	LDA $0480,Y		; 9DFB  B9 80 04       
	JMP $9E04		; 9DFE  4C 04 9E       
BC9E01:
	LDA $0470,Y		; 9E01  B9 70 04       
	BMI BC9E17		; 9E04  30 11          
	TAY			; 9E06  A8             
	LDA $F923,Y		; 9E07  B9 23 F9       
	CLC			; 9E0A  18             
	LDX $6213		; 9E0B  AE 13 62       
	ADC $F91A,X		; 9E0E  7D 1A F9       
	TAY			; 9E11  A8             
	LDA #$00		; 9E12  A9 00          
	STA $62B9,Y		; 9E14  99 B9 62       
BC9E17:
	LDA $04			; 9E17  A5 04          
	CMP #$05		; 9E19  C9 05          
	BCS BC9E2A  		; 9E1B  B0 0D          
	LDA $01			; 9E1D  A5 01          
	ASL A			; 9E1F  0A             
	ASL A			; 9E20  0A             
	ORA $93			; 9E21  05 93          
	ORA #$80		; 9E23  09 80          
	LDY $05			; 9E25  A4 05          
	STA $62B9,Y		; 9E27  99 B9 62       
BC9E2A:
	LDA $01			; 9E2A  A5 01          
	PHA			; 9E2C  48             
	JSR $87FB		; 9E2D  20 FB 87       
	PLA			; 9E30  68             
	STA $01			; 9E31  85 01          
	SEC			; 9E33  38             
	RTS			; 9E34  60             
BC9E35:
	JSR $F2E6		; 9E35  20 E6 F2       
	CLC			; 9E38  18             
	RTS			; 9E39  60             
	
; Name	:
	JSR $F3BD		; 9E3A  20 BD F3       
	JSR $9E9D		; 9E3D  20 9D 9E       
	LDA $24			; 9E40  A5 24          
	AND #$10		; 9E42  29 10          
	BNE BC9E49		; 9E44  D0 03          
	JSR $9E4C		; 9E46  20 4C 9E       
BC9E49:
	JMP $F3D0		; 9E49  4C D0 F3       

; Name	:
BC9E4C:
	LDA #$88		; 9E4C  A9 88          
	STA $0203		; 9E4E  8D 03 02       
	LDA #$01		; 9E51  A9 01          
	STA $0202		; 9E53  8D 02 02       
	LDA #$01		; 9E56  A9 01          
	STA $0201		; 9E58  8D 01 02       
	LDY $01			; 9E5B  A4 01          
	LDA $9E64,Y		; 9E5D  B9 64 9E       
	STA $0200		; 9E60  8D 00 02       
	RTS			; 9E63  60             

;$9E64 - data block =
.byte $28,$38

; Name	:
	JSR $F3BD		; 9E66  20 BD F3       
	JSR $9EB5		; 9E69  20 B5 9E       
	LDA $24			; 9E6C  A5 24          
	AND #$04		; 9E6E  29 04          
	BNE BC9E75		; 9E70  D0 03          
	JSR BC9E4C		; 9E72  20 4C 9E       
BC9E75:
	LDA $24			; 9E75  A5 24          
	AND #$10		; 9E77  29 10          
	BNE BC9E95		; 9E79  D0 1A          
	LDY $02			; 9E7B  A4 02          
	LDA $9E98,Y		; 9E7D  B9 98 9E       
	STA $0207		; 9E80  8D 07 02       
	LDA #$01		; 9E83  A9 01          
	STA $0206		; 9E85  8D 06 02       
	LDA #$01		; 9E88  A9 01          
	STA $0205		; 9E8A  8D 05 02       
	LDY $03			; 9E8D  A4 03          
	LDA $9E9A,Y		; 9E8F  B9 9A 9E       
	STA $0204		; 9E92  8D 04 02       
BC9E95:
	JMP $F3D0		; 9E95  4C D0 F3       

;$9E98 - data block =
.byte $10,$90,$78,$98,$b8

; Name	:
	LDX $94			; 9E9D  A6 94          
	LDA $01			; 9E9F  A5 01          
	BEQ BC9EA9		; 9EA1  F0 06          
	LDA $0480,X		; 9EA3  BD 80 04       
	JMP $9EAC		; 9EA6  4C AC 9E       
BC9EA9:
	LDA $0470,X		; 9EA9  BD 70 04       
	CMP #$29		; 9EAC  C9 29          
	BCC BC9ECD		; 9EAE  90 1D          
	LDA #$28		; 9EB0  A9 28          
	JMP $9ECD		; 9EB2  4C CD 9E       

; Name	:
	LDA $03			; 9EB5  A5 03          
	ASL A			; 9EB7  0A             
	ADC $02			; 9EB8  65 02          
	CMP #$05		; 9EBA  C9 05          
	BCC BC9EC2		; 9EBC  90 04          
	LDA #$28		; 9EBE  A9 28          
	BNE BC9ECD		; 9EC0  D0 0B          
BC9EC2:
	LDX $6213		; 9EC2  AE 13 62       
	LDY $6219,X		; 9EC5  BC 19 62       
	DEY			; 9EC8  88             
	CLC			; 9EC9  18             
	ADC $F91B,Y		; 9ECA  79 1B F9       
BC9ECD:
	PHA			; 9ECD  48             
	JSR $CD81		; 9ECE  20 81 CD       
	STY $8A			; 9ED1  84 8A          
	LDA #$08		; 9ED3  A9 08          
	STA $8C			; 9ED5  85 8C          
	LDA #$47		; 9ED7  A9 47          
	STA $89			; 9ED9  85 89          
	LDA #$02		; 9EDB  A9 02          
	STA $8B			; 9EDD  85 8B          
	LDA #$20		; 9EDF  A9 20          
	STA $88			; 9EE1  85 88          
	JSR $FB4F               ; 9EE3  20 4F FB       
	PLA			; 9EE6  68             
	LDY #$18		; 9EE7  A0 18          
	JSR $D3EC		; 9EE9  20 EC D3       
	LDA #$01		; 9EEC  A9 01          
	STA $2F			; 9EEE  85 2F          
	RTS			; 9EF0  60             

; Name	:
	LDX #$13		; 9EF1  A2 13          
	LDA #$40		; 9EF3  A9 40          
BC9EF5:
	STA $D1,X		; 9EF5  95 D1          
	DEX			; 9EF7  CA             
	BPL BC9EF5		; 9EF8  10 FB          
	LDA $01			; 9EFA  A5 01          
	BEQ BC9F09		; 9EFC  F0 0B          
	LDA #$20		; 9EFE  A9 20          
	STA $2D			; 9F00  85 2D          
	LDA #$D2		; 9F02  A9 D2          
	STA $2C			; 9F04  85 2C          
	JMP $9F11		; 9F06  4C 11 9F       
BC9F09:
	LDA #$20		; 9F09  A9 20          
	STA $2D			; 9F0B  85 2D          
	LDA #$92		; 9F0D  A9 92          
	STA $2C			; 9F0F  85 2C          
	JSR $F996		; 9F11  20 96 F9       
	LDA #$0A		; 9F14  A9 0A          
	STA $34			; 9F16  85 34          
	JSR $F4DC		; 9F18  20 DC F4       
	RTS			; 9F1B  60             

; Name	:
	JSR $F96D		; 9F1C  20 6D F9       
	LDA #$52		; 9F1F  A9 52          
	LDY #$A0		; 9F21  A0 A0          
	JSR $FB09		; 9F23  20 09 FB       
	LDA #$2B		; 9F26  A9 2B          
	LDY #$A3		; 9F28  A0 A3          
	JSR $FB09		; 9F2A  20 09 FB       
	LDA $03			; 9F2D  A5 03          
	ASL A			; 9F2F  0A             
	ADC $02			; 9F30  65 02          
	STA $04			; 9F32  85 04          
	CMP #$05		; 9F34  C9 05          
	BCS BC9F45		; 9F36  B0 0D          
	LDX $6213		; 9F38  AE 13 62       
	LDY $6219,X		; 9F3B  BC 19 62       
	DEY			; 9F3E  88             
	CLC			; 9F3F  18             
	ADC $F91B,Y		; 9F40  79 1B F9       
	BPL BC9F47		; 9F43  10 02          
BC9F45:
	LDA #$28		; 9F45  A9 28          
BC9F47:
	JSR $C5C2		; 9F47  20 C2 C5       
	LDA #$06		; 9F4A  A9 06          
	STA $12			; 9F4C  85 12          
	LDA #$03		; 9F4E  A9 03          
	STA $13			; 9F50  85 13          
	JSR $F408		; 9F52  20 08 F4       
	LDA #$00		; 9F55  A9 00          
	STA $05			; 9F57  85 05          
	STA $06			; 9F59  85 06          
	STA $07			; 9F5B  85 07          
	STA $08			; 9F5D  85 08          
	STA $09			; 9F5F  85 09          
	LDA $04			; 9F61  A5 04          
	CMP #$05		; 9F63  C9 05          
	BCS BC9F89		; 9F65  B0 22          
	LDX $6213		; 9F67  AE 13 62       
	DEX			; 9F6A  CA             
	CLC			; 9F6B  18             
	ADC $F91B,X		; 9F6C  7D 1B F9       
	TAY			; 9F6F  A8             
	LDA $6331,Y		; 9F70  B9 31 63       
	STA $05			; 9F73  85 05          
	LDA $62F5,Y		; 9F75  B9 F5 62       
	STA $06			; 9F78  85 06          
	LDA $62E1,Y		; 9F7A  B9 E1 62       
	STA $07			; 9F7D  85 07          
	LDA $631D,Y		; 9F7F  B9 1D 63       
	STA $08			; 9F82  85 08          
	LDA $6309,Y		; 9F84  B9 09 63       
	STA $09			; 9F87  85 09          
BC9F89:
	LDA $05			; 9F89  A5 05          
	JSR $F8D4		; 9F8B  20 D4 F8       
	STX $0332		; 9F8E  8E 32 03       
	STY $0333		; 9F91  8C 33 03       
	LDA $06			; 9F94  A5 06          
	JSR $F8D4		; 9F96  20 D4 F8       
	STX $0337		; 9F99  8E 37 03       
	STY $0338		; 9F9C  8C 38 03       
	LDA $07			; 9F9F  A5 07          
	JSR $F8D4		; 9FA1  20 D4 F8       
	STX $033B		; 9FA4  8E 3B 03       
	STY $033C		; 9FA7  8C 3C 03       
	LDA $08			; 9FAA  A5 08          
	JSR $F8D4		; 9FAC  20 D4 F8       
	STX $0377		; 9FAF  8E 77 03       
	STY $0378		; 9FB2  8C 78 03       
	LDA $09			; 9FB5  A5 09          
	JSR $F8D4		; 9FB7  20 D4 F8       
	STX $037B		; 9FBA  8E 7B 03       
	STY $037C		; 9FBD  8C 7C 03       
	LDA $04			; 9FC0  A5 04          
	CMP #$05		; 9FC2  C9 05          
	BCS BC9FEA		; 9FC4  B0 24          
	LDX $6213		; 9FC6  AE 13 62       
	DEX			; 9FC9  CA             
	CLC			; 9FCA  18             
	ADC $F91B,X		; 9FCB  7D 1B F9       
	TAY			; 9FCE  A8             
	LDA $62B9,Y		; 9FCF  B9 B9 62       
	BEQ BC9FEA		; 9FD2  F0 16          
	BPL BC9FF0		; 9FD4  10 1A          
	AND #$03		; 9FD6  29 03          
	STA $00			; 9FD8  85 00          
	LDA $6213		; 9FDA  AD 13 62       
	SEC			; 9FDD  38             
	SBC #$01		; 9FDE  E9 01          
	ASL A			; 9FE0  0A             
	ASL A			; 9FE1  0A             
	ADC $00			; 9FE2  65 00          
	TAY			; 9FE4  A8             
	LDA $6359,Y		; 9FE5  B9 59 63       
	BMI BC9FF6		; 9FE8  30 0C          
BC9FEA:
	LDA #$19		; 9FEA  A9 19          
	LDY #$A0		; 9FEC  A0 A0          
	BNE BC9FFA		; 9FEE  D0 0A          
BC9FF0:
	LDA #$30		; 9FF0  A9 30          
	LDY #$A0		; 9FF2  A0 A0          
	BNE BC9FFA		; 9FF4  D0 04          
BC9FF6:
	LDA #$3F		; 9FF6  A9 3F          
	LDY #$A0		; 9FF8  A0 A0          
BC9FFA:
	JSR $FB09		; 9FFA  20 09 FB       
	LDA #$80		; 9FFD  A9 80          

;$9FFF - code countinue to BANK 0D - STA $00
.byte $85
