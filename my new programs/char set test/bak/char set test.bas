0 rem charset demo
1 REM set vars start
2 POKE45,000:POKE46,28
3 REM set string end
4 POKE51,0:POKE52,28
5 REM set memory end
6 POKE55,0:POKE56,28
7 REM clear vars
8 CLR
9 for l=7424 to 7432
10 poke l,0:next
11 REM charset in RAM
12 POKE 36869,255
13 rem
100 print "{clear}{down*20}";
105 print "@@@@@@@@@@@@@@@@@@@@@@";
110 for l=38400 to 38911:poke l,0:next
115 rem init bricks
120 for b=0 to 3:bl(b)=7680+rnd(1)*22+88*b:bc(b)=1+b:next
125 rem init player
130 p1=8109:p2=8131:pt=7:pb=8
135 rem main loop
140 pokep1,pt:pokep2,pb
145 for b=0 to 3:poke bl(b),32
150 bl(b)=bl(b)+22:if bl(b)>8120 then bl(b)=7680+rnd(1)*22
155 bc(b)=bc(b)+1:if bc(b)>4 then bc(b)=1
160 poke bl(b),bc(b)
165 next
170 get a$
175 if a$="a" then if p2>8119 then pokep1,32:pokep2,0:p1=p1-1:p2=p2-1:pt=5:pb=6:goto 140
180 if a$="s" then if p2<8141 then pokep1,32:pokep2,0:p1=p1+1:p2=p2+1:pt=9:pb=10:goto 140
185 if a$="q" then 510
190 pt=7:pb=8
195 goto 140
500 REM charset in ROM
510 POKE 36869,240
520 END
1000 PRINT PEEK(45);PEEK(46)

