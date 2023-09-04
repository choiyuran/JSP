<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${boardDAO.selectOne(param.idx) }"/>

<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>내용</th>
		<th>작성일</th>
		<c:if test="${not empty row.uploadFile }">
			<th>이미지</th>
		</c:if>
	</tr>
	
	<tr>
		<td>${row.idx }</td>
		<td>${row.title }</td>
		<td>${row.writer }</td>
		<td>${row.content }</td>
		<td>${row.wdate }</td>
		<c:if test="${not empty row.uploadFile }">
			<td>
				<img src="${cpath }/file/${row.uploadFile }" width="150">
			</td>
		</c:if>
	</tr>
</table>
<p>
	<a href="${cpath }/board/update.jsp?idx=${row.idx}"><button>수정</button></a>
	<button id="deleteBtn">삭제</button>
</p>
<script>

</script>

</body>
</html>