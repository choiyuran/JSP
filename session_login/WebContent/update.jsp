<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="update_user" value="${dao.update(dto) }"/>
<script>
	const update_user = '${update_user }'
	alert(update_user != 0 ? '수정 완료. 다시 로그인하세요' : '수정 실패')
	location.href='${cpath}/logout.jsp'
</script>

</body>
</html>