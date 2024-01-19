!--------------------------------------------------
!- April 8, 2020 11:01:33 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\door.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM CREAKING DOOR
5 POKE36878,15
10 FORQ=128TO155
15 POKE36874,Q
20 FORT=1TO10:NEXTT,Q
25 POKE36874,0
