<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="body">
	<div class="form">
	<form method="POST" action="login-action.jsp">	
		<p><input type="text" name="userid" placeholder="ID"></p>
		<p><input type="password" name="userpw" placeholder="PW"></p>
		<p>
			<input type="checkbox" name="storeId">
			ID저장
		</p>
		<p>
			<input type="checkbox" name="autologin">
			자동 로그인
		</p>
		
		<p><input type="submit" value="로그인"></p>
	</form>	
	</div>
</div>
</body>
</html>