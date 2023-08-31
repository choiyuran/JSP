<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }"/>
<c:set var="row" value="${boardDAO.insert(dto) }"/>

<c:if test="${row != 0 }">
	<c:set var="idx" value="${boardDAO.getMaxIdx() }"/>
	<c:redirect url="/board/view.jsp?idx=${idx }"/>
</c:if>

<c:if test="${row == 0 }">
	<script>
		alert('등록 실패')
		history.go(-1)
	</script>
</c:if>


</body>
</html>