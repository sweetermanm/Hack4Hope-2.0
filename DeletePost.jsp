<%//createdby Roslyn %>
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
<title>Your post has been deleted </title>
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</head>
<body background =Gray.jpg>




<form action="HomePage.jsp" method="get">

Delete <input type="button" onclick = alert("homepage") name="delete"><br>


<p>
<br>
<input type="submit">
</form>

      <script type="text/javascript">
         <!--
            function Redirect() {
               window.location="http://localhost:8080/NewProject/HomePage.jsp";
            }
            
            document.write("You will be redirected to the home page in 10 sec.");
            setTimeout('Redirect()', 10000);
         //-->
      </script>
      



</body>
</html>