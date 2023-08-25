<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="row" value="${memberDAO.join(dto) }"/>

<script>
	const row ='${row}'
	alert(row != 0 ? '회원가입을 축하드립니다' : '가입 실패')
	location.href='${cpath}/member/login.jsp'
</script>

</body>
</html>