1 print"{clear}{down*3}      eggs"
2 print"{down*3}  by  allen huffman"
3 print"{down*2}vic-nic news july 1983"
4 forj=1to5000:next
5 poke36879,8:printchr$(147)
10 b=8130:m=3:sc=0
15 e=int(rnd(1)*20)+7703
20 printchr$(19);chr$(5);"score:";sc
25 pokeb,21:pokee,81
30 poke37154,127
35 j=(not((peek(37151)and128)/8+(peek(37151)and60)/4))+32
40 poke37154,255
45 ifj=16then80
50 pokeb,32
55 ifj=18thenb=b-1
60 ifj=17thenb=b+1
65 ifb=8120thenb=b+1
70 ifb=8141thenb=b-1
75 pokeb,21
80 pokee,32
85 e=e+22
90 pokee,81
95 ife=>8120ande=bthen110
100 ife=>8120ande<>bthen115
105 goto25
110 sc=sc+10:pokee,32:goto15
115 m=m-1:pokee,32
120 ifm=0then135
125 goto15
135 fort=1to5:printchr$(17):next
140 fort=1to6:printchr$(32);:next
145 printchr$(158);"game over"
150 print"{down*2}play again?  y/n"
155 geta$:ifa$="y"thenrun
160 ifa$="n"thenend
165 goto155
