<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>

<h1>Hello JSP</h1>

<pre>
<%-- scripting element --%>

<%-- Epression --%>
				<%= 2*3 %>
				<%= new Integer(3330) %>

				<%= new String("Tarequl Islam") %>

				<%= new java.util.Date() %>

				<%! int x = 23; %>

				<%= x%2==1 ? "x consist odd number" : "x consist Even Number" %>
				
				
				<%-- scriplet, which is powerful element on scripting element --%>
				<%
				
					for(int i=1; i<=10; i++)
					{
						if(i%2==1){
							out.print("<p>"+i+" is odd</p>");
						}
						else{
							out.print("<p>"+i+" is even</p>");
						}
					}
				
				%>
				
				
				<%-- Declaration scripting element --%>
				<%-- It's basically used for declared method --%>
				<%-- And also used for access specifier --%>
				
				<%!
				
					int square(int x)
					{
						return x*x;
					}
					
				%>
				
				<%
					for(int i=1; i<=10; i++)
					{
						out.print("<p>"+i+" * "+i+"   => "+square(i)+"</p>");
					}
				%>
				
</pre>
</body>
</html>