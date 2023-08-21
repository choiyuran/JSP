<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="dao" value="${MemberDAO.getInstance() }"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session_login</title>
<!-- <style> -->
<!-- 	header, main { -->
<!-- 		width: 900px; -->
<!-- 		margin: auto; -->
<!-- 		background-color: yellow; -->
<!-- 	} -->
<!-- 	h1 { -->
<!-- 		text-align: center; -->
<!-- 		padding: 20px; -->
<!-- 		border-bottom: 1px solid #dadada; -->
<!-- 	} -->
<!-- 	nav > ul { -->
<!-- 		list-style: none; -->
<!-- 		padding-left: 0; -->
<!-- 		display: flex; -->
<!-- 		justify-content: space-between;	 -->
<!-- 	} -->
<!-- 	nav li { -->
<!-- 		font-size: 1.1em; -->
<!-- 		font-weight: bold; -->
<!-- 		margin: 5px 25px; -->
<!-- 	} -->
<!-- 	a { -->
<!-- 		text-decoration: none; -->
<!-- 	} -->
			
<!-- </style> -->
</head>
<body>

<header>
	<h1><a href="${cpath }">Session_login</a></h1>
		
	<nav>
		<ul>
			<c:if test="${empty user }">
				<li><a href="${cpath }">로그인</a></li>
			</c:if>
			<c:if test="${not empty user }">
				<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
				<li><a href="${cpath }/mypage.jsp">${user.userid }님</a></li>
			</c:if>
			<li>
				<a href="${cpath }/list.jsp">회원목록</a>
			</li>
			<li>
				<a href="${cpath }/join.jsp">회원가입</a>
			</li>
			
		</ul>
	</nav>
</header>