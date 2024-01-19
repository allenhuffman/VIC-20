!--------------------------------------------------
!- April 8, 2020 10:52:38 PM
!- Import of : 
!- w:\old\sky-ape-er v1.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 POKE45,56:POKE46,26:POKE51,0:POKE52,28:POKE55,0:POKE56,28:CLR
5 REM ************          *SKY-APE-ER*          *****BY*****
6 REM *   ALLEN  *          *  HUFFMAN *          ************
10 SC=1:POKE36879,25:POKE36878,15:POKE36869,255:POKE650,255
15 PRINT"{clear}":L=8118:S=7772:M=15
20 FORA=38400TO38905:POKEA,0:NEXTA
25 PRINT"{home}{down}{right*2}{black}a{down}{left*2}bcd{down}{left*3}efg{down}{left*3}hij"
30 ONSCGOTO35,50,65,500
35 PRINT"{red}kkkkkkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkkkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkkkkkkkkkk{down}{left}";
40 PRINT"kkk{down}{left}kkk{down}{left}kkkkkkkkkkkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkkkk{up}{left}k{up}{left}k{up}{left}k"
45 GOTO75
50 PRINT"{blue}kkkkkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}";
55 PRINT"kkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkkkkkkkkkkk{up}{left}k{up}{left}k{up}{left}k"
60 GOTO75
65 PRINT"{purple}kkkkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{up*3}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}";
70 PRINT"kkk{up*4}{left}kkk{down}{left}kkkkkkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkk{down}{left}kkkkkkkkk{up}{left}k{up}{left}k{up}{left}k{up}{left}k{up}{left}k"
75 TI$="000000"
80 POKEL,M:POKES,32:POKE36875,0
83 IFL=7771ORL=7749THEN400
84 IFL=STHEN250
85 S=S+23:IFPEEK(S)=11THENS=S-22
87 IFPEEK(L+22)=32THENPOKEL,32:L=L+22:POKEL,M
90 POKES,12:POKE36876,240:POKE36876,0
95 IFS=LTHEN250
100 IFS=8118THENPOKES,32:S=7773:POKES,12
105 PRINT"{home}{blue}{right*10}{reverse on}time:";TI
110 IFTI=>2000THEN300
115 GETA$:IFA$=""THEN80
120 POKEL,32:POKE36875,230
125 IFA$="a"THENL=L-1:M=14
130 IFA$="s"THENL=L+1:M=13
135 IFA$="{f1}"THEN180
140 IFPEEK(L)=11THEN150
145 GOTO80
150 IFA$="a"THENL=L+1:M=15
155 IFA$="s"THENL=L-1:M=15
160 GOTO80
180 POKE36875,235:IFM=14THENL=L-23
183 IFM=15THENL=L-22
185 IFM=13THENL=L-21
190 IFPEEK(L)=11THEN200
193 M=15
195 GOTO80
200 IFM=13THENL=L+21:M=15
205 IFM=14THENL=L+23:M=15
210 GOTO80
250 READN:IFN=-1THEN270
255 POKE36875,N
260 READL:FORT=1TOL:NEXTT:POKE36875,0
265 GOTO250
270 POKE36869,240
275 PRINT"{clear}{black}{down} guess what! you have {down}just been struck down {down} by a lucky pinwheel!"
280 PRINT"{down}({blue}that means {red}{reverse on}game{right}over{reverse off}{black})"
285 GOTO450
290 DATA202,350,202,350,202,150,202,350,210,350,208,150,208,200,202,200,202,250,200,200
295 DATA202,400,-1
300 POKE36869,240:PRINT"{clear}{black}{down*3}well what do you know?"
305 PRINT"{down*2}while you were down onthe ground jumping a- round, you time clock"
310 PRINT"{space*4}just ran out!"
315 PRINT"{down*2}{space*2}next time {red}watch{black} the{space*10}clock!"
320 GOTO450
400 SC=SC+1:GOTO15
450 PRINT"{black}{reverse on}{down*2}{right}will{right}you{right}try{right}again?"
455 GETB$:IFB$=""THEN455
460 IFB$="n"THEN550
465 IFB$="y"THEN480
475 GOTO455
480 PRINT"{clear}{black}{down*2}at last! someonebrave enough to {red}try{black} to stop{space*2}king-kong's cousin!"
485 PRINT"{down*2}press any key to start"
490 GETC$:IFC$=""THEN490
495 RUN
500 PRINT"{clear}{black}"
505 FORZ=0TO16:PRINT"{home}":FORR=0TOZ:PRINT:NEXTR
510 PRINT"{space*3}{down}{left*3} a {down}{left*3}bcd{down}{left*3}efg{down}{left*3}hij"
520 NEXTZ
525 POKE36874,128
530 FORX=15TO0STEP-.1:POKE36878,X:NEXTX:POKE36874,0
535 POKE36869,240
537 PRINT"{clear}{black}{down*3}congratulations!!!!!!!{down} you now know what it{space*2}feels like to be on "
540 PRINT"top! you played well!"
545 PRINT"{down*2}{blue}bet you don't win next{space*7}time!"
548 PRINT:GOTO450
550 PRINT"{clear}{black}{down*2}i din't think you had enough courage to try{space*3}to stop a mad ape!"
560 PRINT"{down}{red}i hope you enjoyed not saving the building!"
565 FORG=1TO10000:NEXTG
570 SYS 64802
