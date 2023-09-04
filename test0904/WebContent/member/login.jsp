<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" action="${cpath }/member/login-action.jsp">
	<p><input type="text" name="userid" placeholder="ID"></p>
	<p><input type="password" name="userpw" placeholder="PW"></p>
	<p><input type="submit" value="로그인"></p>
</form>

</body>
</html>