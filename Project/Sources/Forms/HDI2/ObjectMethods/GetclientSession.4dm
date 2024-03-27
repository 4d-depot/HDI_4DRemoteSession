If (Form:C1466.trace)
	TRACE:C157
End if 

// Set value test in storage
CALL WORKER:C1389("Worker1"; "doSomething"; "test"; False:C215)

// Calling the GetClientSession method to get session object
Form:C1466.Session:=GetClientSession(Form:C1466.trace)

If (Form:C1466.Session=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
End if 