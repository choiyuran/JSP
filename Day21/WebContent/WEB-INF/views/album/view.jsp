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
			<th>재생시간</th>
			<th>앨범 사진</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${dto.id }</td>
			<td>${dto.artist_id }</td>
			<td>${dto.name }</td>
			<td>${dto.type }</td>
			<td>${dto.rDate }</td>
			<td>${dto.playTime }</td>
			<td>
				<img src="${cpath }/album_upload/${dto.coverImg }" width="150">
			</td>
		</tr>
	
	</tbody>
</table>

<p>
	<a href="${cpath }/album/list"><button>이전으로</button></a>
	<a href="${cpath }/album/add"><button>가수 등록</button></a>
</p>
</body>
</html>