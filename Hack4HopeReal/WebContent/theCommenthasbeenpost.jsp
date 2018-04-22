<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page import = "java.util.*" %>
<%@page import = "easy.User" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Comment Has Been Posted!</title>
</head>
<body background = Gray.jpg>

<%
//Created By Nick stone 
  String usn = request.getParameter("usn");
  String title = request.getParameter("PID");
	
  String content = request.getParameter("Commentcontent");

  String incontent = easy.sortings.vulgarcheck(content);
  
  
  int pid = Integer.valueOf(String.valueOf(title));
%>

<%easy.call.insertComments(usn,pid,incontent); %>


<% response.sendRedirect("HomePage.jsp"); %>


</body>
</html>