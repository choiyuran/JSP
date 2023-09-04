<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
${dto }

<c:set var="login" value="${memberDAO.login(dto) }" scope="session"/>
<c:redirect url="/"/>
</body>
</html>