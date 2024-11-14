;$A305 - data block = ($A305-$A410) - assignment screen
; Must maintain 268 bytes
; Must fixed each START points
;$A305 - Fleet Top left
.byte $00,$03,$20,T_LUTL,$21,T_EMPTY,$22,T_HAAM,$23,P_DAE,$25
.byte T_EMPTY,$3f,T_RUTL,$ff,$25,$72,$27,$20
;$A318 - data block = Pilot FACE Blank upper
.byte $00,$03,$01,$00,$02,$00,$03,$00
.byte $04,$00,$21,$00,$22,$00,$23,$00,$24,$00,$ff
;$A32B - data block = Pilot FACE Blank lower
.byte $00,$03,$01,$00,$02
.byte $00,$03,$00,$04,$00,$21,$00,$22,$00,$23,$00,$24,$00,$41,$00,$42
.byte $00,$43,$00,$44,$00,$61,$00,$62,$00,$63,$00,$64,$00,$ff
;$A34E - data block = assignment flagship :
.byte $00,$03,$22,T_GI,$23,T_HAAM,$27,T_COLON,$ff,$24,$9d
;$A359 - data block = assignment Prototype MS :
.byte $00,$03,$22,T_SI,$23,P_JAK,$24,T_M,$25,T_S,$27,T_COLON,$ff,$27,$3a
;Down part panels
;$A368 - data block = assignment 16 x 4 textbox L/R side
.byte $00,$03,$0f,T_RTL,$2f,T_RTL,$10,T_LTL,$30,T_LTL,$ff
;$A373 - data block = ?? Fleet Number Military camp (Left)
.byte $00,$03,$22,P_JAE,$24,P_BOO,$25,P_DAE,$ff,$23,$72,$27,$72,$02,$de,$05,$de
;$A384 - data block = Pilot (Left)
.byte $00,$03,$29,T_JO,$2a,P_JONG,$2b,T_SA,$ff,$2c,$af,$2d,$c4,$09,$df
;$A393 - data block = Captain (Left)
.byte $00,$03,$29,T_HAAM,$2a,P_JANG,$ff,$2b,P_JOONG,$2c,P_JOONG,$2d,$9d
;$A3A0 - data block = assignment Waiting (Left)
.byte $00,$03,$26,P_DAE,$27,T_GI,$28,P_JOONG,$29,$4f,$ff
;$A3AB - data block = assignment - hospitalization (Left)
.byte $00,$03,$22,P_CHI,$23,P_RYO,$24,P_JOONG,$29,P_JEON,$2a,P_CHI,$2c,T_GAE,$2d,P_WOL,$ff,$25,$72,$26,$9d,$27,$4f
;$A3C2 - data block = ?? Fleet Number Military camp (Right)
.byte $10,$03,$22,P_JAE,$24,P_BOO,$25,P_DAE,$ff,$26,$80,$27,$72,$02,$de,$05,$de
;$A3D3 - data block = Pilot (Right)
.byte $10,$03,$29,T_JO,$2a,P_JONG,$2b,T_SA,$ff,$2c,$af,$2d,$c4,$09,$df
;$A3E2 - data block = Captain (Right)
.byte $10,$03,$29,T_HAAM,$2a,P_JANG,$ff,$2b,$72,$2c,$76,$2d,$9d
;$A3EF - data block = assignment Waiting (Right)
.byte $10,$03,$26,P_DAE,$27,T_GI,$28,P_JOONG,$ff,$29,$4f
;$A3FA - data block = assignment - hospitalization (Left)
.byte $10,$03,$22,P_CHI,$23,P_RYO,$24,P_JOONG,$29,P_JEON,$2a,P_CHI,$2c,T_GAE,$2d,P_WOL,$ff,$25,$72,$26,$9d,$27,$4f
