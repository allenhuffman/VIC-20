!--------------------------------------------------
!- April 8, 2020 11:01:41 PM
!- Import of : 
!- w:\cmb prg studio\sound effects\gong.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM GONG
5 POKE36875,128:POKE36874,158
10 GETA$:IFA$=""THEN10
15 FORQ=15TO0STEP-.04
20 POKE36878,Q:NEXTQ
25 GOTO5
