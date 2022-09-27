<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="sq" uri="http://java.sun.com/jsp/jstl/sql" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sq:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/mani" user="root"
		password="root" />
<c:set var="se" value="2"></c:set>
<sq:update dataSource="${db}" var="in">update name set name="Raju" where id=?

<sq:param value="${se}"></sq:param>
</sq:update>

<sq:query var="in" dataSource="${db }" > select * from name</sq:query>

<table border="2">

<tr>
<td>id</td>
<td>name</td>

</tr>

<c:forEach var="l" items="${in.rows }">

<tr>
<td><c:out value="${l.id }"></c:out></td>
<td><c:out value="${l.name }"></c:out></td>
</tr>

</c:forEach>



</table>


</body>
</html>