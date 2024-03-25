If (Form:C1466.trace)
	TRACE:C157
End if 

$nbProcess:=Execute on server:C373("test"; 0; "eee"; Form:C1466.trace)

var hyt : Text:=""
GET PROCESS VARIABLE:C371($nbProcess; storageText; localText)

Form:C1466.GetSPText:=localText