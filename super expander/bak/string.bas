!--------------------------------------------------
!- April 8, 2020 11:36:04 PM
!- Import of : 
!- w:\cmb prg studio\string\string.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
5 REM STRING
10 GRAPHIC2
15 SC=INT(RND(1)*16):CH=INT(RND(1)*8):IFSC=CHTHEN15
20 SCNCLR:COLORSC,SC,CH,0
25 FORA=0TO500STEP40
30 CIRCLE2,511,511,A,500-A
35 NEXTA
40 FORZ=1TO1000:NEXTZ
45 GOTO15
