!--------------------------------------------------
!- April 8, 2020 9:55:16 PM
!- Import of : 
!- w:\vicconversions\vicgoldgrabber\gold grabber.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM GOLD GRABBER!              BY:              ALLEN HUFFMAN
2 POKE36878,15
5 POKE36879,157:PRINT"{clear}{black}{down}{right*4}gold grabber!{right*4}{down}{right*10}by:"
10 PRINT"{down}{right*4}{black}a{red}l{blue}l{black}e{red}n {blue}h{black}u{red}f{blue}f{black}m{red}a{blue}n{black}"
15 REM FOXFIRE INFO      (COPYWRITE,ETC.)
20 REM FOXFIRE INFO
25 REM FOXFIRE INFO
26 FORL=250TO200STEP-1:POKE36875,L:POKE36874,L::POKE36876,L:FORT=1TO200:NEXTT,L
27 FORL=205TO250STEP2:POKE36875,L:POKE36874,L:POKE36876,L:POKE36879,L:FORM=1TO100:NEXTM
28 NEXTL:POKE36876,0:POKE36875,0:POKE36874,0
29 PRINT"{clear}{black}":POKE36879,157
30 CLR:PRINT"{down}in this game you are a{down}gold grabber eager for{down} gold.you are the 'X'"
51 PRINT"{down}{space*2}the gold is 'Z'. if {down} you are touched by a {down}'+',you lose a man. if"
52 PRINT"you lose three men,the{down}game ends. good luck!"
53 PRINT"{down*2}{black}{reverse on}press any key to start"
55 GETA$:IFA$=""THEN55
60 POKE36879,8:PRINT"{clear}{white}"
65 L=7910:ML=3:SC=0:B=7954
70 G=INT(RND(1)*462)+7702
75 POKEL,88:POKEG,90:POKEB,43
76 PRINT"{right*2}{home}{white}men:";ML:PRINT"{home}{white}{right*10}score:";SC
77 WAIT 653,1,1
80 POKE37154,127
85 J=(NOT((PEEK(37152)AND128)/8+(PEEK(37151)AND60)/4))+32
90 POKE37154,255
95 IFJ=0THEN130
100 POKEL,32
105 IFJ=1THENL=L-22
106 IFJ=2THENL=L+22
107 IFJ=4THENL=L-1
108 IFJ=16THENL=L+1
109 IFJ=5THENL=L-23
110 IFJ=17THENL=L-21
111 IFJ=6THENL=L+21
112 IFJ=18THENL=L+23
115 IFL=<7702THENL=L+22
120 IFL=>8164THENL=L-22
125 POKEL,88
130 POKEL,88
135 MOVE=INT(RND(1)*4)+1
136 POKEB,32:POKEG,32
140 IFMOVE=1THENB=B-1:G=G+1
141 IFMOVE=2THENB=B+1:G=G-1
142 IFMOVE=3THENB=B+22:G=G-22
143 IFMOVE=4THENB=B-22:G=G+22
145 IFB=<7724THENB=B+22
146 IFB=>8142THENB=B-22
147 IFG=<7724THENG=G+22
148 IFG=>8142THENG=G-22
149 IFL=BTHEN200
150 IFL=GTHEN250
155 POKEG,42:POKEB,43:GOTO75
160 SC=SC+10:GOTO70
200 POKEL,42:POKE36877,128
205 FORT=15TO0STEP-.1:POKE36878,T:NEXTT:POKE36877,0:POKE36878,15
210 ML=ML-1:IFML=0THEN300
215 POKEL,32:POKEG,32:GOTO70
250 POKE36876,200
255 FORT=15TO0STEP-.5:POKE36878,T:NEXTT:POKE36876,0:POKE36878,15
260 SC=SC+10:GOTO70
300 PRINT"{clear}{white}{down*5}****************************game over*****************************"
305 PRINT"{down*2}final score:";SC
310 PRINT"{down}{reverse on}play again?"
315 GETA$:IFA$=""THEN315
320 IFA$="y"THENRUN
325 IFA$="n"THENEND
