!--------------------------------------------------
!- April 8, 2020 10:18:59 PM
!- Import of : 
!- w:\old\brain warp.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
10 PRINT"{clear}":SC=30720:C1=0:H=36874:V=36878:GOSUB2000
20 DIMZ(6,4,4),LO(6)
30 FORI=1TO6:READLO(I):FORJ=1TO4:FORK=1TO4:READZ(I,J,K):NEXTK,J,I
40 PRINT"{black}{home}{down*2}{space*5}1{space*5}2{space*5}3":PRINT"{down*5}{space*5}4{space*5}5{space*5}6":PRINT"{down*2}"
50 POKEV,15:FORI=1TO6:POKEV-4,138+8*I:FORJ=1TO4:POKEV-2,225+I*J-CI:FORK=1TO4
60 POKELO(I)+J*22+K,207:POKELO(I)+SC+J*22+K,Z(I,J,K)
70 NEXTK,J,I:POKEV-2,0
80 FORI=1TO6:FORJ=1TO4:FORK=1TO4
90 IFZ(I,1,1)<>Z(I,J,K)THEN120
100 NEXTK,J,I
110 POKEV-4,0:POKEV,0:PRINT"{down*3}{white}you got it in";CI+1;"moves.":GOSUB3000
120 POKEV,0:POKEV-4,0:PRINT"{down*2}{space*7}";RETURN;CI+1;"{black}{reverse off}{down}"
130 INPUT" move from sq{space*2}1{left*3}";F:IFF<1ORF>6THENPRINT"{up}{space*17}{up}":GOTO140
140 INPUT" move to sq{space*4}1{left*3}";T:IFT<1ORT>6THENPRINT"{up}{space*16}{up}":GOTO170
150 INPUT" row or col{space*4}r{left*3}";W$
160 IFW$="c"THEN190
170 INPUT"{up} row number{space*4}1{left*3}";R:IFR<1ORR>4THENPRINT"{up}{space*16}{up}":GOTO170
180 FORM=1TO4:HO=Z(F,R,M):Z(F,R,M)=Z(T,R,M):Z(T,R,M)=HO:NEXTM:GOTO210
190 INPUT"{up} col number{space*4}1{left*3}";C:IFC<1ORC>4THENPRINT"{up}{space*16}{up}":GOTO190
200 FORM=1TO4:HO=Z(F,M,C):Z(F,M,C)=Z(T,M,C):Z(T,M,C)=HO:NEXTM
210 CI=CI+1:PRINT"{clear}":GOTO40
220 END
1000 DATA7726,0,6,7,2,3,2,3,1,3,3,2,3,6,3,0,7
1010 DATA7732,2,0,2,7,7,6,7,7,7,2,0,1,7,1,6,0
1020 DATA7738,7,1,1,0,2,0,6,3,6,1,3,0,0,2,7,6
1030 DATA7858,6,2,3,6,0,1,0,2,1,7,1,2,2,7,3,1
1040 DATA7864,1,3,0,3,6,7,2,6,2,0,6,7,3,6,2,3
1050 DATA7870,3,7,6,1,1,3,1,0,0,6,7,6,1,0,1,2
2000 PRINT"{clear}{down*9}{space*5}brain warp{space*7}";:PRINT"{down*9}{space*3}by allen huffman{space*3}";
2010 POKEV,15::FORP=1TO100:POKEV+1,P*2+24:POKEV-4,200+INT(P/2):POKEV-3,200+INT(P/2)
2020 NEXTP:POKEV+1,136:FORP=1TO800:NEXTP:PRINT"{reverse on}{white}{down*2}{space*6}directions{space*6}{reverse off}{black}"
2030 PRINT"the computer will set up 6 squares or color blocks."
2040 PRINT"{black}your job is to make{space*4}each block a solid{space*3}color in as few moves"
2050 PRINT"{space*2}as possible by ex-{space*4}changing a row or{space*5}column in any two"
2060 PRINT"squares as many times as you want."
2070 PRINT"{down}(rows are horizontal{space*2}and numbered 1-4)"
2080 PRINT"(columns are verticle)":POKEV,0:POKEV-4,0:POKEV-3,0
2090 PRINT"{white}{reverse on} hit any key to start {reverse off}"
2100 GETA$:IFA$=""THEN2100
2110 PRINT"{clear}":RETURN
3000 FORY=1TO4:POKEV,15:FORP=1TO20:POKEV-2,190+P*2:POKEV-3,190+P*2
3010 FORS=GTOG-5STEP-1:POKEH,S:NEXTS
3020 FORS=G-5TOG+5:POKEH,S:NEXTS
3030 FORS=G+5TOGSTEP-1:POKEH,S:NEXTS
3040 POKEV+1,136+INT(P/4):NEXTP
3050 IFH=36875THENH=H-1:G=5:NEXTY:GOTO3070
3060 H=H+1:G=25:NEXTY
3070 POKEV,0:POKEV-2,0:POKEV-3,0
3080 FORP=1TO2000:NEXTP:PRINT"{down}{space*3}{black}";:A$="congratulations!"
3090 FORI=1TO16:PRINTMID$(A$,I,1);:FORP=1TO200:NEXTP,I
3100 FORP=1TO2000:NEXTP:POKEV+1,76:PRINT"{purple}":END
