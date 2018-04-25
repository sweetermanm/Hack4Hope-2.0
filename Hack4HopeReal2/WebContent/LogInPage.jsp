<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>




<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
<title>Login Page</title>

</head>




<body>
<div class="sidebar">
<img src="h4h.png"  float:right;float:left;width="200" height="200">
<a href="HomePage.jsp" >Home Page</a>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
<a href="leaderBoard.jsp">Leader Board</a>


</div>


<div class="posts">
<br>
<h1>Hack4Hope Login</h1>

<form action="Callingdb(login).jsp" method="get">


<div>


<label>Username: &nbsp;</label>


<input type="text" name="username">


</div>


<div>


<label>Password: &nbsp;</label>


<input type="text" name="pass">


</div>


<br>


<input type="submit">


</form>



</div>

</body>

</html>