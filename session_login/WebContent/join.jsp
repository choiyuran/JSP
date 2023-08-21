<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<main>
	<form method="POST" action="join-action.jsp">
		<p><input type="text" name="name" placeholder="이름"></p>
		<p><input type="text" name="phone" placeholder="전화번호"></p>
		<p><input type="text" name="userid" placeholder="ID"></p>
		<p><input type="text" name="userpw" placeholder="PW"></p>
		<p><input type="submit" value="회원가입"></p>
	</form>
</main>
</body>
</html>