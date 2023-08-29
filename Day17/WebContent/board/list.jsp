<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="list" value="${boardDAO.selectAll() }"/>

<table border="1" cellpadding="15" cellspacing="0">
	<thead>
		<tr>
			<th>idx</th>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>파일경로</th>
			<th>작성일</th>
			<th>이미지</th>
			
			
		</tr>
	</thead>
	<tbody>
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>${row.title }</td>
			<td>${row.writer }</td>
			<td>${row.content }</td>
			<td>${row.uploadFile }</td>
			<td>${row.wdate }</td>
			<td><img src="${cpath }/${row.uploadFile }" width="100"></td>
		</tr>
	</c:forEach>
	</tbody>
</table>

</body>
</html>