<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="string" value="Hello mani you are good"></c:set>

<c:set var="string1" value="You-are-super"></c:set>


<c:if test="${f:contains(string,'mani') }">

	<p>string found</p>

</c:if>

<c:if test="${f:containsIgnoreCase(string,'MANI') }">

	<p>Found</p>

</c:if>

<c:if test="${f:endsWith(string,'good') }">

	<h3>String ends with good</h3>
</c:if>

<p>${f:indexOf(string,'mani') }</p>

<p>Length of string : ${f:length(string) }</p>

<p>${f:replace(string,'mani','maniratnam') }</p>

<p>${f:startsWith(string,'Hello') }</p>


<p>${f:toLowerCase(string) }</p>

<p>${f:toUpperCase(string) }</p>


<c:set var="str2" value="${f:split(string1, '-')}" >  </c:set>
<c:set var="str3" value="${f:join(str2, ' ')}" ></c:set>
  
<p>String-3 : ${str3}</p>  

</body>
</html>