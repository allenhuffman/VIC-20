0 rem litesout-p7.bas

10 rem setup
20 dim l(9,9)

100 rem start new game
110 gosub 5000
120 rem initialize grid
130 mv=0
140 gosub 4000
150 rem show grid
160 gosub 1000
170 rem check for win
180 if lo=0 then 300
190 rem input square
200 gosub 2000
210 rem toggle squares
220 gosub 3000
230 rem repeat
240 mv=mv+1
250 goto 150

300 rem game won
310 print "you won in";mv;"moves."
320 input "play again (y/n)";q$
330 if q$="y" then 100
340 print "game over"
350 end

1000 rem show grid
1010 print "game number:";gn
1020 print "  ";
1030 for a=1 to gs
1040 print right$(str$(a),2);
1050 next:print
1060 for y=0 to gs-1
1070 print right$(str$(y+1),2);" ";
1080 for x=0 to gs-1
1090 if l(x,y) then print "x ";:goto 1110
1100 print ". ";
1110 next
1120 print
1130 next
1140 print "moves:";mv;"lights on:";lo
1150 return

2000 rem input square
2010 s$=mid$(str$(gs),2):print "x,y (1-";s$;",1-";s$;" or 0,0)"
2020 input x,y
2030 if x=0 then if y=0 then 320
2040 if x<1 or x>gs or y<1 or y>gs then 2010
2050 x=x-1:y=y-1
2060 return

3000 rem toggle squares 
3010 l(x,y)=not l(x,y):lo=lo-(l(x,y)*2+1)
3020 if x>0 then l(x-1,y)=not l(x-1,y):lo=lo-(l(x-1,y)*2+1)
3030 if x<gs-1 then l(x+1,y)=not l(x+1,y):lo=lo-(l(x+1,y)*2+1)
3040 if y>0 then l(x,y-1)=not l(x,y-1):lo=lo-(l(x,y-1)*2+1)
3050 if y<gs-1 then l(x,y+1)=not l(x,y+1):lo=lo-(l(x,y+1)*2+1)
3060 return

4000 rem initialize grid
4010 print "grid size (3-10,ret=5)":input gs
4020 if gs=0 then gs=5
4030 if gs<3 or gs>10 then 4010
4040 print "initializing..."
4050 for a=1 to 10*gs
4060 rem y=rnd(gs)-1
4061 y=int(rnd(1)*gs)
4070 rem x=rnd(gs)-1
4071 x=int(rnd(1)*gs)
4080 gosub 3000
4090 next
4100 return

5000 rem select game
5010 print "play specific game #":print "(y/n)?"
5020 rem s=s+1:a$=inkey$:if a$="" then 5020
5021 s=s+1:get a$:if a$="" then 5020
5030 if a$="y" then 5070
5040 if a$="n" then a=rnd(-s)
5050 gn=rnd(65535):a=rnd(-gn)
5051 rem gn=int(rnd(1)*65535)-1:a=rnd(-gn)
5060 goto 5100
5070 print "play game (1-65535)":input gn
5080 if gn<1 or gn>65535 then 5060
5090 a=rnd(-gn)
5100 return
