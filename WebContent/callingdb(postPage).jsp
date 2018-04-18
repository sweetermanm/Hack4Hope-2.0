<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
<title>Your Post has been Posted</title>
<div class="sidebar">
<a href="PostPage.jsp" >Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>
</head>
<body>
<div class="posts">
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
</div>
</body>
</html>