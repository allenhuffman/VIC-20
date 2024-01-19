0 rem custom charset
1 rem protect chars
2 rem from basic.
3 REM set string end
4 POKE51,0:POKE52,28
5 REM set memory end
6 POKE55,0:POKE56,28
7 REM clear vars
8 CLR
10 for l=7168 to 7168+12*8-1
15 read v:poke l,v
20 next
25 rem clear 'space'
30 for l=7424 to 7432
35 poke l,0:next
40 print"{clear}{reverse on}charset:{reverse off}"
45 print" a b c d"
50 print" e g i"
55 print"@f@h@j@k@"
60 poke 36869,255
65 get a$
70 if a$="" then 65
75 poke 36869,240
80 print l and 255;int(l/256)
85 end
1000 DATA 255,2,4,8,16,32,255,255
1010 DATA 0,28,46,71,142,92,56,0
1020 DATA 16,40,68,98,118,62,28,8
1030 DATA 0,28,58,113,226,116,56,0
1040 DATA 16,56,124,110,70,34,20,8
1050 DATA 96,240,96,62,185,89,28,30
1060 DATA 189,68,132,66,33,0,255,255
1070 DATA 24,60,24,126,189,189,189,60
1080 DATA 189,36,36,36,102,0,255,255
1090 DATA 6,15,6,124,157,154,56,120
1100 DATA 189,34,33,66,132,0,255,255
1110 DATA 255,102,129,66,138,150,223,255
