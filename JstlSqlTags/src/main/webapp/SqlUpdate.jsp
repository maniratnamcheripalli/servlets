<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<s:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/registration" user="root"
		password="root" />
<c:set var="name" value="india"></c:set>

<s:update var="up" dataSource="${sq}">update user set name='Mani' where country=?

<s:param value="${name}"></s:param>

</s:update>

<s:update var="in" dataSource="${sq}">insert into user values("Mukesh","India")</s:update>

<s:query var="rs" dataSource="${sq}">select * from user</s:query>
	<table border="2" width="100">
		<tr>
			<td>Name</td>
			<td>Country</td>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<td><c:out value="${table.name}"></c:out></td>
				<td><c:out value="${table.country}"></c:out></td>
			</tr>
		</c:forEach>


	</table>
	






</body>
</html>