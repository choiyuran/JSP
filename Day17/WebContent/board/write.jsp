<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${empty login }">
	<c:redirect url="/member/login.jsp"/>
</c:if>
<form method="POST" action="${cpath }/board/write-action.jsp" enctype="multipart/form-data">
	<p><input type="hidden" name="writer" value="${login.userid }"></p>
	<p><input type="text" name="title" placeholder="제목"></p>
	<p><textarea name="content" placeholder="내용을 입력하세요"></textarea></p>
	<p><input type="file" name="image" accept="image/*"></p>
	<p><input type="submit" value="등록"></p>
</form>
</body>
</html>