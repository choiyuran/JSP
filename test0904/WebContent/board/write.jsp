<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" action="${cpath }/board/write-action.jsp" enctype="multipart/form-data">
	<p><input type="hidden" name="writer" value="${login.userid }"></p>
	<p><input type="text" name="title" placeholder="제목" required></p>
	<p><textarea name="content" placeholder="내용을 작성하세요" required></textarea></p>
	<p><input type="file" name="uploadFile" accept="image/*"></p>
	<p><input type="submit" value="등록"></p>
</form>

</body>
</html>