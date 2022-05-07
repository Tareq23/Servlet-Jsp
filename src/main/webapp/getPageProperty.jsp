<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Page Property</title>
</head>
<body>
	<!-- 	used page scope, it works only this page. Is has no impact another page -->
	
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="page"></jsp:useBean>
	
	First Name : <jsp:getProperty name="user" property="firstName"/><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/>
</body>
</html>