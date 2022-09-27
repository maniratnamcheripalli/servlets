<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String country=request.getParameter("country");

%>


<jsp:forward page="Connecting.jsp">

<jsp:param value='<%= request.getParameter("name")%>' name="name"/>
<jsp:param value='<%= request.getParameter("country")%>' name="country"/>

</jsp:forward>

</body>
</html>