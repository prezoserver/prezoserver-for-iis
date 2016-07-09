<%
' The MIT License (MIT)
'
' Copyright 2014 Kevin Johnston (kevin@prezoserver.org)
'
' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:
'
' The above copyright notice and this permission notice shall be included in
' all copies or substantial portions of the Software.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
' THE SOFTWARE.
%>

<!--
<%
Response.Write(Request.ServerVariables("ALL_HTTP"))
%>
-->

<%
' Build the URL for base href
Dim url

' Determine the protocol based on request header
If Request.ServerVariables("HTTPS") = "ON" Then
	url = "https://"
Else
	url = "http://"
End If

' Check if Apache Proxy request header is present. If so use proxy URL instead of local server and port.
If Request.ServerVariables("HTTP_X_FORWARDED_HOST") <> "" Then
	url = url & Request.ServerVariables("HTTP_X_FORWARDED_HOST") & "/" & DOCROOT
Else
	url = url & Request.ServerVariables("server_name") & ":" & Request.ServerVariables("server_port") & "/"
End If
%>

<base href="<%Response.Write(url)%>" />
