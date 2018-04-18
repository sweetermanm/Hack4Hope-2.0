<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "easy.Comment" %>
<html>


<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>View Comments</title>

</head>
<body>

<div class="sidebar">
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>
<br>
<br>
<br> 
<br> 
<div class="posts">

Pulling the query to populate all comments  on a post. SHoudl format nice and 


could implement a button pretty easy for useful now that i think about it. 

<% List<Comment> list = new ArrayList<Comment>(); %>

<%list = easy.Queries.printComments(1); %> 

<%for(int i = 0; i < list.size();i++){
	
	
	
	out.print(list.get(i).getcon());	
	
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	

	
	
}	%>

</div>
</body>
</html>