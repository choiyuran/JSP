<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>수록곡</h3>
<hr>

<table>
	<tr>
		<th>id</th>
		<th>artist_id</th>
		<th>album_id</th>
		<th>노래 제목</th>
		<th>장르</th>
		<th>재생시간</th>
	</tr>
	
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.id }</td>
			<td>${row.artist_id }</td>
			<td>${row.album_id }</td>
			<td>
				<a href="${cpath }/music/view?id=${row.id}">${row.name }</a>
			</td>
			<td>${row.genre }</td>
			<td>${row.playtime }</td>
		</tr>
	</c:forEach>
</table>



</body>
</html>