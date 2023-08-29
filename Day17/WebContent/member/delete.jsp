<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${memberDAO.delete(param.userid) }"/>

<c:if test="${row != 0 }">
	<script>
		alert('이용해 주셔서 감사합니다')
		location.href='${cpath}'
	</script>
</c:if>
<c:if test="${row == 0 }">
	<script>
		alert('탈퇴 실패')
		history.go(-1)
	</script>
</c:if>
	

</body>
</html>