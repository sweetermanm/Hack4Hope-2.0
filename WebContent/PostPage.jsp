<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>Post Page</title>


</head>
<br>
<br>
<br>
<body>
<div class="sidebar">
<a href="PostPage.jsp" >Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>

<div class="posts">
<%//Created by Nick Stone %>
Welcome to the post page. 
Post a message to the forum here!.

<form action="callingdb(postPage).jsp" method="get">
Username: <input type="text" name="Username"><br>
postTitle: <input type ="text" name ="PostTitle"><br>
Postcontent: <input type="text" name="Postcontent"><br>

<p>
<br>
<input type="submit">
</form>



</div>
</body>
</html>