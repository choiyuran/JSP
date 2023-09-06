<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<a href="${cpath }/artist/list"><button>가수</button></a>
<a href="${cpath }/album/list"><button>앨범</button></a>




</body>
</html>



