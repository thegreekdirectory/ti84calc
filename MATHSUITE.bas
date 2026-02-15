ClrHome
0→GDB
0→ANS
If dim(L1)=0
Then
{ }→L1
End
If dim(L2)=0
Then
{ }→L2
End
Goto MAIN

Lbl MAIN
ClrHome
Disp "MATH ENCYCLOPEDIA"
Disp "& SOLVER SUITE"
Disp "----------------"
Disp "1:ALGEBRA"
Disp "2:GEOMETRY/TRIG"
Disp "3:CALCULUS"
Disp "4:STATS/PROB"
Disp "5:SEARCH"
Disp "6:FAVORITES"
Disp "7:SETTINGS"
Disp "8:EXIT"
Disp "[1] Select"
Disp "[2] Back"
Disp "[3] Main Menu"
Disp "[4] Exit"
Input "CHOOSE:",M
If M=1
Goto ALGEBRA
If M=2
Goto GEOMETRY
If M=3
Goto CALCULUS
If M=4
Goto STATS
If M=5
Goto SEARCH
If M=6
Goto FAVORITES
If M=7
Goto SETTINGS
If M=8
Stop
Goto MAIN

Lbl ALGEBRA
ClrHome
Disp "ALGEBRA"
Disp "1 LINEAR SOLVER"
Disp "2 QUADRATIC"
Disp "3 VERTEX FORM"
Disp "4 FACTOR TOOLS"
Disp "5 SYSTEMS 2X2"
Disp "6 SYSTEMS 3X3"
Disp "7 LOG LAWS"
Disp "8 EXP GROW/DECAY"
Disp "9 BACK"
Disp "[1] Select"
Disp "[2] Back"
Disp "[3] Main Menu"
Disp "[4] Exit"
Input "CHOOSE:",A
If A=1
Goto ALG_LINEAR
If A=2
Goto ALG_QUAD
If A=3
Goto ALG_VERTEX
If A=4
Goto ALG_FACTOR
If A=5
Goto ALG_SYS2
If A=6
Goto ALG_SYS3
If A=7
Goto ALG_LOG
If A=8
Goto ALG_EXP
If A=9
Goto MAIN
Goto ALGEBRA

Lbl ALG_LINEAR
ClrHome
Disp "LINEAR AX+B=C"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 GRAPH"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
ClrHome
Disp "AX+B=C"
Disp "X=(C-B)/A"
Disp "SOLVES 1 VAR EQ"
Pause
Goto ALG_LINEAR
End
If A=2
Then
ClrHome
Input "A=",A
Input "B=",B
Input "C=",C
If A=0
Then
Disp "ERROR: DIV BY 0"
Pause
Goto ALG_LINEAR
End
(C-B)/A→X
Disp "X=",X
1→T
Goto ADDREC
End
If A=3
Then
ClrHome
Input "M=",M
Input "B=",B
M→Y1
-10→Xmin
10→Xmax
-10→Ymin
10→Ymax
ZStandard
Graph
Pause
Goto ALG_LINEAR
End
Goto ALGEBRA

Lbl ALG_QUAD
ClrHome
Disp "QUADRATIC TOOL"
Disp "1 VIEW"
Disp "2 SOLVER LOCKED"
Disp "3 GRAPH"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
ClrHome
Disp "AX^2+BX+C=0"
Disp "X=(-B+-ROOT(D))/2A"
Disp "D=B^2-4AC"
Pause
Goto ALG_QUAD
End
If A=2
Goto QUADLOCK
If A=3
Then
ClrHome
Input "A=",A
Input "B=",B
Input "C=",C
A*X^2+B*X+C→Y1
-10→Xmin
10→Xmax
-10→Ymin
10→Ymax
Graph
Pause
Goto ALG_QUAD
End
Goto ALGEBRA

Lbl QUADLOCK
Fix 3
a+b

Disp "   ­B+-√(B²-4AC)"
Disp "X= -------------"
Disp "        2A"

Prompt A,B,C

(­B+√(B²-4AC))/(2A)→X
(­B-√(B²-4AC))/(2A)→Y

Disp XFrac
Disp YFrac

Float
Real
Pause
Goto ALG_QUAD

Lbl ALG_VERTEX
ClrHome
Disp "VERTEX FORM"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 GRAPH"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
Disp "Y=A(X-H)^2+K"
Disp "H=-B/2A"
Disp "K=F(H)"
Pause
Goto ALG_VERTEX
End
If A=2
Then
Input "A=",A
Input "B=",B
Input "C=",C
If A=0
Then
Disp "ERROR: NOT QUAD"
Pause
Goto ALG_VERTEX
End
(-B)/(2A)→H
A*H^2+B*H+C→K
Disp "H=",H
Disp "K=",K
2→T
Goto ADDREC
End
If A=3
Then
Input "A=",A
Input "H=",H
Input "K=",K
A*(X-H)^2+K→Y1
-10→Xmin
10→Xmax
-10→Ymin
10→Ymax
Graph
Pause
Goto ALG_VERTEX
End
Goto ALGEBRA

Lbl ALG_FACTOR
ClrHome
Disp "FACTOR TOOLS"
Disp "1 VIEW"
Disp "2 INPUT ROOTS"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "X^2-BX+C"
Disp "ROOT SUM=B"
Disp "ROOT PROD=C"
Pause
Goto ALG_FACTOR
End
If A=2
Then
Input "R1=",R
Input "R2=",S
Disp "(X-",R,")(X-",S,")"
Disp "X^2-",R+S,"X+",R*S
3→T
Goto ADDREC
End
Goto ALGEBRA

Lbl ALG_SYS2
ClrHome
Disp "2X2 SYSTEM"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "A1X+B1Y=C1"
Disp "A2X+B2Y=C2"
Disp "CRAMER RULE"
Pause
Goto ALG_SYS2
End
If A=2
Then
Input "A1=",A
Input "B1=",B
Input "C1=",C
Input "A2=",D
Input "B2=",E
Input "C2=",F
A*E-B*D→G
If G=0
Then
Disp "ERROR: NO UNIQUE"
Pause
Goto ALG_SYS2
End
(C*E-B*F)/G→X
(A*F-C*D)/G→Y
Disp "X=",X
Disp "Y=",Y
4→T
Goto ADDREC
End
Goto ALGEBRA

Lbl ALG_SYS3
ClrHome
Disp "3X3 SYSTEM"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "AX+BY+CZ=D"
Disp "USE MATRIX RREF"
Pause
Goto ALG_SYS3
End
If A=2
Then
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
{ {A,B,C,D}{E,F,G,H}{I,J,K,L} }→[A]
rref([A])→[A]
Disp [A]
5→T
Goto ADDREC
End
Goto ALGEBRA

Lbl ALG_LOG
ClrHome
Disp "LOG LAWS"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "LOG AB=LOGA+LOGB"
Disp "LOG A^N=NLOGA"
Disp "CHANGE: LOGB A"
Pause
Goto ALG_LOG
End
If A=2
Then
Input "BASE B=",B
Input "VALUE A=",A
If A<=0 or B<=0 or B=1
Then
Disp "ERROR: DOMAIN"
Pause
Goto ALG_LOG
End
ln(A)/ln(B)→X
Disp "LOGB(A)=",X
6→T
Goto ADDREC
End
Goto ALGEBRA

Lbl ALG_EXP
ClrHome
Disp "EXP GROW/DECAY"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 GRAPH"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
Disp "Y=A*E^(RT)"
Disp "R>0 GROWTH"
Disp "R<0 DECAY"
Pause
Goto ALG_EXP
End
If A=2
Then
Input "A0=",A
Input "R=",R
Input "T=",T
A*e^(R*T)→Y
Disp "Y=",Y
7→T
Goto ADDREC
End
If A=3
Then
Input "A0=",A
Input "R=",R
A*e^(R*X)→Y1
0→Xmin
10→Xmax
0→Ymin
A*3→Ymax
Graph
Pause
Goto ALG_EXP
End
Goto ALGEBRA

Lbl GEOMETRY
ClrHome
Disp "GEOMETRY/TRIG"
Disp "1 DISTANCE"
Disp "2 MIDPOINT"
Disp "3 CIRCLE"
Disp "4 CONICS"
Disp "5 TRIANGLES"
Disp "6 SOLIDS"
Disp "7 TRIG MENU"
Disp "8 BACK"
Input "CHOOSE:",A
If A=1
Goto GEO_DIST
If A=2
Goto GEO_MID
If A=3
Goto GEO_CIRCLE
If A=4
Goto GEO_CONIC
If A=5
Goto GEO_TRI
If A=6
Goto GEO_SOLID
If A=7
Goto TRIG
Goto MAIN

Lbl GEO_DIST
ClrHome
Disp "DISTANCE"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "D=ROOT((X2-X1)^2"
Disp "+(Y2-Y1)^2)"
Pause
Goto GEO_DIST
End
If A=2
Then
Input "X1=",A
Input "Y1=",B
Input "X2=",C
Input "Y2=",D
√((C-A)^2+(D-B)^2)→X
Disp "D=",X
8→T
Goto ADDREC
End
Goto GEOMETRY

Lbl GEO_MID
ClrHome
Disp "MIDPOINT"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Disp "M=((X1+X2)/2"
Disp ",(Y1+Y2)/2)"
Pause
Goto GEO_MID
End
If A=2
Then
Input "X1=",A
Input "Y1=",B
Input "X2=",C
Input "Y2=",D
Disp "MX=",(A+C)/2
Disp "MY=",(B+D)/2
9→T
Goto ADDREC
End
Goto GEOMETRY

Lbl GEO_CIRCLE
ClrHome
Disp "CIRCLE"
Disp "1 VIEW"
Disp "2 INPUT STD"
Disp "3 GRAPH"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
Disp "(X-H)^2+(Y-K)^2=R^2"
Disp "GENERAL X^2+Y^2+DX+EY+F"
Pause
Goto GEO_CIRCLE
End
If A=2
Then
Input "H=",H
Input "K=",K
Input "R=",R
If R<=0
Then
Disp "ERROR: R>0"
Pause
Goto GEO_CIRCLE
End
Disp "STD:"
Disp "(X-",H,")^2+(Y-",K,")^2=",R^2
Disp "GEN D=",-2H
Disp "GEN E=",-2K
Disp "GEN F=",H^2+K^2-R^2
10→T
Goto ADDREC
End
If A=3
Then
Input "H=",H
Input "K=",K
Input "R=",R
√(R^2-(X-H)^2)+K→Y1
-√(R^2-(X-H)^2)+K→Y2
H-R-2→Xmin
H+R+2→Xmax
K-R-2→Ymin
K+R+2→Ymax
Graph
Pause
Goto GEO_CIRCLE
End
Goto GEOMETRY

Lbl GEO_CONIC
ClrHome
Disp "CONICS"
Disp "1 ELLIPSE VIEW"
Disp "2 PARABOLA VIEW"
Disp "3 INPUT"
Disp "4 BACK"
Input "MODE:",A
If A=1
Then
Disp "(X-H)^2/A^2+"
Disp "(Y-K)^2/B^2=1"
Pause
Goto GEO_CONIC
End
If A=2
Then
Disp "(X-H)^2=4P(Y-K)"
Pause
Goto GEO_CONIC
End
If A=3
Then
Input "TYPE 1ELL 2PAR:",T
If T=1
Then
Input "H=",H
Input "K=",K
Input "A=",A
Input "B=",B
Disp "CENTER",H,K
Disp "MAJOR",max(A,B)
End
If T=2
Then
Input "H=",H
Input "K=",K
Input "P=",P
Disp "FOCUS",H,K+P
Disp "DIRECTRIX Y=",K-P
End
11→T
Goto ADDREC
End
Goto GEOMETRY

Lbl GEO_TRI
ClrHome
Disp "TRIANGLES"
Disp "1 HERON"
Disp "2 PYTHAG"
Disp "3 BACK"
Input "MODE:",A
If A=1
Then
Input "A=",A
Input "B=",B
Input "C=",C
(A+B+C)/2→S
If S<=A or S<=B or S<=C
Then
Disp "ERROR: SIDES"
Pause
Goto GEO_TRI
End
√(S*(S-A)*(S-B)*(S-C))→X
Disp "AREA=",X
12→T
Goto ADDREC
End
If A=2
Then
Input "A LEG=",A
Input "B LEG=",B
√(A^2+B^2)→C
Disp "C=",C
13→T
Goto ADDREC
End
Goto GEOMETRY

Lbl GEO_SOLID
ClrHome
Disp "SOLID SA/V"
Disp "1 CUBE"
Disp "2 SPHERE"
Disp "3 CONE"
Disp "4 CYLINDER"
Disp "5 BACK"
Input "TYPE:",A
If A=1
Then
Input "SIDE=",S
Disp "SA=",6S^2
Disp "V=",S^3
End
If A=2
Then
Input "R=",R
Disp "SA=",4πR^2
Disp "V=",(4/3)πR^3
End
If A=3
Then
Input "R=",R
Input "H=",H
Disp "SA=",πR(R+√(R^2+H^2))
Disp "V=",(1/3)πR^2H
End
If A=4
Then
Input "R=",R
Input "H=",H
Disp "SA=",2πR(R+H)
Disp "V=",πR^2H
End
14→T
Goto ADDREC
Goto GEOMETRY

Lbl TRIG
ClrHome
Disp "TRIG"
Disp "1 SOHCAHTOA"
Disp "2 LAW SINES"
Disp "3 LAW COSINES"
Disp "4 UNIT CIRCLE"
Disp "5 DEG/RAD"
Disp "6 INV TRIG"
Disp "7 BACK"
Input "CHOOSE:",A
If A=1
Goto TRI_SOH
If A=2
Goto TRI_SIN
If A=3
Goto TRI_COS
If A=4
Goto TRI_UNIT
If A=5
Goto TRI_CONV
If A=6
Goto TRI_INV
Goto GEOMETRY

Lbl TRI_SOH
ClrHome
Disp "SIN=O/H COS=A/H"
Disp "TAN=O/A"
Input "O=",O
Input "A=",A
Input "H=",H
If H=0 or A=0
Then
Disp "ERROR: DIV0"
Pause
Goto TRIG
End
Disp "SIN=",O/H
Disp "COS=",A/H
Disp "TAN=",O/A
15→T
Goto ADDREC

Lbl TRI_SIN
ClrHome
Disp "A/SIN(A)=B/SIN(B)"
Input "A SIDE=",A
Input "ANG A=",B
Input "ANG B=",C
If sin(B)=0
Then
Disp "ERROR: DOMAIN"
Pause
Goto TRIG
End
A*sin(C)/sin(B)→X
Disp "B SIDE=",X
16→T
Goto ADDREC

Lbl TRI_COS
ClrHome
Disp "C^2=A^2+B^2-2AB COSC"
Input "A=",A
Input "B=",B
Input "C ANG=",C
√(A^2+B^2-2AB*cos(C))→X
Disp "C SIDE=",X
17→T
Goto ADDREC

Lbl TRI_UNIT
ClrHome
Disp "UNIT CIRCLE"
Disp "0 : (1,0)"
Disp "PI/6 : RT3/2,1/2"
Disp "PI/4 : RT2/2,RT2/2"
Disp "PI/3 : 1/2,RT3/2"
Disp "PI/2 : (0,1)"
Pause
Goto TRIG

Lbl TRI_CONV
ClrHome
Disp "1 DEG->RAD"
Disp "2 RAD->DEG"
Input "MODE:",A
If A=1
Then
Input "DEG=",D
Disp "RAD=",D*π/180
End
If A=2
Then
Input "RAD=",R
Disp "DEG=",R*180/π
End
18→T
Goto ADDREC

Lbl TRI_INV
ClrHome
Disp "INVERSE TRIG"
Disp "1 ARCSIN"
Disp "2 ARCCOS"
Disp "3 ARCTAN"
Input "MODE:",A
Input "VALUE=",V
If A=1
Then
If V<-1 or V>1
Then
Disp "ERROR: DOMAIN"
Pause
Goto TRIG
End
Disp "THETA=",asin(V)
End
If A=2
Then
If V<-1 or V>1
Then
Disp "ERROR: DOMAIN"
Pause
Goto TRIG
End
Disp "THETA=",acos(V)
End
If A=3
Then
Disp "THETA=",atan(V)
End
19→T
Goto ADDREC

Lbl CALCULUS
ClrHome
Disp "CALCULUS"
Disp "1 LIMIT EST"
Disp "2 NUM DERIV"
Disp "3 NUM INTEGRAL"
Disp "4 POWER RULE"
Disp "5 PRODUCT RULE"
Disp "6 CHAIN RULE"
Disp "7 FTC DISPLAY"
Disp "8 BACK"
Input "CHOOSE:",A
If A=1
Goto CAL_LIM
If A=2
Goto CAL_DER
If A=3
Goto CAL_INT
If A=4
Goto CAL_PWR
If A=5
Goto CAL_PROD
If A=6
Goto CAL_CHAIN
If A=7
Goto CAL_FTC
Goto MAIN

Lbl CAL_LIM
ClrHome
Disp "LIMIT EST"
Disp "1 VIEW"
Disp "2 INPUT"
Input "MODE:",A
If A=1
Then
Disp "LIM F(X),X->A"
Disp "USE A+/-H"
Pause
Goto CAL_LIM
End
Input "A=",A
Input "H=",H
Input "Y1(X) IN Y1"
(Y1(A+H)+Y1(A-H))/2→L
Disp "LIM=",L
20→T
Goto ADDREC

Lbl CAL_DER
ClrHome
Disp "NUM DERIV"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 GRAPH"
Input "MODE:",A
If A=1
Then
Disp "F'(X)~(F(X+H)-F(X-H))/2H"
Pause
Goto CAL_DER
End
If A=2
Then
Input "X=",X
Input "H=",H
If H=0
Then
Disp "ERROR: H=0"
Pause
Goto CAL_DER
End
nDeriv(Y1,X,X)→D
Disp "F'(X)=",D
21→T
Goto ADDREC
End
If A=3
Then
nDeriv(Y1,X,X)→Y2
ZStandard
Graph
Pause
Goto CAL_DER
End
Goto CALCULUS

Lbl CAL_INT
ClrHome
Disp "NUM INTEGRAL"
Disp "1 VIEW"
Disp "2 INPUT"
Disp "3 GRAPH"
Input "MODE:",A
If A=1
Then
Disp "INT(F(X),A,B)"
Disp "AREA UNDER CURVE"
Pause
Goto CAL_INT
End
If A=2
Then
Input "A=",A
Input "B=",B
fnInt(Y1,X,A,B)→I
Disp "INT=",I
22→T
Goto ADDREC
End
If A=3
Then
Shade(Y1,0)
Graph
Pause
Goto CAL_INT
End
Goto CALCULUS

Lbl CAL_PWR
ClrHome
Disp "POWER RULE"
Disp "D/DX X^N=NX^(N-1)"
Input "N=",N
Disp "DERIV=",N,"X^",N-1
23→T
Goto ADDREC

Lbl CAL_PROD
ClrHome
Disp "PRODUCT RULE"
Disp "(FG)'=F'G+FG'"
Pause
24→T
Goto ADDREC

Lbl CAL_CHAIN
ClrHome
Disp "CHAIN RULE"
Disp "D/DX F(G(X))"
Disp "=F'(G(X))*G'(X)"
Pause
25→T
Goto ADDREC

Lbl CAL_FTC
ClrHome
Disp "FUND THM CALCULUS"
Disp "INT_A^B F'(X)DX"
Disp "=F(B)-F(A)"
Pause
26→T
Goto ADDREC

Lbl STATS
ClrHome
Disp "STATS/PROB"
Disp "1 MEAN MED SD"
Disp "2 NPr NCr"
Disp "3 NORMAL DIST"
Disp "4 BINOMIAL"
Disp "5 REGRESSION"
Disp "6 CORRELATION"
Disp "7 BACK"
Input "CHOOSE:",A
If A=1
Goto ST_MEAN
If A=2
Goto ST_COMB
If A=3
Goto ST_NORM
If A=4
Goto ST_BIN
If A=5
Goto ST_REG
If A=6
Goto ST_CORR
Goto MAIN

Lbl ST_MEAN
ClrHome
Disp "ENTER L3 DATA"
Pause
mean(L3)→M
median(L3)→D
stdDev(L3)→S
Disp "MEAN=",M
Disp "MED=",D
Disp "SD=",S
27→T
Goto ADDREC

Lbl ST_COMB
ClrHome
Input "N=",N
Input "R=",R
If N<0 or R<0 or R>N
Then
Disp "ERROR: DOMAIN"
Pause
Goto STATS
End
Disp "NPR=",nPr(N,R)
Disp "NCR=",nCr(N,R)
28→T
Goto ADDREC

Lbl ST_NORM
ClrHome
Disp "NORMAL DIST"
Input "LOW=",A
Input "HIGH=",B
Input "MU=",M
Input "SIG=",S
If S<=0
Then
Disp "ERROR: SIGMA>0"
Pause
Goto STATS
End
normalcdf(A,B,M,S)→P
Disp "P=",P
29→T
Goto ADDREC

Lbl ST_BIN
ClrHome
Disp "BINOMIAL"
Input "N=",N
Input "P=",P
Input "X=",X
If P<0 or P>1
Then
Disp "ERROR: P DOMAIN"
Pause
Goto STATS
End
binompdf(N,P,X)→B
binomcdf(N,P,X)→C
Disp "PDF=",B
Disp "CDF=",C
30→T
Goto ADDREC

Lbl ST_REG
ClrHome
Disp "REGRESSION L3,L4"
Pause
LinReg(ax+b) L3,L4,Y1
Disp "A=",A
Disp "B=",B
31→T
Goto ADDREC

Lbl ST_CORR
ClrHome
Disp "CORRELATION L3,L4"
DiagnosticOn
LinReg(ax+b) L3,L4
Disp "R=",R
Disp "R^2=",R^2
32→T
Goto ADDREC

Lbl SEARCH
ClrHome
Disp "SEARCH KEYWORD"
Disp "1 CIRCLE"
Disp "2 DERIVATIVE"
Disp "3 VOLUME"
Disp "4 QUADRATIC"
Disp "5 BACK"
Input "KEY:",A
If A=1
Goto GEO_CIRCLE
If A=2
Goto CAL_DER
If A=3
Goto GEO_SOLID
If A=4
Goto ALG_QUAD
Goto MAIN

Lbl FAVORITES
ClrHome
Disp "FAVORITES"
Disp "1 SAVE CODE"
Disp "2 DELETE INDEX"
Disp "3 OPEN FAVORITE"
Disp "4 SHOW LIST"
Disp "5 BACK"
Input "MODE:",A
If A=1
Then
Input "FORMULA ID:",F
augment(L1,{F})→L1
Disp "SAVED"
Pause
Goto FAVORITES
End
If A=2
Then
Input "INDEX:",I
If I<1 or I>dim(L1)
Then
Disp "ERROR: INDEX"
Pause
Goto FAVORITES
End
DelVar L6
seq(L1(J),J,1,dim(L1))→L6
DelVar L1
{ }→L1
For(J,1,dim(L6))
If J≠I
Then
augment(L1,{L6(J)})→L1
End
End
Disp "DELETED"
Pause
Goto FAVORITES
End
If A=3
Then
Input "INDEX:",I
If I<1 or I>dim(L1)
Then
Disp "ERROR: INDEX"
Pause
Goto FAVORITES
End
L1(I)→F
If F=1
Goto ALG_LINEAR
If F=2
Goto ALG_QUAD
If F=3
Goto ALG_VERTEX
If F=8
Goto GEO_DIST
If F=10
Goto GEO_CIRCLE
If F=20
Goto CAL_LIM
If F=21
Goto CAL_DER
If F=27
Goto ST_MEAN
Goto FAVORITES
End
If A=4
Then
Disp L1
Pause
Goto FAVORITES
End
Goto MAIN

Lbl SETTINGS
ClrHome
Disp "SETTINGS/TOOLS"
Disp "1 SMART GRAPH"
Disp "2 UNIT CONVERT"
Disp "3 SCI NOTATION"
Disp "4 RECENT"
Disp "5 RAM/PROG SIZE"
Disp "6 BACK"
Input "MODE:",A
If A=1
Goto SMARTG
If A=2
Goto UNITCV
If A=3
Goto SCIN
If A=4
Then
Disp "RECENT IDS"
Disp L2
Pause
Goto SETTINGS
End
If A=5
Then
Disp "MEM SCREEN"
Pause
Mem
Pause
Goto SETTINGS
End
Goto MAIN

Lbl SMARTG
ClrHome
Disp "SMART GRAPH"
Disp "1 LINEAR"
Disp "2 QUADRATIC"
Disp "3 TRIG"
Input "TYPE:",A
If A=1
Then
-10→Xmin
10→Xmax
-10→Ymin
10→Ymax
End
If A=2
Then
-15→Xmin
15→Xmax
-20→Ymin
20→Ymax
End
If A=3
Then
-2π→Xmin
2π→Xmax
-2→Ymin
2→Ymax
End
Graph
Pause
Goto SETTINGS

Lbl UNITCV
ClrHome
Disp "UNIT CONVERTER"
Disp "1 DEG/RAD"
Disp "2 METER/FT"
Disp "3 KG/LB"
Disp "4 BACK"
Input "MODE:",A
If A=1
Goto TRI_CONV
If A=2
Then
Input "METER=",M
Disp "FEET=",M*3.28084
Pause
Goto UNITCV
End
If A=3
Then
Input "KG=",K
Disp "LB=",K*2.20462
Pause
Goto UNITCV
End
Goto SETTINGS

Lbl SCIN
ClrHome
Disp "SCIENTIFIC NOTATION"
Input "NUMBER=",N
If N=0
Then
Disp "0E0"
Pause
Goto SETTINGS
End
0→E
abs(N)→A
While A≥10
A/10→A
E+1→E
End
While A<1
A*10→A
E-1→E
End
Disp A,"E",E
Pause
Goto SETTINGS

Lbl ADDREC
If dim(L2)=0
Then
{ }→L2
End
augment(L2,{T})→L2
If dim(L2)>20
Then
seq(L2(I),I,dim(L2)-19,dim(L2))→L2
End
Goto MAIN
