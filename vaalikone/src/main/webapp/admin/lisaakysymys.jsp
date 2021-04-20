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
<h1>Lisää Väittämä</h1>
<form action='/lisaa' method='post'>
Väittämä id: <input type='text' name='id' value=""placeholder="Jättämällä tämän kentän tyhjäksi otetaan käyttöön seuraava vapaa numeron"><br> 
Väittämä<br>
<textarea name="kysymys" rows="10" cols="80">Kirjoita tähän väittämä</textarea>
<br><br>
<input class='input-paivita' type='submit' name='ok' value='Lisää'> 
</form>
<br>
<br>

<a href='/admin/admin'>Takaisin hallintasivulle</a>
<br><br>
</body>
</html>