<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@ page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
<title>Welcome!</title>


</head>
<body >
<div class="sidebar">

<br>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>
 <div class="posts">
<%
//Created By Nick stone 
  String firstName = request.getParameter("firstName");
  String lastname = request.getParameter("lastName");
  String username = request.getParameter("username");
  String dob = request.getParameter("DOB");
  String pass = request.getParameter("pass");
  String email = request.getParameter("email");
%>


<%//final static List<User>// list = new ArrayList<User>();   %>
<% List<User> list = new ArrayList<User>(); %>
<%  %>
<%easy.call.insertUsers(username,firstName,lastname,dob,pass,email); %>
<%list = easy.Queries.printUsers(); %>

<br>
<br>


<h1>Hello, <%=firstName%>  <%=lastname %>Welcome to the Hack4Hope Forum! </h1>
	Your username is <%=username %>
	<br>
	<br>
	
 <% for(int i = 0; i < 10; i ++){
	 out.println("Coming sonn "); 
	 
	 }%>
<br>
<br>
<br>
 <%list.get(0); %>
 <%//Please work 
	String testing = "Commenting.jsp"; 
 	String viewing = "Viewcomments.jsp";
 	
 
 %>
<%for(int i = 0; i < list.size();i++){
	
	
	
	out.print(list.get(i).getuser());	
	out.println("<a href= testing >Comment on this post </a>");
	out.println("<a href= viewing >View all comments </a>");
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	

	
	
}	%>
<br>
<br>
</div>
</body>
</html>