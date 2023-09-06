<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>노래 수정</h3>
<form method="POST">
	<p><input type="hidden" name="id" value="${dto.id }"></p>
	<p><input type="hidden" name="album_id" value="${dto.album_id }"></p>
	<p><input type="hidden" name="artist_id" value="${dto.artist_id }"></p>
	<p><input type="hidden" name="genre" value="${dto.genre }"></p>
	<p><input type="hidden" name="name" value="${dto.name }"></p>
	<p><input type="hidden" name="playtime" value="${dto.playtime }"></p>
	<p><input type="hidden" name="playCount" value="${dto.playCount }"></p>
	
	<c:if test="${not empty dto.lyrics }">
		<textarea name="lyrics" cols="70" rows="25">${dto.lyrics }</textarea>	
	</c:if>
	
	<c:if test="${empty dto.lyrics}">
		<textarea name="lyrics" cols="70" rows="20" placeholder="가사를 작성해주세요"></textarea>
	</c:if>
	<p><input type="submit" value="수정"></p>
</form>
</body>
</html>