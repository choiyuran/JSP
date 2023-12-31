<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>

<div>
	<jsp:useBean id="user" class="member.MemberDTO"/>
	<jsp:setProperty property="*" name="user"/>

	<c:set var="dao" value="${MemberDAO.getInstance() }"/>
	<c:set var="row" value="${dao.update(user) }"/>
	
	<c:redirect url="/ex02-logout.jsp"/>
</div>
</body>
</html>