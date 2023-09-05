<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
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
<li><a href="/dashboard">My Cards</a></li>
<li>My Cards Pay</li>
</ul>
</div>
</div>
<div class="rightcontent card">
<div class="cardbalance">
<div class="success" style="color: #4F8A10;"><% if(request.getAttribute("SuccessMessage") != null) { %><%= request.getAttribute("SuccessMessage") %>
<%} %></div>
<div class="error" style="color: #e75b52;"><% if(request.getAttribute("ErrorMessage") != null) { %><%= request.getAttribute("ErrorMessage") %>
<%} %></div>
<h1>Card Balance: $<% if(session.getAttribute("CardBalance") != null) { %><%= session.getAttribute("CardBalance") %>
<%} %></h1>
</div>
</div>
</div>
</body>
</html>