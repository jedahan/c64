05 print chr$(147);: rem clear the screen
07 print ""
10 print "escape the room 0.1 -- by jonathan dahan"
20 rem vars:
30 rem name$ = player name
40
50 n$=""

60 rem getname:
70 print ""
80 print " what do you call yourself";
90 input n$
100 if n$ = "" then goto 60

110 rem getnameremark:
120 x%=1+rnd(1)*3
140 print " ";
150 print n$;
 
160 if x% = 1 then print "! did your mother even love you? oh well, it's your name."
170 if x% = 2 then print "? what kind of name is that! oh well, not like we can change it."
180 if x% = 3 then print "!? you aren't from around here, are you?"
