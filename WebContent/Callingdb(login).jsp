 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%Class.forName("com.mysql.jdbc.Driver");%>

<html>

<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>Insert title here</title>

<h1>Hack4Hope Community Forum</h1>
</head>


<body>
<div class="sidebar">

<br>

<img src="h4h.png" alt="H4H logo" width="125" height="125">

<a href="PostPage.jsp">Post Page</a>

<a href="HomePage.jsp">Home Page</a>

<a href="LogInPage.jsp">Login Page</a>

<a href="SignupPage.jsp">SignUp Page</a>


</div>

<div class="posts">



<%

//Created By Nick stone 

  String user = request.getParameter("username");

  String pass = request.getParameter("pass");

  

  int auth = easy.call.authenticate(user, pass);

  if (auth == 0){

  out.println("Invalid username.");

  }

  else if (auth == 2){

  out.println("Invalid password.");

  }

  else if(auth == 1){

  out.println("Successful Login!");

  }

%>


Hello <%= user %>




The password you entered is <%= pass %>

</div>
</body>

</html>