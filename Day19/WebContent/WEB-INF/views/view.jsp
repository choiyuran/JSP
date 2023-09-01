<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
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
</style>
</head>
<body>

<h1>view.jsp</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>작성일</th>
			<th>삭제</th>
		</tr>
	</thead>
	
	<tbody>
			<tr>
				<td>${dto.idx }</td>
				<td>${dto.title }</td>
				<td>${dto.writer }</td>
				<td>${dto.content }</td>
				<td>
					<fmt:formatDate value="${dto.wdate }" pattern="yyyy-MM-dd a hh:mm"/>
				</td>	
				<td>
					<a href="${cpath }/ex05/delete?idx=${dto.idx}"><button>삭제</button></a>
				</td>
			</tr>
		
	</tbody>
</table>

</body>
</html>