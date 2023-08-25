<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<h3>새 글 작성</h3>

<c:if test="${empty login }">
	<c:redirect url="/member/login.jsp"/>
</c:if>
<div>
	<form method="POST" action="${cpath }/board/add-action.jsp">
		<p><input type="hidden" name="writer" value="${login.userid }"></p>
		<p><input type="text" name="title" placeholder="제목"></p>
		<p>
			<textarea name="content" placeholder="내용을 입력하세요"></textarea>
		</p>
		<p><input type="submit" value="등록"></p>
	</form>

</div>
</body>
</html>