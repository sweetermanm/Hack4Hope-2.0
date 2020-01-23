<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "easy.Comment" %>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="main.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>View Comments</title>

</head>
<body>

<div class="sidebar">
<img src="h4h.png"  float:right;float:left;width="200" height="200">
<a href="HomePage.jsp" >Home Page</a>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
<a href="leaderBoard.jsp">Leader Board</a>

</div>
<br>

<div class="posts">
<%int postid = Integer.parseInt(request.getParameter("ID")); %>
<h2>Comments for <%=easy.Queries.getTitlebyID(postid)%></h2>
<% List<Comment> list = new ArrayList<Comment>(); %>

<%list = easy.Queries.printComments(postid); %> 

<%for(int i = 0; i < list.size();i++){
	
	
	%>
	<br>

	
	

    <table align="center">
<tr>
 <th colspan= "4"><% out.println("<a href= UserProf.jsp?ID=" +list.get(i).getuser() + " >" +  list.get(i).getuser() + "</a>"); %>:
  <br>
  <% out.print(list.get(i).getcon());%>
 <th>
</tr>   
<tr>
 <td><%out.println("<a href = IncrementComment.jsp?IDf=" +list.get(i).getcid() + "&lol=" +postid +  " >Useful!</a>"); %></td>
 <td><%out.println("<strong>"+list.get(i).getuse()+"</strong>");%></td>
 <td><%out.println("<a href = DecrementComment.jsp?IDf=" +list.get(i).getcid() + "&lol=" +postid + " >Not Useful</a>"); %></td>
</tr>
</table>	
<% }%>


</div>


</body>
</html>