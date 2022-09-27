<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>hello</h3>
	
	<%
	out.println(request.getAttribute("name"));
	
	%>
	<c:out value="welcome"></c:out>
	
	<c:out value="${name }"></c:out><br><br>

	<c:set var="number" scope="session" value="${600*2}"></c:set>
	
	<c:set var="num1" value="${200}"></c:set>
	Before removing:<c:out value="${num1}"></c:out><br><br>
	<c:remove var="num1"/>
	
	After Removing:<c:out value="${num1}"></c:out><br><br>
	
	<h3>If</h3>
	
	<c:if test="${number>1000 }">
	
		Income is: <c:out value="${number}"></c:out>
	
	</c:if>
	
	<h3>forEach</h3>
	
	
	<c:forEach  items="${students}" var="s">
	
		${s} <br/>
	
	</c:forEach>
	
	
	<h3>forToken</h3>
	
	
	<c:forTokens items="Mani-Raju-Mukesh" delims="-" var="s">
	
		<c:out value="${s}"></c:out>
	</c:forTokens>
	
</body>
</html>