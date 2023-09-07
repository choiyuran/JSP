<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day21</title>
<style>
	table {
		border: 1px solid black;
		border-collapse: collapse;
	}
	th, td {
		border: 1px solid grey;
		padding: 10px;
	}
	th {
		background-color: #eee;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: underline;
	}

</style>
</head>
<body>

<header>
	<h1><a href="${cpath }/">Day21</a></h1>
</header>