<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.itbank.repository.*"%>
<%@ include file="../header.jsp" %>


<h3>가수 정보 수정</h3>
<hr>
<c:set var="artistDAO" value="${ArtistDAO.getInstance() }"/>
<c:set var="row" value="${artistDAO.selectOne(param.id) }"/>

<form method="POST" enctype="multipart/form-data">
	<p><input type="text" name="name" value="${row.name }"></p>
	<p><input type="text" name="company" value="${row.company }"></p>
	<p><input type="text" name="member" value="${row.member }"></p>
	<p><input type="text" name="type" value="${row.type }"></p>
	<c:if test="${not empty row.profileImg }">
		<p style="font-size: 14px;">
			등록된 파일 : ${row.profileImg }
		</p>
		<p>	
			<input type="file" name="profileImg">
		</p>
	</c:if>
	<p><input type="hidden" name="id" value="${row.id }"></p>
	<p><input type="submit" value="수정"></p>
</form>

</body>
</html>