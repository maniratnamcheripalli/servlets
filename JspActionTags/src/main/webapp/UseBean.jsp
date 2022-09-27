<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="obj" class="com.practise.Java"></jsp:useBean>



<jsp:setProperty property="*" name="obj"/><br><br>

<jsp:getProperty property="name" name="obj"/><br><br>

<jsp:getProperty property="country" name="obj"/><br><br>

<%

int d=obj.add(Integer.parseInt(request.getParameter("num1")),Integer.parseInt(request.getParameter("num2")));
out.println("Sum of two number is: "+d +"<br>");


int c=obj.cube(Integer.parseInt(request.getParameter("num1")));
out.println("cube of a number is: "+c+ "<br>");

%>
</body>
</html>