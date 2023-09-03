<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<h1>list.jsp</h1>
<hr>

<table border="1" cellpadding="10" cellspacing="0">
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
					<a href="${cpath }/view?idx=${row.idx}">${row.title }</a>
				</td>
				<td>${row.writer }</td>
				<td>${row.wdate }</td>
			</tr>
		</c:forEach>
	</tbody>			
</table>
<br>

<a href="${cpath }/write"><button>글 작성</button></a>

</body>
</html>