<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaalikone</title>

<%@ include file="/parts/header.jsp" %>  

</head>
<body>
<div class="container-edit">
<h2>Muokkaa väittämää</h2>
<form action='update' method='post'>
Väittämä id: <input type='text' name='id' value='${requestScope.kysymys.id}' readonly><br> 
Väittämä: <input type='text' name='kysymys' value='${requestScope.kysymys.kysymys}'><br>
<input class='input-paivita' type='submit' name='ok' value='Muokkaa'> 
</form><br><br>
<a href='/admin/admin'>Takaisin hallintasivulle</a>
<br><br>
</div>
</body>
</html>