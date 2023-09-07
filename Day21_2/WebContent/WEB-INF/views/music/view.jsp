<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>노래 상세보기</h3>
<hr>

<table>
	<tr>
		<th>id</th>
		<td>${dto.id }</td>

		<th>artist_id</th>
		<td>${dto.artist_id }</td>		
	</tr>
	
	<tr>
		<th>album_id</th>
		<td>${dto.album_id }</td>	
	
		<th>노래 제목</th>
		<td>${dto.name }</td>	
	</tr>
	
	<tr>
		<th>장르</th>
		<td>${dto.genre }</td>	

		<th>재생횟수</th>	
		<td>${dto.playCount }</td>
	</tr>
	
	<tr>
		<th>재생시간</th>
		<td colspan="3">${dto.playtime }</td>	
	</tr>
	
	<c:if test="${not empty dto.lyrics }">
		<tr>
			<th>가사</th>
			<td colspan="3">
				<textarea cols="70" rows="25" readonly>${dto.lyrics }</textarea>
			</td>
		</tr>
	</c:if>

	
</table>
<p>
	<a href="${cpath }/music/update?id=${dto.id}"><button>수정</button></a>
	<a href="${cpath }/album/list"><button>목록으로</button></a>
</p>

</body>
</html>