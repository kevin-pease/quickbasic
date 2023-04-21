GOTO Begin
Cheat.Code:
INPUT "Input CheatCode : ", cc$
IF cc$ = "BackSlash" THEN GOTO Cheat.Mode
Begin:
Cm = 0
A = 1
C = 1
Times = 4
Time = 4
CLS
PRINT "Shoot Arena, By BackSlash 1998"
PRINT
PRINT "Press a key..."
DO
LOOP WHILE INKEY$ = ""
Menu:
SCREEN 0
COLOR 7, 0
CLS
COLOR 13
PRINT ".oO Shoot Arena Oo."
COLOR 15
PRINT
PRINT "-= 1 =- New Game"
PRINT
PRINT "-= 2 =- Info (Cool)"
PRINT
PRINT "-= 3 =- List Of Used Names"
PRINT
PRINT "-= 4 =- Exit"
PRINT
PRINT "Enter Choice -";
INPUT "", Choice$
IF Choice$ = "1" THEN GOTO New.Game
IF Choice$ = "2" THEN GOTO Info
IF Choice$ = "3" THEN GOTO Names
IF Choice$ = "4" THEN GOTO Exit.It
BEEP
GOTO Menu


New.Game:
PRINT "Shoot Arena -- New Game"
PRINT
COLOR 7
INPUT "Enter Maximum Health     - ", Max.Health
PRINT
INPUT "Name Player 1 (left)     - ", P1.Name$
PRINT
INPUT "Name Player 2 (right)    - ", P2.Name$
OPEN "Names.Lst" FOR APPEND AS #1
PRINT #1, "P1 : "; P1.Name$
PRINT #1, "P2 : "; P2.Name$
CLOSE #1

PRINT
INPUT "Play in CheatMode? (Y/N) - ", Cm$
IF RIGHT$(UCASE$(Cm$), 1) = "Y" THEN GOTO Cheat.Code
IF RIGHT$(UCASE$(Cm$), 1) = "N" THEN GOTO Go
Go:
Play.L = Max.Health
Play.R = Max.Health

Blocks = INT(RND * 3) + 1
e = INT(RND * 59) + 1
f = INT(RND * 20) + 1

CLS
DO
1
A$ = RIGHT$(INKEY$, 1)
LOCATE 23, 2
PRINT P1.Name$

LOCATE 23, 61
PRINT P2.Name$
LOCATE 21, 60
PRINT "Missiles Left: "; Times
LOCATE 21, 1
PRINT "Missiles Left: "; Time

LOCATE 22, 60
PRINT "Health:"; Play.R

LOCATE 22, 1
PRINT "Health:"; Play.L

SELECT CASE A$
  CASE "H"
  A = A - 1
  IF A < 1 THEN A = 1
  CLS
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
  CASE "P"
  A = A + 1
  IF A > 20 THEN A = 20
  CLS
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
 
CASE "\"
  SOUND 500, 1
  SOUND 400, 1
  SOUND 300, 1
   FOR x = 6 TO 60
  CLS
  LOCATE A, x
  PRINT "->"
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
   FOR z = 1 TO 10: NEXT z
   NEXT x
  IF A = C THEN Play.R = Play.R - 1
  IF Play.R = 0 THEN GOTO 3



  CASE "/"
  Time = Time - 1
  IF Times <= 0 THEN SOUND 40, 5: GOTO 1
  FOR x = 6 TO 60
  CLS
  LOCATE A, x
  PRINT "--==ðð>>"
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
  FOR z = 1 TO 400: NEXT z
  NEXT x
  IF A = C THEN Play.R = Play.R - 2
  IF Play.R <= 0 THEN GOTO 3

  CASE "W"
  C = C - 1
  IF C < 1 THEN C = 1
  CLS
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
 
  CASE "S"
  C = C + 1
  IF C > 20 THEN C = 20
  CLS
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
 
  CASE "`"
  SOUND 500, 1
  SOUND 400, 1
  SOUND 300, 1
  FOR x = 6 TO 60
  CLS
  LOCATE C, x
  PRINT "<-"
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
  FOR z = 1 TO 10: NEXT z
  NEXT x
  IF A = C THEN Play.L = Play.L - 1
  IF Play.L = 0 THEN GOTO 3

  CASE "1"
  Times = Times - 1
  IF Times <= 0 THEN SOUND 40, 5: GOTO 1
  FOR x = 60 TO 6 STEP -1
  CLS
  LOCATE C, x
  PRINT "<<ðð==--"
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
  FOR z = 1 TO 400: NEXT z
  NEXT x
  IF A = C THEN Play.L = Play.L - 2
  IF Play.L <= 0 THEN GOTO 3

' ----------------------------------==----------------------------------

 CASE "."
    IF Cm = 0 THEN GOTO 1
    IF Max..Health = 1 THEN GOTO 1
    Play.L = Max.Health
    Max..Health = 1

CASE "2"
    IF Cm = 0 THEN GOTO 1
    IF Max...Health = 1 THEN GOTO 1
    Play.R = Max.Health
    Max...Health = 1

  CASE "3"
  Nuke.1 = Nuke.1 - 1
  IF Times <= 0 THEN SOUND 40, 5: GOTO 1
  CLS
  LOCATE 10, 20
  PRINT "N U K E  B O M B ! ! !"
  LOCATE 12, 20
  PRINT "By "; P2.Name$
  FOR y = 1 TO 50000: NEXT y
  CLS
  LOCATE A, 1
  PRINT "(-Û-)"
  LOCATE C, 60
  PRINT "-[lll)"
 
  IF Play.L <= 0 THEN GOTO 3








'-----------------------------------==-----------------------------------
END SELECT
LOOP


3
FOR A = 40 TO 1000 STEP 100
SOUND A, 1
NEXT A
CLS
IF Play.L = 0 THEN win = 1
IF Play.R = 0 THEN win = 0

IF win = 0 THEN PRINT : PRINT P1.Name$; " "; "Wins!"
IF win = 1 THEN PRINT : PRINT P2.Name$; " "; "Wins!"
PRINT
PRINT "Another Time? (Y/N) -=>";
INPUT "", Jn$
IF LEFT$(UCASE$(Jn$), 1) = "J" THEN GOTO Begin
IF LEFT$(UCASE$(Jn$), 1) = "N" THEN END

Cheat.Mode:
Cm = 1
GOTO Go

Info:
SCREEN 12
CLS
COLOR 15
PRINT " BackSlash Presents:"
PRINT "              .oO Shoot Arena Oo."
PRINT
COLOR 14
PRINT "Player 1 Controls:"
COLOR 7
PRINT "W, S   - Move your aircraft"
PRINT "`      - Normal Bullets"
PRINT "1      - Missile"
PRINT "2      - Med Kit (Only in Cheat-Mode)"
PRINT "3      - Nuke Missile (Only in Cheat-Mode)"
PRINT
COLOR 14
PRINT "Player 2 Controls:"
COLOR 7
PRINT "Arrows - Move your aircraft"
PRINT "\      - Normal Bullets"
PRINT "/      - Missiles"
PRINT ".      - Med Kit (Only in Cheat-Mode)"
PRINT ",      - Nuke Missile (Only in Cheat-Mode)"
PRINT
COLOR 4
PRINT "The purpose of this game is to eliminate the opponent."
PRINT "You have unlimited amount of bullets, damage - 1."
PRINT "You have four missiles, they take 2 damagepoints."
PRINT "In Cheat-Mode, you have one MedKit, and one Nukebomb(!)."
LOCATE 20, 50
COLOR 8
PRINT "Press @!!!"
DO
LOOP WHILE INKEY$ = "": IF INKEY$ = "@" THEN GOTO Cool
GOTO Menu

Names:
COLOR 14
CLS
PRINT "Used Names:"
PRINT
OPEN "Names.Lst" FOR INPUT AS #1
DO WHILE NOT EOF(1)
 LINE INPUT #1, Rec$
 Times = Times + 1
 IF Times = 20 THEN LOCATE 22, 1: COLOR 13: PRINT "-=More=-": DO: LOOP WHILE INKEY$ = "": COLOR 14, 1: CLS
 PRINT Rec$
LOOP
COLOR 13
LOCATE 23, 2
PRINT "End of file: Press a key..."
DO
LOOP WHILE INKEY$ = ""
CLOSE #1
GOTO Menu




Exit.It:




Cool:

