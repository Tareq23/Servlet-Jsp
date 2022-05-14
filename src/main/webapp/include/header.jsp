<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

 <%--    <title>${param.title}</title> --%>
 	<%-- <title><%= request.getAttribute("title") %></title> --%>
 	
 	<title>
 	
 	<%
 	  if(request.getAttribute("title")==null){
 		  out.print("Home Page");
 	  }
 	  else{
 		  out.print(request.getAttribute("title"));
 	  }
 	 %>
 	
 	</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script src="assets/js/modernizr.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<%= request.getContextPath() %>/home?page=home">SOLID.</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">
            <li><a href="<%= request.getContextPath() %>/home?page=home">HOME</a></li>
            <li><a href="<%= request.getContextPath() %>/home?page=list-user">List User</a></li>
            
           <!--  <li class="active"><a href="about.html">ABOUT</a></li>
            <li><a href="contact.html">CONTACT</a></li> -->
            
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<%= request.getContextPath() %>/home?page=add-user">Add User</a></li>
                <li><a href="<%= request.getContextPath() %>/home?page=blog">BLOG</a></li>
                <li><a href="<%= request.getContextPath() %>/home?page=single-post">SINGLE POST</a></li>
                <li><a href="<%= request.getContextPath() %>/home?page=portfolio">PORTFOLIO</a></li>
                <li><a href="<%= request.getContextPath() %>/home?page=single-project">SINGLE PROJECT</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>