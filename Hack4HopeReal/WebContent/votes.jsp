<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.*" %>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "easy.Comment" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>

<title>Hack4Hope</title>
</head>
<body>
<div class="sidebar">
<a href="PostPage.jsp" ;>Post Page</a>
<a href="HomePage.jsp" >Home Page</a>
<img src="h4h.png"  float:right;float:left;width="100" height="100">

<a href="LogInPage.jsp">Login Page</a>
<a href="SignupPage.jsp">SignUp Page</a>
</div>
<br>
<br>
<br> 
<br> 
<div class="posts">

 <button type="button" onclick="up()">+</button>
 <br>
 <a id="votes">0</a>
 <br>
 <button type="button" onclick="down()">-</button>
	

 <script type="text/javascript">

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
   


</div>
</body>
</html>