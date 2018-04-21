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
<title>Post Comments</title>
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
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br>

There will be a form here to enter in and we should autopopulate the Post id. 

COuld easily send that to this page from the home page. 

Will be building view comments soo 


<br>
<br>
<br>
<br>
<br>
<br>
<% int postid = Integer.parseInt(request.getParameter("ID")); 

	out.println(postid);
	
	
	
	
	
	%>
	
	
	<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

	
<form action="theCommenthasbeenpost.jsp" method="get">
Username <input type = "text" name = "usn"><br>
PostID  <input type="text" name="PID"><br>
Commentcontent: <input type="text" name="Commentcontent"><br>

<p>
<br>
<input type="submit">
</form>







</body>
</html>