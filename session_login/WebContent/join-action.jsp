<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="join_user" value="${dao.insert(dto) }"/>

<script>
	const join_user = '${join_user}'
	alert(join_user != 0 ? '회원가입을 축하드립니다' : '회원 가입 실패')
	location.href='${cpath}/header.jsp'
</script>

</body>
</html>