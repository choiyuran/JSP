<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST" action="${cpath }/member/update-action.jsp">
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>아이디</th>
			<td><input type="hidden" name="userid" value="${login.userid }">${login.userid }</td>
		</tr>
		<tr>
			<th>패스워드</th>
			<td><input type="text" name="userpw" value="${login.userpw }"></td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${login.username }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" value="${login.email }"></td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>${login.birth }</td>
		</tr>
	</table>
	<p>
		<input type="submit" value="수정">
		<a href="${cpath }/member/delete.jsp?userid=${login.userid}">
			<input type="button" value="탈퇴">
		</a>
	</p>
</form>

</body>
</html>