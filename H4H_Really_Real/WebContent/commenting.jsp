<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="formatting.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>





There will be a form here to enter in and we should autopopulate the Post id. 

COuld easily send that to this page from the home page. 

Will be building view comments soo 



<form action="theCommenthasbeenpost.jsp" method="get">
<div>
<label>Username:</label>
<input type="text" name="usn">
</div>

<div>
<label>PostID: </label>
<input type="text" name="PID">
</div>

<div>
<label>Comment Content:</label>
		<textarea name="Commentcontent"></textarea> 
</div>

<br>

<input type="submit">

</form>







</body>
</html>