 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<link rel="stylesheet" type="text/css" href="formatting.css">


<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Page</title>

</head>


<div class="TopNavigation">

<br>

<img src="h4h.png" alt="H4H logo" width="125" height="125">

<a href="PostPage.jsp">Post Page</a>

<a href="HomePage.jsp">Home Page</a>

<a href="LogInPage.jsp">Login Page</a>

<a href="SignupPage.jsp">SignUp Page</a>

<h1>Hack4Hope Community Forum</h1>

</div>


<body>

<br>

<br>

<br>


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






</body>

</html>