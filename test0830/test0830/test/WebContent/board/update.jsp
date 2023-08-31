<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="one" value="${boardDAO.selectOne(param.idx) }"/>

<c:if test="${empty login }">
	<script>
		alert('로그인 후 이용하실 수 있습니다')
		location.href='${cpath}/member/login.jsp'
	</script>
</c:if>

<c:if test="${one.writer != login.userid }">
	<script>
		alert('권한이 없습니다')
		location.href='${cpath}/board/list.jsp'
	</script>	

</c:if>

<div>
	<h3>글 수정</h3>
	<form method="POST" action="${cpath }/board/update-action.jsp" enctype="multipart/form-data">
		<p><input type="text" name="title" value="${one.title }"></p>
		<p><textarea name="content">${one.content }</textarea></p>
		<p><input type="hidden" name="writer" value="${login.userid }"></p>
		<p><input type="hidden" name="idx" value="${one.idx }"></p>

		<c:if test="${not empty one.uploadFile }">
		<p>
			현재 업로드 파일 : ${one.uploadFile }
			<a href="${cpath }/board/fileDelete.jsp?idx=${one.idx}"><input type="button" value="파일 삭제"></a>
		</p>
		</c:if>
		
		<p><input type="file" name="uploadFile"></p>
		<p><input type="submit" value="수정"></p>
		
	</form>
</div>


</body>
</html>