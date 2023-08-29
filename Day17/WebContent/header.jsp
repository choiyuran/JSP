<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board2.*, member.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }"/>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"/>
<c:set var="fileUtil" value="${FileUtil.getInstance() }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day17 - board2</title>
<style>

</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">Day17 - board2</a></h1>
	
	<nav>
		<ul>
		<c:if test="${empty login }">
			<li><a href="${cpath }/member/login.jsp">로그인</a></li>		
			<li><a href="${cpath }/member/join.jsp">회원가입</a></li>		
		</c:if>
		<c:if test="${not empty login }">
			<li>
				<a href="${cpath }/member/logout.jsp">로그아웃(${login.userid }님)</a>
			</li>		
			<li><a href="${cpath }/board/write.jsp">새 글 작성</a></li>
			<li><a href="${cpath }/member/mypage.jsp">마이페이지</a></li>
		</c:if>
		<li><a href="${cpath }/board/list.jsp">글 목록</a></li>
		</ul>
	</nav>
</header>




