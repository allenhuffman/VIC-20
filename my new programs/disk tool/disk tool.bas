0 REM disk tool
5 rem https://wpguru.co.uk/2014/06/commodore-1541-dos-commands/
10 print"1) format"
20 print"2) copy"
30 print"3) rename"
40 print"4) delete"
50 print"5) validate"
60 get a$:if a$="" then 60
70 ln=val(a$):if ln<1 or ln>5 then 10
80 on ln gosub 100,200,300,400,500
90 goto 10
100 rem format
110 return

200 rem copy
210 input "org name";o$
220 input "new name";n$
230 a$="COPY0:"+o$+"="+n$
240 gosub 1000

300 rem rename

400 rem delete

500 rem validate

1000 rem send command
1010 open 15,8,15:print#15,a$:close15:return
