<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int postid = Integer.parseInt(request.getParameter("IDf")); 
int posti = Integer.parseInt(request.getParameter("lol"));
	out.println(postid);
	%>

<% easy.call.decrementUsefulComment(postid);%>




<%
    //String hi = "HomePage.jsp";
    response.sendRedirect("Viewcomments.jsp?ID=" + posti);
%>







</body>
</html>