<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
<style>
	table {
		border: 2px solid black;
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
<h1>ex05.jsp - board</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.idx }</td>
				<td>
					<a href="${cpath }/ex05/view?idx=${row.idx}">${row.title }</a>
				</td>
				<td>${row.writer }</td>
				
				<td>${row.wdate }</td>	
			</tr>
		</c:forEach>
	</tbody>
</table>

<p>
	<a href="${cpath }/ex05/write"><button>글쓰기</button></a>
</p>

</body>
</html>