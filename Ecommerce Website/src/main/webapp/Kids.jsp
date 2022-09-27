<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >

.align{
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
	
		<a href="AddToCart.html"><img height="250px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJcz4jKb3rQkNJA4a0mKhpmpRaQPc6SFh99DaVZOsS&s" name="jeans" ></a>
		<ul>
			<p><h4>Shirt name:Kid shirt </h4></p>
			<p><h4>Shirt Number:12</h4></p>
			<p><h4>Shirt cost: 1000</h4></p>
		</ul>	
		<ul></ul>
		<a href="AddToCart.html"><img height="250px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNgw2J7Z7sj_kqv4ptZqHAgLx9cW2mKVQ_Qw&usqp=CAU" name="shirt" ></a>
		<ul>
			<p><h4>Shirt name:Kid Shirt </h4></p>
			<p><h4>Shirt Number:45</h4></p>
			<p><h4>Shirt cost:800</h4></p>
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