<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Your Post has been Posted</title>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</head>
<body background = "Gray.jpg">
 <br>
<br>
<br>
<%
//Created By Nick stone 
  String title = request.getParameter("PostTitle");
  String content = request.getParameter("Postcontent");
  
%>
<%easy.onejavaToRuleThemAll.addp(title,content); %>
Hello the post <%=title%> has been posted to the Home Page

Your post was <%=content %>

</body>
</html>