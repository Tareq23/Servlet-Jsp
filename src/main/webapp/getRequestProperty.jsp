<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Request Property</title>
</head>
<body>
	<!-- 	used Request scope, it works only this page request. 
			And pass this request values to another page using forwarding mechanism  -->
	
	
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="request"></jsp:useBean>
	
	First Name : <jsp:getProperty name="user" property="firstName" /><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/>
	
	
</body>
</html>