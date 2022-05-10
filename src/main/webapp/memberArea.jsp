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




	if(request.getSession().getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
	else{
		username = request.getSession().getAttribute("username").toString();
		sessionId = request.getSession().getId();
	}



/* Cookie[] cookies = request.getCookies(); */

/* if(cookies != null)
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
} */

/* if(sessionId == null || username==null)
{
	response.sendRedirect("login.jsp");
} */

%>

 Username : <%= username %><br/>
 Session Id : <%= sessionId %><br/>
 
 <form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
 
 	<input type="hidden" name="action" value="destroy"/>
 	<input type="submit" value = "Logout"/>
 
 </form>
 

 
</body>
</html>