<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Session Property</title>
</head>
<body>

	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/> <!-- when we use this then automatically set values in bean class  -->
	
	First name : <jsp:getProperty name="user" property="firstName"/><br/>
	Last Name  : <jsp:getProperty name="user" property="lastName"/><br/>

</body>
</html>