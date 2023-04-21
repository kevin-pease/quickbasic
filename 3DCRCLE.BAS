SCREEN 12
INPUT "", n$
PSET (200, 200)

DO
CIRCLE (200, 200), 100
FOR a = 2 TO 50
b = a - 1
COLOR 15
CIRCLE (200, 200), 100, , , , a / 50
COLOR 0
CIRCLE (200, 200), 100, , , , b / 50

COLOR 15
CIRCLE (200, 200), 100, , , , 50 / a
COLOR 0
CIRCLE (200, 200), 100, , , , 50 / b

FOR x = 1 TO 2000: NEXT x

NEXT a


FOR a = 50 TO 2 STEP -1
b = a + 1
COLOR 15
CIRCLE (200, 200), 100, , , , a / 50
COLOR 0
CIRCLE (200, 200), 100, , , , b / 50

COLOR 15
CIRCLE (200, 200), 100, , , , 50 / a
COLOR 0
CIRCLE (200, 200), 100, , , , 50 / b

FOR x = 1 TO 2000: NEXT x

NEXT a

LOOP

