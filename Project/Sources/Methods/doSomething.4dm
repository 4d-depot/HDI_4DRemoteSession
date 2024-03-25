//%attributes = {"executedOnServer":true}
// The "Execute On Server" method property is set

#DECLARE($text : Text; $btrace : Boolean)

If ($btrace)
	TRACE:C157
End if 

If (Session:C1714=Null:C1517)
	ALERT:C41("To test, launch this HDI on 4D Server")
	return 
End if 

Use (Session:C1714.storage)
	Session:C1714.storage.settings:=New shared object:C1526("text"; $text)
End use 