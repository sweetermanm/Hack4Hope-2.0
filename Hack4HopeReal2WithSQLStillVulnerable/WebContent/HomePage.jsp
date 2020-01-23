<%@page import="easy.onejavaToRuleThemAll"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.Post" %>
<html>
<head>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hack4Hope Home Page</title>
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
<h1>Hack4Hope Community Forum</h1>
<%
 
		
	List<Post> plist = new ArrayList<Post>(); 
	 
	
	
	plist.clear();
	
	plist = easy.Queries.printPosts();
	
 
 
 %>


<%//This works... Cant believe it does. Dont want to gloat but i am very good 
// at coding 
String testing = "Commenting.jsp";
String viewing = "Viewcomments.jsp";
String voting = "votes.jsp";
%>
  

 <% int max = easy.Queries.getNumPosts();
	
for(int i = 0; i < max;i++){
	
	%>
       <table align="center">
 <tr>
    <th colspan= "4"><% out.println("<a href= UserProf.jsp?ID=" +plist.get(i).getuser() + " >" +  plist.get(i).getuser() + "</a>"); %>:
     <br>
     <%out.println(plist.get(i).getcon()); %>
    <th>
  </tr>   
  <tr>
    <td><% out.println("<a href= Commenting.jsp?ID=" +plist.get(i).getID() + " >Comment on this post </a>"); %></td>
    <td><% out.println("<a href= Viewcomments.jsp?ID=" +plist.get(i).getID() + " >View all comments </a>"); %></td>
    <td><% out.println("ID: " + "<Strong>" +  plist.get(i).getID() + "</Strong>"); %></td>
    <td><%out.println("<a href = Incrementpost.jsp?ID=" +plist.get(i).getID() +  " >Useful!</a>"); %>
    		<br>
    		<%out.println("<strong>"+plist.get(i).getuse()+"</strong>");%>
    		<br>
    		<%out.println("<a href = DecrementPost.jsp?ID=" +plist.get(i).getID() + " >Not Useful</a>"); %>
	   </td>
  </tr>

</table> 
	
	
	<%
	
	
	out.println("<br>");
	out.println("<br>");
	
	
	
	}
	
	
	
%>

</div>

</body>
</html>
