<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 쿠키는 처음 발급할때 말고 다시 올때 효력이 발생하기 때문에 redirect 꼭 걸어주기 --%>

<%
	// 쿠키 삭제하기, 같은 이름으로 아무 값이나 지정하고 유효시간을 0으로 설정한 다음 보낸다
	Cookie c = new Cookie("memo", null);

	// 삼항연산자를 이용해서 조건에 따라서 쿠키를 만들어 보낼수도 쿠키를 삭제할수도 있다
	c.setMaxAge(0);
	
	response.addCookie(c);
	
	String cpath = request.getContextPath();
	response.sendRedirect(cpath + "/ex02-check.jsp");
	// 쿠키 생성 코드와 거의 똑같으면서, 유효시간만 다르다
	
	
%>

</body>
</html>