<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Request Property</title>
</head>
<body>
	<!-- 	used Request scope, it works only this page request. 
			And pass this request values to another page using forwarding mechanism  -->
	
	<jsp:useBean id="user" class="org.tareq23.beans.User" scope="request"></jsp:useBean>
	
	<%-- First Name : <jsp:getProperty name="user" property="firstName" /><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/> --%>
	
	<jsp:setProperty name="user" property="firstName" value="Md Tarequl"/><br/>
	<jsp:setProperty property="lastName" name="user" value="Islam"/>
	values have been set<br/>
	
	<%-- First Name : <jsp:getProperty name="user" property="firstName" /><br/>
	Last Name : <jsp:getProperty property="lastName" name="user"/>
	 --%>
	
	<%
	
		request.getRequestDispatcher("getRequestProperty.jsp").forward(request,response);
	
	%>
	
</body>
</html>