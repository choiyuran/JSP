<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<h3>회원가입</h3>
<div>
	<form method="POST" action="${cpath }/member/join-action.jsp">
		<p><input type="text" name="userid" placeholder="ID"></p>
		<p><input type="password" name="userpw" placeholder="PW"></p>
		<p><input type="text" name="username" placeholder="이름"></p>
		<p><input type="text" name="email" placeholder="이메일"></p>
		<p><input type="date" name="birth"></p>
		<p><input type="submit" value="회원가입"></p>
	</form>
</div>
</body>
</html>