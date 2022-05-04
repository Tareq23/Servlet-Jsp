<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>

<h1>Hello JSP</h1>

<pre>
<%-- scripting element --%>

<%-- Epression --%>
				<%= 2*3 %>
				<%= new Integer(3330) %>

				<%= new String("Tarequl Islam") %>

				<%= new java.util.Date() %>

				<%! int x = 23; %>

				<%= x%2==1 ? "x consist odd number" : "x consist Even Number" %>
</pre>
</body>
</html>