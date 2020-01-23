<%@page import="easy.call"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leader Board</title>
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
<h1>Hack4Hope Leader Board</h1>
<table align="center">  
  <tr>
  	<td><h2>Username</h2></td>
  	<td><h2>Points</h2></td>
  	</tr>
  	</table>

<%
List<User> ulist = new ArrayList<User>(); 
ulist = easy.Queries.printUsersByPoints();

for(int i = 0; i < ulist.size();i++){
	User u = ulist.get(i);
	%>
	
	<table align="center">  
  <tr>
  <td><% out.println("<span class= userColor2 style= background-color:"   + u.getcolor()  + "></span>");%><% out.println("<a href= UserProf.jsp?ID=" +u.getuser() + " >" +  u.getuser() + "</a>"); %></td>

    <td><% out.println("<a>"+ulist.get(i).getpoints()+"</a>"); %></td>
  
  </tr>

</table> 
<%}%>
	
</body>
</html>