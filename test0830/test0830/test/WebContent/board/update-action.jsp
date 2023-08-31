<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }"/>
<c:set var="row" value="${boardDAO.update(dto) }"/>

<script>
	const row = '${row}'
	if(row != 0) {
		alert('수정 완료')
		location.href='${cpath}/board/view.jsp?idx=${dto.idx}'
	}
	else {
		alert('수정 실패')
		history.go(-1)
	}
</script>

</body>
</html>