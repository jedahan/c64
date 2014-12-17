00 rem 01 load "ps",8
05 print chr$(147);: rem clear the screen
09 print ":)"
10 print "    **** commodore 64 basic v2 ****"
11 print ""
12 print " 64k ram system  38911 basic bytes free"
13 print ""
14 print "ready."

100 rem prompt:
110 prompt$=""
120 input a1$, a2%
130 if a1$ = "help" or a2% = "help" 900

200 rem retry:
210 if a1$ = "load ps" and a2% = 8 then 300
220 goto 900

300 rem start_program:
310 print "OMG WE ARE LOCKED AND LOADED"

900 rem help:
910 print "try again! (read the manual!)"
920 goto 100
