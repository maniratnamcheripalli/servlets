<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SQL</title>
</head>
<body>

	<c:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/registration" user="root"
		password="root" />

	<c:query var="rs" dataSource="${sq}"> select * from user</c:query>
	<table border="collapse" width="100">
		<tr>
			<th>Name</th>
			<th>Country</th>
		</tr>

		<d:forEach var="table" items="${rs.rows}">
			<tr>
				<td><d:out value="${table.name}"></d:out></td>
				<td><d:out value="${table.country}"></d:out></td>
			</tr>
		</d:forEach>
	</table>

</body>
</html>