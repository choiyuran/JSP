<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-login.jsp</title>
</head>
<body>
<h1>ex06-login.jsp</h1>
<hr>
<%-- session을 종료시켜도 cookie는 client에 저장되기 때문에 상관없음/ 페이지 종료 후 다시 켜도 남아있음 --%>
<%-- 즉, 아이디 입력칸과 체크박스가 그대로 남아있음 --%>
<c:if test="${empty login }">
	<form method="POST" action="ex06-action.jsp">
		<p><input type="text" name="userid" placeholder="ID" value="${cookie.userid.value }"></p>
		<p><input type="text" name="userpw" placeholder="PW"></p>
		<p>
			<label>
				<input type="checkbox" name="storeId" 
					${not empty cookie.userid.value ? 'checked' : '' }>
				ID저장
			</label>
		</p>
		<p><input type="submit" value="로그인"></p>
	</form>
</c:if>

<c:if test="${not empty login }">
	<h3>${login.userid }님</h3>
	<a href="ex06-logout.jsp"><button>로그아웃</button></a>
</c:if>
</body>
</html>

