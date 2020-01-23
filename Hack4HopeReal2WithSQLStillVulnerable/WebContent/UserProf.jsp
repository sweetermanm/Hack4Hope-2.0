<%@page import="easy.Queries"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.*" %>
<%@page import = "easy.User" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page  import = "easy.Post" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Profile</title>
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

</head>

<%//Created By Nick Stone %>
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

<% 
String users = request.getParameter("ID");


User u = Queries.getUserByID(users);
%>

<%  out.println("<h1><span class= userColor style= background-color:"   + u.getcolor()  + "></span> "  + u.getuser() +  "</h1>"); %>

<% 


out.println(u.getfname());
out.println(u.getlname());
out.println("<br>");
out.println("<strong>Bio: </strong>" + u.getbio());
out.println("<br>");
out.println("<strong>Points: </strong>" + u.getpoints());






%>


</body>
</html>