<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.ArrayList" %>
     <%@page import = "com.app.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
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
<li>Profile</li>
</ul>
</div>
</div>
<div class="rightcontent card">
<% 
ArrayList<User> newArray = (ArrayList<User>)session.getAttribute("userProfile");
System.out.println(newArray);
 if(session.getAttribute("userProfile") != null)
 {
	 
 ArrayList<User> a = (ArrayList<User>)session.getAttribute("userProfile"); 
 System.out.println(a);  %>
 <div class="userdetails">
<%for(User user : a)
 { 
%>
	<p><b>First Name:</b> <%out.println(user.getFirstName()); %> </p>
	<p><b>Last Name:</b> <%out.println(user.getLastName()); %> </p>
	<p><b>Email Id:</b> <%out.println(user.getEmailID()); %></p>									
 <% }%>

<% } else { %>
	<div style =" text-align: center;
    margin-top: 40%;"><h1>Create a profile</h1> </div>
<%  } %>

<% if(session.getAttribute("cardNumber") != null) {
	%> <div><p><b>Card Number: </b><% out.println(session.getAttribute("cardNumber"));%></p></div>
<% }
else {
	%> <p> <% out.println("no cards added"); %> </p>
	<% 
}%>
</div>

</div>
</div>
</body>
</html>