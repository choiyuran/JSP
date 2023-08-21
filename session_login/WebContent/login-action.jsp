<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="user" value="${dao.selectOne(dto) }" scope="session"/>

<script>
	const user = '${user }'
	alert(user != '' ? '로그인 성공' : '로그인 실패')
	location.href = '${cpath }'
</script>
</body>
</html>