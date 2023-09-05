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
<h1>가수 목록</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>id</th>
			<th>가수이름</th>
			<th>멤버</th>
			<th>데뷔일</th>
			<th>앨범 추가</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.id }</td>
			<td>
				<a href="${cpath }/artist/view?id=${row.id}">${row.name }</a>
			</td>
			<td>${row.member }</td>
			<td>${row.debut }</td>
			<td>
				<a href="${cpath }/album/add?id=${row.id}&name=${row.name}"><button>추가</button></a>
			</td>
			<td><a href="${cpath }/artist/update?id=${row.id}"><button>수정</button></a></td>
			<td><button>삭제</button></td>
		</tr>
	</c:forEach>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/"><button>홈으로</button></a>
	<a href="${cpath }/artist/add"><button>가수 등록</button></a>
	
</p>
</body>
</html>