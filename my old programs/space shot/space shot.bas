!--------------------------------------------------
!- April 8, 2020 10:08:00 PM
!- Import of : 
!- w:\vicconversions\vicspaceshot\space shot.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 REM SPACE SHOT #2     BY: ALLEN HUFFMAN
5 POKE36879,157:PRINT"{clear}{black}{down}{right*4}space shot #2{down}{right*14}by:"
10 PRINT"{down}{right*4}{black}a{red}l{blue}l{black}e{red}n {blue}h{black}u{red}f{blue}f{black}m{red}a{blue}n"
15 REM FOXFIRE INFO      (COPYWRITE,ETC.)
20 REM FOXFIRE INFO
25 REM FOXFIRE INFO
26 FORT=1TO5000:NEXTT
30 POKE36879,8:PRINT"{clear}{white}"
35 PRINT"{down*2}position '+' on to the{down}'Q'.the press the red"
40 PRINT"{down} button to fire.after {down}50 shots,the game ends{down*3}{space*5}{yellow}good luck!."
45 PRINT"{white}{down*2}{reverse on}press any key to start"
46 GETA$:IFA$=""THEN46:CLR
48 PRINT"{clear}":POKE36878,15
50 B=7910:L=7932:S=0:A=50
55 POKEB,81:POKEL,43
56 WAIT653,1,1
57 PRINT"{home}{down}.{right*4}.{right*6}.{right*5}.{down*2}.{right}.{right*5}.{right*3}.{right*5}.{right*4}.{right*4}{down}{right*3}.{right*5}.{right*6}.{right*5}.{right*2}"
58 PRINT"{right}.{right*4}.{right*6}.{right*6}.{down}{right*5}.{right*5}.{right}.{down}.{right*6}.{right*5}.{right*2}..{right*4}.{right*3}.{right*5}.{right*3}.{right*3}"
59 PRINT"{down}.{right}.{right*3}.{right*5}.{right*4}.{right}{down}{right*2}.{right*5}.{right*3}.{right}.{right*7}.{right}.{right*3}.{right*3}.{right*5}.{right}{down}.{right*5}.{right*3}.{right*4}.
60 PRINT"{home}{down*21}{right*2}hits:";S
65 PRINT"{home}{down*21}{right*12}ammo:{space*4}{left*4}";A
75 POKE37154,127
80 J=(NOT((PEEK(37152)AND128)/8+(PEEK(37151)AND60)/4))+32
85 POKE37154,255
90 POKEL,32
95 IFJ=1THENL=L-22
100 IFJ=2THENL=L+22
105 IFJ=4THENL=L-1
110 IFJ=16THENL=L+1
115 IFJ=5THENL=L-23
120 IFJ=17THENL=L-21
125 IFJ=6THENL=L+21
130 IFJ=18THENL=L+23
135 X=INT(RND(1)*4)+1
136 POKEB,32
140 IFX=1THENB=B-1
145 IFX=2THENB=B+1
150 IFX=3THENB=B+22
155 IFX=4THENB=B-22
160 IFJ=8THEN200
165 IFB=>8142THENB=B-22
170 IFB=<7702THENB=B+22
175 IFL=>8142THENL=L-22
180 IFL=<7702THENL=L+22
185 GOTO55
200 POKE36877,128:POKEL,160:A=A-1:IFL=BTHEN215
201 IFA=0THEN250
205 FORT=1TO10:NEXT:POKE36877,0
210 GOTO55
215 POKEL,102:FORT=200TO128STEP-1
220 POKE36877,T:POKE36874,T:NEXTT:POKE36877,0:POKE36874,0
225 S=S+1:B=B+1
230 GOTO55
250 PRINT"{clear}{down*2}******{red}g{cyan}a{purple}m{green}e{blue} o{yellow}v{red}e{cyan}r{white}*******"
255 PRINT"{down*3}{right*2}out of ammunition!"
260 PRINT"{down*4}shots fired: 50"
265 PRINT"{down}hits:";S
266 POKE36877,0:POKE36874,0:POKE36876,0
269 CLR
270 PRINT"{down*2}new game?"
271 GETA$:IFA$=""THEN271
275 IFA$="y"THENRUN
280 IFA$="n"THEN285
281 GOTO271
285 POKE36879,27:PRINT"{blue}{clear}";
