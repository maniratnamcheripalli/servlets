<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body style="background-color: floralwhite">
	<c:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />
	String cart= ${sessionScope.name};
	<c:update var="rs" dataSource="${sq}"> insert into ${sessionScope.name} values(?,?,?)
		<c:param value="${param.P_name}"></c:param>
		<c:param value="${param.id}"></c:param>
		<c:param value="${param.cost}"></c:param>

	</c:update>
	<%
	response.sendRedirect("addedCart.jsp");
	%>

</body>
</html>