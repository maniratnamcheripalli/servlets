<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<%= "Sum of two number is: "+ 7+8 %>
<h4>Page context</h4>

<%
out.println("Company name is: ");
out.println(pageContext.getAttribute("company", pageContext.SESSION_SCOPE));

%>

</body>
</html>