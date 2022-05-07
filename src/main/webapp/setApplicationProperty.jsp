<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Application Property</title>
</head>
<body>
<!-- 	used application scope, it works depend on entire application. 

Different browsers create single bean in the memory  -->
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="application"></jsp:useBean>
	
	<jsp:setProperty name="user" property="firstName" value="Md Tarequl"/><br/>
	<jsp:setProperty name="user" property="lastName" value="Islam"/>
	
	values have been set
	
</body>
</html>