<%
	If Session("OWASP_CSRFTOKEN")=Request.ServerVariables("HEADER_OWASP_CSRFTOKEN") Then
%>
 	 {"message" : "PrezoServer"}
<%
	Else
		Response.Status = "417 Potential CSRF Attack Detected"
		Response.Write(response.Status)
		Response.End
	End If
%>
