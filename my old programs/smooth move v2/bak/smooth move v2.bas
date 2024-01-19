30 print"{clear}{reverse on}frames:"
60 for c=0 to 7:print chr$(65+c);chr$(73+c):print:next
70 gosub 950
100 poke 36869,255
105 rem
108 rem go thru each row of the character
109 rem
110 for ln=0 to 7
115 rem
118 rem read value, multiply by 256 to make 16-bits
119 rem
120 read v:v=v*256
125 rem
128 rem go thru each frame character
129 rem
130 for ch=0 to 7
135 rem
138 rem split 16-bit value into 8-bit values
139 rem
140 b1=int(v/256)
150 b2=v-(b1*256)
155 rem
158 rem poke shifted value in each charater
159 rem
160 poke 7176+ch*8+ln,b1
170 poke 7176+ch*8+ln+64,b2
175 rem
178 rem shift 16-bit value to the right one bit
179 rem
180 v=v/2
190 next
200 next
210 gosub 950
900 poke 36869,240:poke 198,0
910 end
950 get a$:if a$="" then 950
960 return 
1000 DATA 60,126,255,255,255,255,126,60
