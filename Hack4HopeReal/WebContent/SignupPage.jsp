<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a{
border:1px solid slategray;
background-color: lightgray;
color: black;
margin:75px;
padding: 20px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>

<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</head>
<br>
<br>
<br>
<%//Created by Nick Stone  %>
<body background = "Gray.jpg">

<form action="CallingDb(signup).jsp" method="get">
Username: <input type ="text" name ="username"><br>
FirstName: <input type="text" name="firstName"><br>
LastName:  <input type="text" name="lastName"><br>
DOB:    	   <input type="text" name="DOB"><br>
password:  <input type="text" name = "pass"><br>
email:     <input type = "text" name = "email"><br>
  

<p>

<br>
<input type="submit">



</form>

</body>
</html>