Open "PWORD.LOG" For Append As #1

pw = 1
pword$ = ""
Screen 13
Begin:
Cls
Locate 14, 2
Color 3
Print "Enter Password"
Locate 15, 1
Color 4
Print "------------------------------"
Locate 16, 31
Print "]"
Locate 17, 1
Print "------------------------------"
Line (8, 8)-(201, 101), , B
Do
    1
    A = Int(Rnd * 200) + 1
    B = Int(Rnd * 100) + 1
    C = Int(Rnd * 31) + 1
    Color C
    If C < 20 Then GoTo 1
    If A < 10 Then GoTo 1
    If B < 10 Then GoTo 1
    PSet (A, B)
    key$ = UCase$(InKey$)
    On Key(1) GoSub DisPlay
    Key(1) On

    On Key(2) GoSub Begin:
    Key(2) On
    Color 1
    Locate 20, 3
    Print "[Pword->", pw; "]  "
    Select Case key$
        Case ""
            GoTo 3
        Case Else

            If pw = 1 Then Color 15
            If pw = 0 Then Color 0
            If key$ = "`" Then Print #1, "": Color 21: Locate 16, 1: Print pword$: Sound 1000, 4: Locate 16, 1: pword$ = "": GoTo 3
            If Len(pword$) = 30 Then Sound 500, 10
            Locate 16, 1
            pword$ = pword$ + key$
            Print pword$
            If pword$ = "BACKSLASH" Then GoTo PassWord.Correct
            Print #1, key$;
    End Select
    3
Loop


PassWord.Correct:
Color 15
Line (8, 8)-(201, 101), , B
Color 0
For x = 1 To 40000
    5
    A = Int(Rnd * 200) + 1
    B = Int(Rnd * 100) + 1
    If A < 10 Then GoTo 5
    If B < 10 Then GoTo 5
    PSet (A, B)
Next x

Line (9, 9)-(200, 100), , BF
Do
    6
    A = Int(Rnd * 200) + 1
    B = Int(Rnd * 100) + 1
    If A < 10 Then GoTo 6
    If B < 10 Then GoTo 6
    C = Int(Rnd * 255) + 1
    Color C
    PSet (A, B)
    Locate 5, 3
    Color 15
    Print "CoRrEcT" + Chr$(19)
    Locate 6, 3
    Color 27
    Print "PrEsS a KeY..."
Loop While InKey$ = ""
GoTo The.End

DisPlay:
Locate 18, 1
Color 9
Input "Show Pword? :", x
If x = 1 Then pw = 1
If x = 0 Then pw = 0
Cls
GoTo Begin:

The.End:
End

