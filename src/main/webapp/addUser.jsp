<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="include/header.jsp"%>

<div class="container mtb">

	<div class="row">
	
		<div class="col-lg-12">
			
				<h3>Add New User</h3>
			
		</div>
		<div class="col-lg-12">
			
				<form action="<%= request.getContextPath()%>/appController" method="post">
				
					Username : <input type="text" name="username" /><br/>
					Email : <input type="text" name="username" /><br/>
					<input type="submit" value="submit"/>
					
				</form>
			
		</div>
	
	</div>

</div>




<%@include file="include/footer.jsp"%>