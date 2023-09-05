<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
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
</style>
</head>
<body>
<h1>앨범 목록</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>id</th>
			<th>가수_id</th>
			<th>앨범 이름</th>
			<th>장르</th>
			<th>발매일</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.id }</td>
			<td>${row.artist_id }</td>
			<td>
				<a href="${cpath }/album/view?id=${row.id}">${row.name }</a>
			</td>
			<td>${row.type }</td>
			<td>${row.rDate }</td>

		</tr>
	</c:forEach>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/"><button>홈으로</button></a>
	<a href="${cpath }/artist/list"><button>가수 목록</button></a>
</p>
</body>
</html>