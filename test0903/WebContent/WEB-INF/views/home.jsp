<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
<h1>home.jsp</h1>
<hr>

<h3>
	Hello!<br>
	<fmt:formatDate value="${date }" pattern="yyyy-MM-dd a hh:mm"/>
</h3>

<p>
	<a href="${cpath }/board"><button>게시판</button></a>
</p>
</body>
</html>