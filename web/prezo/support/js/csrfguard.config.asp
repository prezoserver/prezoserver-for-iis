 
<%
 ' The OWASP CSRFGuard Project, BSD License
 ' Eric Sheridan (eric@infraredsecurity.com), Copyright (c) 2011 
 ' All rights reserved.
 ' 
 ' Redistribution and use in source and binary forms, with or without
 ' modification, are permitted provided that the following conditions are met:
 '
 '    1. Redistributions of source code must retain the above copyright notice,
 '       this list of conditions and the following disclaimer.
 '    2. Redistributions in binary form must reproduce the above copyright
 '       notice, this list of conditions and the following disclaimer in the
 '       documentation and/or other materials provided with the distribution.
 '    3. Neither the name of OWASP nor the names of its contributors may be used
 '       to endorse or promote products derived from this software without specific
 '       prior written permission.
 '
 ' THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 ' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 ' IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ' ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 ' FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 ' (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 ' LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 ' ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 ' (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 ' SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 %>
 
 <%
 	dim DOMAIN_STRICT
 	DOMAIN_STRICT = "false"
 	
 	dim CONTEXT_PATH
 	CONTEXT_PATH = "/"
 	
 	dim TOKENS_PER_PAGE
 	TOKENS_PER_PAGE = "false"
 	
 	dim INJECT_FORMS
 	INJECT_FORMS = "false"
 	
 	dim INJECT_GET_FORMS
 	INJECT_GET_FORMS = "false"
 	
 	dim INJECT_FORM_ATTRIBUTES
 	INJECT_FORM_ATTRIBUTES = "false"
 	
 	dim INJECT_ATTRIBUTES
 	INJECT_ATTRIBUTES = "false"
 	
 	dim SERVLET_PATH
 	SERVLET_PATH = "api/csrf-token.asp"
 	
 	dim DOMAIN_ORIGIN
 	DOMAIN_ORIGIN = "localhost"
 	
 	dim INJECT_XHR
 	INJECT_XHR = "true"
 	
 	dim OWASP_CSRFTOKEN
 	OWASP_CSRFTOKEN = "OWASP_CSRFTOKEN"
 %>