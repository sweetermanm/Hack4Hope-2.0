<%@page import="easy.onejavaToRuleThemAll"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.Post" %>
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
<title>Hack4Hope Home Pagetitle </title>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</head>
<br>
<br>
<br>
<%//Created By Nick Stone %>
<body background = "Gray.jpg">

<p> Hello World</p>
<%
 

		
	List<Post> plist = new ArrayList<Post>(); 
	plist = easy.Queries.printPosts();
	
 easy.onejavaToRuleThemAll.track(true);

 
 %>

<br>
<br>
<br>
Just testing
All this stufff out 
you know how it goes
<%= easy.onejavaToRuleThemAll.displayu("j") %>
<br>
<br>
<br>


<% 



for(int i = 0; i < plist.size();i++){
	
	out.println(plist.get(i).getcon());
	out.println("\n");
	out.println();
	out.print("<br>");
	out.println();
	out.print("<br>");
	
	}
	
	
%>


</body>
</html>