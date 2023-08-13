<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.StudentDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day09_student</title>
<style>
	body {
		background-color: #f5f6f7;
	}
	header {
		border-bottom: 0.5px solid #dadada;
		
	}
	header, main {
		width: 900px;
		margin: 0 auto;
		background-color: white;
		padding: 10px;
		box-sizing: border-box;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}
	h1 {
		text-align: center;
	}
	nav > ul {
		list-style: none;
		padding-left: 0;
		display: flex;
		justify-content: space-around;
		font-weight: bold;
		font-size: 1.3em;
	}
	/* list.jsp 테이블 스타일 */
	table {
		border-collapse: collapse;
		border: 1px solid black;
		margin: auto;
	}
	th, td {
		border: 1px solid grey;
		padding: 10px 30px;
	}
	th {
		background-color: #dadada;
	}
</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">Day09_student</a></h1>
	
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">목록</a></li>
			<li><a href="${cpath }/add.jsp">추가</a></li>
		</ul>
	</nav>
</header>