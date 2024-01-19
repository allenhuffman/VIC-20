!--------------------------------------------------
!- April 8, 2020 11:01:45 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\helecopter.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM HELECOPTER
4 FORD=15TO0STEP-.5
5 POKE36878,D
10 POKE36877,200
15 FORT=225TO180STEP-8
20 POKE36876,T:NEXTT
25 POKE36878,0
30 FORT=1TO50:NEXTT
35 NEXTD
