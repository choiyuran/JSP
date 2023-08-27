<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${memberDAO.delete(param.userid) }"/>

<c:redirect url="/members/logout.jsp"/>
</body>
</html>