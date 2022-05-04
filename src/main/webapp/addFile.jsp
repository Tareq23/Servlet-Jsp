<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%--  For adding static content --%>
	<%@ include file="index.html" %>
	
	
	<%-- For adding Dynamic content --%>
	
	<jsp:include page="index.jsp"/>

</body>
</html>