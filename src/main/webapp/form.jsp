<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Demo</title>
</head>
<body>

	<form action="<%= request.getContextPath() %>/controller" method="post">
	
		Full Name : <input type="text" name="full-name"/><br/>
		Gender : <input type="radio" value="male"name="gender"> Male
				 <input type="radio" value="female" name="gender"> Female<br/>
				 
		Language Know : <input type="checkbox" name="language" value="bangla"> Bangla
						<input type="checkbox" name="language" value="english"> English
						<input type="checkbox" name="language" value="arabic"> Arabic<br/>
		Country	: <select name="country">
					<option value="0">Select Country</option>
					<option value="bangladesh">Bangladesh</option>
					<option value="uk">UK</option>
					<option value="india">India</option>
					<option value="pakistan">Pakistan</option>
				  </select>
				 <br/>
				 
				 <input type="submit" value="submit"/>
	
	</form>

</body>
</html>