<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.align {
	display: flex;
}
#col {
	height: 50px;
	text-align: center;
	background-color: gray;
}

#move {
	margin-left: 30%;
}

form {
	border: medium solid black;
}
</style>
</head>

<div id="col">
	<table>
		<tr>
			<td><a href="Login.jsp">Home</a></td>
			<td style="padding-left: 380%"><a href="Login.jsp">ContactUs</a></td>
			<td style="padding-left: 400%"><a href="Login.jsp">Cart</a></td>
			<td style="padding-left: 420%"><a href="Login.html">LogOut</a></td>

		</tr>

	</table>

</div>

<body style="background-color: floralwhite">
	<c:setDataSource var="sq" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />
	${sessionScope.name}
	<c:query var="rs" dataSource="${sq}"> select * from ${sessionScope.name}</c:query>
	<h3 style="margin-left: 30%; text-transform: uppercase;">cart
		items</h3>

	<d:forEach var="table" items="${rs.rows}">
		<img style="width: 20%; height: 30%" src="${table.img}">
		<ul class="align">

			<ul>
				<p>
				<h4>
					product name:
					<d:out value="${table.name}" />
				</h4>
				</p>
				<p>
				<h4>
					Shirt cost:
					<d:out value="${table.cost}" />
				</h4>
				</p>
	</d:forEach>
	<ul class="align">
		<div>

		<a href="Location.jsp"><button
				style="background-color: rgb(128, 255, 255); color: black; width: 100%; height: 30px; cursor: pointer; text-transform: uppercase;">
				<b>Buy Now</b>
			</button></a>

	</div>
	</ul>
</body>
</html>

