<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="body">

	<c:set var="list" value="${boardDAO.selectAll() }"/>	
	<table>
		<thead>
			<tr>
				<th>idx</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>파일경로</th>
				<th>이미지</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${list }">
				<tr>
					<td>${row.idx }</td>
					<td>${row.writer }</td>
					<td>${row.title }</td>
					<td>${row.content }</td>
					<td>${row.filePath }</td>
					<td><img src="${row.filePath }" width="100"></td>
					<td>${row.wdate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>