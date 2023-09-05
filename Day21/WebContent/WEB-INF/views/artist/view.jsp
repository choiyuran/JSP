<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
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
<h1>view.jsp</h1>
<hr>

<table>
	<thead>
		<tr>
			<th>id</th>
			<th>가수이름</th>
			<th>소속사</th>
			<th>멤버</th>
			<th>데뷔일</th>
			<th>타입</th>
			<th>프로필이미지</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${dto.id }</td>
			<td>${dto.name }</td>
			<td>${dto.company }</td>
			<td>${dto.member }</td>
			<td>${dto.debut }</td>
			<td>${dto.type }</td>
			<td>
				<img src="${cpath }/artist_upload/${dto.profileImg }" width="150">
			</td>
		</tr>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/artist/list"><button>돌아가기</button></a>
	<a href="${cpath }/artist/add"><button>가수 등록</button></a>
	
</p>
</body>
</html>