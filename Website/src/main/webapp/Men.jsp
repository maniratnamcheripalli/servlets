<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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


	<ul class="align">

		<a href="AddToCart.html"><img height="250px"
			src="https://assets.ajio.com/medias/sys_master/root/20211228/S1Xx/61ca2ea0aeb26901101f13ee/-473Wx593H-441209114-indigo-MODEL.jpg"
			name="jeans"></a>
		<ul>
			<p>
			<h4>jeans name:Jeans</h4>
			</p>
			<p>
			<h4>jeans Number:123</h4>
			</p>
			<p>
			<h4>jeans cost: 1000</h4>
			</p>
		</ul>
		<ul></ul>
		<a href="AddToCart.html"><img height="250px"
			src="data:image/jpeg;base64,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"
			name="shirt"></a>
		<ul>
			<p>
			<h4>Shirt name:Shirt</h4>
			</p>
			<p>
			<h4>Shirt Number:456</h4>
			</p>
			<p>
			<h4>Shirt cost:800</h4>
			</p>
		</ul>

	</ul>

	<div
		style="width: 100%; height: 50%; background-color: aqua; text-align: center;">

		<a href="AddToCart.html"><button
				style="background-color: rgb(128, 255, 255); color: black; width: 100%; height: 100px; cursor: pointer; text-transform: uppercase;">
				<b>Add To Cart</b>
			</button></a>

	</div>
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