!--------------------------------------------------
!- April 8, 2020 10:14:42 PM
!- Import of : 
!- w:\vicconversions\victhickbrush\thick brush.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM THICK BRUSH 1     BY: ALLEN HUFFMAN
5 POKE36879,157:PRINT"{clear}{black}{down}{right*4}thick brush 1{down*2}{left*8}by:{down}"
10 PRINT"{right*4}{black}a{red}l{blue}l{black}e{red}n {blue}h{black}u{red}f{blue}f{black}m{red}a{blue}n"
15 REM FOXFIRE INFO      (COPYWRITE,ETC.)
20 REM FOXFIRE INFO
25 REM FOXFIRE INFO
26 FORT=1TO5000:NEXTT
30 PRINT"{clear}{black}{down} select border color:"
35 PRINT"{down*3}4=black{right*15}5=white{right*15}6=red{right*17}7=cyan"
40 PRINT"8=purple{right*14}9=green{right*15}10=blue{right*15}11=yellow"
45 INPUT"{down*2}color number";A
50 PRINT"{clear}{down} select screen color:"
55 PRINT"{down*2}4=black{right*15}20=white{right*14}36=red{right*16}42=cyan"
60 PRINT"68=purple{right*13}84=green{right*14}100=blue{right*14}116=yellow"
65 PRINT"132=orange{right*12}148=lt.orange{right*9}164=pink{right*14}180=lt.cyan"
70 PRINT"196=lt.purple{right*9}212=lt.green{right*10}228=lt.blue{right*11}224=lt.yellow
75 INPUT"{down}color number:";B
80 POKE36879,A+B
85 CLR:PRINT"{clear}"
90 L=7910:C=38630:H=1
95 POKEL,160:POKEC,H
100 POKE37154,127
105 J=(NOT((PEEK(37152)AND128)/8+(PEEK(37151)AND60)/4))+32
110 POKE37154,255
115 IFJ=1THENL=L-22:C=C-22
120 IFJ=2THENL=L+22:C=C+22
125 IFJ=4THENL=L-1:C=C-1
130 IFJ=16THENL=L+1:C=C+1
135 IFJ=5THENL=L-23:C=C-23
140 IFJ=17THENL=L-21:C=C-21
145 IFJ=6THENL=L+21:C=C+21
150 IFJ=18THENL=L+23:C=C+23
151 IFL=<7701THENL=L+22:C=C+22
152 IFL=>8164THENL=L-22:C=C-22
154 POKEC,1
155 IFJ=8THENH=H+1:IFH=8THENH=0
160 IFJ=9THENPRINT"{clear}":GOTO95
165 GOTO95
