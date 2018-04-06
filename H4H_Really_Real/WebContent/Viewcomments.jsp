<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "easy.Comment" %>
<html>


<head>
<link rel="stylesheet" type="text/css" href="formatting.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Comments</title>
</head>

<body></body>
<div class="TopNavigation">
	<br>
	<img src="h4h.png" alt="H4H logo" width="125" height="125">
	<a href="PostPage.jsp">Post Page</a>
	<a href="HomePage.jsp">Home Page</a>
	<a href="LogInPage.jsp">Login Page</a>
	<a href="SignupPage.jsp">SignUp Page</a>
	<h1>Hack4Hope Community Forum</h1>
</div>

<br>
<br>
<br> 
<br> 


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


</body>
</html>