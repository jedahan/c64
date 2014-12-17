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
120 input a1$, a2$
130 if a1$ = "help" or a2$ = "help" then 900

200 rem retry:
210 if a1$ = "load ps" and a2$ = "8" then 300
220 goto 900

300 rem start_program:
305 print chr$(147);: rem clear the screen
310 poke 53281,0
320 print "OMG WE ARE LOCKED AND LOADED"
330 input "whats your favorite number 0-16"; a1%
340 if a1% > 16 or a1% < 0 then goto 330
350 poke 646,a1%
360 goto 1000

900 rem help:
910 print "try load ps,8"
920 goto 100

1000 rem exit:
1001 print chr$(147);: rem clear the screen
1020 print "now we will make a maze just for you"
1030 print ""
1111 print chr$(205.5 + rnd(1));
1112 goto 1111
