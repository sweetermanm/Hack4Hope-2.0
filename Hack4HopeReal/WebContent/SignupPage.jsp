<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>

<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>


<title>Sign Up Page</title>


</head>
<br>
<br>
<br>
<%//Created by Nick Stone  %>
<body background>
<div class="sidebar">
<img src="h4h.png"width="200" height="200";>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>


<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>

<div class="posts">
<h1>Sign Up</h1>
<form action="CallingDb(signup).jsp" method="get">

<div>

<label>Username:</label>

<input type="text" name="username">

</div>


<div>

<label>First Name:</label>

<input type="text" name="firstName">

</div>


<div>

<label>Last Name:</label>

<input type="text" name="lastName">

</div>


<div>

<label>Date of Birth:</label>

<input type="text" name="DOB">

</div>


<div>

<label>Password:</label>

<input type="text" name="pass">

</div>


<div>

<label>Email Address:</label>

<input type="text" name="email">

</div>

<br>


<input type="submit">


</form>


</div>
</body>
</html>