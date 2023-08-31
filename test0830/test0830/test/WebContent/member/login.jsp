<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div>
<c:if test="${empty login }">
	<h3>로그인</h3>
		<form method="POST" action="${cpath }/member/login-action.jsp">
			<p><input type="text" name="userid" placeholder="ID" value="${cookie.userid.value }"></p>
			<p><input type="password" name="userpw" placeholder="PW"></p>
			<p>
				<input type="checkbox" name="storeId">
				ID저장
				<input type="checkbox" name="autologin">
				자동로그인
			</p>
			<p><input type="submit" value="로그인"></p>
		</form>
</c:if>
</div>
</body>
</html>