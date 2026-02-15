Lbl A
ClrHome
Disp "SETTINGS"
Disp "1 SMART GRAPH"
Disp "2 UNIT CONVERT"
Disp "3 SCI NOTE"
Disp "4 RECENT"
Disp "5 MEM"
Disp "6 BACK"
Input "MODE:",M
If M=1
Goto B
If M=2
Goto C
If M=3
Goto D
If M=4
Goto E
If M=5
Goto F
Return
Lbl B
Disp "1 LIN 2 QUAD 3 TRIG"
Input "TYPE:",T
If T=1
Then
ZStandard
End
If T=2
Then
-15→Xmin
15→Xmax
-20→Ymin
20→Ymax
End
If T=3
Then
-2π→Xmin
2π→Xmax
-2→Ymin
2→Ymax
End
Graph
Pause
Goto A
Lbl C
Disp "1 DEG/RAD"
Disp "2 M/FT"
Disp "3 KG/LB"
Input "MODE:",T
If T=1
Then
Input "1 D-R 2 R-D:",N
If N=1
Then
Input "DEG=",D
Disp D*π/180
Else
Input "RAD=",R
Disp R*180/π
End
End
If T=2
Then
Input "M=",M
Disp "FT=",M*3.28084
End
If T=3
Then
Input "KG=",K
Disp "LB=",K*2.20462
End
Pause
Goto A
Lbl D
Input "N=",N
If N=0
Then
Disp "0E0"
Pause
Goto A
End
0→E
abs(N)→A
While A>=10
A/10→A
E+1→E
End
While A<1
A*10→A
E-1→E
End
Disp A,"E",E
Pause
Goto A
Lbl E
Disp L2
Pause
Goto A
Lbl F
Mem
Pause
Goto A
