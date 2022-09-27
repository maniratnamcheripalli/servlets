<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"    %>
    

 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Enter into jsp</h1>

<%!  //Declarative tag 

int k=3;
%>

<%= "Welcome" %>

<% //Scriptlet tag 

String i=request.getParameter("name");
out.println("<b>"+"Your name is "+i + "</b>"+ "<br>");
out.println("k ="+ k);
String param=config.getInitParameter("Mani");
String name=config.getServletName();
%>

<h4>Servlet Config</h4>

<%

out.println("Servlet name is: "+name+ "<br>");
out.println("Mani need to "+param+"<br>");
%>
<h4>Servlet Context</h4>

<%
String ty=application.getInitParameter("Raju");
out.println("Raju is "+ty);
%>
<h4> For Page context click </h4>


<%
String company=request.getParameter("company");

pageContext.setAttribute("company", company, pageContext.SESSION_SCOPE);

%>
<a href="Second.jsp">Click</a>

</body>
</html>