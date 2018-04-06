<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="formatting.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Post has been Posted</title>
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

<body>
 <br>
<br>
<br>
<%
//Created By Nick stone 
String Username = request.getParameter("Username");
String title = request.getParameter("PostTitle");
String content = request.getParameter("Postcontent");


%>



<% easy.call.insertPosts(Username, title, content); %>


<%easy.onejavaToRuleThemAll.addp(title,content); %>
Hello the post <%=title%> has been posted to the Home Page

Your post was <%=content %>

</body>
</html>