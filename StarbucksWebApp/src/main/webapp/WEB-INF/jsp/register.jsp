<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="styles/main.css" type="text/css">
</head>
<body>
<div class="container">
<div class="leftcontent card">
<div class="header">
<div class="headerelement">
<img src="resources/images/starbuckshomelogo.png" width="40px" height="40px" />
</div>
<div class="headerelement"><a href="/index">Sign in</a></div>
<div class="headerelement"><a href="/register">Join now</a></div>
</div>
<div class="headercontent">
<h2>Create an account...</h2>
</div>
</div>
<div class="rightcontent card">
<div class="registerform">
<div class="error" style="color: #e75b52;"><% if(request.getAttribute("ErrorMessage") != null) { %><%= request.getAttribute("ErrorMessage") %>
<%} %></div>
<form action="/addUser" method="post">	
    <p>PERSONAL INFORMATION</p>
     <div class="loginelement">
	 <input class="input" type="text" name="fname" placeholder="First name" required/><br/>
	 </div>
	  <div class="loginelement">
	 <input class="input" type="text" name="lname" placeholder="Last name" required/><br />
	 </div>
	  <div class="loginelement">
	 <input class="input" type="text" name="zipcode" placeholder="Zip code" required/>	<br />
	 </div>
	 <p>ACCOUNT SECURITY</p>
	  <div class="loginelement">
	 <input class="input" type="text" name="email" id="email" placeholder="Email address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required/><br />
	 </div>
	  <div class="loginelement">
	 <input class="input" type="password" name="password" placeholder="Password" required/>	<br />
	</div>
	<button class="submitbtn" type="submit">Create account</button>		
	
</form>
</div>
</div>
</div>
</body>
</html>