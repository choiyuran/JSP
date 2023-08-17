<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="shopping.ShoppingDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="user" value="${dao.insert(dto) }"/>

<c:redirect url="/list.jsp"/>

</body>
</html>