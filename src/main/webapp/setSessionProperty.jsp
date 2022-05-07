<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Session Property</title>
</head>
<body>
<!-- 	used session it works depend on browser. Different browsers create different different bean  -->
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="session"></jsp:useBean>
	
	<jsp:setProperty name="user" property="firstName" value="Md Tarequl"/><br/>
	<jsp:setProperty name="user" property="lastName" value="Islam"/>
	
	values have been set
	
</body>
</html>