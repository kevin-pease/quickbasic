SCREEN 12
CLS
Dot = 2
a = 1
b = 1

2 ' Start point draw-lines area, only in function when an key is pressed
' ------------cls
COLOR 15

' Status-screen... Yeah...
COLOR 14
LINE (501, 1)-(501, 490), 10
LOCATE 1, 68
PRINT "Position"
LOCATE 2, 67
PRINT "("; INT(a); ","; INT(b); ") "
LOCATE 4, 68
COLOR 4
PRINT "©Sensivityª"
LOCATE 5, 70
IF Dot = 1 THEN COLOR 2: PRINT "1 "; : COLOR 1: PRINT "2 3"
IF Dot = 2 THEN COLOR 1: PRINT "1 "; : COLOR 2: PRINT "2 "; : COLOR 1: PRINT "3"
IF Dot = 3 THEN COLOR 1: PRINT "1 2 "; : COLOR 2: PRINT "3"
COLOR 5
LOCATE 6, 70
IF Dot = 1 THEN PRINT "Fine  "
IF Dot = 2 THEN PRINT "Normal"
IF Dot = 3 THEN PRINT "Fast  "


COLOR 6
LOCATE 8, 68
PRINT "Press ` "
LOCATE 9, 68
PRINT "to Reset"



' When drawing a line, clear screen
IF Draw.Line = 1 THEN COLOR 0: LINE (a1, b1)-(a, b)

' Draw locaters (red & blue lines)
COLOR 1
LINE (INT(b), 1)-(INT(b), 500)

COLOR 4
LINE (1, INT(a))-(500, INT(a))

'Clean old line-positions
COLOR 0
LINE (b - 4, 1)-(b - 4, 500)
LINE (1, a - 4)-(500, a - 4)
LINE (b + 4, 1)-(b + 4, 500)
LINE (1, a + 4)-(500, a + 4)

LINE (b - 1, 1)-(b - 1, 500)
LINE (1, a - 1)-(500, a - 1)
LINE (b + 1, 1)-(b + 1, 500)
LINE (1, a + 1)-(500, a + 1)

LINE (b - 2, 2)-(b - 2, 500)
LINE (1, a - 2)-(500, a - 2)
LINE (b + 2, 2)-(b + 2, 500)
LINE (1, a + 2)-(500, a + 2)

1
' Draw line (yellow, appears when 'SPACE' is pressed)
IF Draw.Line = 1 THEN COLOR 14: LINE (b1, a1)-(b, a)
IF Draw.Line = 1 THEN COLOR 0: LINE (b1 - 1, a1 - 1)-(b - 1, a - 1)
IF Draw.Line = 1 THEN COLOR 0: LINE (b1 + 1, a1 + 1)-(b + 1, a + 1)


DO
key$ = RIGHT$(INKEY$, 1)
 SELECT CASE key$
  CASE "H"
   IF Dot = 3 THEN a = a - 4
   IF Dot = 2 THEN a = a - 1
   IF Dot = 1 THEN a = a - .5
   IF a <= 1 THEN a = 1: SOUND 100, 1
   x = 1
   GOTO 2
 
  CASE "P"
   IF Dot = 3 THEN a = a + 4
   IF Dot = 2 THEN a = a + 1
   IF Dot = 1 THEN a = a + .5
   IF a >= 500 THEN a = 500: SOUND 100, 1
   x = 2
   GOTO 2

  CASE "K"
   IF Dot = 3 THEN b = b - 4
   IF Dot = 2 THEN b = b - 1
   IF Dot = 1 THEN b = b - .5
   IF b <= 1 THEN b = 1: SOUND 100, 1
   x = 3
   GOTO 2

  CASE "M"
   IF Dot = 3 THEN b = b + 4
   IF Dot = 2 THEN b = b + 1
   IF Dot = 1 THEN b = b + .5
   IF b >= 500 THEN b = 500: SOUND 100, 1
   x = 4
   GOTO 2
 
  CASE " "
   a1 = a
  b1 = b
   Draw.Line = 1
   z = z + 1

   CASE "1"
   Dot = 1

   CASE "2"
   Dot = 2

   CASE "3"
   Dot = 3

   CASE "`"
   Dot = 2
   a = 1
   b = 1
   Draw.Line = 0
   CLS

END SELECT
LOOP

