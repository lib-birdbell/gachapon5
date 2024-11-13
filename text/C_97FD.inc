;$97FD - data block = Pilot FACE Blank
.byte $00,$03,$02
;$9800
.byte $00,$03,$00,$04,$00,$05,$00,$22,$00,$23,$00,$24,$00,$25,$00,$ff
;$9810 - data block = 1st,2nd,3rd,4th fleet
.byte $00,$03,$33,P_JAE,$35,T_HAAM,$36,P_DAE,$ff,$ff,$ff,$ff,$ff,$de
.byte $ff,$ff,$ff
;$9821 - data block = Captain(Pilot/Captain)
.byte $00,$03,$3a,T_JO,$3b,P_JONG,$3c,T_SA,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$9830 - data block = Pilot(Pilot/Captain)
.byte $00,$03,$3a,T_HAAM,$3b,P_JANG,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;$983D - data block = wating
.byte $00,$03,$32
.byte P_DAE,$33,T_GI,$34,P_JOONG,$ff,$ff,$ff
;$9848 - data block = ??
.byte $00,$03,$32,$86,$33,$6d,$34,$73
.byte $35,$72,$36,$9d,$37,$4f,$3a,$71,$3b,$84,$3d,$ef,$3e,$e9,$ff
;$985F - data block = NT PL EX CL EX
.byte $00
.byte $03,$28,T_NT,$2d,T_PL,$31,T_EX,$36,T_CL,$3a,T_EX,$ff
