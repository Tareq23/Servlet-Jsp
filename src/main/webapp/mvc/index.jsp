<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<p>JSP Home Page</p>
	
	<a href="<%= request.getContextPath() %>/controller?page=login">Login</a></br>
	<a href="<%= request.getContextPath()%>/controller?page=sign-up">Sign Up</a></br>
	<a href="<%= request.getContextPath()%>/controller?page=about">About</a>
</body>
</html>