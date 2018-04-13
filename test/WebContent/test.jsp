<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="NewFile.css" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Amatic SC' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Inline' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee Shade' rel='stylesheet'>
<title>Insert title here</title>
</head>
<body>


<div class="sidebar">
    
   <a> <img src=C:/Users/morgan/Desktop/programing/cs_peter/H4HLogo72x72.png></a>
    
  <a href="#post a post">Ask a Question</a>
  <a href="#drafts">Drafts</a>
  <a href="#contact">Contact</a>
</div>


<div class="posts">
       <h1>HACK4HOPE</h1>
      <b>
        
    <table>
  <tr>
    <th >Post</th>
    <th>comments</th>
    <th>Username</th>
    <th>Date/post#</th>
    <th>Usefulness</th>
  </tr>
  <tr>
    <td href="link to post">how do i add things that you cant normally add?</td>
    <td>1</td>
    <td>mike</td>
    <td>50</td>
    <td>
    <button type="button" onclick="up()">+</button>
    <br>
	<a id="votes">0</a>
	<br>
	<button type="button" onclick="down()">-</button>
	</td>
  </tr>
  <tr>
    <td href="link to post">can i do this?</td>
    <td>3</td>
    <td>maddy</td>
    <td>94</td>
    <td>
    <button type="button" onclick="up()">+</button>
    <br>
	<a id="votes">0</a>
	<br>
	<button type="button" onclick="down()">-</button>
	</td>
  </tr>
  <tr>
    <td href="link to post">why am i doing this?</td>
    <td>6</td>
    <td>bill</td>
    <td>67</td>
    <td>
    <button type="button" onclick="up()">+</button>
    <br>
	<a id="votes">0</a>
	<br>
	<button type="button" onclick="down()">-</button>
	</td>
  </tr>
</table> 
          
    </b>
    </div>


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
   
	
</body>
</html>