<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<form method="POST">
	<p><input type="hidden" name="album_id" value=${param.album_id  }></p>
	<p><input type="hidden" name="artist_id" value=${param.artist_id }></p>
	<p><input type="text" name="name" placeholder="노래 이름"></p>
	<p><input type="text" name="genre" placeholder="장르"></p>
	<p><input type="number" name="playtime" placeholder="재생시간"></p>
	<p><textarea name="lyrics" placeholder="가사"></textarea></p>
	<p><input type="submit" value="추가"></p>
</form>
</body>
</html>