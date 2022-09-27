<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >

#col {
	height: 50px;
	text-align: center;
	background-color: gray;
}
</style>

</head>
<body>
<jsp:useBean id="book" class="com.practise.Booking"></jsp:useBean>
<div id="col">
		<table>
			<tr>
				<td><a href="Login.jsp">Home</a></td>
				<td style="padding-left: 330%"><a href="Login.jsp">ContactUs</a></td>
				<td style="padding-left: 350%"><a href="deleteCart.jsp">Cart</a></td>
				<td style="padding-left: 380%"><a href="Login.html">LogOut</a></td>
				<td style="padding-left: 400%"><a href="Login.jsp"><% out.println(session.getAttribute("name")); %></a></td>



			</tr>

		</table>

	</div>
<h2 style="text-decoration: none; color: red; text-transform: uppercase; text-shadow:  solid black;">Booked Successfully</h2>

<h3 style="color: blue; text-transform: uppercase;text-align: center;"><% 

int a=book.mul(Integer.parseInt(request.getParameter("cost")),Integer.parseInt(request.getParameter("quantity")));
out.println("Cost of total order is "+a);
%></h3>

</body>
</html>