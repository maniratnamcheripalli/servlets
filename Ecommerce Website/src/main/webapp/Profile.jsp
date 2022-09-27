<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sq"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sq:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />
		
	<sq:transaction dataSource="${db}">
		<sq:update var="up">insert into profiles values(?,?,?,?)
			<sq:param value="${param.name}"></sq:param>
			<sq:param value="${param.number}"></sq:param>
			<sq:param value="${param.date}"></sq:param>
			<sq:param value="${param.pass}"></sq:param>
		</sq:update>
	<sq:update var="cr">create table ${param.date}(name varchar(20),ProductId int,cost int)</sq:update>
	</sq:transaction>
	<p style="text-decoration: underline; font-style: italic;font-weight: bolder; color: red;">Saved Successfully<p>
	
	<jsp:include page="Login.html"></jsp:include>

</body>
</html>