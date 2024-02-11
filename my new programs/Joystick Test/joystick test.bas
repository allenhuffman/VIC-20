10 rem fixed torpet code
20 gosub 9000
30 if jo and 1 then print "up ";
40 if jo and 2 then print "down ";
50 if jo and 4 then print "left ";
60 if jo and 8 then print "fire ";
70 if jo and 16 then print "right";
80 if jo<>0 then print
90 goto 20
9000 poke 37154,127
9010 jo=(not((peek(37152)and128)/8+( peek(37151)and60)/4))+32
9020 poke 37154,255
9030 return