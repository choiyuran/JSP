<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }"/>
<c:if test="${not empty dto }">
	<c:set var="row" value="${boardDAO.insert(dto) }"/>
	<c:redirect url="/board_file/list.jsp"/>
</c:if>

<c:if test="${empty dto }">
	<script>
		alert('모든 항목을 입력하고, 파일은 이미지만 가능합니다')
		history.go(-1)
	</script>
</c:if>



</body>
</html>