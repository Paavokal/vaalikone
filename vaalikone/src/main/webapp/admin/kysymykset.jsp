<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Kysymys" %>   
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kysymykset</title>

<%@ include file="/parts/header.jsp" %>  

</head>
<body>
<div class="container">
<h2>VÄITTÄMÄT</h2>


<c:forEach var="kysymys" items="${requestScope.kysymyslist}" >


<div class="kysymys ${kysymys.id}" >
${kysymys.id}. ${kysymys.kysymys}<br>
<div class="radio-label-vertical-wrapper">
    <div class="form-group">
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="1" required>En ole samaa mieltä</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="2" required>Jokseenkin eri mieltä</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="3" required>En osaa sanoa</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="4" required>Jokseenkin samaa mieltä</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="5" required>Olen täysin samaa mieltä</label>

    </div>
  </div>


<a href='/poista?id=${kysymys.id}'>delete</a> <a href='/getupdate?id=${kysymys.id}'>update</a>
</div>
<br>
</c:forEach>







<br><br>
<a href='/admin/admin'>Takaisin hallintasivulle</a>

</div>
</body>
</html>