<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<table>
	<tr>
		<th>음악번호</th>
		<th>가수번호</th>
		<th>앨범번호</th>
		<th>노래 제목</th>
		<th>장르</th>
		<th>재생시간</th>
		<th>가사</th>
		<th>재생횟수</th>
	</tr>

	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.id }</td>
			<td>${row.artist_id }</td>
			<td>${row.album_id }</td>
			<td>${row.name }</td>
			<td>${row.genre }</td>
			<td>${row.playtime }</td>
			<td>${row.lyrics }</td>
			<td>${row.playCount }</td>
		</tr>
	</c:forEach>

</table>
</body>
</html>