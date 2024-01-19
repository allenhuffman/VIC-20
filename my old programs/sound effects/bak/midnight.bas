!--------------------------------------------------
!- April 8, 2020 11:01:56 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\midnight.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM MIDNIGHT
5 POKE36878,15
10 FORT=1TO10:POKE36877,200
15 POKE36878,15:POKE36878,0
20 FORZ=1TO900:NEXTZ:POKE36877,128
25 POKE36878,15:POKE36878,0:NEXTT
35 POKE36877,0
40 FORW=1TO12
45 POKE36874,128:POKE36875,128
50 FORQ=15TO0STEP-.05
55 POKE36878,Q:NEXTQ
60 FORZ=1TO700:NEXTZ
65 NEXTW
