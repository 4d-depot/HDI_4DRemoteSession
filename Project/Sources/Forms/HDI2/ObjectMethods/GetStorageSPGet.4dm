If (Form:C1466.trace)
	TRACE:C157
End if 

$clientname:=GetClientSession(False:C215).info.ID


REGISTER CLIENT:C648($clientname)

$nbProcess:=Execute on server:C373("GetSPSession"; 0; "SPGet"; $clientname; Form:C1466.hWin; Form:C1466.trace)

