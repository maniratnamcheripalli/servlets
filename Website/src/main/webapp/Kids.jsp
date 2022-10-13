<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sq"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</style>
</head>
<body>
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

	<sq:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/website" user="root" password="root" />


	<sq:query var="rs" dataSource="${db}">select * from kids where id=1</sq:query>
	<c:forEach var="table" items="${rs.rows}">
		
			<img style="width:20%;height: 30%"  src="${table.img}">
	<ul class="align">

		<ul>
			<p>
			<h4>product name:<c:out value="${table.name}" /></h4>
			</p>
			<p>
			<h4>Shirt cost: <c:out value="${table.price}" /></h4>
			</p>
			
	<div
		style="width: 100%; height: 50%; background-color: aqua; text-align: center;">

		<a href="Adding.jsp?id=1"><button
				style="background-color: rgb(128, 255, 255); color: black; width: 100%; height: 100px; cursor: pointer; text-transform: uppercase;">
				<b>Add To Cart</b>
			</button></a>

	</div>
		</ul>
		</ul>
		</c:forEach>
	
		<ul></ul>
		
		
	<sq:query var="rs" dataSource="${db}">select * from kids where id=2</sq:query>
	<c:forEach var="table" items="${rs.rows}">
		
			<img style="width:20%;height: 30%"  src="${table.img}">
	<ul class="align">

		<ul>
			<p>
			<h4>product name:<c:out value="${table.name}" /></h4>
			</p>
			<p>
			<h4>Shirt cost: <c:out value="${table.price}" /></h4>
			</p>
			
	<div
		style="width: 100%; height: 50%; background-color: aqua; text-align: center;">

		<a href="Adding.jsp?id=2"><button
				style="background-color: rgb(128, 255, 255); color: black; width: 100%; height: 100px; cursor: pointer; text-transform: uppercase;">
				<b>Add To Cart</b>
			</button></a>

	</div>
		</ul>
		</ul>
		</c:forEach>
		

	
	<br>
	<br>
	<div
		style="width: 100%; height: 50%; background-color: aqua; text-align: center;">

		<a href="Location.jsp"><button
				style="background-color: rgb(128, 255, 255); color: black; width: 100%; height: 100px; cursor: pointer;">
				<b>Book</b>
			</button></a>

	</div>


</body>
</html>