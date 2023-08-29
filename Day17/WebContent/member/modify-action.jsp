<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${memberDAO.update(dto) }"/>

<script>
	const row = '${row}'
	alert(row != 0 ? '수정 성공' : '수정 실패')
	location.href='${cpath}'
</script>

</body>
</html>