<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Number Area Page</title>
</head>
<body>
<p>Number Area!!</p>


<%

String username=null,sessionId=null;

Cookie[] cookies = request.getCookies();

if(cookies != null)
{
	for(Cookie cookie : cookies)
	{
		if(cookie.getName().equals("username"))
		{
			username = cookie.getValue();
		}
		
		if(cookie.getName().equals("JSESSIONID")){
			sessionId = cookie.getValue();
		}
	}
}

if(sessionId == null || username==null)
{
	response.sendRedirect("login.jsp");
}

%>

<%= username %><br/>
<%= sessionId %>
</body>
</html>