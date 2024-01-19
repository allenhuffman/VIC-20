!--------------------------------------------------
!- April 8, 2020 9:40:36 PM
!- Import of : 
!- w:\vicconversions\vicbricklayer\brick layer.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM*************         *BRICK LAYER*         *****BY:*****
2 REM*   ALLEN   *         *  HUFFMAN  *         *************
5 POKE36879,26:POKE36878,15
10 ML=3:L=7910:D=0:AREA=0
15 PRINT"{clear}":FORA=38400TO38905:POKEA,2:NEXTA
20 PRINT"{home}{down}{reverse on}{black}LLLLLLLLLLLLLLLLLLLLLL";
25 FORA=240TO150STEP-5:POKE36876,A:PRINT"{reverse on}L{right*20}L";:FORB=1TO50:NEXTB,A
30 POKE36876,0:PRINT"{reverse on}LLLLLLLLLLLLLLLLLLLLLL";
35 POKE36874,0:WAIT653,1,1
40 POKEL,204
45 POKE37154,127
50 J=(NOT((PEEK(37152)AND128)/8+(PEEK(37151)AND60)/4))+32
55 POKE37154,255
60 POKE36874,130
65 IFJ=0THEN87
70 IFJ=1THEND=1
75 IFJ=2THEND=2
80 IFJ=4THEND=3
85 IFJ=16THEND=4
87 IFD=0THEN35
90 IFD=1THENL=L-22
95 IFD=2THENL=L+22
100 IFD=3THENL=L-1
105 IFD=4THENL=L+1
110 IFPEEK(L)=204THEN150
115 AREA=AREA+1:IF AREA=>200THEN300
120 PRINT"{home}{right*2}{blue}{reverse on}men:{reverse off}";ML:PRINT"{home}{right*10}{reverse on}area:{reverse off}";AREA
125 FORP=1TO25:NEXTP
135 GOTO35
150 POKE36874,128
155 FORV=15TO0STEP-.3:POKE36878,V:NEXTV:POKE36874,0
160 POKE36878,15
165 ML=ML-1:IFML=0THEN200
170 L=7910:D=0:AREA=0
175 GOTO15
200 PRINT"{home}{right*7}{down*12}{blue}{reverse on}game{right}over"
205 PRINT"{down}{right*3}{reverse on}area{right}covered:{reverse off}{black}";AREA
210 FORA=1TO10
215 FORQ=128TO180STEP3:POKE36876,Q:NEXTQ
220 FORQ=180TO128STEP-1:POKE36876,Q:NEXTQ,A
225 POKE36876,0
230 PRINT"{clear}{black}{down*9}{right*6}new{right}game?"
235 GETA$:IFA$=""THEN235
240 IFA$="n"THEN260
245 IFA$="y"THENRUN
250 GOTO235
260 POKE36879,27:PRINT"{clear}":END
300 C$="congratulations!"
305 FORB=1TO5:FORA=1TO16
310 PRINTLEFT$(C$,A);:POKE36874,200:POKE36874,0:NEXTA,B
315 PRINT"{clear}{black}{down*8} you have covered 200{space*6}land spaces!{space*11}good show!"
320 PRINT"{down}{right*6}new game?"
325 GOTO235
