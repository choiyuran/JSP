<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${memberDAO.update(dto) }"/>

<script>
	const row = '${row}'
	if(row != 0) {
		alert('정보 수정 완료')
		location.href='${cpath}/member/logout.jsp'
	}
	else {
		history.go(-1)
	}
</script>
</body>
</html>