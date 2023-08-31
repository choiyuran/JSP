<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${empty login }">
	<script>
		alert('로그인 후 이용하실 수 있습니다')
		location.href='${cpath}/member/login.jsp'
	</script>
</c:if>

<div>
<h3>새 글 작성</h3>
	<form method="POST" action="${cpath }/board/write-action.jsp" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="제목" autofocus></p>
		<p><textarea name="content" placeholder="내용을 입력하세요"></textarea></p>
		<p><input type="file" name="uploadFile" accept="image/*"></p>
		<p><input type="hidden" name="writer" value="${login.userid }"></p>
		<p><input type="submit" value="등록"></p>
	</form>
</div>

</body>
</html>