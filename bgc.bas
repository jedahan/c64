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
402 print ""
403 print ""
404 print "  welcome to the interface experience  "
405 print "    exhibition at the bgc gallery      "
406 print ""
407 print "      we'd like you to tell us         "
408 print "    about your favorite computer!      "
409 print ""
410 print ""
411 print "press return to begin"
412 print ""
413 print ""
414 print ""
415 print ""
416 print ""
417 print ""
418 print "press f1 to change the wall color"
419 print "      f3 to change the text color"
420 print "      f5 to beep"
421 print "      f7 to reset"
422 print ""
423 print ""
424 print ""
425 print ""

460 poke 198,0: wait 198,1: rem wait_for_keypress
461 get a$:if a$="" then 460
462 if a$=chr$(133) then gosub 500 end: rem change_color
463 if a$=chr$(134) then gosub 600 end: goto 400: rem change_text
464 if a$=chr$(135) then gosub 700 end: rem beep
465 if a$=chr$(136) then 00 end: rem start
466 if a$=chr$(13) then gosub 800 end
467 goto 460

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

850 z=int(((40-10-len(a1$)) / 2) + 0.5)
860 y=int(((40-10-len(a1$)) / 2) )
870 x=int(((40-10-len(b1$)) / 2) + 0.5)
880 w=int(((40-10-len(b1$)) / 2) )
900 print chr$(147);: rem clear the screen
901 print "UEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDI  ";
902 print "HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH H H";
903 print "H HEUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH H H";
904 print "H H H                              H H H";
905 print "H H H                              H H H";
906 print "H H H                              H H H";
907 print "H H H                              H H H";
908 print "H H H" spc(z) a1$ spc(y)          "H H H";
909 print "H H H                              H H H";
912 print "H H H                              H H H";
913 print "H H H" spc(x) b1$ spc(w)          "H H H";
914 print "H H H                              H H H";
915 print "H H H                              H H H";
917 print "H H H                              H H H";
918 print "H H HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEHEH H";
919 print "H H HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEH";
920 print "JCEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEK";
921 print ""
922 print "    press return to make a new label    "
923 print ""
924 print "  f1 change wall color    f5 beep   "
925 print "  f3 change text color    f7 reset  ";

950 time$="000000": rem set the timer to 0
955 poke 198,0: wait 198,1: rem wait_for_keypress
960 get a$:if a$="" then gosub 1000 end: rem check_timer
961 if a$=chr$(133) then gosub 500 end: rem change_color
962 if a$=chr$(134) then gosub 600 end: goto 900: rem change_text
963 if a$=chr$(135) then gosub 700 end: rem beep
964 if a$=chr$(136) then 00 end: rem start
965 if a$=chr$(13) then print chr$(147);: gosub 800 end
966 goto 960

1000 rem check_timer
1010 if ti$ > "000020" then 00 end: rem start
1020 return

end
