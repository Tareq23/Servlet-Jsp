<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Session Property</title>
</head>
<body>

	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="session"></jsp:useBean>
	
	
	<form action="getSessionProperty.jsp" method="post">
	
		First Name : <input type="text" name="firstName" value="<jsp:getProperty name='user' property='firstName' />"/><br/>
		Last Name : <input type="text" name="lastName" value="<jsp:getProperty name='user' property='lastName' />" /><br/>
		<input type="submit" value="Submit" />
	</form>

</body>
</html>