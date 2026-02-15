ClrHome
Disp "SEARCH"
Input "KEYWORD:",Str1
If inString(Str1,"CIRCLE")
Then
prgmGEOMTRIG
Return
End
If inString(Str1,"DERIV")
Then
prgmCALCLUS
Return
End
If inString(Str1,"VOLUME")
Then
prgmGEOMTRIG
Return
End
If inString(Str1,"QUAD")
Then
prgmALGEBRA
Return
End
Disp "NO MATCH"
Pause
Return
