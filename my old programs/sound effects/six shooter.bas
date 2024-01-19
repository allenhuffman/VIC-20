!--------------------------------------------------
!- April 8, 2020 11:02:02 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\six shooter.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM SIX SHOOTER
5 POKE36878,15
10 GETA$:IFA$=""THEN10
15 POKE36877,128
20 FORT=15TO0STEP-.2
25 POKE36878,T:NEXTT
30 GOTO10
