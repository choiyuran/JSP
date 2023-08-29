<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="login" value="${memberDAO.login(dto) }" scope="session"/>
<c:if test="${not empty login }">
	<script>
		alert('로그인 성공')
		location.href='${cpath}'
	</script>
</c:if>

<c:if test="${empty login }">
	<script>
		alert('로그인 실패')
		history.go(-1)
	</script>
</c:if>
</body>
</html>