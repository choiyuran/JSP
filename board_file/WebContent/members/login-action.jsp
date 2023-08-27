<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="login" value="${memberDAO.login(dto) }" scope="session"/>

<c:if test="${empty login }">
	<script>
		alert('아이디 및 패스워드가 일치하지 않습니다')
		location.href='${cpath}/members/login.jsp'
	</script>
</c:if>

<c:if test="${not empty login }">
	<script>
		alert('로그인 성공')
		location.href="${cpath}"
	</script>
</c:if>

</body>
</html>