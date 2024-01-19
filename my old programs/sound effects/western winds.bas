!--------------------------------------------------
!- April 8, 2020 11:02:18 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\western winds.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM WESTERN WINDS
5 POKE36878,15
10 FORQ=220TO240
15 FORZ=1TO100:NEXTZ
20 POKE36877,Q:NEXTQ
25 FORQ=240TO220STEP-1
30 FORZ=1TO100:NEXTZ
35 POKE36877,Q:NEXTQ
40 GOTO10
