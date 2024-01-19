!--------------------------------------------------
!- April 8, 2020 11:01:50 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\laser.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM LASER
5 Q=2
10 GETA$:IFA$=""THEN10
15 IFA$=" "THENQ=4
20 POKE36878,15
25 FORT=230TO190STEP-Q
30 POKE36876,T:NEXTT
35 POKE36876,0
40 GOTO5
