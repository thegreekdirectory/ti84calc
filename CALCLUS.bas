Lbl A
ClrHome
Disp "CALCULUS"
Disp "1 LIMIT"
Disp "2 DERIV"
Disp "3 INTEGRAL"
Disp "4 POWER"
Disp "5 PRODUCT"
Disp "6 CHAIN"
Disp "7 FTC"
Disp "8 BACK"
Input "CHOOSE:",M
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
If M=6
Goto G
If M=7
Goto H
Return
Lbl B
Input "A=",A
Input "H=",H
If H=0
Then
Disp "H!=0"
Pause
Goto A
End
(Y1(A+H)+Y1(A-H))/2→L
Disp "LIM=",L
augment(L2,{20})→L2
Pause
Goto A
Lbl C
Input "X=",X
nDeriv(Y1,X,X)→D
Disp "DERIV=",D
nDeriv(Y1,X,X)→Y2
Graph
augment(L2,{21})→L2
Pause
Goto A
Lbl D
Input "A=",A
Input "B=",B
fnInt(Y1,X,A,B)→I
Disp "INT=",I
Shade(Y1,0)
Graph
augment(L2,{22})→L2
Pause
Goto A
Lbl E
Input "N=",N
Disp N,"X^",N-1
augment(L2,{23})→L2
Pause
Goto A
Lbl F
Disp "(FG)'=F'G+FG'"
augment(L2,{24})→L2
Pause
Goto A
Lbl G
Disp "(F(G(X)))'"
Disp "=F'(G(X))G'(X)"
augment(L2,{25})→L2
Pause
Goto A
Lbl H
Disp "INT A->B F'"
Disp "=F(B)-F(A)"
augment(L2,{26})→L2
Pause
Goto A
