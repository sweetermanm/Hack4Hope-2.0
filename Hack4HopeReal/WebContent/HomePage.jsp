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
<title>Hack4Hope Home Page</title>
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

</head>
<br>
<br>
<br>
<%//Created By Nick Stone %>
<body>



<div class="sidebar">

<br>

<img src="h4h.png" width="200" height="200";>

<a href="PostPage.jsp">Post Page</a>

<a href="HomePage.jsp">Home Page</a>

<a href="LogInPage.jsp">Login Page</a>

<a href="SignupPage.jsp">SignUp Page</a>

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
    <th colspan= "4"><% %>username:
     <br>
     <%out.println(plist.get(i).getcon()); %>
    <th>
  </tr>   
  <tr>
    <td><% out.println("<a href= Commenting.jsp >Comment on this post </a>"); %></td>
    <td><% out.println("<a href= Viewcomments.jsp >View all comments </a>"); %></td>
    <td><% out.println("<Strong>" +  plist.get(i).getID() + "</Strong>"); %></td>
    <td><%out.println("<a href=votes.jsp>useful </a>"); %></td>
  </tr>

</table> 



	<script  type="text/javascript">
	
	
	var votes = 0;
    function up() {
        votes= votes +1;
        document.getElementById("votes").innerHTML = votes;
    }
    function down() {
    	if(votes > 0){
    	votes= votes -1;
    	document.getElementById("votes").innerHTML = votes;
    	}
    	};
	
	
	</script>
	
	<% //int p = votes;
	
	
	%>
	
	
	<%
	
	
	out.println("<br>");
	out.println("<br>");
	
	
	
	}
	
	
	
%>

</div>

</body>
</html>