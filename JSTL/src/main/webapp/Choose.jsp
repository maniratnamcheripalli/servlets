<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<d:set var="age" value="${10}"> </d:set>
	
	<d:choose>
	
	<d:when test="${age<18}">
	
		<h4>Not Elgible to vote</h4>
	</d:when>
	
	<d:when test="${age>18}">
	
		<h4>You are Elgible to vote</h4>
	</d:when>	
	
	<d:otherwise>
	
		<h4>Not</h4>
	</d:otherwise>
	</d:choose>
	
	
	
</body>
</html>