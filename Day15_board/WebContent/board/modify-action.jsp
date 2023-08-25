<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="board.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="update" value="${boardDAO.update(dto) }"/>
<script>
	const update = '${update}'
	alert(update != 0 ? '수정 완료' : '수정 실패')
	location.href='${cpath}/board/list.jsp'
</script>
</body>
</html>