<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-modify.jsp</title>
</head>
<body>
<h3>정보수정</h3>
<form method="POST" action="ex06-action.jsp">

	<table border="1" cellpadding="10" cellspacing="0">
		<thead>
			<tr>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>이메일</th>
				<th>생년월일</th>
			</tr>
		</thead>
		<tbody>
			<tr>
	<%-- 		<td><input type="text" name="userid" value="${login.userid }" readonly></td> --%>
				<%-- 사용자가 직접 입력하지는 않지만, 파라미터로 전달하고 싶을 때 type="hidden"을 사용한다 --%>
				<td>${login.userid }<input type="hidden" name="userid" value="${login.userid }" readonly ></td>
				<td>${login.userpw }</td>	
				<td><input type="text" name="username" value="${login.username }"></td>
				<td><input type="text" name="email" value="${login.email }"></td>
				<td><input type="date" name="birth" value="${login.birth }"></td>
			</tr>
		</tbody>
	</table>
	
	<p>
		<input type="submit" value="수정하기">
		<a href="ex04-mypage.jsp"><input type="button" value="돌아가기"></a>
		<%-- button태그를 사용하면 form태그 안에 있을 때는 input type="submit"이랑 같은 작용을 한다 즉, action으로 이동해버리기 때문 --%>
		<%-- button을 클릭해도 링크가 없을때는 아무 일도 일어나지 않게 하기 위해서 button태그 대신 input type="button"으로 사용 --%>
	</p>
</form>
</body>
</html>