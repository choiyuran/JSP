<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.MemberDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06-action.jsp</title>
</head>
<body>
<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="dao" value="${MemberDAO.getInstance() }"/>
<c:set var="login" value="${dao.login(dto) }" scope="session"/>

<%
	String storeId = request.getParameter("storeId");
	// checkbox의 value를 지정하지 않았을 경우
	// 체크하면 값은 "on"이고,
	// 체크하지 않으면 값은 null이다
	
	boolean flag1 = storeId != null;	// 체크박스 체크 여부	
	boolean flag2 = session.getAttribute("login") != null;		// 로그인 여부
	
	Cookie c = new Cookie("userid", request.getParameter("userid"));
	c.setMaxAge(flag1 && flag2 ? 300 : 0);
	response.addCookie(c);
%>

<script>
	const login = '${login }'
	alert(login != '' ? '로그인 성공' : '로그인 실패')
	location.href='ex06-login.jsp'
</script>

</body>
</html>

