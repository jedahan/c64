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
420 print "press return to continue designing!"

460 get a$:if a$="" then 460
461 if a$=chr$(133) then gosub 500 end: rem change_color
462 if a$=chr$(137) then gosub 600 end: goto 400: rem change_text
463 if a$=chr$(134) then gosub 700 end: rem beep
464 if a$=chr$(138) then 00 end: rem start
465 if a$=chr$(13) then gosub 800 end
466 goto 460

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
710 sid=54272
720 for l = sid to sid+24: poke l,0: next: rem duration of note
730 poke sid+24,15: rem volume
740 poke sid+5,64: rem attack/decay
750 poke sid+6,248: rem sustain/release
760 poke sid+1,17: poke sid,37: rem freq voice 1
770 poke sid+4,17: for t = 1 to 200: next: rem frequency plus delay
780 poke sid+4,16: for t = 1 to 50: next: rem settings off plus delay
790 return

800 rem change_description:
805 print ""
810 input "what is your show title"; a1$
820 print "great choice!"
830 input "what should the label read"; b1$
840 print "sounds intriguing!"

888 a=int((40-10-len(a1$)) / 2)
889 b=int((40-10-len(b1$)) / 2)
900 print chr$(147);: rem clear the screen
901 print "UEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDI  ";
902 print "HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH H H";
903 print "H HEUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH H H";
904 print "H H H                              H H H";
905 print "H H H                              H H H";
906 print "H H H                              H H H";
907 print "H H H                              H H H";
908 print "H H H" spc(a) a1$ spc(a)          "H H H";
909 print "H H H                              H H H";
910 print "H H H                              H H H";
911 print "H H H                              H H H";
912 print "H H H                              H H H";
913 print "H H H" spc(b) b1$ spc(b)          "H H H";
914 print "H H H                              H H H";
915 print "H H H                              H H H";
916 print "H H H                              H H H";
917 print "H H H                              H H H";
918 print "H H H                              H H H";
919 print "H H H                              H H H";
920 print "H H HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEHEH H";
921 print "H H HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH";
922 print "JCEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEK";
923 print ""
924 print "  f1 bg    f2 fg    f3 beep    f4 exit  ";

950 time$="000000": rem set the timer to 0
960 get a$:if a$="" then gosub 1000 end: rem check_timer
961 if a$=chr$(133) then gosub 500 end: rem change_color
962 if a$=chr$(137) then gosub 600 end: goto 900: rem change_text
963 if a$=chr$(134) then gosub 700 end: rem beep
964 if a$=chr$(138) then 00 end: rem start
965 if a$=chr$(13) then gosub 800 end
966 goto 960

1000 rem check_timer
1010 if ti$ > "000020" then 00 end: rem start
1020 return

end
