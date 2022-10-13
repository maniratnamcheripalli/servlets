<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#id{
	margin-right: 30%;
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
		<table id="id">
			<tr>
				<td><a href="Login.jsp">Home</a></td>
				<td style="padding-left: 330%"><a href="Login.jsp">ContactUs</a></td>
				<td style="padding-left: 350%"><a href="deleteCart.jsp">Cart</a></td>
				<td style="padding-left: 380%"><a href="Login.html">LogOut</a></td>
				<td style="padding-left: 400%"><a href="Login.jsp"><% out.println(session.getAttribute("name")); %></a></td>

			</tr>

		</table>

	</div>
<p style="text-decoration: underline; font-style: italic;font-weight: bolder; color: red;"><b>saved Successfully</b><p>
<jsp:include page="AddToCart.html"></jsp:include>
</body>
</html>