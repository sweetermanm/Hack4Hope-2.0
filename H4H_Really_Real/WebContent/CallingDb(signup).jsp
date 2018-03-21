<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@ page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="formatting.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome!</title>
</head>
<body>

<div class="TopNavigation">
	<br>
	<img src="h4h.png" alt="H4H logo" width="125" height="125">
	<a href="PostPage.jsp">Post Page</a>
	<a href="HomePage.jsp">Home Page</a>
	<a href="LogInPage.jsp">Login Page</a>
	<a href="SignupPage.jsp">SignUp Page</a>
	<h1>Hack4Hope Community Forum</h1>
</div>
 
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


<h2>Hello, <%=firstName%>  <%=lastname %>. Welcome to the Hack4Hope Forum! </h2>
	Your username is <%=username %>.
	<br>
	<br>
	
 <% for(int i = 0; i < 10; i ++){
	 out.println("Coming sonn "); 
	 
	 }%>
<br>
<br>
<br>
 <%list.get(0); %>
<%for(int i = 0; i < list.size();i++){
	out.print(list.get(i).getuser());	
	out.println();
}	%>
<br>
<br>
</body>
</html>