<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>Name : <%= request.getParameter("full-name") %></p>
<p>Gender : <%= request.getParameter("gender") %></p>
<p>Language Knows : <%


	String[] languages = request.getParameterValues("language");
	
	if(languages.length!=0){
		out.println("<br/>");
		for(int i=0; i<languages.length; i++){
			out.println(languages[i]);
			out.println("<br/>");
		}
	}
	else{
		out.println("None select");
	}
	



%></p>
<p>Country : <%= request.getParameter("country") %></p>

</body>
</html>