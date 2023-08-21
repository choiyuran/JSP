<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="update.jsp">
	<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>idx</th>
				<td>${user.idx }<input type="hidden" name="idx" value="${user.idx }"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${user.name }</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone" value="${user.phone }"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${user.userid }</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="userpw" value="${user.userpw }"></td>
			</tr>			
	</table>
	<br>

	<input type="submit" value="수정">
	<a href="${cpath }/delete.jsp"><input type="button" value="탈퇴"></a>
	<a href="${cpath }"><input type="button" value="이전"></a>
</form>
</body>
</html>