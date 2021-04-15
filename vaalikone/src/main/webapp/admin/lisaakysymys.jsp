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
<h2>Lisää kysymys</h2>
<form action='/lisaa' method='post'>
Kysymys id: <input type='text' name='id' value=""><br> 
Kysymys<br>
<textarea name="kysymys" rows="10" cols="80">Kirjoita tähän kysymys</textarea>
<br><br>
<input type='submit' name='ok' value='Send'> 
</form>
<br>
<br>

<a href='/admin/admin'>Takaisin hallintasivulle</a>
</body>
</html>