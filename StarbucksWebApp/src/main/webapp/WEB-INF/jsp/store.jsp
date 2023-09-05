<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store</title>
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
<li>Stores</li>
</ul>
</div>
</div>
<div class="rightcontent card">
<div style =" text-align: center;
    margin-top: 10%;"><h1>Nearby Starbucks stores</h1> 
    <iframe width="600" height="450" frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/search?q=Starbucks&key=API_KEY_HERE" allowfullscreen></iframe></div>
</div>
</div>
</body>
</html>