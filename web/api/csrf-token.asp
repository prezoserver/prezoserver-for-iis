<!--#include virtual="/prezo/support/js/csrfguard.config.asp" -->
<%
Function CreateGUID
  Dim TypeLib
  Set TypeLib = CreateObject("Scriptlet.TypeLib")
  CreateGUID = LCase(Mid(TypeLib.Guid, 2, 36))
End Function

If Session(OWASP_CSRFTOKEN)=null or Session(OWASP_CSRFTOKEN)="" Then
	Session.Timeout=15
	Session(OWASP_CSRFTOKEN)=CreateGUID()
End If

Response.Write(OWASP_CSRFTOKEN & ":" & Session(OWASP_CSRFTOKEN))
%>