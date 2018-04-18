<%@page import="easy.onejavaToRuleThemAll"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.Post" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hack4Hope Home Pagetitle </title>
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
</head>
<br>
<br>
<br>
<%//Created By Nick Stone %>
<body>

<div class="search">
  <a href="#HOME"></a>
  <div class="search-container">
    <form action="do something ">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="search"></i></button>
    </form>
  </div>
</div>


<div class="sidebar">

<br>

<img src="h4h.png" alt="H4H logo" width="125" height="125">

<a href="PostPage.jsp">Post Page</a>

<a href="HomePage.jsp">Home Page</a>

<a href="LogInPage.jsp">Login Page</a>

<a href="SignupPage.jsp">SignUp Page</a>


</div>
<div class="posts">
<d>
please for the love of god work
</d>
<p> Hello World</p>
<%
 

		
	List<Post> plist = new ArrayList<Post>(); 
	 
	

	
	plist.clear();
	
	plist = easy.Queries.printPosts();
	
 

 
 %>

<br>
<br>
<br>
Just testing
All this stufff out 
you know how it goes

<br>
<br>
<br>

<%//This works... Cant believe it does. Dont want to gloat but i am very good 
// at coding 
String testing = "Commenting.jsp";
String viewing = "Viewcomments.jsp";
String voting = "votes.jsp";


%>
<% 
	int max = easy.Queries.getNumPosts();

	
for(int i = 0; i < max;i++){

	out.println(plist.get(i).getcon());
	out.println("<Strong>" +  plist.get(i).getID() + "</Strong>");
	out.println("<a href= Commenting.jsp >Comment on this post </a>");
	out.println("<a href= Viewcomments.jsp >View all comments </a>");
	out.println("<a href=votes.jsp>useful </a>");
	out.println("<br>");
	out.println("<br>");
	out.println("<br>");
	
	
	
	}
	
	
	
%>

</div>

</body>
</html>