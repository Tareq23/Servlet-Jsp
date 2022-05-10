<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>


	<form action="<%= request.getContextPath() %>/siteController" method="post">
	
		<p>Username : <input type="text" name="username" preference="username"/></p>
		<p>Password : <input type="password" name="password" /></p>
		<p><input type="submit" value="Submit"/></p>
	
	
	</form>


</body>
</html>