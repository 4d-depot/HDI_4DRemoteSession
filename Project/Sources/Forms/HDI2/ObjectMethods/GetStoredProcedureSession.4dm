var $clientname : Text:=""

If (Form:C1466.trace)
	TRACE:C157
End if 

// Retrieve the name of the current Client session to perform an "Execute on client" from the server on this client
$clientname:=GetClientSession(False:C215).info.ID

// To do an "Execute on client" since the server, you need to register the client
REGISTER CLIENT:C648($clientname)

// Set value test in storage
Execute on server:C373("doSomethingInSP"; 0; "SP1"; "test"; False:C215)

// Launch the "GetSPSession" method in a stored procedure on the server
Execute on server:C373("GetSPSession"; 0; "SPsession"; $clientname; Form:C1466.hWin; Form:C1466.trace)
