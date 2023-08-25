<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="board.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="write" value="${boardDAO.insert(dto) }"/>

<c:if test="${row == 0 }">
	<script>
		alert('등록 실패')
		location.href='${cpath}/board/add.jsp'
	</script>
</c:if>

<c:if test="${row != 0 }">
	<script>
		alert('새 글이 등록되었습니다')
	</script>
	<c:set var="maxIdx" value="${boardDAO.getMaxIdx() }"/>
	<c:redirect url="/board/view.jsp?idx=${maxIdx }"/>
</c:if>

</body>
</html>