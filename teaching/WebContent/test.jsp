<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import = "teaching.user" %>
<%@ page import = "java.util.*" %>

<title>This is a teaching page </title>
</head>
<style>
body {
    background-color: lightblue;
}
b{
	border-style: solid;
	



}

</style>


<body background = #F0F8FF>

this is blank space 

<br>

<br>
<script>


</script>

<%   List<user> list = new ArrayList<user>();


%>


<%= teaching.test.ha("Hello") %>


<% for(int i = 0; i < 10; i++){
	//out.print(i);
	
	
	String name = i + "a";
	String email = i + "b";
	out.print("<br>");
	user u = new user(name,email);
	list.add(u);
		
}

%>
Some stuff 
More Stuff 
<br>

<%for(int i = 0; i < list.size();i++){
	out.print("<b>");
	out.print(list.get(i).getname());
	out.print("<br>");
	out.print(list.get(i).getemail());
	out.print("<br>");
	out.print("</b>");
}
	
	
	
	
	
	
	%>


</body>
</html>