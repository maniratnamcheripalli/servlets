<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: floralwhite">
	<c:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />
	<c:update var="rs" dataSource="${sq}" > delete from ${sessionScope.name} where productId=?
	
		<c:param value="${param.id}"></c:param>
	
	</c:update>
	<% 	response.sendRedirect("deleteCart.jsp"); %>

</body>
</html>