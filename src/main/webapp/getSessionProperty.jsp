<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Session Property</title>
</head>
<body>

	
<!-- 	used session it works depend on browser. Different browsers create different different bean  -->
	
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="session"></jsp:useBean>
	
	
	First Name : <jsp:getProperty name="user" property="firstName"/><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/>
</body>
</html>