Fix 3

Disp "   -B+/-sqrt(B^2-4AC)"
Disp "X= ---------------"
Disp "          2A"

Prompt A,B,C
If A=0
Then
Disp "ERROR: A=0"
Return
End
If B^2-4*A*C<0
Then
Disp "ERROR: NO REAL ROOT"
Return
End

(-B+sqrt(B^2-4*A*C))/(2*A)->X
(-B-sqrt(B^2-4*A*C))/(2*A)->Y

Disp "X1=",X
Disp "X2=",Y

Float
Real
Return
