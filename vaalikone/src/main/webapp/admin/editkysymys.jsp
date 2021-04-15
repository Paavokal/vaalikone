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
<h2>Muokkaa kysymystä</h2>
<form action='update' method='post'>
Kysymys id: <input type='text' name='id' value='${requestScope.kysymys.id}' readonly><br> 
Kysymys: <input type='text' name='kysymys' value='${requestScope.kysymys.kysymys}'><br>
<input type='submit' name='ok' value='Send'> 
</form>
</body>
</html>