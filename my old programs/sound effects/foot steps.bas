!--------------------------------------------------
!- April 8, 2020 11:01:37 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\foot steps.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM FOOT STEPS
5 SC=1
10 FORT=1TO15
15 POKE36877,140
20 FORZ=1TO50:NEXT
25 SC=SC+1
30 POKE36877,128:POKE36877,0
35 POKE36878,SC
40 FORZ=1TO700:NEXTZ
45 NEXTT
