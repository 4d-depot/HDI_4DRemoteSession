If (Form:C1466.trace)
	TRACE:C157
End if 

Form:C1466.Session:=GetClientSession(Form:C1466.trace)

If (Form:C1466.Session=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
End if 