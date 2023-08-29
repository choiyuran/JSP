<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<c:set var="dto" value="${fileUtil.getDTO(pageContext.request) }"/>

<c:if test="${not empty dto }">
	<c:set var="row" value="${boardDAO.insert(dto) }"/>
	<c:if test="${row != 0 }">
		<script>
			alert('새글 등록 완료')
			location.href='${cpath}'
		</script>
	</c:if>
	
	<c:if test="${row == 0 }">
		<script>
			alert('등록 실패')
			history.go(-1)
		</script>
	</c:if>
</c:if>

<c:if test="${empty dto }">
	<script>
		alert('모든 항목을 입력하세요. 파일은 이미지만 가능합니다')
		history.go(-1)
	</script>

</c:if>
</body>
</html>