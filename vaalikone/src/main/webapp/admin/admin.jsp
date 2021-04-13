
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hallinta</title>

<%@ include file="/parts/header.jsp" %>  

</head>
<body>
    <div style="text-align: center">
        <h1>Vaalikone hallinta</h1>
        <br><br>     
        <a href="/naytakysymykset">NÄYTÄ KYSYMYKSET</a>
        <a href="/admin/lisaakysymys.jsp">Lisää kysymys</a>
        <br><br>
        
        <table>
		<tr><th>User</th> <th>Email</th></tr>
		<tr><td>${user.fullname}</td> <td>${user.email}</td></tr>	        
        </table>
        <br><br>       
        <%
			String message = null;
			String sessionID = null;
			Cookie[] cookies = request.getCookies();
			if(cookies != null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("message")) message = cookie.getValue();
				if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
		}
		}
		%>
<table>
<tr><th>Cookie</th> <th>Value</th></tr>
<tr><td>message</td> <td> <%=message%> </td></tr>
<tr><td>JSESSIONID<td> <%=sessionID %></td></tr>
</table>


<br><br>
        
        
        
        <a href="/logout" name='logoutlink'>Logout</a>
    </div>
</body>
</html>