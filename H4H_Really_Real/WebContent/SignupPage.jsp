<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="formatting.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
</head>

<body>
<div class="TopNavigation">
	<br>
	<img src="h4h.png" alt="H4H logo" width="125" height="125">
	<a href="PostPage.jsp">Post Page</a>
	<a href="HomePage.jsp">Home Page</a>
	<a href="LogInPage.jsp">Login Page</a>
	<a href="SignupPage.jsp">SignUp Page</a>
	<h1>Hack4Hope Community Forum</h1>
</div>

<%//Created by Nick Stone  %>


<br>

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

</body>
</html>