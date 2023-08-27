<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${memberDAO.modify(dto) }"/>

<script>
	const row = '${row}'
	alert(row != 0 ? '수정 완료' : '수정 실패')
	location.href='${cpath}/members/logout.jsp'
</script>
</body>
</html>