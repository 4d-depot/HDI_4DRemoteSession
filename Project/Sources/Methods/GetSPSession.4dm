//%attributes = {}
#DECLARE($clientName : Text; $hWin : Integer; $btrace : Boolean)

If ($btrace)
	TRACE:C157
End if 

var $obSession : Object  //4D.ClientServerSession

// Retrieve the Stored procedure session
$obSession:=Session:C1714

// Call a method on Client to transfer the Stored Procedure session object from the Server to the Client
EXECUTE ON CLIENT:C651($clientName; "pushValueServerClient"; $hWin; $obSession; $bTrace)