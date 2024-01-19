!--------------------------------------------------
!- Saturday, January 13, 2024 11:09:38 PM
!- Import of : 
!- y:\sky-ape-er\sky-ape-er.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
1 poke 808,100
5 rem  ************          *sky-ape-er*        *******by*******
6 rem*allen  huffman*      ****************
10 s=1:poke36879,26:poke36878,15:s1=36875:poke36869,255:rem poke775,200
15 print"{clear}":l=8118:b=7772:m=15
20 fora=38400to38905:pokea,0:nexta
25 print"{home}{down}{right}{black}abc{down}{left*3}def{down}{left*3}ghi{down}{left*3}jkl"
30 onsgoto35,45,55,500
35 print"{red}@@@@@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@@@@@@@@@{down}{left}";
40 print"@@@{down}{left}@@@{down}{left}@@@@@@@@@@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@@@{up}{left}@{up}{left}@{up}{left}@":goto70
45 print"{blue}@@@@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}";
50 print"@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@@@@@@@@@@{up}{left}@{up}{left}@{up}{left}@":goto70
55 print"{purple}@@@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{up*3}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}";
60 print"@@@{up*4}{left}@@@{down}{left}@@@@@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@{down}{left}@@@@@@@@@{up}{left}@{up}{left}@{up}{left}@{up}{left}@{up}{left}@"
70 t=0
80 pokel,m:pokeb,32:pokes1,0
83 ifl=7772orl=7749then400
84 ifl=bthen250
85 b=b+23:ifpeek(b)=0thenb=b-22:pokeb,16
87 ifpeek(l+22)=32thenpokel,32:l=l+22:pokel,m
90 pokes1,240:pokes1,0
95 ifb=lthen250
100 ifb=8118thenpokeb,32:b=7772:pokeb,12
105 print"{home}{blue}{reverse on}{right}time:";t:t=t+1
110 ift>200then300
115 k=peek(197):ifk=64then80
120 pokel,32:pokes1,230
125 ifk=17thenl=l-1:m=14
130 ifk=41thenl=l+1:m=13
135 ifk=39then180
140 ifpeek(l)=0then150
145 goto80
150 ifk=17thenl=l+1
155 ifk=41thenl=l-1
160 m=15:goto80
180 pokes1,235:ifm=14thenl=l-23
183 ifm=15thenl=l-22
185 ifm=13thenl=l-21
190 ifpeek(l)=0then200
195 m=15:goto80
200 ifm=13thenl=l+21
210 m=15:goto80
250 fora=1to11:readn,l:pokes1,n:forp=1tol:nextp:pokes1,0:nexta
255 print"{clear}{black}{reverse on}{down} guess what! you have {down}just been struck down {down}{space*2}by a lucky chimp!"
260 print"{reverse on}{down}({blue}that means {red}game over{black})"
265 goto450
270 data202,250,202,250,202,150,202,350,210,250,208,150,208,200,202,200,202,250,200,200
275 data 202,400
285 print"{down*2}{reverse on}press any key to start"
300 print"{clear}{black}{reverse on}{down*3}well what do you know?"
305 print"{reverse on}{down*2}while you were down onthe ground jumping a- round,your time clock"
310 print"{reverse on}{space*4}just ran out!"
315 print"{reverse on}{down*2}{space*2}next time {red}watch{black} the clock!"
320 goto450
400 s=s+1:goto15
450 print"{black}{reverse on}{down*2}{right}will you try again?"
455 geta$:ifa$=""then455
460 ifa$="n"then550
465 ifa$="y"then480
470 goto455
480 print"{clear}{black}{reverse on}{down*2}at last! someone brave enough to {red}try{black} to stop{space*2}king king's cousin!"
490 geta$:ifa$=""then490
495 run
500 print"{clear}{black}"
505 forz=0to16:print"{home}":forr=0toz:print:nextr
510 print"{space*3}{down}{left*3}abc{down}{left*3}def{down}{left*3}ghi{down}{left*3}jkl"
515 nextz
525 poke36874,128
530 forx=15to0step-.1:poke36878,x:nextx:poke36874,0
535 print"{clear}{black}{reverse on}{down*3}congratulations!!!!!!!{down} you now know what it{space*2}feels like to be on"
540 print"{reverse on}top!{sh space}you played well!"
545 print"{reverse on}{down*2}{blue}bet you don't win next{space*7}time!"
548 print:goto450
550 print"{clear}{black}{reverse on}i didn't think you had enough courage to try{space*3}to stop a mad ape!"
560 print"{down}{reverse on}{red}i hope you enjoyed not saving the building!"
565 forg=1to10000:nextg
570 sys64802
