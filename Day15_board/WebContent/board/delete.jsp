<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="delete" value="${boardDAO.delete(param.idx) }"/>

<c:redirect url="/board/list.jsp"/>

</body>
</html>