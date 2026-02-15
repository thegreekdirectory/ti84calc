Lbl A
ClrHome
Disp "GEOM TRIG"
Disp "1 DIST"
Disp "2 MIDPT"
Disp "3 CIRCLE"
Disp "4 CONICS"
Disp "5 TRI AREA"
Disp "6 SOLIDS"
Disp "7 SOHCAHTOA"
Disp "8 LAWS"
Disp "9 UNIT/CONV"
Disp "0 BACK"
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
If M=9
Goto J
Return

Lbl B
Input "X1=",A
Input "Y1=",B
Input "X2=",C
Input "Y2=",D
√((C-A)^2+(D-B)^2)→X
Disp "D=",X
augment(L2,{10})→L2
Pause
Goto A
Lbl C
Input "X1=",A
Input "Y1=",B
Input "X2=",C
Input "Y2=",D
Disp "MX=",(A+C)/2
Disp "MY=",(B+D)/2
augment(L2,{11})→L2
Pause
Goto A
Lbl D
Input "H=",H
Input "K=",K
Input "R=",R
If R<=0
Then
Disp "R>0"
Pause
Goto A
End
Disp "GEN D=",-2H
Disp "GEN E=",-2K
Disp "GEN F=",H^2+K^2-R^2
√(R^2-(X-H)^2)+K→Y1
-√(R^2-(X-H)^2)+K→Y2
Graph
augment(L2,{12})→L2
Pause
Goto A
Lbl E
Disp "ELLIPSE"
Disp "(X-H)^2/A^2"
Disp "+(Y-K)^2/B^2=1"
Disp "PARABOLA"
Disp "(X-H)^2=4P(Y-K)"
augment(L2,{13})→L2
Pause
Goto A
Lbl F
Input "A=",A
Input "B=",B
Input "C=",C
(A+B+C)/2→S
If S<=A or S<=B or S<=C
Then
Disp "BAD SIDES"
Pause
Goto A
End
√(S*(S-A)*(S-B)*(S-C))→X
Disp "AREA=",X
Disp "PYTH C=",√(A^2+B^2)
augment(L2,{14})→L2
Pause
Goto A
Lbl G
Input "R=",R
Input "H=",H
Disp "SPH V=",(4/3)πR^3
Disp "CYL V=",πR^2*H
Disp "CONE V=",(1/3)πR^2*H
Disp "CUBE V=",H^3
augment(L2,{15})→L2
Pause
Goto A
Lbl H
Input "O=",O
Input "P=",P
Input "Q=",Q
If Q=0 or P=0
Then
Disp "DIV0"
Pause
Goto A
End
Disp "SIN=",O/Q
Disp "COS=",P/Q
Disp "TAN=",O/P
augment(L2,{16})→L2
Pause
Goto A
Lbl I
Input "SIDEA=",A
Input "ANGA=",B
Input "ANGB=",C
If sin(B)=0
Then
Disp "DOMAIN"
Pause
Goto A
End
Disp "SIDEB=",A*sin(C)/sin(B)
Input "A=",A
Input "B=",B
Input "CANG=",C
Disp "CSIDE=",√(A^2+B^2-2*A*B*cos(C))
augment(L2,{17})→L2
Pause
Goto A
Lbl J
Disp "1 UNIT CIRCLE"
Disp "2 DEG/RAD"
Disp "3 INV TRIG"
Input "MODE:",N
If N=1
Then
Disp "0:(1,0)"
Disp "PI/2:(0,1)"
Disp "PI:(-1,0)"
Disp "3PI/2:(0,-1)"
Pause
Goto A
End
If N=2
Then
Input "1 D-R 2 R-D:",T
If T=1
Then
Input "DEG=",D
Disp D*π/180
Else
Input "RAD=",R
Disp R*180/π
End
Pause
Goto A
End
Input "1ASIN2ACOS3ATAN:",T
Input "V=",V
If T=1 and (V<-1 or V>1)
Then
Disp "DOMAIN"
Pause
Goto A
End
If T=2 and (V<-1 or V>1)
Then
Disp "DOMAIN"
Pause
Goto A
End
If T=1
Disp asin(V)
If T=2
Disp acos(V)
If T=3
Disp atan(V)
augment(L2,{18})→L2
Pause
Goto A
