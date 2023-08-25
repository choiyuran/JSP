<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>글 수정</h3>
<div>
	<c:set var="row" value="${boardDAO.selectOne(param.idx) }"/>
	
	<form method="POST" action="${cpath }/board/modify-action.jsp">
		<p><input type="hidden" name="idx" value="${row.idx }"></p>
		<p><input type="text" name="title" value="${row.title }"></p>
		<p><textarea name="content">${row.content }</textarea></p>
		<p><input type="submit" value="수정"></p>
	</form>
</div>
</body>
</html>