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
<title>Post Comments</title>

</head>
<body>


<div class="sidebar">
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>

<div class="posts">

There will be a form here to enter in and we should autopopulate the Post id. 

COuld easily send that to this page from the home page. 

Will be building view comments soo 




<form action="theCommenthasbeenpost.jsp" method="get">
Username <input type = "text" name = "usn"><br>
PostID  <input type="text" name="PID"><br>
Commentcontent: <input type="text" name="Commentcontent"><br>

<p>
<br>
<input type="submit">
</form>






</div>
</body>
</html>