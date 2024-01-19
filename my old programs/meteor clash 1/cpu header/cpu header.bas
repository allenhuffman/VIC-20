!--------------------------------------------------
!- April 8, 2020 9:45:00 PM
!- Import of : 
!- w:\vicconversions\viccpu\cpu header.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 PRINT"{clear}{black}":POKE36878,15:POKE36879,26
2 PRINT"{right*7}{down}{right}{reverse on}{space*4}{down}{left*4} {down}{left} {down}{left} {down}{left}{space*4}":POKE36874,200
3 FORT=1TO500:NEXTT:POKE36879,30
4 PRINT"{right*7}{down}{right}{reverse on}{space*4}{down}{left*4} {right*2} {down}{left*4}{space*4}{down}{left*4} {down}{left} ":POKE36874,219
5 FORT=1TO500:NEXTT:POKE36879,29
6 PRINT"{right*7}{down}{right}{reverse on} {right*2} {down}{left*4} {right*2} {down}{left*4} {right*2} {down}{left*4} {right*2} {down}{left*4}{space*4}":POKE36874,228
7 FORT=1TO500:NEXTT:POKE36879,27
8 PRINT"{down}{red}{reverse on}{space*6}software{space*8}";:POKE36874,233
9 FORT=1TO2000:NEXTT:POKE36874,0
10 PRINT"{down*22}{home}{down}{blue}{space*6}presents...{space*5}";
