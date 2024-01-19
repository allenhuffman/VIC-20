!--------------------------------------------------
!- Saturday, January 13, 2024 11:15:11 PM
!- Import of : 
!- y:\sky-ape-er\insrtuctions.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
5 rem  ************          *sky-ape-er*        *******by*******
6 rem*allen  huffman*      ****************
10 poke36879,26:poke808,100:poke775,200
15 print"{clear}{black}{right*2}-=<<sky-{red}ape{black}-er>>=-{right*5}by:{blue}allen huffman"
20 print"{purple}{cm @*22}{cm g}{space*4}instructions{space*4}{cm m}{cm t*22}"
25 print"{black}{down}climb the buildings to capture the mad ape!"
30 print" jump over chimps and up steps to get to thetop. you must face the";
35 print"{space*2}direction to jump."
40 print"{down}{blue}{space*6}controls :{down}"
45 print"{red}<left>='a'{right}<right>='s'{right*4}<jump>='f1 key'"
50 print"{down}{black}{reverse on}{space*4}press any key.{space*4}"
55 geta$:ifa$=""then55
60 print"{clear}{right*4}please wait..."
65 fora=7424to7432:pokea,0:nexta
70 fora=7168to7303:readb:pokea,b:nexta
80 poke198,6:poke631,78:poke632,69:poke633,87:poke634,13:poke635,131
100 data223,223,223,0,253,253,253,0,0,0,0,0,1,3,3,7,0,60,126,219,129,165,165,129
105 data0,0,0,0,128,192,192,224,31,63,127,255,252,254,127,63,0,126,126,0,255,0,231,231
110 data248,252,254,255,63,127,254,252,15,7,8,30,31,31,31,31,231,219,60,255,126,126
115 data189,195,240,224,16,120,248,248,248,248,31,31,31,15,15,63,127,0,231,129,0,0,129
120 data129,129,0,248,248,248,240,240,252,254,0,12,12,24,47,8,15,82,36,48,48,24,244,16
125 data240,74,36,28,8,28,42,8,20,20,54,12,76,40,47,40,159,82,36
