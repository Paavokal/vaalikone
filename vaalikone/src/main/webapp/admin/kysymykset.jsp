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
<h1>Vaalikoneen väittämät</h1><br>


<c:forEach var="kysymys" items="${requestScope.kysymyslist}" >


<div class="kysymys ${kysymys.id}" >
<h3>${kysymys.id}. ${kysymys.kysymys}</h3><br>

<div class="radio-label-vertical-wrapper">
    <div class="form-group">
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="1" required>En ole samaa mieltä</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="2" required>Lähes eri mieltä</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="3" required>En osaa sanoa</label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="4" required>Lähes samaa mieltä </label>
      <label class="radio-label-vertical">
        <input type="radio" name="radio-${kysymys.id}" value="5" required>Olen täysin samaa mieltä</label>

    </div>
  </div>

<br>
<a class="ud" href='/poista?id=${kysymys.id}'>poista</a> <a class="ud" href='/getupdate?id=${kysymys.id}'>päivitä</a>
<br>
</div>
<br><br>
<hr>
</c:forEach>







<br><br>
<a href='/admin/admin'>Takaisin hallintasivulle</a>  <a href="/admin/lisaakysymys.jsp">Lisää väittämä</a>
<br><br>

</div>
</body>
</html>