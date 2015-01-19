00 rem start
05 print chr$(147);: rem clear the screen
06 poke 53281,6
07 poke 646,14
09 print ""
10 print "    **** commodore 64 basic v2 ****"
11 print ""
12 print " 64k ram system  38911 basic bytes free"
13 print ""
14 print "ready."

100 rem prompt:
110 prompt$=""
120 input a1$, a2$
130 if a1$ = "load ps" and a2$ = "8" then 300
140 print "try load ps,8"
150 goto 100

300 rem start_program:
310 c=15
320 t=6
330 gosub 500: rem change_color
340 gosub 600: rem change_text

400 rem questions:
401 print chr$(147);: rem clear the screen
405 print ""
410 print "welcome to the interface experience"
411 print "exhibition at the bgc gallery"
412 print ""
413 print "you get to be the exhibition designer today!"
414 print ""
415 print "press f1 to change the wall color"
416 print "      f2 to change the text color"
417 print "      f3 to beep"
418 print "      f4 to reset"
419 print ""
420 print "press enter to continue designing!"

460 get a$:if a$="" then 460
461 if a$=chr$(133) then gosub 500 end: rem change_color
462 if a$=chr$(137) then gosub 600 end: goto 400: rem change_text
463 if a$=chr$(134) then gosub 700 end: rem beep
464 if a$=chr$(138) then 00 end: rem start
465 if a$=chr$(13) then gosub 800 end
466 goto 470

500 rem change_color:
510 c=c + 1
520 if c = 16 then c=0
530 poke 53281,c
540 return

600 rem change_text:
610 t=t + 1
620 if t = 16 then t=0
630 poke 646,t
640 return

700 rem make_sound:
710 for l=54272 to 54296:poke l,0:next
720 poke 54296,15
730 poke 54277,64
740 poke 54273,162:poke 54272,37
750 poke 54276,17:for t=1 to 200:next
760 poke 54276,16:for t=1 to 50:next
790 return

800 rem change_description:
805 print ""
810 input "what is your show title"; t1$
820 print "great choice!"
830 input "what should the label read"; l1$
840 print "sounds intriguing!"

900 print chr$(147);: rem clear the screen
910 print ""
920 print ""
930 print ""
940 print t1$
950 print ""
960 print l1$
end