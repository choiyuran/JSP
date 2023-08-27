<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board_file.*, members.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="fileUtil" value="${FileUtil.getInstance() }"/>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }"/>
<c:set var="memberDAO" value="${MemberDAO.getInstance() }"/>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_file</title>
<style> 
 	a { 
 		text-decoration: none;
 		color: inherit;
 	} -->
 	a:hover { 
 		text-decoration: underline;
	}
 	header {
 		width: 800px; 
		margin: auto; 
		background-color: #dadada; 
 	} 
 	h1 { 
 		text-align: center; 
 	} 
 	nav > ul { 
 		display: flex; 
 		list-style: none; 
 		padding-left: 0; 
 		justify-content: space-around; 
 		margin-bottom: 0; 
 		padding: 10px; 
 	} 
 	.body {
 		width: 800px; 
 		height:700px; 
 		margin: auto; 
		background-color: #dadada; 
 	} 
 	.form { 
 		background-color: #eee; 
 		text-align: center; 
		width: 500px; 
 		height:500px; 
 		margin: auto; 
	} 
	p { 
		margin-top: 0; 
 	} 
	table {
		border-collapse: collapse;
		border: 1px solid black;
		margin: auto;
	}
	th, td {
		border: 1px solid black;
		padding: 15px;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">board_file</a></h1>
	<nav>
		<ul>
			<c:if test="${empty login }">
				<li><a href="${cpath }/members/login.jsp">로그인</a></li>			
			</c:if>
			<c:if test="${not empty login }">
				<li><a href="${cpath }/members/logout.jsp">로그아웃</a></li>
				<li><a href="${cpath }/members/mypage.jsp">마이페이지</a></li>
			</c:if>
			<li><a href="${cpath }/board_file/list.jsp">목록</a></li>
			<li><a href="${cpath }/board_file/add.jsp">글쓰기</a></li>
		</ul>
	</nav>
</header>