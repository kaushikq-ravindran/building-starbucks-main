<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Card</title>
<script src="js/main.js"></script>
<link rel="stylesheet" href="styles/dashboard.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
<div class="leftcontent card">
<div class="header">
<%@ include file="header.jspf" %>
</div>
<div class="headercontent"> 
<ul class="submenuoptions">
<li><a href="/addcard">Add Card</a></li>
<li>Delete Card</li>
<li>Billing</li>
<li>Passcode</li>
<li>About | Terms</li>
<li>Help</li>
</ul>
</div>
</div>
<div class="rightcontent card addcard">
<div class="carderror"><% if(request.getAttribute("addCardMessage") != null) { %><%= request.getAttribute("addCardMessage") %>
<%} %></div> 
<div class="carderror"><% if(request.getAttribute("ErrorMessage") != null) { %><%= request.getAttribute("ErrorMessage") %>
<%} %></div>
<form action="/addCard" method="post">	
    <div class="maincard">
    <div class="cardleft">
    <img src="resources/images/starbuckshomelogo.png" width="40px" height="40px" />
    </div>
    <div class="cardright">
	 <input class="cardinput" type="text" pattern="\d*" maxlength="9" name="cardNumber" placeholder="Starbucks Card number" required/><br/>
	 <input class="cardinput" type="text" pattern="\d*" maxlength="3" name="cardCode" placeholder="Security code" required/><br />
	</div>
	<div class="cardbottom"></div>
	</div>
	<button style=" margin-right: 10%;" class="submitbtn" type="submit">Add Card</button>		
</form>
</div>
</div>	
</body>
</html>