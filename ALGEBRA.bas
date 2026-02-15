Lbl A
ClrHome
Disp "ALGEBRA"
Disp "1 LINEAR"
Disp "2 QUADRATIC"
Disp "3 VERTEX"
Disp "4 FACTOR"
Disp "5 SYS 2X2"
Disp "6 SYS 3X3"
Disp "7 LOG"
Disp "8 EXP"
Disp "9 BACK"
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
If M=8
Goto I
Return

Lbl B
ClrHome
Disp "AX+B=C"
Input "A=",A
Input "B=",B
Input "C=",C
If A=0
Then
Disp "ERROR DIV0"
Pause
Goto A
End
(C-B)/A→X
Disp "X=",X
augment(L2,{1})→L2
Pause
Goto A

Lbl C
ClrHome
Disp "1 VIEW"
Disp "2 LOCKED"
Disp "3 GRAPH"
Input "MODE:",N
If N=1
Then
Disp "AX^2+BX+C=0"
Disp "X=(-B+-ROOTD)/2A"
Pause
Goto A
End
If N=2
Then
prgmQUADLCK
augment(L2,{2})→L2
Goto A
End
Input "A=",A
Input "B=",B
Input "C=",C
A*X^2+B*X+C→Y1
ZStandard
Graph
Pause
Goto A

Lbl D
ClrHome
Input "A=",A
Input "B=",B
Input "C=",C
If A=0
Then
Disp "ERROR"
Pause
Goto A
End
(-B)/(2A)→H
A*H^2+B*H+C→K
Disp "H=",H
Disp "K=",K
augment(L2,{3})→L2
Pause
Goto A

Lbl E
ClrHome
Input "R1=",R
Input "R2=",S
Disp "X^2-",R+S,"X+",R*S
augment(L2,{4})→L2
Pause
Goto A

Lbl F
ClrHome
Input "A1=",A
Input "B1=",B
Input "C1=",C
Input "A2=",D
Input "B2=",E
Input "C2=",F
A*E-B*D→G
If G=0
Then
Disp "NO UNIQUE"
Pause
Goto A
End
(C*E-B*F)/G→X
(A*F-C*D)/G→Y
Disp "X=",X
Disp "Y=",Y
augment(L2,{5})→L2
Pause
Goto A

Lbl G
ClrHome
Disp "RREF MATRIX"
Input "A=",A
Input "B=",B
Input "C=",C
Input "D=",D
Input "E=",E
Input "F=",F
Input "G=",G
Input "H=",H
Input "I=",I
Input "J=",J
Input "K=",K
Input "L=",L
{{A,B,C,D}{E,F,G,H}{I,J,K,L}}→[A]
rref([A])→[A]
Disp [A]
augment(L2,{6})→L2
Pause
Goto A

Lbl H
ClrHome
Input "BASE=",B
Input "VAL=",A
If A<=0 or B<=0 or B=1
Then
Disp "DOMAIN"
Pause
Goto A
End
ln(A)/ln(B)→X
Disp "RESULT=",X
augment(L2,{7})→L2
Pause
Goto A

Lbl I
ClrHome
Input "A0=",A
Input "R=",R
Input "T=",T
A*e^(R*T)→Y
Disp "Y=",Y
augment(L2,{8})→L2
Pause
Goto A
