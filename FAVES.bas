Lbl A
ClrHome
Disp "FAVORITES"
Disp "1 SAVE"
Disp "2 DELETE"
Disp "3 OPEN"
Disp "4 LIST"
Disp "5 BACK"
Input "MODE:",M
If M=1
Then
Input "ID:",I
augment(L1,{I})→L1
Disp "SAVED"
Pause
Goto A
End
If M=2
Then
Input "INDEX:",I
If I<1 or I>dim(L1)
Then
Disp "BAD INDEX"
Pause
Goto A
End
0→N
{}→L6
For(J,1,dim(L1))
If J≠I
Then
augment(L6,{L1(J)})→L6
End
End
L6→L1
Disp "DELETED"
Pause
Goto A
End
If M=3
Then
Input "INDEX:",I
If I<1 or I>dim(L1)
Then
Disp "BAD INDEX"
Pause
Goto A
End
L1(I)→F
If F<=8
prgmALGEBRA
If F>=10 and F<=18
prgmGEOMTRIG
If F>=20 and F<=26
prgmCALCLUS
If F>=27 and F<=32
prgmSTATS
Goto A
End
If M=4
Then
Disp L1
Pause
Goto A
End
Return
