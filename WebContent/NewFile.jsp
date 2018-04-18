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
    <button type="button" onclick="count(1)">+</button>
    <br>
	<a id="count">0</a>
	<br>
	<button type="button" onclick="count(0)">-</button>
	</td>
  </tr>

</table> 
          
    </b>
    </div>


 <script type="text/javascript">
 Vue.component('post', {
	  template: "#post-template",
	  props: ['post'],
	  data: function () {
	    return {
	      upvoted: false,
	      downvoted: false
	    };
	  },
	  methods: {
	    upvote: function () {
	      this.upvoted = !this.upvoted;
	      this.downvoted = false;
	    },
	    downvote: function () {
	      this.downvoted = !this.downvoted;
	      this.upvoted = false;
	    }
	  },
	  computed: {
	    votes: function () {
	      if (this.upvoted) {
	        return this.post.votes + 1;
	      } else if (this.downvoted) {
	        return this.post.votes - 1;
	      } else {
	        return this.post.votes;
	      }
	    }
	  }
	});

	var vm = new Vue({
	  el: "#app",
	  data: {
	    posts: [{
					title: "A post for our reddit demo starting at 15 votes",
					votes: 15
				},
				{
					title: "Try out the upvoting, it works, I promise",
					votes: 53
				},
				{
					title: "coligo is the bomb!",
					votes: 10
				}]
	  }
	});
    </script>
    
   <div id="app">
  <div class="container-fluid">
    <ul class="list-group">
      <post v-for="post in posts" :post="post"></post>
    </ul>
  </div>
</div>

<template id="post-template">
	<li class="list-group-item">
		<i class="glyphicon glyphicon-chevron-up" @click="upvote"></i>
		<span class="label label-primary">{{ votes }}</span>
		<i class="glyphicon glyphicon-chevron-down" @click="downvote"></i>
		<a>{{ post.title }}</a>
	</li>
</template>
	
</body>
</html>