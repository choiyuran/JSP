<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="login">
<h3>로그인</h3>
<c:if test="${empty login }">
	<form method="POST" action="${cpath }/member/login-action.jsp">
		<p>
			<input type="text" name="userid" placeholder="ID" 
					value="${cookie.userid.value }" autofocus required>
		</p>
		<p><input type="password" name="userpw" placeholder="PW" required></p>
		<p>
			<label>
				<input type="checkbox" name="storeId">
				ID저장
			</label>
			
			<label>
				<input type="checkbox" name="autologin">
				자동 로그인
			</label>
		</p>
		<p><input type="submit" value="로그인"></p>
		<a href="${cpath }/member/join.jsp">회원가입</a>
	</form>
</c:if>

	<c:if test="${not empty login }">
		<h3>${login.userid }님 (${login.username })</h3>
	</c:if>
</div>
</body>
</html>