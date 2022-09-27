<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= "Connecting jsp... "%><br>


<% out.println("your name is "+  request.getParameter("name")+"<br>");

out.println("your country is "+  request.getParameter("country"));

%>
</body>
</html>