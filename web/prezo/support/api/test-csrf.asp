<%
	If Session("OWASP_CSRFTOKEN")=Request.ServerVariables("HEADER_OWASP_CSRFTOKEN") Then
%>
 	 {"message" : "PrezoServer"}
<%
	Else
		Dim message
		message = "Potential CSRF Attack Detected"
		Response.Status = "417" & " " & message
		Response.Write(message)
		Response.End
	End If
%>
