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

<title>Posted!</title>

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
  String Username = request.getParameter("Username");
  String title = request.getParameter("PostTitle");
  String content = request.getParameter("Postcontent");
  
  
%>

<% String incontent = easy.sortings.vulgarcheck(content);                %>


<% easy.call.insertPosts(Username, title, incontent); %>


<%easy.onejavaToRuleThemAll.addp(title,content); %>
Hello the post <%=title%> has been posted to the Home Page

Your post was <%=incontent %>

</body>
</html>