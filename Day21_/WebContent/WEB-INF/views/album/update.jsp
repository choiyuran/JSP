<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itbank.repository.*"%>
<%@ include file="../header.jsp" %>

<h3>앨범 정보 수정</h3>
<hr>
<c:set var="albumDAO" value="${AlbumDAO.getInstance() }"/>
<c:set var="dto" value="${albumDAO.selectOne(param.id) }"/>

<form method="POST" enctype="multipart/form-data">
	<p><input type="hidden" name="id" value="${dto.id }"></p>
	<p><input type="hidden" name="artist_id" value="${dto.artist_id }"></p>
	<p><input type="hidden" name="name" value="${dto.name }"></p>
	<p><input type="hidden" name="type" value="${dto.type }"></p>
	<p><input type="hidden" name="rDate" value="${dto.rDate }"></p>
	<p><input type="hidden" name="playTime" value="${dto.playTime }"></p>
	<p>
		현재 앨범이미지 : ${dto.coverImg }
	</p>
	<p><input type="file" name="coverImg"></p>
	<p><input type="submit" value="수정"></p>
</form>
</body>
</html>