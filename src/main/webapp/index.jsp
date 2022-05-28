<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="image-upload" enctype="multipart/form-data">

	select image <input type="file" multiple name="images"/>
	<br/>
	<input type="submit" value="upload" />

</form>

</body>
</html>