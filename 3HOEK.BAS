' ------------------------------------------------------------
' |       3Hoek.bas                                          |
' |                      BackSlash 1998                      |
' |                                                          |
' |       Use the arrows to move point/triangle              |
' |       Use the [ and ] key to cycle thru points           |
' |                                                          |
' ------------------------------------------------------------
'            ________ ________    ________
'               |      |      \    |      \
'               |      |      |    |      |
'               |      |       \   |       \
'               |      |        |  |        |
'               |     -+--------/ -+--------/
'               T         B            B       Rules!
CLS
sel = 1
SCREEN 12

pay = 50
pax = 75

pby = 150
pbx = 100

pcy = 150
pbx = 150

1
CLS
COLOR 4
LINE (pax, pay)-(pbx, pby)
COLOR 1
LINE (pbx, pby)-(pcx, pcy)
COLOR 3
LINE (pcx, pcy)-(pax, pay)

LOCATE 1, 1
PRINT sel;
IF sel = 1 THEN COLOR 3: PRINT "Û"; : COLOR 4: PRINT "Û"
IF sel = 2 THEN COLOR 1: PRINT "Û"; : COLOR 4: PRINT "Û"
IF sel = 3 THEN COLOR 3: PRINT "Û"; : COLOR 1: PRINT "Û"
IF sel = 4 THEN COLOR 4: PRINT "Û"; : COLOR 1: PRINT "Û"; : COLOR 3: PRINT "Û"


PRINT " - ";
COLOR 15
PRINT pax; "."; pay; "--"; pbx; "."; pby; "--"; pcx; "."; pcy

IF sel = 1 THEN GOTO 10
IF sel = 2 THEN GOTO 20
IF sel = 3 THEN GOTO 30
IF sel = 4 THEN GOTO 40
IF sel > 3 THEN sel = 4
IF sel < 1 THEN sel = 1













10
DO
key$ = RIGHT$(UCASE$(INKEY$), 1)

SELECT CASE key$
 CASE "P"
  pay = pay + 5
  GOTO 1

 CASE "H"
  pay = pay - 5
  GOTO 1

 CASE "M"
  pax = pax + 5
  GOTO 1


 CASE "K"
  pax = pax - 5
  GOTO 1

CASE "["
 sel = sel - 1
 IF sel = 1 THEN sel = 1
 GOTO 1

CASE "]"
 sel = sel + 1
 IF sel = 4 THEN sel = 4
 GOTO 1
END SELECT

LOOP

20
DO
key$ = RIGHT$(UCASE$(INKEY$), 1)

SELECT CASE key$
 CASE "P"
  pby = pby + 5
  GOTO 1

 CASE "H"
  pby = pby - 5
  GOTO 1

 CASE "M"
  pbx = pbx + 5
  GOTO 1


 CASE "K"
  pbx = pbx - 5
  GOTO 1

CASE "["
 sel = sel - 1
 IF sel = 1 THEN sel = 1
 GOTO 1

CASE "]"
 sel = sel + 1
 IF sel = 4 THEN sel = 4
 GOTO 1
END SELECT

LOOP

30
DO
key$ = RIGHT$(UCASE$(INKEY$), 1)

SELECT CASE key$
 CASE "P"
  pcy = pcy + 5
  GOTO 1

 CASE "H"
  pcy = pcy - 5
  GOTO 1

 CASE "M"
  pcx = pcx + 5
  GOTO 1


 CASE "K"
  pcx = pcx - 5
  GOTO 1

CASE "["
 sel = sel - 1
 IF sel = 1 THEN sel = 1
 GOTO 1

CASE "]"
 sel = sel + 1
 IF sel = 4 THEN sel = 4
 GOTO 1
END SELECT

LOOP

40
DO
key$ = RIGHT$(UCASE$(INKEY$), 1)

SELECT CASE key$
 CASE "P"
  pay = pay + 5
  pcy = pcy + 5
  pby = pby + 5
  GOTO 1

 CASE "H"
  pcy = pcy - 5
  pby = pby - 5
  pay = pay - 5
  GOTO 1

 CASE "M"
  pcx = pcx + 5
  pbx = pbx + 5
  pax = pax + 5
  GOTO 1


 CASE "K"
  pcx = pcx - 5
  pbx = pbx - 5
  pax = pax - 5
  GOTO 1

CASE "["
 sel = sel - 1
 IF sel = 1 THEN sel = 1
 GOTO 1

CASE "]"
 sel = sel + 1
 IF sel = 4 THEN sel = 4
 GOTO 1
END SELECT

LOOP

