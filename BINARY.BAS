CLS
COLOR 2
PRINT "BINARY CHECKING SYSTEM -- DO NOT INTERRUPT!"
LOCATE 22, 1
PRINT "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
DO
a = INT(RND * 2) + 1
IF a = 1 THEN COLOR 2
IF a = 2 THEN COLOR 10
LOCATE 4, 1
1
a = INT(RND * 20) + 1
b = INT(RND * 80) + 1
c = INT(RND * 2) + 1
IF c = 1 THEN a$ = "1"
IF c = 2 THEN a$ = "0"
IF a = 1 OR a = 2 THEN GOTO 1

LOCATE a, b
PRINT a$

d = INT(RND * 5000) + 1
IF d = 1452 THEN e = e + 1: f = f + 1: GOTO 2
3

LOOP

2
LOCATE 22, 1

IF e = 2 THEN e = 0:  prog$ = prog$ + "Û":


PRINT prog$

LOCATE 21, 24
COLOR 2
PRINT f; "%"




GOTO 3

