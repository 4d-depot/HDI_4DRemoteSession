//%attributes = {}
#DECLARE($hWin : Integer; $obSession : Object; $bTrace : Boolean)

If ($bTrace)
	TRACE:C157
End if 

// Call a method in the form context to fill the Form object
CALL FORM:C1391($hWin; "setSPValueInForm"; $obSession)

