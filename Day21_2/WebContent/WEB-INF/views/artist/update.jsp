<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itbank.repository.*"%>
<%@ include file="../header.jsp" %>


<h3>가수 정보 수정</h3>
<hr>

<form method="POST" enctype="multipart/form-data">
	<p><input type="text" name="name" value="${dto.name }"></p>
	<p><input type="text" name="company" value="${dto.company }"></p>
	<p><input type="text" name="member" value="${dto.member }"></p>
	<p><input type="text" name="type" value="${dto.type }"></p>
	
	<c:if test="${not empty dto.profileImg }">
		<p style="font-size: 14px;">
			등록된 파일 : ${dto.profileImg }
			<a href="${cpath }/artist/delFile?profileImg=${dto.profileImg }&id=${dto.id }"><input type="button" value="파일삭제"></a>
		</p>
		<p>	
			<input type="file" name="profileImg">
		</p>
	</c:if>
	
	<c:if test="${empty dto.profileImg }">
			<input type="file" name="profileImg">
	</c:if>
	<p><input type="hidden" name="id" value="${dto.id }"></p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>