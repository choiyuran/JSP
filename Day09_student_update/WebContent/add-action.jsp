<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="user" value="${dao.insert(dto) }"/>

<c:redirect url="/list.jsp"/>
</body>
</html>