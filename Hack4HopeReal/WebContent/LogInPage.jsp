<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <style>

    a{
    border:1px solid black;
    background-color: lightgray;
    color: black;
    margin:60px;
    padding: 20px;
     }
     body{
       text-align: center;
       font-family: arial;
       background-color: #e6e9e9;
       margin: 0 auto;
       padding: 2em 2em 4em;
     }
     h1{
       padding-bottom: 0px;
       color: #4A55AF;
    }
     ul {
         list-style-type: none;
         margin: 0;
         padding: 0;
         overflow: hidden;
         border: 5px solid #4A55AF;
     }

     li {
         float: left;
     }

     li a {
         display: block;
         color: black;
         text-align: center;
         padding: 16px;
         text-decoration: none;
     }

     li a:hover {
         background-color: slategray;
     }

    </style>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Page</title>
    </head>

    <body>
      <h1>HACK4HOPE</h1>

    <br>
    <br>
    <br>

    <form action="Callingdb(login).jsp" method="get">
    Username: &nbsp; <input type ="text" name ="username"><br>
    <br>
    Password: &nbsp; <input type="text" name="pass"><br>
    <br>
    <input type="submit">
    <p>
    <ul>
      <li><a href="HomePage.jsp" >Home Page</a></li>
      <li><a href="PostPage.jsp">Discussion Forum</a></li>
      <li><a href="LogInPage.jsp">Login Page</a></li>
      <li><a href="SignupPage.jsp">SignUp Page</a></li>
    </ul>
    </p>
    </form>
