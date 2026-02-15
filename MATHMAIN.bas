ClrHome
If dim(L1)=0
Then
{}→L1
End
If dim(L2)=0
Then
{}→L2
End
Lbl A
ClrHome
Disp "MATH SUITE"
Disp "1 ALGEBRA"
Disp "2 GEOM/TRIG"
Disp "3 CALCULUS"
Disp "4 STATS"
Disp "5 SEARCH"
Disp "6 FAVORITES"
Disp "7 SETTINGS"
Disp "8 EXIT"
Disp "[1] SELECT"
Disp "[2] BACK"
Disp "[3] MAIN"
Disp "[4] EXIT"
Input "CHOOSE:",M
If M=1
Then
prgmALGEBRA
Goto A
End
If M=2
Then
prgmGEOMTRIG
Goto A
End
If M=3
Then
prgmCALCLUS
Goto A
End
If M=4
Then
prgmSTATS
Goto A
End
If M=5
Then
prgmSEARCH
Goto A
End
If M=6
Then
prgmFAVES
Goto A
End
If M=7
Then
prgmSETTING
Goto A
End
If M=8
Stop
Goto A
