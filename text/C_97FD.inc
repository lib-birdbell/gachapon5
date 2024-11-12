;$97FD - data block = Pilot FACE Blank
.byte $00,$03,$02
;$9800
.byte $00,$03,$00,$04,$00,$05,$00,$22,$00,$23,$00,$24,$00,$25,$00,$ff
;$9810 - data block = 1st,2nd,3rd,4th fleet
.byte $00,$03,$33,P_JAE,$35,P_HAAM,$36,P_DAE,$ff,$ff,$ff,$ff,$ff,$de
.byte $ff,$ff,$ff
;$9821 - data block = Captain(Pilot/Captain)
.byte $00,$03,$3a,P_JO,$3b,P_JONG,$3c,P_SA,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$9830 - data block = Pilot(Pilot/Captain)
.byte $00,$03,$3a,P_HAAM,$3b,P_JANG,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$983D - data block = wating
.byte $00,$03,$32
.byte P_DAE,$33,P_GI,$34,P_JOONG,$ff,$ff,$ff
;$9848 - data block = ??
.byte $00,$03,$32,$86,$33,$6d,$34,$73
.byte $35,$72,$36,$9d,$37,$4f,$3a,$71,$3b,$84,$3d,$ef,$3e,$e9,$ff
;$985F - data block = NT PL EX CL EX
.byte $00
.byte $03,$28,P_NT,$2d,P_PL,$31,P_EX,$36,P_CL,$3a,P_EX,$ff
