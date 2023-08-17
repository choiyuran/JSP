<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.ShoppingDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="dao" value="${ShoppingDAO.getInstance() }"/>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shoppingmall.jsp</title>
<style>
	body {
		background-color: #f5f6f7;
	}
	header, main {
		width: 900px;
		margin: auto;
		background-color: white;
		box-sizing: border-box;
		padding: 10px;
	}
	header {
		border-bottom: 1px solid #dadada;
	}
	h1 {
		text-align: center;
		margin-top : 0;
		font-size: 2.5em;
		padding-top: 20px;
	}
	ul {
		list-style: none;
		padding-left: 0;
		display: flex;
		justify-content: space-around;
	}
	ul > li {
		font-size: 1.3em;
		padding-bottom: 25px;
		font-weight: bold;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		color: teal;
	}
	/* index.jsp 스타일 */
	h3 {
		padding: 10px;
		width: 900px;
		margin: auto;
		background-color: white;
		box-sizing: border-box;
	}
	/* list.jsp 스타일 */
	table {
		border: 1px solid black;
		border-collapse: collapse;
		margin: auto;
	}
	th, td {
		border: 1px solid black;
		padding: 15px;
		
	}
	th {
		background-color: #dadada;
	}
</style>
</head>
<body>

<header>
	<div id="header">
		<h1><a href="${cpath }">shopping</a></h1>
			<ul>
				<li><a href="list.jsp">목록</a></li>
				<li><a href="add.jsp">추가</a></li>		
			</ul>
	</div>
</header>