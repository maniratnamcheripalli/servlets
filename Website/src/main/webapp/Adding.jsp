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

<body style="background-color: floralwhite">
	<c:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />

<c:query var="rs" dataSource="${sq}">select * from kids where id=?
	<c:param value="${param.id}"></c:param>

</c:query>

<d:forEach var="table" items="${rs.rows}">

<c:update var="rs" dataSource="${sq}"> insert into ${sessionScope.name} values(?,?,?,?)
		<c:param value="${table.id}"></c:param>
		<c:param value="${table.name}"></c:param>
		<c:param value="${table.img}"></c:param>
		<c:param value="${table.price}"></c:param>

	</c:update>
		
			<img style="width:20%;height: 30%"  src="${table.img}">
	<ul class="align">

		<ul>
			<p>
			<h4>product name:<d:out value="${table.name}" /></h4>
			</p>
			<p>
			<h4>Shirt cost: <d:out value="${table.price}" /></h4>
			</p>
			
	
		</ul>
		</ul>
		</d:forEach>
		
		<% response.sendRedirect("Login.jsp") ;%>
</body>
</html>