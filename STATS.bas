Lbl A
ClrHome
Disp "STATS"
Disp "1 MEAN/MED/SD"
Disp "2 NPR/NCR"
Disp "3 NORMAL"
Disp "4 BINOM"
Disp "5 REG"
Disp "6 CORR"
Disp "7 BACK"
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
Return
Lbl B
Disp "USE L3 DATA"
mean(L3)→A
median(L3)→B
stdDev(L3)→C
Disp "MEAN",A
Disp "MED",B
Disp "SD",C
augment(L2,{27})→L2
Pause
Goto A
Lbl C
Input "N=",N
Input "R=",R
If N<0 or R<0 or R>N
Then
Disp "DOMAIN"
Pause
Goto A
End
Disp "NPR",nPr(N,R)
Disp "NCR",nCr(N,R)
augment(L2,{28})→L2
Pause
Goto A
Lbl D
Input "LOW=",A
Input "HI=",B
Input "MU=",M
Input "SIG=",S
If S<=0
Then
Disp "SIG>0"
Pause
Goto A
End
Disp normalcdf(A,B,M,S)
augment(L2,{29})→L2
Pause
Goto A
Lbl E
Input "N=",N
Input "P=",P
Input "X=",X
If P<0 or P>1
Then
Disp "P DOMAIN"
Pause
Goto A
End
Disp binompdf(N,P,X)
Disp binomcdf(N,P,X)
augment(L2,{30})→L2
Pause
Goto A
Lbl F
LinReg(ax+b) L3,L4,Y1
Disp "A",A
Disp "B",B
augment(L2,{31})→L2
Pause
Goto A
Lbl G
DiagnosticOn
LinReg(ax+b) L3,L4
Disp "R",R
Disp "R2",R^2
augment(L2,{32})→L2
Pause
Goto A
