!--------------------------------------------------
!- April 8, 2020 11:02:13 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\ufo.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM UFO
5 POKE36878,15
10 FORL=1TO115
15 FORQ=128+LTO138+L
20 POKE36875,Q:NEXTQ,L
25 POKE36875,0
