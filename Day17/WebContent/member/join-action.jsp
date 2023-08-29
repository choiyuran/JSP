<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${memberDAO.insert(dto) }"/>
<c:if test="${row != 0 }">
	<script>
		alert('회원가입을 축하드립니다')
		location.href='${cpath}/member/login.jsp'
	</script>
</c:if>

<c:if test="${row == 0 }">
	<script>
		alert('회원가입 실패')
		history.go(-1)
	</script>
</c:if>

</body>
</html>