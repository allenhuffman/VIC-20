!--------------------------------------------------
!- April 8, 2020 9:47:41 PM
!- Import of : 
!- w:\vicconversions\vicgamestarter\game starter.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM MAZE GOBBLERS     BY: ALLEN HUFFMAN
5 POKE36879,157:PRINT"{clear}{black}{right*4}{down}maze gobblers{right*9}{down}{right*5}by:{down}"
10 PRINT"{right*4}{black}a{red}l{blue}l{black}e{red}n {blue}h{black}u{red}f{blue}f{black}m{red}a{blue}n"
15 REM FOXFIRE INFO      (COPYWRITE,ETC.)
20 REM FOXFIRE INFO
25 REM FOXFIRE INFO
26 FORT=1TO2000:NEXTT
30 PRINT"{clear}":POKE36879,8:POKE36878,15
35 IFPEEK(52)=28THEN40
36 POKE51,0:POKE52,28:POKE55,0:POKE56,28:CLR:CB=7168
37 READA:IFA=-1THEN40
38 FORN=0TO7:READB:POKECB+A*8+N,B:NEXT
39 GOTO37
40 POKE36869,255
