<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
<c:if test="${empty user }">
	<form method="POST" action="login-action.jsp">
		<p><input type="text" name="userid" placeholder="ID" required></p>
		<p><input type="text" name="userpw" placeholder="PW" required></p>
		<p><input type="submit" value="로그인"></p>
	</form>
</c:if>

<c:if test="${not empty user }">
	<h3>${user.userid }님 로그인 중</h3>
</c:if>
</main>
</body>
</html>