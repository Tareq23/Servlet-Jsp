<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.util.Date,org.tareq23.user.UserDefined" %>

<%=

 //out.println("import jsp : -> "+new java.util.Date());

  /* out.println(new Date()); */
  
  new Date()


%>
</br>

<%-- <%@ page import="org.tareq23.user.UserDefined" %> --%>

<%

	out.println(new UserDefined().demo());
	
%>

</body>
</html>