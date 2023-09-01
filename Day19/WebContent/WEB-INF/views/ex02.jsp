<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
<!-- 
	WEB-INF는 설정 파일이기 때문에 그냥 실행하면 실행이 안됨
	대신, 내부에서 포워딩은 가능
-->
<h1>ex02.jsp</h1>
<hr>

<h3>Hello, ${empty name ? 'Guest' : name }</h3>
<!-- 서블릿에서 request에 담아둔 값을 참조할 수 있다 -->

<form>
	<p><input type="text" name="name" placeholder="이름"></p>
	<p><input type="submit"></p>
</form>

</body>
</html>