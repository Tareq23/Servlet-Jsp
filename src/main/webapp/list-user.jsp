<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.tareq23.entity.User" %>

<%-- <c:import url="include/header.jsp">
	<c:param name="title" value="List User"/>
</c:import> --%>
<%@include file="include/header.jsp" %>

<div class="container mtb">

	<div class="row">
	
		<div class="col-lg-12"> 
			
				<h1>User List</h1>
			
		</div>
		<div class="col-lg-6">
			
				<table class="table" border="1">
				
					<thead>
						<tr>
						
							<th>Id</th>
							<th>Username</th>
							<th>Email</th>
							
						
						</tr>
					
					</thead>
					<tbody>
						<%
							List<User> _listUser = (List) request.getAttribute("listUser");
							for(int i=0; i<_listUser.size(); i++)
							{
								out.print("<tr>");
									out.print("<td>"+ _listUser.get(i).getUsers_id() +"</td>");
									out.print("<td>"+ _listUser.get(i).getUsername() +"</td>");
									out.print("<td>"+ _listUser.get(i).getEmail() +"</td>");
									String tempURL = request.getContextPath()+
											"/home?page=update-user&userId="+
											_listUser.get(i).getUsers_id()+
											"&username="+_listUser.get(i).getUsername()+
											"&email="+_listUser.get(i).getEmail();
									out.print("<td class='btn-warning my-2'><a href="+tempURL+">Update</a></td>");
								out.print("</tr>");
							}
						%>
					
					</tbody>
				
				</table>
			
		</div>
	
	</div>

</div>



<%-- <c:import url="include/footer.jsp"></c:import> --%>
<%@include file="include/footer.jsp" %>