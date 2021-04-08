<%
  	if (session.getAttribute("user") == null) {
    %><jsp:forward page="login.jsp" /><%    
	} 
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kotisivut</title>
</head>
<body>
    <div style="text-align: center">
        <h1>Vaalikone hallinta</h1>
        <br><br>
        <a href="/kysymykset">Kysymykset</a>
        <br><br>
        
       
        <b>${user.fullname} (${user.email})</b>
        <br><br>
        <a href="/logout">Logout</a>
    </div>
</body>
</html>