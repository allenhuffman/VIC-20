!--------------------------------------------------
!- April 8, 2020 10:08:56 PM
!- Import of : 
!- w:\vicconversions\vicsuperexpander\blinky.prg
!- VIC20 with 3K expansion
!--------------------------------------------------
10 GRAPHIC2:COLOR1,1,0,0
14 REM HEAD
15 CIRCLE2,511,511,180,350
19 REM HAIR
20 draw2,350,670TO380,450TO650,450TO670,650:PAINT2,345,600
24 REM EYES
25 CIRCLE2,440,500,35,20:CIRCLE2,570,500,35,20
26 CIRCLE2,440,500,15,18:CIRCLE2,570,500,15,18:PAINT2,440,500:PAINT2,570,500
29 REM NOSE
30 CIRCLE2,485,600,15,20,20,70:CIRCLE2,525,600,15,20,80,30:CIRCLE2,511,610,15,20,10,40
35 draw2,520,600TO520,500
39 REM MOUTH
40 draw2,450,700TO560,700
44 REM BLINK
45 CIRCLE0,440,500,35,20:CIRCLE0,570,500,35,20
46 CIRCLE2,440,500,35,20:CIRCLE2,570,500,35,20
50 GOTO45
