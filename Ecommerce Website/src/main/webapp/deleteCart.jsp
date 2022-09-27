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
	<c:query var="rs" dataSource="${sq}" > select * from ${sessionScope.name}</c:query>
	<h3 style="margin-left: 30%; text-transform: uppercase;">cart items</h3>
	
	<table id="move" border="collapse" width="100">
		<tr>
			<th>Name</th>
			<th>ProductId</th>
			<th>Cost</th>
		</tr>

		<d:forEach var="table" items="${rs.rows}">
			<tr>
				<td><d:out value="${table.name}"></d:out></td>
				<td><d:out value="${table.productId}"></d:out></td>
				<td><d:out value="${table.cost}"></d:out></td>
			</tr>
		</d:forEach>
	</table>
	
	<br><br>

	<form action="DeleteProduct.jsp" method="post">

		<table  id="move"  >
			<tr>

				<td><h1>Enter Product Details</h1></td>
			</tr>


			<tr>
				<td>Enter Product Name:</td>
				<td><input type="text" name="name" required="required"></td>
			</tr>

			<tr>
				<td>Enter Product Id:</td>
				<td ><input type="text" name="id" required="required"></td>

			</tr>
			<tr>
				<td><input type="submit" value="Delete" style="color: black"></td>
			</tr>

		</table>





	</form>
</body>
</html>

