!--------------------------------------------------
!- April 8, 2020 11:35:33 PM
!- Import of : 
!- w:\cmb prg studio\smile\smile.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
10 GRAPHIC2:COLOR1,1,0,0
15 CIRCLE3,511,511,200,450
20 CIRCLE3,430,511,50,25:CIRCLE3,580,511,50,25
25 CIRCLE3,430,511,20,20:CIRCLE3,580,511,20,20
30 PAINT3,430,511:PAINT3,580,511
35 CIRCLE3,540,660,25,25,80,30:CIRCLE3,511,680,20,20,10,45:CIRCLE3,480,660,20,25,25,70
40 draw3,505,520TO480,640
45 draw3,460,800TO560,800
50 SOUND0,1,"hi! my name is vic"
55 PRINT"{ct f}t3cregragecregragefrao3crdco2afrao3crdco2acregragecregrageggrgrgggffrfrfgrc"
60 draw3,460,800TO400,750TO620,750TO560,800
65 SOUND0,1,"{space*6}hi mom!{space*5}"
70 FORA=1TO1000:NEXTA
75 SOUND0,1,"hi! my name is vic"
80 draw0,460,800TO400,750TO620,750TO560,800
85 FORA=1TO2000:NEXTA:GOTO60
