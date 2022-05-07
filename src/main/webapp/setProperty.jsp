<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>

	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="session"/>
	
	
	<jsp:setProperty name="user" property="firstName" value="Md Tarequl"/>
	<jsp:setProperty name="user" property="lastName" value="Islam" />
	values have been set

</body>
</html>