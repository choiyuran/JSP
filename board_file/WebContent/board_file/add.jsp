<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${empty login }">
	<script>
		alert('로그인 후 이용하실수 있습니다')
		location.href='${cpath}/members/login.jsp'
	</script>

</c:if>
<div class="body">
	<div class="form">	
	<form method="POST" action="add-action.jsp" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="제목"></p>
		<p><textarea name="content" placeholder="내용을 입력하세요"></textarea></p>
		<p><input type="file" name="profile" accept="image/*"></p>
		<p><input type="submit" value="작성완료"></p>
	</form>
	</div>
</div>

</body>
</html>