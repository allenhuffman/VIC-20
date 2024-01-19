5 GOSUB 500:rem poke 36869,255
10 print"{clear}{reverse on}generating frames:"
20 for c=0 to 7:print "{reverse on}";chr$(65+c);chr$(73+c);" -> {reverse off}";chr$(65+c);chr$(73+c):print:next
25 get a$:if a$="" then 25
28 poke 36869,255
30 rem char row
40 for r=0 to 7
50 read v:v1=v
60 l1 = 7168+8+r
70 l2 = 7168+8+(8*8)+r
80 rem character
90 for c=0 to 7
100 poke l1+(c*8),v1
110 v1=v1/2
120 v2=(v and bt(c)-1) * bt(8-c)
130 poke l2+(c*8),v2
140 next
150 next
200 rem smooth move
210 print "{reverse on}move: a/s  quit: q"
220 c=0:f=0
230 print chr$(65+f);chr$(73+f);"{left*2}";
240 k=peek(197):if k=64 then 240
250 if k=48 then 380
260 if k=17 then 300
270 if k=41 then 340
280 goto 240
290 rem left
300 if f>0 then f=f-1:goto 230
310 if c>0 then c=c-1:f=7:print"  {left*3}";
320 goto 230
330 rem right
340 if f<7 then f=f+1:goto 230
350 if c<20 then c=c+1:f=0:print" ";
360 goto 230
370 rem quit
380 poke 36869,240:poke 198,0
390 end
500 rem initialize
510 for z=0 to 7:bt(z)=2^z:next
520 for z=7168+8 to 7168+8+16*8:poke z,0:next
525 for z=7126+(32*8) to 7168+(32*8)+8:poke z,0:next
530 return
600 rem print bits
610 for bt=0 to 7
620 if v and bt(bt) then print"1";: goto 640
630 print "0";
640 next:return
5000 rem 8x8 object
5010 rem data 60,126,255,255,255,255,126,60
5020 DATA 24,60,126,60,255,126,255,255
