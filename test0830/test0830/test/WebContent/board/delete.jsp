<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="dto" value="${boardDAO.selectOne(param.idx) }"/>

<c:if test="${empty login }">
	<script>
		alert('로그인 후 이용하실 수 있습니다')
		location.href='${cpath}/member/login.jsp'
	</script>
</c:if>

<c:if test="${dto.writer != login.userid }">
	<script>
		alert('권한이 없습니다')
		location.href='${cpath}/board/list.jsp'
	</script>
</c:if>

<c:if test="${not empty dto.uploadFile }">
	<c:set var="fileDel" value="${fileUtil.removeFile(dto.uploadFile) }"/>
	<c:set var="row" value="${boardDAO.delete(dto.idx) }"/>
</c:if>

<c:if test="${empty dto.uploadFile }">
	<c:set var="row" value="${boardDAO.delete(dto.idx) }"/>
</c:if>
<c:redirect url="/board/list.jsp"/>

</body> 
</html>