!--------------------------------------------------
!- April 8, 2020 9:46:00 PM
!- Import of : 
!- w:\vicconversions\viccpu\music.prg
!- Unexpanded VIC20 / C16 / Plus4
!--------------------------------------------------
5 POKE36878,15:S1=36874:S2=S1+1:S3=S1+2
10 READA:IFA=-1THEN30
15 POKES1,A:POKES2,A:POKES3,A
20 GOSUB40:POKES1,0:GOSUB40
25 GOTO10
30 POKES1,0:POKES2,0:POKES3,0
35 END
40 FORB=1TO50:NEXTB:RETURN
100 DATA195,207,175,207,195,207,175,207,195,207,175,207,195
105 DATA191,183,175,175,201,191,201,175,201,191,201,175,201,191,201,175,175,183,191
110 DATA195,207,175,207,195,207,175,207,195,207,175,207,195,195,201,203,207,0,191,0,207
115 DATA0,191,0,207,0,207,0,207,0,201,0,195,0,183,0,195,0,183,0,195,0,195,0,195,0,183,0
120 DATA207,0,191,0,207,0,191,0,207,207,207,207,207,207,207,207,209,209,209,209,209,209
125 DATA209,209,215,215,215,215,215,215,215,215,219,219,219,219,219,219,219,219,219,219
230 DATA219,219,219,219,219,219,183,183,0,0,183,183,0,0,0,0,183,183,183,-1
