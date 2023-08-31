<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${memberDAO.insert(dto) }"/>
<script>
	const row = '${row}'
	if(row != 0) {
		alert('회원가입을 축하드립니다')
		location.href='${cpath}/member/login.jsp'
	}
	else {
		alert('회원가입 실패')
		history.go(-1)
	}
</script>

</body>
</html>