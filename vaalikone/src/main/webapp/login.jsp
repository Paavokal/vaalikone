<%
  	if (session.getAttribute("user") != null) {
    %><jsp:forward page="/admin/admin.jsp" /><%    
	} 
%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="utf-8">
<title>Login</title>
<%@ include file="/parts/header.jsp" %>  
</head>
<body>
<div class="container">
    <div style="text-align: center">
        <h2 style=>Admin Login</h2>
        <form action="login" method="post">
            <label for="email">Email:</label>
            <input name="email" size="30" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="30" />
            <br>${message}
            <br><br>           
            <button type="submit">Login</button>
        </form>
    </div>
    </div>
</body>



</html>