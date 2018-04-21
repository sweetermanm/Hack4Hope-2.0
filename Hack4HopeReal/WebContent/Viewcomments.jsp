<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "easy.Comment" %>
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
<title>View Comments</title>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</head>
<body background =Gray.jpg>

<br>
<br>
<br> 
<br> 


Pulling the query to populate all comments  on a post. SHoudl format nice and 


could implement a button pretty easy for useful now that i think about it. 

<%
int postid = Integer.parseInt(request.getParameter("ID")); 

	out.println(postid);
	%>

<% List<Comment> list = new ArrayList<Comment>(); %>

<%list = easy.Queries.printComments(postid); %> 

<%for(int i = 0; i < list.size();i++){
	
	
	%>
	<br>
	
	<br>
	<br><%
	out.println("<a href = IncrementComment.jsp?IDf=" +list.get(i).getcid() + "&lol=" +postid +  " >Useful!</a>");	
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	out.println("<a href = DecrementComment.jsp?IDf=" +list.get(i).getcid() + "&lol=" +postid + " >Not Useful</a>");	

	
	out.println("<br>"); 	%>
 	
 	
 	
	<br>
	
	<% 
	out.print(list.get(i).getcon());	
	
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	out.println(list.get(i).getuse());
	out.println("<br>");
	out.println("<Strong>" + list.get(i).getuser() + "</Strong>");
	
	out.println("<br>");
	

	
	
}	%>


</body>
</html>