<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import = "java.util.*" %>
<%@page import = "easy.User" %>
<%Class.forName("com.mysql.jdbc.Driver");%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>Welcome!</title>

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
<h1>Hack4Hope Community Forum</h1>
 
<%
//Created By Nick stone 
  String firstName = request.getParameter("firstName");
  String lastname = request.getParameter("lastName");
  String username = request.getParameter("username");
  String dob = request.getParameter("DOB");
  String pass = request.getParameter("pass");
  String email = request.getParameter("email");
  String bio = request.getParameter("bio");
%>


<%//final static List<User>// list = new ArrayList<User>();   %>
<% List<User> list = new ArrayList<User>(); %>
<% String color = easy.sortings.generatecolor(); %>
<%System.out.println(color); %>
<%easy.call.insertUsers(username,firstName,lastname,dob,pass,email,bio,color); %>
<%list = easy.Queries.printUsers(); %>

<br>
<br>


<h2>Hello, <%=firstName%>  <%=lastname %><br>Welcome to the Hack4Hope Forum! </h2>
	<br>Your username is <%=username %>
	<br>
	<br>
	
<br>
<br>
</body>
</html>