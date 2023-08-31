<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }"/>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"/>
<c:set var="fileUtil" value="${FileUtil.getInstance() }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<link rel="stylesheet" href="${cpath }/style/style.css" type="text/css">

</head>
<body>

<header>
	<div class="top">
		<h1>
			<a href="${cpath }">게시판 - Board</a>
		</h1>
		<c:if test="${not empty login }">
			<p>${login.userid }(${login.username })님</p>
		</c:if>
	</div>
	
	<div class="menu">
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