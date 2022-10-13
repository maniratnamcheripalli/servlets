
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	padding-bottom: 10%
}

#non {
	margin-left: 30%;
}

form {
	border: medium solid black;
}
</style>
</head>


<body style="background-color: floralwhite">

	<form action="BookedSuccessfully.jsp" method="post">

		<table id="non">
			<tr>

				<td><h1>Enter Location Details</h1></td>
			</tr>
			<tr>
				<td>Enter Your Country:</td>
				<td><input type="text" name="country" required="required"></td>
			</tr>

			<tr>
				<td>Enter State:</td>
				<td><input type="text" name="state" required="required"></td>

			</tr>
			<tr>
				<td>Enter Mobile Number:</td>
				<td><input type="text" name="mobile" required="required"></td>

			</tr>
			<tr>
				<td>Enter PostalCode:</td>
				<td><input type="text" name="pin" required="required"></td>

			</tr>
			<tr>
				<td>Enter Land Mark:</td>
				<td><input type="text" name="land" required="required"></td>

			</tr>


			<tr>
				<td><input type="submit" value="Add" style="color: black"></td>
			</tr>

		

		</table>

	</form>
</body>
</html>

