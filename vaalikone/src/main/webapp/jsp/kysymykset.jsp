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

<link rel="stylesheet" type="text/css" href="mycssfilesomewhere.css">
<script src="myscriptfile.js"></script>

</head>
<body>
<h2>Kysymykset</h2>
<ol>
<c:forEach var="kysymys" items="${requestScope.kysymysList}" >
<li>${kysymys.id}: ${kysymys.breed} <a href='/delete?id=${kysymys.id}'>delete</a> <a href='/readtoupdate?id=${kysymys.id}'>update</a>
</c:forEach>
</ol>

<%
//Here we first get an ArrayList of arbitrary types 
ArrayList<?> someList=(ArrayList<?>)request.getAttribute("kysymyslist");
for (int i=0;someList!=null && i<someList.size();i++){
	Kysymys f=(Kysymys)someList.get(i); //Only cast the object - not list of objects
	out.println(f.getId()+": "+f.getKysymys()+"<a href='/delete?id="+f.getId()+"'>delete</a> <a href='/readtoupdate?id="+f.getId()+"'>update</a>");
}

%>

</body>
</html>