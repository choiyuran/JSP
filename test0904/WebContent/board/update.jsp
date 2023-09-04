<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="one" value="${boardDAO.selectOne(param.idx) }"/>

<form method="POST" action="${cpath }/board/update-action.jsp" enctype="multipart/form-date">
	<p><input type="hidden" name="idx" value="${one.idx }"></p>
	<p><input type="hidden" name="writer" value="${login.userid }"></p>
	<p><input type="text" name="title" value="${one.title }"></p>
	<p><textarea name="content">${one.title }</textarea></p>
	
	<c:if test="${not empty one.uploadFile }">
		<p>
			기존 첨부 파일 : ${one.uploadFile }
			<a href="${cpath }/board/deleteFile.jsp?idx=${dto.idx}">
			<input type="button" value="첨부파일 삭제"></a>		
		</p>
	</c:if>
	<p>
		<input type="file" name="uploadFile">
	</p>
	<p><input type="submit" value="수정"></p>
</form>
</body>
</html>