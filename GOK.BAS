bet = 10
punt = 1000
times = 1

CLS
COLOR 4
PRINT "GOKKUUUUUUUUUUUUUUUUUUUH"
COLOR 3
PRINT "--------------------------------"

COLOR 15
INPUT "Wat is je naam?                                        ->", Naam$
INPUT "Hoe snel moet het gaan? (1=simpel, 2=Middel, 3=SUPER!) ->", speed
CLS
COLOR 14
PRINT "G - O - K - K - U - U - U - H - ! ! !"
COLOR 7
IF speed = 1 THEN speed.spd$ = "OMA-SNELHEID"
IF speed = 2 THEN speed.spd$ = "MWHA, KAN ER MEE DOOR"
IF speed = 3 THEN speed.spd$ = "WOW, HEB JE XTC GEHAD OFZO???"

LOCATE 3, 1
PRINT "Aantal keer geweest : "; times
PRINT "Punten              : "; punt
PRINT "Snelheid            :  "; speed.spd$
PRINT "X Gewonnen          : "; won
PRINT "X Verloren          : "; lost

COLOR 7
PRINT "Inzet: ", bet

