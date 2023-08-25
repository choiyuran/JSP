<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day15-board.jsp</title>
<link href="${cpath }/style/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="header">
	<header>
	<h1>Day15-board</h1>
		<div class="menu">
			<ul>
				<c:if test="${empty login }">
					<li><a href="${cpath }/member/login.jsp">로그인</a></li>			
				</c:if>
				<c:if test="${not empty login }">
					<li><a href="${cpath }/member/logout.jsp">로그아웃</a></li>
				</c:if>
				<li><a href="${cpath }/board/list.jsp">게시글</a></li>
			</ul>
		</div>
	</header>
</div>

