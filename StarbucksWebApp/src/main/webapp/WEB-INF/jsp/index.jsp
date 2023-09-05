<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
<h2>Sign in or create an account...</h2>
</div>
</div>
<div class="rightcontent card">
<div class="loginform">
<div class="error" style="color: #4F8A10;"><% if(request.getAttribute("SuccessMessage") != null) { %><%= request.getAttribute("SuccessMessage") %>
<%} %></div>
<div class="error" style="color: #e75b52;"><% if(request.getAttribute("ErrorMessage") != null) { %><%= request.getAttribute("ErrorMessage") %>
<%} %></div>
<form action="/loginUser" method="post">
<div class="loginelement">
    <input type="text" placeholder="Username or email address" name="emailid" required><br />
   </div>
    <div class="loginelement">
    <input type="password" placeholder="Enter Password" name="pwd" required><br />
   </div>     
    <button class="submitbtn" type="submit">Login</button>
</form>
</div>
</div>
</div>
</body>
</html>