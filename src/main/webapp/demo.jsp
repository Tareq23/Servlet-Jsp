<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Original JSP</title>
</head>
<body>
<p>It's from the original page</p>
<%-- <jsp:forward page="forward.jsp"/> --%>

<%

	//request.getRequestDispatcher("forward.jsp").forward(request, response);

	response.sendRedirect("redirect.jsp");

%>

</body>
</html>