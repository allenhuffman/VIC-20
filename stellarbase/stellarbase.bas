!--------------------------------------------------
!- April 8, 2020 10:56:51 PM
!- Import of : 
!- w:\old\stellarbase.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
10 P=4:DIMB$(25):C$="nswe":FORA=1TO4
11 T(A)=INT(RND(1)*25)+1:IFT(A)=2ORT(A)=12ORT(A)=13ORT(A)=25THEN11
12 NEXTA
15 A$(1)="n":A$(2)="s":A$(3)="w":A$(4)="e":A$(5)="room":A$(6)="halllway"
16 A$(7)="teleport room"
20 B$(1)="afabdbe":B$(3)="chcddbe":B$(4)="ddcecdf":B$(5)="eidebce":B$(6)="affgade"
21 B$(7)="gjfgbce":B$(8)="ckhhabf":B$(9)="eliiabf":B$(10)="gnjjabf":B$(11)="hqkkabf"
22 B$(14)="jsnoabde":B$(15)="oonpcdf":B$(16)="ppoqcdf":B$(17)="kqpqace":B$(18)="murrabf"
23 B$(19)="nsstade":B$(20)="twstbce":B$(21)="ruuvade":B$(22)="vxuwcdbe":B$(23)="twvwace"
24 B$(24)="vyxxabf":B$(25)="xyyzade"
25 R=INT(RND(1)*25):GOTO65
30 PRINT"{down}{red}you are in a:{black}"
35 FORA=5TOLEN(B$(R)):PRINTA$(ASC(MID$(B$(R),A,A))-64);" ";:NEXTA:PRINT
40 INPUT"{blue}direction";D$
45 FORA=1TO4:IFD$=MID$(C$,A,1)THEN60
50 NEXTA:GOTO40
60 R=ASC(MID$(B$(R),A,A))-64
65 IFR=2ORR=12ORR=13ORR=26THEN75
66 FORA=1TO4:IFR=T(A)THEN80
67 NEXTA
70 GOTO30
75 PRINTA$(7):PRINT"{red}z-a-p-p":POKE36878,15:FORZ=128TO200:POKE36876,Z:NEXTZ:POKE36878,0
76 GOTO25
80 PRINT"{clear}piece found!":POKE36876,200:FORZ=15TO0STEP-.5:POKE36878,Z:NEXTZ
85 T(A)=0:P=P-1:IFP=0THEN100
90 GOTO30
100 PRINT"{clear}congratulations!":END
