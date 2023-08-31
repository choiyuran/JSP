<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${memberDAO.delete(param.userid) }"/>

<script>
	const row ='${row}'
	if(row != 0) {
		alert('이용해주셔서 감사합니다')
		location.href='${cpath}/member/logout.jsp'
	}
	else {
		alert('탈퇴 실패')
	}
</script>

</body>
</html>