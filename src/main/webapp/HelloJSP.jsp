<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	
	
	<%
	
		out.println("<p>"+request.getParameter("first-name")+"</p>");
		out.println("<p>"+request.getParameter("last-name")+"</p>");
	
	%>
	
</body>
</html>