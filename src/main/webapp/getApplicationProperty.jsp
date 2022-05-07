<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Application Property</title>
</head>
<body>
	<!-- 	used application scope, it works depend on entire application. 
	Different browsers create single bean in the memory -->
	
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="application"></jsp:useBean>
	
	First Name : <jsp:getProperty name="user" property="firstName"/><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/>
</body>
</html>