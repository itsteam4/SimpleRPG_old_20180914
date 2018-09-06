<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world! asdfasdf 
</h1>
<P>  The time on the server is ${serverTime}. </P>
<c:forEach var="names" items="${names}">
	${names}<br>
</c:forEach>
</body>
</html>
