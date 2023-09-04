<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }"/>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"/>
<c:set var="fileUtil" value="${FileUtil.getInstance() }"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
</head>
<body>

<header>
	<h1><a href="${cpath }">파일 업로드 게시판</a></h1>
	<hr>
	
	<div>
		<ul>
			<c:if test="${empty login }">
				<li><a href="${cpath }/member/login.jsp">로그인</a></li>
				<li><a href="${cpath }/member/join.jsp">회원가입</a></li>
			</c:if>
		
			<c:if test="${not empty login }">
				<li><a href="${cpath }/member/logout.jsp">로그아웃</a></li>
				<li><a href="${cpath }/member/mypage.jsp">마이페이지</a></li>
			</c:if>
			<li><a href="${cpath }/board/list.jsp">게시글</a></li>
		</ul>
	</div>
</header>
