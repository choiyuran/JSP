<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="body">

<c:if test="${empty login }">
	<script>
		alert('로그인 후 이용하실 수 있습니다')
		location.href='${cpath}/members/login.jsp'
	</script>
</c:if>
<form method="POST" action="modify-action.jsp">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="hidden" name="userid" value="${login.userid }">${login.userid }</td>
		</tr>
		<tr>	
			<th>비밀번호</th>
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
	<input type="submit" value="수정">
	<input id="deleteBtn" type="button" value="탈퇴">
</form>
</div>

<script>
	const deleteBtn = document.getElementById('deleteBtn')
	deleteBtn.onclick = function() {
		const flag = confirm('정말 탈퇴하시겠습니까?')
		if(flag) {
			location.href='${cpath}/members/delete.jsp?userid=${login.userid}'
		}
	}
</script>
</body>
</html>